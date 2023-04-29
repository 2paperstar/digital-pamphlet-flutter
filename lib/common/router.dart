import 'package:digital_pamphlet/core/presentation/view/main_view.dart';
import 'package:digital_pamphlet/notification/presentation/view/notification_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const MainView(),
    routes: [
      GoRoute(
        path: 'notification',
        builder: (context, state) => const NotificationView(),
      ),
    ],
  ),
]);
