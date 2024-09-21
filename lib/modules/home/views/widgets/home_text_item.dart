import 'package:flutter/material.dart';
import 'package:solid_software_task/utils/app_strings.dart';
import 'package:solid_software_task/utils/styles.dart';

/// Home Text
class HomeTextItem extends StatelessWidget {
  /// Home Text constructor
  const HomeTextItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.welcomeMessage,
        style: Styles.textStyle20w600().copyWith(color: Colors.white),
      ),
    );
  }
}
