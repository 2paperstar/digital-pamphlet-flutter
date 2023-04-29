import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:digital_pamphlet/pamphlet/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/bloc/pamphlet_image/pamphlet_image_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/widget/pamphlet_canvas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _imageUrl =
    'https://media.discordapp.net/attachments/1077054339799060551/1101669829003444224/image.png?width=1038&height=1120';

class PamphletView extends StatelessWidget {
  const PamphletView({super.key});

  Widget _buildDetail() {
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
                      children: const [
                        Text('메리 트랙 4호'),
                        Text('즐거운 마음으로 커피를 내려 파는 곳'),
                        Text('0000'),
                        Text('운영 중 • 대기열 n 명'),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                        ),
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
                      onSelectBooth: (index) {
                        if (index == null) return;
                        context
                            .read<DetailSelectBloc>()
                            .add(DetailSelectEvent.selectBooth(index));
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
              unselected: (floor) => Container(),
              selected: (floor, booth) => _buildDetail(),
              detailsShown: (floor, booth) => _buildDetail(),
            ),
          ),
        ],
      ),
    );
  }
}
