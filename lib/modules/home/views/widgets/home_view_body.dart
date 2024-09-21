import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_cubit.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_state.dart';
import 'package:solid_software_task/modules/home/views/widgets/home_text_item.dart';
import 'package:solid_software_task/modules/home/views/widgets/recent_colors_list_view.dart';
import 'package:solid_software_task/utils/app_strings.dart';
import 'package:solid_software_task/utils/styles.dart';

/// A stateless widget for the home view body.
class HomeViewBody extends StatelessWidget {
  /// Constructor for HomeViewBody.
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // ignore: avoid_unused_parameters
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        // ignore: avoid_unused_parameters
        builder: (context, state) {
          final HomeCubit homeCubit = HomeCubit.get(context);

          return GestureDetector(
            onTap: homeCubit.changeBackgroundHomeColorRandomly,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              color: homeCubit.backgroundHomeColor,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Expanded(child: HomeTextItem()),
                    RecentColorsListView(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
