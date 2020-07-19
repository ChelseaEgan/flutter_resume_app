import 'package:flutter/material.dart';

class Styles {
  // Font sizes
  static const _textSizeDefault = 14.0;
  static const _textSizeLarge = 25.0;
  static const _textSizeMedium = 16.0;
  static const _textSizeSmall = 12.0;
  static const _textSizeXLarge = 40.0;

  // Fonts
  static final String _fontNameDefault = 'Poppins';
  static final String _fontNameDisplay = 'FredokaOne';

  // Colors
  static final Color _colorBackground = Colors.grey[300];
  static final Color _colorPrimary = Colors.blueGrey[900];
  static final Color _colorSecondary = Colors.deepPurple[100];
  static final Color _colorSecondaryDark = Color(0xffa094b7);

  static final headerLarge = TextStyle(
      fontFamily: _fontNameDisplay,
      fontSize: _textSizeLarge,
      color: _colorPrimary);

  static final headerXLarge = TextStyle(
      fontFamily: _fontNameDisplay,
      fontSize: _textSizeXLarge,
      color: _colorPrimary);

  static final subheaderBold = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: FontWeight.w700,
      fontSize: _textSizeMedium,
      color: _colorSecondaryDark);

  static final bodyText = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: FontWeight.w500,
      fontSize: _textSizeDefault,
      color: _colorPrimary);

  static final smallText = TextStyle(
    fontFamily: _fontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: _textSizeSmall,
    color: _colorPrimary,
  );

  static Color get colorBackground => _colorBackground;
  static Color get colorPrimary => _colorPrimary;
  static Color get colorSecondary => _colorSecondary;
  static String get fontNameDefault => _fontNameDefault;
}
