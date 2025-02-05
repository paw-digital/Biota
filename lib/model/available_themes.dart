import 'package:flutter/material.dart';
import 'package:natrium_wallet_flutter/themes.dart';
import 'package:natrium_wallet_flutter/model/setting_item.dart';

enum ThemeOptions { PAW, NATRIUM, TITANIUM, INDIUM, NEPTUNIUM, THORIUM, CARBON }

/// Represent notification on/off setting
class ThemeSetting extends SettingSelectionItem {
  ThemeOptions theme;

  ThemeSetting(this.theme);

  String getDisplayName(BuildContext context) {
    switch (theme) {
      case ThemeOptions.CARBON:
        return "Mountaniota";
      case ThemeOptions.THORIUM:
        return "Temperiota";
      case ThemeOptions.NEPTUNIUM:
        return "Oceaniota";
      case ThemeOptions.INDIUM:
        return "Rainiota";
      case ThemeOptions.TITANIUM:
        return "Tundriota";
      case ThemeOptions.NATRIUM:
        return "Alaskaiota";
      case ThemeOptions.PAW:
      default:
        return "Biota";
    }
  }

  BaseTheme getTheme() {
    switch (theme) {
      case ThemeOptions.CARBON:
        return CarbonTheme();
      case ThemeOptions.THORIUM:
        return ThoriumTheme();
      case ThemeOptions.NEPTUNIUM:
        return NeptuniumTheme();
      case ThemeOptions.INDIUM:
        return IndiumTheme();
      case ThemeOptions.TITANIUM:
        return TitaniumTheme();
      case ThemeOptions.NATRIUM:
        return NatriumTheme();
      case ThemeOptions.PAW:
      default:
        return PawTheme();
    }
  }

  // For saving to shared prefs
  int getIndex() {
    return theme.index;
  }
}
