import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_pokemon_app/presenter/themes/themes.dart';

part 'settings_event.freezed.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.themeChanged(AppTheme theme) = SettingsThemeChanged;
}
