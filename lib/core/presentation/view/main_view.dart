import 'package:digital_pamphlet/booth/presentation/view/booth_description_view.dart';
import 'package:digital_pamphlet/booth/presentation/view/booth_events_view.dart';
import 'package:digital_pamphlet/booth/presentation/view/booth_items_view.dart';
import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_items.dart';
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:digital_pamphlet/core/presentation/bloc/exhibition/exhibition_bloc.dart';
import 'package:digital_pamphlet/exhibition/presentation/view/exhibition_events_view.dart';
import 'package:digital_pamphlet/pamphlet/presentation/view/pamphlet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  Widget _buildInputCode() {
    return Builder(
      builder: (context) => Container(
        color: Colors.grey,
        child: AlertDialog(
          title: const Text('행사장 코드 입력'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('해당 행사장의 입구에서 부여 받은 행사장 코드를 입력해 주시면 감사하겠습니다'),
              TextFormField(
                onChanged: (value) => context
                    .read<ExhibitionBloc>()
                    .add(ExhibitionEvent.changeCode(value)),
              ),
            ],
          ),
          actions: [
            BlocBuilder<ExhibitionBloc, ExhibitionState>(
              builder: (context, state) {
                return TextButton(
                  onPressed: state.code.isEmpty
                      ? null
                      : () => context
                          .read<ExhibitionBloc>()
                          .add(const ExhibitionEvent.entrance()),
                  child: const Text('입장'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPages() {
    const pages = [
      PamphletView(),
      BoothDescriptionView(),
      BoothItemsView(),
      BoothEventsView(),
      ExhibitionEventsView(),
    ];
    return DefaultTabController(
      length: pages.length,
      child: BlocProvider(
        create: (context) => getIt<DetailSelectBloc>(),
        child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
          builder: (context, state) {
            final tabController = DefaultTabController.of(context);
            return BlocListener<BottomNavigationBloc, BottomNavigationState>(
              listener: (context, state) =>
                  tabController.animateTo(state.item.index),
              listenWhen: (previous, current) => previous.item != current.item,
              child: Scaffold(
                body: const SafeArea(child: TabBarView(children: pages)),
                bottomNavigationBar: AnimatedBuilder(
                  animation: tabController.animation!,
                  builder: (context, snapshot) {
                    return BottomNavigationBar(
                      currentIndex: tabController.index,
                      onTap: (value) => context
                          .read<BottomNavigationBloc>()
                          .add(BottomNavigationEvent.select(
                            BottomNavigationItems.values[value],
                          )),
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: '행사장',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.info),
                          label: '부스설명',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.category),
                          label: '부스물품',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.local_activity),
                          label: '부스이벤트',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.celebration),
                          label: '행사이벤트',
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExhibitionBloc, ExhibitionState>(
      builder: (context, state) => state.when(
        unselected: (_) => _buildInputCode(),
        validating: (_) => const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
        selected: (_, __) => _buildPages(),
      ),
    );
  }
}
