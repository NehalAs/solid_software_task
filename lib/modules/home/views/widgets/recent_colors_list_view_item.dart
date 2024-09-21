import 'package:flutter/material.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_cubit.dart';

/// List view item
class RecentColorsListViewItem extends StatelessWidget {
  /// constructor
  const RecentColorsListViewItem({required this.color, super.key});

  /// color
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => HomeCubit.get(context).selectBackgroundHomeColor(color),
      child: Container(
        width: 50,
        height: 50,
        decoration: ShapeDecoration(
          shape: const OvalBorder(side: BorderSide()),
          color: color,
        ),
      ),
    );
  }
}
