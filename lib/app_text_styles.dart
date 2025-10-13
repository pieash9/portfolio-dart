import 'package:flutter/material.dart';

abstract class AppTextStyles {
  TextStyle get titleSmBold;
  TextStyle get bodyMdMedium;
  TextStyle get titleLgBold;
  TextStyle get titleMdMedium;
  TextStyle get bodyLgBold;
  TextStyle get bodyLgMedium;
}

class SmallTextStyles extends AppTextStyles {
  @override
  TextStyle get titleSmBold =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodyMdMedium =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  @override
  TextStyle get titleLgBold =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  TextStyle get titleMdMedium =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyLgBold =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodyLgMedium =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
}

class LargeTextStyles extends AppTextStyles {
  @override
  TextStyle get titleSmBold =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodyMdMedium =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

  @override
  TextStyle get titleLgBold =>
      const TextStyle(fontSize: 32, fontWeight: FontWeight.bold);

  @override
  TextStyle get titleMdMedium =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyLgBold =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodyLgMedium =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
}