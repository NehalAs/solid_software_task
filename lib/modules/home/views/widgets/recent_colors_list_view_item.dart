import 'package:flutter/material.dart';

/// List view item
class RecentColorsListViewItem extends StatelessWidget {
  /// constructor
  const RecentColorsListViewItem({required this.color, super.key});

  /// color
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
          shape: const OvalBorder(side: BorderSide()), color: color,),
    );
  }
}
