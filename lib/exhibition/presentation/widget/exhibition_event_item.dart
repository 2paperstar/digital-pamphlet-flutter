import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExhibitionEventItem extends StatelessWidget {
  const ExhibitionEventItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CircleAvatar(radius: 12),
            SizedBox(width: 8),
            Text('${"뜨거운 아아는 싫어요"}님'),
          ],
        ),
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 8),
                      const Text(
                        '오늘 커피관련 글 추천이요',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${DateFormat.yMd().format(DateTime.now())} 조회수 ${226}',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_upward_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
