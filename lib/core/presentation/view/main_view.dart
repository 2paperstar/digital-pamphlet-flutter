import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_items.dart';
import 'package:digital_pamphlet/pamphlet/presentation/view/pamphlet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    const pages = [
      PamphletView(),
      PamphletView(),
      PamphletView(),
    ];
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(child: pages[state.item.index]),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.item.index,
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
                icon: Icon(Icons.home),
                label: '부스설명',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '부스물품',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '행사이벤트',
              ),
            ],
          ),
        );
      },
    );
  }
}