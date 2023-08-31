import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Ref: https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/gallery/themes.dart

final kLightTheme = _buildLightTheme();
final kDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  const Color primaryColor = Colors.white;
  const Color secondaryColor = Colors.white;
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
  );
  final ThemeData base = ThemeData(
    primaryColor: primaryColor,
    primaryColorLight: Colors.white,
    primaryColorDark: Colors.white,
    indicatorColor: Colors.white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    canvasColor: Colors.white,
    dividerColor: Colors.black12,
    scaffoldBackgroundColor: Colors.white,

    ///For Cupertino elements in Light theme
    cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: primaryColor, brightness: Brightness.light),

    ///For tooltip
    brightness: Brightness.light,
    primaryTextTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
    ),
    appBarTheme: const AppBarTheme(iconTheme: IconThemeData(color: Colors.black)),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xFF1E88E5);
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xFF1E88E5);
        }
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xFF1E88E5);
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xFF1E88E5);
        }
        return null;
      }),
    ),
    colorScheme: colorScheme
        .copyWith(background: Colors.black87)
        .copyWith(error: const Color(0xFFB00020))
        .copyWith(secondary: secondaryColor),
  );
  return base.copyWith(
    textTheme: base.textTheme,
    primaryTextTheme: base.primaryTextTheme,
  );
}

ThemeData _buildDarkTheme() {
  const Color primaryColor = Colors.black;
  const Color secondaryColor = Colors.black87;
  final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
  );
  final ThemeData base = ThemeData(
      primaryColor: primaryColor,
      primaryColorDark: Colors.black,
      primaryColorLight: secondaryColor,
      indicatorColor: Colors.white,
      dividerColor: Colors.grey,
      canvasColor: const Color(0xFF202124),
      scaffoldBackgroundColor: const Color(0xFF202124),

      ///For tooltip
      brightness: Brightness.dark,
      primaryTextTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
      ),
      cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: primaryColor,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return const Color(0xFF6997DF);
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return const Color(0xFF6997DF);
          }
          return null;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return const Color(0xFF6997DF);
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return const Color(0xFF6997DF);
          }
          return null;
        }),
      ),
      colorScheme: const ColorScheme.dark().copyWith(
        error: const Color(0xFFB00020),
        secondary: secondaryColor,
        primary: Colors.black,
      ));
  return base.copyWith(
    textTheme: base.textTheme,
    primaryTextTheme: base.primaryTextTheme,
  );
}
