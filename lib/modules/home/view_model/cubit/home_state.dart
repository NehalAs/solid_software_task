
/// Base state for the Home screen.
sealed class HomeState {}

/// Initial state for the Home screen.
final class HomeInitial extends HomeState {}

/// Change Background color state for the Home screen.
final class ChangeBackgroundHomeColorState extends HomeState {}

/// Add  color to recent colors list state for the Home screen.
final class AddToRecentColorsState extends HomeState {}
