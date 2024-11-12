import 'dart:convert';

import 'package:cotr_flutter_app/app/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recase/recase.dart';

class TextUtils {
  // Case Conversions
  static String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  static String sentenceCase(String text) => ReCase(text).sentenceCase;
  static String titleCase(String text) => ReCase(text).titleCase;
  static String camelCase(String text) => ReCase(text).camelCase;
  static String snakeCase(String text) => ReCase(text).snakeCase;
  static String pascalCase(String text) => ReCase(text).pascalCase;
  static String constantCase(String text) => ReCase(text).constantCase;

  // String Validation
  static bool isNullOrEmpty(String? text) => text == null || text.isEmpty;
  static bool isNullOrWhitespace(String? text) => text == null || text.trim().isEmpty;
  static bool containsOnlyDigits(String text) => RegExp(r'^[0-9]+$').hasMatch(text);
  static bool isValidEmail(String text) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(text);
  }

  static bool isValidUrl(String text) {
    return Uri.tryParse(text)?.hasAbsolutePath ?? false;
  }

  // String Manipulation
  static String removeSpecialCharacters(String text) {
    return text.replaceAll(RegExp(r'[^a-zA-Z0-9\s]'), '');
  }

  static String truncate(
    String text,
    int maxLength, {
    String suffix = '...',
  }) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}$suffix';
  }

  static String reverse(String text) {
    return String.fromCharCodes(text.runes.toList().reversed);
  }

  // Text Formatting
  static String formatPhoneNumber(String number) {
    if (number.length != 10) return number;
    return '(${number.substring(0, 3)}) ${number.substring(3, 6)}-${number.substring(6)}';
  }

  static String formatCurrency(double amount, {String symbol = '\$', int decimals = 2}) {
    return '$symbol${amount.toStringAsFixed(decimals)}';
  }

  // Word Operations
  static int wordCount(String text) {
    return text.trim().split(RegExp(r'\s+')).length;
  }

  static List<String> extractUrls(String text) {
    return RegExp(r'https?://[^\s]+').allMatches(text).map((match) => match.group(0) ?? '').toList();
  }

  static String slugify(String text) {
    var slug = text.toLowerCase().trim();
    slug = slug.replaceAll(RegExp(r'[^a-z0-9\s-]'), '');
    slug = slug.replaceAll(RegExp(r'\s+'), '-');
    return slug;
  }

  // Security
  static String maskString(String text, {int visibleChars = 4, String mask = '*'}) {
    if (text.length <= visibleChars) return text;
    return '${text.substring(0, visibleChars)}${mask * (text.length - visibleChars)}';
  }

  // Encoding/Decoding
  static String encodeBase64(String text) {
    return base64.encode(utf8.encode(text));
  }

  static String decodeBase64(String encoded) {
    return utf8.decode(base64.decode(encoded));
  }

  // Text Search
  static bool containsIgnoreCase(String source, String search) {
    return source.toLowerCase().contains(search.toLowerCase());
  }

  static int occurrences(String text, String pattern) {
    return RegExp(pattern).allMatches(text).length;
  }
}

extension FastTextStyle on BuildContext {
  TextTheme get textTheme => GoogleFonts.figtreeTextTheme();

  TextStyle get bodySmall => textTheme.bodySmall!;

  TextStyle get bodyMedium => textTheme.bodyMedium!;

  TextStyle get bodyLarge => textTheme.bodyLarge!;

  TextStyle get labelSmall => textTheme.labelSmall!;

  TextStyle get labelMedium => textTheme.labelMedium!;

  TextStyle get labelLarge => textTheme.labelLarge!;

  TextStyle get titleSmall => textTheme.titleSmall!;

  TextStyle get titleMedium => textTheme.titleMedium!;

  TextStyle get titleLarge => textTheme.titleLarge!;

  TextStyle get headlineSmall => textTheme.headlineSmall!;

  TextStyle get headlineMedium => textTheme.headlineMedium!;

  TextStyle get headlineLarge => textTheme.headlineLarge!;

  TextStyle get displaySmall => textTheme.displaySmall!;

  TextStyle get displayMedium => textTheme.displayMedium!;

  TextStyle get displayLarge => textTheme.displayLarge!;
}

extension FastTextColor on TextStyle {
  BuildContext get context => router.navigatorKey.currentContext!;

  TextStyle get primary => copyWith(color: Theme.of(context).colorScheme.primary);

  TextStyle get secondary => copyWith(color: Theme.of(context).colorScheme.secondary);

  TextStyle get tertiary => copyWith(color: Theme.of(context).colorScheme.tertiary);

  TextStyle get onPrimary => copyWith(color: Theme.of(context).colorScheme.onPrimary);

  TextStyle get onSecondary => copyWith(color: Theme.of(context).colorScheme.onSecondary);

  TextStyle get onTertiary => copyWith(color: Theme.of(context).colorScheme.onTertiary);

  TextStyle get background => copyWith(color: Theme.of(context).colorScheme.background);

  TextStyle get onBackground => copyWith(color: Theme.of(context).colorScheme.onBackground);

  TextStyle get surface => copyWith(color: Theme.of(context).colorScheme.surface);

  TextStyle get onSurface => copyWith(color: Theme.of(context).colorScheme.onSurface);

  TextStyle get surfaceTint => copyWith(color: Theme.of(context).colorScheme.surfaceTint);

  TextStyle get error => copyWith(color: Theme.of(context).colorScheme.error);

  TextStyle get onError => copyWith(color: Theme.of(context).colorScheme.onError);

  TextStyle get outline => copyWith(color: Theme.of(context).colorScheme.outline);

  TextStyle get inversePrimary => copyWith(color: Theme.of(context).colorScheme.inversePrimary);

  TextStyle get inverseSurface => copyWith(color: Theme.of(context).colorScheme.inverseSurface);

  TextStyle get onInverseSurface => copyWith(color: Theme.of(context).colorScheme.onInverseSurface);

  TextStyle get white => copyWith(color: Colors.white);

  TextStyle get black => copyWith(color: Colors.black);

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
}
