import 'package:digital_pamphlet/booth/presentation/bloc/items_search_bloc.dart';
import 'package:digital_pamphlet/booth/presentation/widget/booth_item.dart';
import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoothItemsSearchView extends StatelessWidget {
  const BoothItemsSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ItemsSearchBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Builder(builder: (context) {
                  return TextFormField(
                    onChanged: (value) {
                      context
                          .read<ItemsSearchBloc>()
                          .add(ItemsSearchEvent.changeQuery(value));
                    },
                    decoration: const InputDecoration(
                      icon: Icon(Icons.search),
                    ),
                  );
                }),
              ),
              Expanded(
                child: BlocBuilder<ItemsSearchBloc, ItemsSearchState>(
                  builder: (context, state) => state.maybeWhen(
                    searched: (query, data) => ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => const BoothItem(),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 8),
                      itemCount: data.length,
                    ),
                    orElse: () => Container(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
