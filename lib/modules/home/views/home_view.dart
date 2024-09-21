import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_cubit.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_state.dart';
import 'package:solid_software_task/modules/home/views/widgets/home_view_body.dart';


/// A stateless widget for the home view.
class HomeView extends StatelessWidget {
  /// Constructor for HomeView.
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // ignore: avoid_unused_parameters
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        // ignore: avoid_unused_parameters
        builder: (context,state) {

          final HomeCubit homeCubit=HomeCubit.get(context);

          return  GestureDetector(
            onTap: homeCubit.changeBackgroundHomeColor,
            child: Scaffold(
              backgroundColor:homeCubit.backgroundHomeColor,
              body: const HomeViewBody(),
            ),
          );
        },
      ),
    );
  }
}
