import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 40,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, index) => ListTile(
        title: const Text('Notification'),
        subtitle: const Text('description'),
        leading: const CircleAvatar(
          child: Text('N'),
        ),
        trailing: Text(DateFormat.jm().format(DateTime.now())),
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
