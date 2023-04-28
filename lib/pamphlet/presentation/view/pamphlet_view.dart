import 'package:flutter/material.dart';

class PamphletView extends StatelessWidget {
  const PamphletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            itemBuilder: (context, index) => Chip(label: Text('${index + 1}층')),
          ),
        ),
        Container(
          height: 400,
          color: Colors.red,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
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
                        children: const [
                          Icon(Icons.menu),
                          Text('상세보기'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
