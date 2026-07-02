// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFontStyle {
  static double _getResponsiveFontSize(BuildContext context, double baseSize) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final shortestSide = mediaQuery.size.shortestSide;
    final aspectRatio = mediaQuery.size.aspectRatio;
    final pixelRatio = mediaQuery.devicePixelRatio;
    final textScaleFactor = mediaQuery.textScaleFactor;

    // Base width yang umum digunakan di banyak desain UI: iPhone 11 / Android standar
    const baseWidth = 375.0;

    // Hitung skala berdasarkan lebar layar
    double widthScale = screenWidth / baseWidth;

    // Deteksi apakah layar tergolong tablet (gunakan shortestSide agar fold dianggap phone)
    bool isTablet = shortestSide >= 600;

    // Deteksi khusus foldable (contoh: Galaxy Z Fold)
    // biasanya ratio layar lebih kotak (aspectRatio ~1.0 - 1.3) tapi shortestSide < 600
    bool isFoldable = !isTablet && aspectRatio < 1.4 && shortestSide > 500;

    // Penyesuaian density (jika > 3.0 maka kemungkinan Android flagship atau iPhone Pro)
    double densityAdjustment = pixelRatio > 3.0 ? 1.05 : 1.0;

    // Text scale factor dari user (aksesibilitas)
    double userTextScaling = textScaleFactor.clamp(0.85, 1.2);

    // Adjustment scaling
    double tabletAdjustment = isTablet ? 1.15 : 1.0;
    double foldableAdjustment = isFoldable ? 0.98 : 0.6;

    // Final font size
    double finalFontSize = baseSize * widthScale * densityAdjustment * tabletAdjustment * foldableAdjustment * userTextScaling;

    // Clamp ukuran agar tetap readable dan tidak terlalu besar/kecil
    return finalFontSize.clamp(baseSize * 1.01, baseSize * 1.6);
  }

  static TextStyle heading1(BuildContext context, {Color? color}) {
    return GoogleFonts.openSans(
      fontSize: _getResponsiveFontSize(context, 32),
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle heading2(BuildContext context, {Color? color}) {
    return GoogleFonts.openSans(
      fontSize: _getResponsiveFontSize(context, 28),
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle heading3(BuildContext context, {Color? color, FontWeight? fontWeight = FontWeight.w600}) {
    return GoogleFonts.openSans(
      fontSize: _getResponsiveFontSize(context, 24),
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle bodyExtraSuperLarge(BuildContext context, {Color? color, FontWeight? fontWeight = FontWeight.w600}) {
    return GoogleFonts.openSans(
      fontSize: _getResponsiveFontSize(context, 20),
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle bodyExtraLarge(BuildContext context, {Color? color, FontWeight? fontWeight = FontWeight.w500}) {
    return GoogleFonts.openSans(
      fontSize: _getResponsiveFontSize(context, 18),
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle bodyLarge(BuildContext context, {Color? color, FontWeight? fontWeight = FontWeight.normal}) {
    return GoogleFonts.openSans(
      fontSize: _getResponsiveFontSize(context, 16),
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle bodyMedium(BuildContext context, {Color? color, FontWeight? fontWeight = FontWeight.normal}) {
    return GoogleFonts.openSans(
      fontSize: _getResponsiveFontSize(context, 14),
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle bodySmall(BuildContext context, {Color? color, FontWeight? fontWeight = FontWeight.normal}) {
    return GoogleFonts.openSans(
      fontSize: _getResponsiveFontSize(context, 12),
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle caption(BuildContext context, {Color? color}) {
    return GoogleFonts.openSans(
      fontSize: _getResponsiveFontSize(context, 10),
      fontWeight: FontWeight.normal,
      color: color,
    );
  }
}