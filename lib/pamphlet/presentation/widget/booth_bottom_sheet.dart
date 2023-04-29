import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BoothBottomSheet extends StatelessWidget {
  const BoothBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Container(
              color: Colors.red,
              height: 200,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  splashRadius: 20,
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '커피를 내려 파는 곳',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 16),
                const Text('즐거운 마음으로 커피를 내려 파는 곳'),
                const Text('0000'),
                const SizedBox(height: 8),
                const Text('운영 중 • 대기열 n 명'),
                Expanded(child: Container()),
                ElevatedButton(
                  onPressed: () => context
                    ..pop()
                    ..read<BottomNavigationBloc>().add(
                      const BottomNavigationEvent.select(
                          BottomNavigationItems.description),
                    ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  child: const Text('상세히 보러가기'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
