import 'dart:math';

import 'package:digital_pamphlet/booth/presentation/widget/select_booth_helper.dart';
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoothDescriptionView extends StatelessWidget {
  const BoothDescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailSelectBloc, DetailSelectState>(
      builder: (context, state) => state.when(
        unselected: (_) => const SelectBoothHelper(),
        selected: (_, __) => SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 400,
                child: Image.asset(
                  'assets/images/untitled.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
