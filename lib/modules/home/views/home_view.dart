import 'package:flutter/material.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_cubit.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_state.dart';
import 'package:solid_software_task/modules/home/views/widgets/home_view_body.dart';


/// A stateless widget for the home view.
class HomeView extends StatelessWidget {
  /// Constructor for HomeView.
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
