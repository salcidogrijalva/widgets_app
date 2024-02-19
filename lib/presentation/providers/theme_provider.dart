import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// List of available colors for this app's theme.
final colorListProvider = Provider((ref) => colors);

// Is dark mode enabled?
final darkModeProvider = StateProvider<bool>((ref) => false);

// Selected color to determine app's color scheme.
final selectedColorProvider = StateProvider<int>((ref) => 0);

// Object of type AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  
  ThemeNotifier(): super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorScheme(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}