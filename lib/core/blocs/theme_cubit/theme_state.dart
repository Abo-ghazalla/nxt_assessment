part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.dark() = _Dark;
  const factory ThemeState.light() = _Light;
}
