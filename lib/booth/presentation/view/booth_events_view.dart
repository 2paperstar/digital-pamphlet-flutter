import 'package:digital_pamphlet/booth/presentation/widget/select_booth_helper.dart';
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class _TitleHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '재야의 커피',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: (1 - shrinkOffset / maxExtent) * 16 + 24,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: () {},
                      splashRadius: 20,
                      icon: const Icon(Icons.favorite_outline),
                    ),
                  ),
                  Text(
                    '이벤트 구독',
                    style: TextStyle(
                      fontSize: (1 - shrinkOffset / maxExtent) * 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => kToolbarHeight + 8;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

class BoothEventsView extends StatelessWidget {
  const BoothEventsView({super.key});

  Widget _buildBoothEvents() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            expandedTitleScale: 1,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  children: const [
                    Chip(label: Text('test')),
                    Chip(label: Text('test')),
                    Chip(label: Text('test')),
                  ],
                ),
              ],
            ),
            background: const Placeholder(),
          ),
        ),
        SliverPersistentHeader(pinned: true, delegate: _TitleHeader()),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: Text(
              '오늘의 이벤트',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                ),
              );
            },
            childCount: 20,
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: Text(
              '오늘의 이벤트',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailSelectBloc, DetailSelectState>(
      builder: (context, state) => state.when(
        unselected: (_) => const SelectBoothHelper(),
        selected: (_, __) => _buildBoothEvents(),
      ),
    );
  }
}
