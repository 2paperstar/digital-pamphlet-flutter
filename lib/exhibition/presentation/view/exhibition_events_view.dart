import 'package:digital_pamphlet/exhibition/presentation/widget/exhibition_event_item.dart';
import 'package:flutter/material.dart';

class ExhibitionEventsView extends StatelessWidget {
  const ExhibitionEventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              '행사 이벤트',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            itemBuilder: (context, index) => const ExhibitionEventItem(),
            separatorBuilder: (context, index) => const SizedBox(height: 40),
            itemCount: 20,
          ),
        ],
      ),
    );
  }
}
