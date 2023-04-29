import 'package:digital_pamphlet/booth/presentation/widget/bottom_arrow_indicator.dart';
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _tabs = [
  '원두',
  '브루잉',
  '에쏘',
  '콜드브루',
  '에어로',
  '원두',
  '브루잉',
  '에쏘',
  '콜드브루',
  '에어로'
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
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
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
                  itemBuilder: (context, index) => Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('박승민 바리스타식 브루잉 레시피'),
                          Text('브루잉 레시피'),
                          Text('상큼하고 농도가 낮은'),
                          Text('자스민, 블랜커런트, 애플'),
                        ],
                      ),
                    ],
                  ),
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
        unselected: (_) => Stack(
          children: [
            const Center(
              child: Text('먼저 행사장 화면에서 부스를 선택해주세요!'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [BottomArrowIndicator()],
                      ),
                    ),
                    Expanded(flex: 4, child: Container()),
                  ],
                ),
              ),
            ),
          ],
        ),
        selected: (_, __) => _buildView(),
      ),
    );
  }
}
