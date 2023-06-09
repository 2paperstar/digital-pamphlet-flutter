import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/bloc/exhibition_map/exhibition_map_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/bloc/pamphlet_image/pamphlet_image_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/widget/booth_bottom_sheet.dart';
import 'package:digital_pamphlet/pamphlet/presentation/widget/pamphlet_canvas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const _boothNames = [
  '재야의커피',
  'infoteam',
  'GDSC',
  'Wing',
];

const _representerNames = ['재야의커피', '인포팀', 'GDSC', 'Wing'];

const _descriptions = [
  '불편하지 않은 최상의커피를 내리는 것이 목표 입니다.',
  '학생들의 편의를 위한 서비스를 만드는 것이 목표입니다. ',
  'GDSC 기술을 체험해 보세요',
  'wing의 기술력은 세계 제일!',
];

const _currents = [4, 6, 5, 9];

class PamphletView extends StatelessWidget {
  const PamphletView({super.key});

  Widget _buildDetail(int index) {
    final description = BlocBuilder<ExhibitionMapBloc, ExhibitionMapState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (maps) {
            return BlocBuilder<DetailSelectBloc, DetailSelectState>(
                builder: (context, detailState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _boothNames[index % _boothNames.length],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(_descriptions[index % _descriptions.length]),
                  Text(_representerNames[index % _representerNames.length]),
                  const SizedBox(height: 8),
                  Text('운영 중 • 대기열 ${_currents[index % _currents.length]} 명'),
                ],
              );
            });
          },
          orElse: () => Container(),
        );
      },
    );

    final detailButton = Builder(
      builder: (context) {
        return IconButton(
          visualDensity: VisualDensity.compact,
          splashRadius: 20,
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) => BoothBottomSheet(
              name: _boothNames[index % _boothNames.length],
              title: _descriptions[index % _descriptions.length],
              subTitle: _representerNames[index % _representerNames.length],
              current: _currents[index % _currents.length],
            ),
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
              loaded: (image) =>
                  BlocBuilder<ExhibitionMapBloc, ExhibitionMapState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (maps) =>
                        BlocBuilder<DetailSelectBloc, DetailSelectState>(
                            builder: (context, detailState) {
                      return PamphletCanvas(
                        image: image,
                        boothBoxList: maps[detailState.floor]
                            .sections
                            .map((e) => e.boothBox)
                            .toList(),
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
                      );
                    }),
                    orElse: () => Container(),
                  );
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
