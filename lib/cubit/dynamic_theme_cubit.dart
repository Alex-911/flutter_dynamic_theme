import 'package:flutter_dynamic_theme/themes/themes.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'dynamic_theme_state.dart';

class DynamicThemeCubit extends HydratedCubit<DynamicThemeState> {
  DynamicThemeCubit() : super(const DynamicThemeState(theme: AppTheme.redDark));

  @override
  DynamicThemeState? fromJson(Map<String, dynamic> json) {
    final theme = json['theme'];

    AppTheme currentTheme =
        AppTheme.values.firstWhere((e) => e.toString() == theme);

    return DynamicThemeState(theme: currentTheme);
  }

  @override
  Map<String, dynamic>? toJson(DynamicThemeState state) {
    final theme = {
      'theme': state.theme.toString(),
    };

    return theme;
  }

  void changeTheme({required AppTheme theme}) =>
      emit(DynamicThemeState(theme: theme));
}
