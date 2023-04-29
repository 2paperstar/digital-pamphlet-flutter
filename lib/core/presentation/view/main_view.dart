import 'package:digital_pamphlet/booth/presentation/view/booth_description_view.dart';
import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_items.dart';
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:digital_pamphlet/core/presentation/bloc/exhibition/exhibition_bloc.dart';
import 'package:digital_pamphlet/pamphlet/presentation/view/pamphlet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  Widget _buildPages() {
    const pages = [
      PamphletView(),
      BoothDescriptionView(),
      Text('2'),
      Text('3'),
      Text('4'),
    ];
    return BlocProvider(
      create: (context) => getIt<DetailSelectBloc>(),
      child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
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
                  label: '부스이벤트',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '행사이벤트',
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExhibitionBloc, ExhibitionState>(
      builder: (context, state) => state.when(
        unselected: (_) => Container(
          color: Colors.grey,
          child: AlertDialog(
            title: const Text('행사장 코드 입력'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('해당 행사장의 입구에서 부여 받은 행사장 코드를 입력해 주시면 감사하겠습니다'),
                TextFormField(
                  onChanged: (value) => () => context
                      .read<ExhibitionBloc>()
                      .add(ExhibitionEvent.changeCode(value)),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => context
                    .read<ExhibitionBloc>()
                    .add(const ExhibitionEvent.entrance()),
                child: const Text('입장'),
              ),
            ],
          ),
        ),
        selected: (code) => _buildPages(),
      ),
    );
  }
}
