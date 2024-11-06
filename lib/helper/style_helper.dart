
import '../../extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

class AppCss {

  /// poppins font
  static TextStyle poppins = const  TextStyle(
    color: Colors.white,
    fontFamily: "Poppins",
    letterSpacing: 0,
    height: 1,
  );

  static TextStyle get poppinsSmallTextLight =>
      poppins.light.size(FontSizes.f12);

  //Text Style poppins extraThickBold
  static TextStyle get poppinsH1 =>
      poppins.extraThickBold.size(FontSizes.f20);
  static TextStyle get poppinsH2 =>
      poppins.extraThickBold.size(FontSizes.f18);

  //Text Style poppins Medium
  static TextStyle get poppinsTitle2 =>
      poppins.medium.size(FontSizes.f14);
  static TextStyle get poppinsLargeButton =>
      poppins.medium.size(FontSizes.f18);
  static TextStyle get poppinsMediumText =>
      poppins.medium.size(FontSizes.f12);

  //Text Style poppins SemiBold
  static TextStyle get poppinsH3 => poppins.semiBold.size(FontSizes.f16);
  static TextStyle get poppinsTitle1 =>
      poppins.semiBold.size(FontSizes.f14);
  static TextStyle get poppinsTagText =>
      poppins.semiBold.size(FontSizes.f10);
  static TextStyle get poppinsTitle3 =>
      poppins.semiBold.size(FontSizes.f12);

  //Text Style poppins regular
  static TextStyle get poppinsSmallText =>
      poppins.regular.size(FontSizes.f12);
  static TextStyle get poppinsLargeText =>
      poppins.regular.size(FontSizes.f14);

  //Text Style poppins extraBold
  static TextStyle get poppinsPrice =>
      poppins.extraBold.size(FontSizes.f16);

  static TextStyle get poppinsBoldF12 =>
      poppins.extraBold.size(FontSizes.f12);
  static TextStyle get poppinsBoldF13 =>
      poppins.extraBold.size(FontSizes.f13);
  static TextStyle get poppinsBoldF14 =>
      poppins.extraBold.size(FontSizes.f14);

  static TextStyle get poppinsH3Bold => poppins.bold.size(FontSizes.f16);
  static TextStyle get poppinsTagTextBold =>
      poppins.bold.size(FontSizes.f10);
  static TextStyle get poppinsTitle3Bold =>
      poppins.bold.size(FontSizes.f12);
  static TextStyle get poppinsTitle2Bold =>
      poppins.bold.size(FontSizes.f14);
  static TextStyle get poppinsTitle1Bold =>
      poppins.bold.size(FontSizes.f14);
}


class FontSizes {
  static const double scale = 1;

  static const double f5 = 5.0 * scale;
  static const double f7 = 7.0 * scale;
  static const double f8 = 8.0 * scale;
  static const double f10 = 10 * scale;
  static const double f11 = 11.0 * scale;
  static const double f12 = 12.0 * scale;
  static const double f13 = 13.0 * scale;
  static const double f14 = 14.0 * scale;
  static const double f15 = 15.0 * scale;
  static const double f16 = 16.0 * scale;
  static const double f18 = 18.0 * scale;
  static const double f20 = 20.0 * scale;
  static const double f24 = 24.0 * scale;
}