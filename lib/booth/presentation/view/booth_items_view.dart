import 'package:digital_pamphlet/booth/presentation/widget/booth_item.dart';
import 'package:digital_pamphlet/booth/presentation/widget/select_booth_helper.dart';
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const _tabs = [
  '원두',
  '브루잉',
  '에쏘',
  '콜드브루',
  '에어로',
];

class BoothItemsView extends StatelessWidget {
  const BoothItemsView({super.key});

  Widget _buildTitle() {
    return Row(
      children: [
        const Expanded(
          child: Text(
            '부스상품',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Builder(builder: (context) {
          return IconButton(
            onPressed: () => context.push('/booth-search'),
            icon: const Icon(Icons.search),
          );
        }),
      ],
    );
  }

  Widget _buildView() {
    return DefaultTabController(
      length: _tabs.length,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(child: _buildTitle()),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: Text(
                '부스 추천 상품',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const SizedBox(
                  width: 132,
                  child: Placeholder(),
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: 8,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
          SliverToBoxAdapter(
            child: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              isScrollable: true,
              labelColor: const Color(0xFF4B4846),
              unselectedLabelColor: Colors.black.withOpacity(0.2),
              indicatorColor: Colors.transparent,
              tabs: _tabs.map((name) => Tab(text: name)).toList(),
            ),
          ),
        ],
        body: TabBarView(
          children: _tabs
              .map(
                (name) => ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemBuilder: (context, index) => const BoothItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 40,
                  ),
                  itemCount: 30,
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailSelectBloc, DetailSelectState>(
      builder: (context, state) => state.when(
        unselected: (_) => const SelectBoothHelper(),
        selected: (_, __) => _buildView(),
      ),
    );
  }
}
