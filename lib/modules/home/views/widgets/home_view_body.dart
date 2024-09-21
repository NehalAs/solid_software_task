import 'package:flutter/material.dart';
import 'package:solid_software_task/utils/app_strings.dart';
import 'package:solid_software_task/utils/styles.dart';

/// A stateless widget for the home view body.
class HomeViewBody extends StatelessWidget {
  /// Constructor for HomeViewBody.
  const HomeViewBody({super.key});

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
