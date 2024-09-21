import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_task/modules/home/view_model/cubit/home_state.dart';

/// Cubit that manages the state of the Home screen.
class HomeCubit extends Cubit<HomeState> {

  /// Default background color value
  Color backgroundHomeColor=Colors.black;
  /// Maximum value for RGB
  int maxColorValue = 255;
  /// Full opacity
  int alphaValue = 255;

  /// Creates a new instance of [HomeCubit] with the initial state.
  HomeCubit() : super(HomeInitial());

  /// Retrieves the [HomeCubit] instance from the given [context].
  /// This ensures that the same instance of [HomeCubit] is used throughout
  /// the widget tree, allowing for consistent state management.
  static HomeCubit get(BuildContext context) => BlocProvider.of(context);


  /// Function returns random color
  Color generateRandomColor()
  {
    final Random random = Random();

    return Color.fromARGB(
      alphaValue, //opacity
      random.nextInt(maxColorValue + 1), // Red
      random.nextInt(maxColorValue + 1), //green
      random.nextInt(maxColorValue + 1), //blue
    );
  }


  /// Change background color and emit it's state
  void changeBackgroundHomeColor()
  {
    backgroundHomeColor=generateRandomColor();
    emit(ChangeBackgroundHomeColorState());
  }
}
