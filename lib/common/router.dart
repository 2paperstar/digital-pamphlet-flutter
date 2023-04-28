import 'package:digital_pamphlet/core/presentation/view/main_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const MainView(),
  )
]);
