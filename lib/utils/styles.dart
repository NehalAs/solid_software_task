import 'package:flutter/material.dart';

/// A utility class that provides reusable text styles.
abstract class Styles {

  /// Returns a TextStyle with font size 20 and font weight 600.
  static TextStyle textStyle20w600() {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );
  }
}