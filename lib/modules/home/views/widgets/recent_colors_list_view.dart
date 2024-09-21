// ignore_for_file: avoid_unused_parameters
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_cubit.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_state.dart';
import 'package:solid_software_task/modules/home/views/widgets/recent_colors_list_view_item.dart';

/// Recent Colors ListView
class RecentColorsListView extends StatelessWidget {
  /// Recent Colors ListView constructor
  const RecentColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit homeCubit = HomeCubit.get(context);

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 50,
          child: ListView.separated(
            itemBuilder: (context, index) => RecentColorsListViewItem(
              color: homeCubit.recentColors[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 16,
            ),
            itemCount: homeCubit.recentColors.length,
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}
