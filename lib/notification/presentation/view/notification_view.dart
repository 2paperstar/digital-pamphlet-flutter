import 'package:digital_pamphlet/notification/presentation/view/notification_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('알림'),
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.close),
          ),
          bottom: const TabBar(
            tabs: [Tab(text: '행사'), Tab(text: '부스들')],
          ),
        ),
        body: const TabBarView(
          children: [
            NotificationList(),
            NotificationList(),
          ],
        ),
      ),
    );
  }
}
