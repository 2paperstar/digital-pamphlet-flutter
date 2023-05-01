import 'dart:math';

import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BoothBottomSheet extends StatelessWidget {
  final String name;
  final String title;
  final String subTitle;
  final int current;

  const BoothBottomSheet({
    super.key,
    required this.name,
    required this.title,
    required this.subTitle,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            SizedBox(
              height: 200,
              child: Image.network(
                'https://picsum.photos/400/200?${Random().nextInt(10000)}',
                fit: BoxFit.cover,
              ),
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
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 16),
                Text(title),
                Text(subTitle),
                const SizedBox(height: 8),
                Text('운영 중 • 대기열 $current 명'),
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
