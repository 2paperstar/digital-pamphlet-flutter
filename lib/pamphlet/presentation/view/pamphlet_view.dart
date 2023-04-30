import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:digital_pamphlet/core/presentation/bloc/exhibition/exhibition_bloc.dart';
import 'package:digital_pamphlet/pamphlet/domain/booth_box.dart';
import 'package:digital_pamphlet/pamphlet/presentation/bloc/exhibition_map/exhibition_map_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/bloc/pamphlet_image/pamphlet_image_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/widget/booth_bottom_sheet.dart';
import 'package:digital_pamphlet/pamphlet/presentation/widget/pamphlet_canvas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const _boothBoxList = [
  BoothBox(left: 57, top: 147, width: 100, height: 144, text: '트랙4'),
  BoothBox(left: 412, top: 147, width: 146, height: 144, text: '트랙6'),
  BoothBox(left: 246, top: 291, width: 168, height: 60, text: '기념품 받는 곳'),
  BoothBox(left: 159, top: 147, width: 100, height: 144, text: '트랙5'),
  BoothBox(left: 88, top: 534, width: 70, height: 155, text: '??'),
];

class PamphletView extends StatelessWidget {
  const PamphletView({super.key});

  Widget _buildDetail(int index) {
    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _boothBoxList[index].text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text('즐거운 마음으로 커피를 내려 파는 곳'),
        const Text('0000'),
        const SizedBox(height: 8),
        const Text('운영 중 • 대기열 n 명'),
      ],
    );

    final detailButton = Builder(
      builder: (context) {
        return IconButton(
          visualDensity: VisualDensity.compact,
          splashRadius: 20,
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) => const BoothBottomSheet(),
          ),
          icon: const Icon(Icons.info),
        );
      },
    );

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                offset: const Offset(0, 2),
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 1,
              )
            ],
          ),
          child: Material(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: description),
                    Column(
                      children: [
                        detailButton,
                        const Text('상세보기'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFloors() {
    return BlocBuilder<ExhibitionMapBloc, ExhibitionMapState>(
        builder: (context, state) {
      return state.maybeWhen(
        loaded: (maps) {
          context.read<PamphletImageBloc>().add(
                PamphletImageEvent.loadNetworkImage(
                    'http://localorder.link:3000/image/${maps[context.read<DetailSelectBloc>().state.floor].image.id}'),
              );
          return BlocListener<DetailSelectBloc, DetailSelectState>(
            listener: (context, state) => context.read<PamphletImageBloc>().add(
                  PamphletImageEvent.loadNetworkImage(
                      'http://localorder.link:3000/image/${maps[state.floor].image.id}'),
                ),
            listenWhen: (previous, current) => previous.floor != current.floor,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(width: 4),
              itemCount: maps.length,
              itemBuilder: (context, index) =>
                  BlocBuilder<DetailSelectBloc, DetailSelectState>(
                builder: (context, state) {
                  return ActionChip(
                    label: Text('${index + 1}층'),
                    onPressed: () => context
                        .read<DetailSelectBloc>()
                        .add(DetailSelectEvent.selectFloor(index)),
                    backgroundColor: state.floor == index
                        ? Colors.grey.shade300
                        : Colors.grey,
                  );
                },
              ),
            ),
          );
        },
        orElse: () => Container(),
      );
    });
  }

  Widget _buildCanvas() {
    return SizedBox(
      height: 400,
      child: ClipRect(
        child: BlocBuilder<PamphletImageBloc, PamphletImageState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (image) => PamphletCanvas(
                image: image,
                boothBoxList: _boothBoxList,
                selectedBoothIndex: context
                    .select((DetailSelectBloc bloc) => bloc.state)
                    .maybeWhen(
                      selected: (_, index) => index,
                      orElse: () => null,
                    ),
                onSelectBooth: (index) {
                  context.read<DetailSelectBloc>().add(index == null
                      ? const DetailSelectEvent.unselectBooth()
                      : DetailSelectEvent.selectBooth(index));
                },
              ),
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PamphletImageBloc>(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(height: 32 + 8 * 2, child: _buildFloors()),
              ),
              IconButton(
                onPressed: () => context.push('/notification'),
                splashRadius: 20,
                icon: const Badge(
                  isLabelVisible: false,
                  child: Icon(Icons.notifications_outlined),
                ),
              ),
            ],
          ),
          _buildCanvas(),
          BlocBuilder<DetailSelectBloc, DetailSelectState>(
            builder: (context, state) => state.when(
              unselected: (floor) => Padding(
                padding: const EdgeInsets.all(16),
                child: Text('${floor + 1}층의 부스를 선택해주세요'),
              ),
              selected: (floor, booth) => _buildDetail(booth),
            ),
          ),
        ],
      ),
    );
  }
}
