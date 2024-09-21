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

  /// Colors history list
  List<Color> recentColors=[];

  /// Max list Length
  int maxListLength=10;

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
  void changeBackgroundHomeColorRandomly()
  {
    backgroundHomeColor=generateRandomColor();
    addColorToRecentList(backgroundHomeColor);
    emit(ChangeBackgroundHomeColorState());
  }

  /// Add color to recent colors list
  void addColorToRecentList(Color color)
  {
    if(recentColors.length == maxListLength)
      {
        recentColors.insert(0,color);
        recentColors.removeLast();
      }
    else{
      recentColors.insert(0,color);
    }

    emit(AddToRecentColorsState());
  }

  /// change color when press to specific color
   void selectBackgroundHomeColor(Color color)
   {
    backgroundHomeColor=color;
    emit(ChangeBackgroundHomeColorState());
  }
}
