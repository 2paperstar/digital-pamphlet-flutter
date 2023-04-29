import 'package:flutter/material.dart';

class BoothItem extends StatelessWidget {
  const BoothItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
