import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:digital_pamphlet/pamphlet/domain/booth_box.dart';
import 'package:digital_pamphlet/pamphlet/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/bloc/pamphlet_image/pamphlet_image_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/widget/pamphlet_canvas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _imageUrl =
    'https://media.discordapp.net/attachments/1077054339799060551/1101669829003444224/image.png?width=1038&height=1120';
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
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_boothBoxList[index].text),
                        const Text('즐거운 마음으로 커피를 내려 파는 곳'),
                        const Text('0000'),
                        const Text('운영 중 • 대기열 n 명'),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: Builder(builder: (context) {
                          return IconButton(
                            onPressed: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Container(),
                            ),
                            icon: const Icon(Icons.menu),
                          );
                        }),
                      ),
                      const Text('상세보기'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DetailSelectBloc>()),
        BlocProvider(
          create: (context) => getIt<PamphletImageBloc>()
            ..add(const PamphletImageEvent.loadNetworkImage(_imageUrl)),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 32 + 8 * 2,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(width: 4),
              itemCount: 3,
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
          ),
          SizedBox(
            height: 400,
            child: ClipRect(
              child: BlocBuilder<PamphletImageBloc, PamphletImageState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (image) => PamphletCanvas(
                      image: image,
                      boothBoxList: _boothBoxList,
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
          ),
          BlocBuilder<DetailSelectBloc, DetailSelectState>(
            builder: (context, state) => state.when(
              unselected: (floor) => Text('$floor'),
              selected: (floor, booth) => _buildDetail(booth),
            ),
          ),
        ],
      ),
    );
  }
}
