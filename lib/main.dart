import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:digital_pamphlet/common/router.dart';
import 'package:digital_pamphlet/common/theme.dart';
import 'package:digital_pamphlet/core/presentation/bloc/exhibition/exhibition_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<BottomNavigationBloc>()),
        BlocProvider(create: (_) => getIt<ExhibitionBloc>()),
      ],
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: theme,
        ),
      ),
    );
  }
}
