import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final darkModeProvider = StateProvider<bool>((ref) => false);

// List of available colors for this app's theme.
final colorListProvider = Provider((ref) => colors);

final selectedColorProvider = StateProvider<int>((ref) => 0);