import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final double fontSize;
  final Color fontColor;
  final Color fillColor;
  final FontWeight fontWeight;
  final void Function()? onTap;

  const CustomElevatedButton({
    required this.height,
    required this.width,
    required this.title,
    this.fontSize = 14,
    this.fontColor = Colors.white,
    this.fillColor = const Color(0XFF389BE5),
    this.fontWeight = FontWeight.w500,
    this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: fillColor
        ),
        child: Text(title, style: GoogleFonts.openSans(fontSize: fontSize, color: fontColor, fontWeight: fontWeight),),
      ),
    );
  }
}

class CustomElevatedGradientButton extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final double fontSize;
  final Color fontColor;
  final bool loadingState;
  final FontWeight fontWeight;
  final void Function()? onTap;

  const CustomElevatedGradientButton({
    required this.height,
    required this.width,
    required this.title,
    required this.loadingState,
    this.fontSize = 14,
    this.fontColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color(0XFF592EF2),
              Color(0XFF7A58F5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: loadingState
        ? SizedBox(
          width: fontSize + 8,
          height: fontSize + 8,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(fontColor),
            strokeWidth: 2,
          ),
        )
        : Text(
          title,
          style: GoogleFonts.openSans(
            fontSize: fontSize,
            color: fontColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

class CustomElevatedButtonDisabled extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final double fontSize;
  final FontWeight fontWeight;

  const CustomElevatedButtonDisabled({
    required this.height,
    required this.width,
    required this.title,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: const Color(0XFFEDEDED)
      ),
      child: Text(title, style: GoogleFonts.openSans(fontSize: fontSize, color: Colors.grey, fontWeight: fontWeight),),
    );
  }
}

class CustomElevatedButtonOutline extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final Color outlineColor;
  final double fontSize;
  final Color fontColor;
  final Color fillColor;
  final FontWeight fontWeight;
  final void Function()? onTap;

  const CustomElevatedButtonOutline({
    required this.height,
    required this.width,
    required this.title,
    required this.outlineColor,
    this.fontSize = 14,
    this.fontColor = Colors.black,
    this.fillColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          border: Border.all(color: outlineColor, width: 1.5),
          color: fillColor
        ),
        child: Text(title, style: GoogleFonts.openSans(fontSize: fontSize, color: fontColor, fontWeight: fontWeight),),
      ),
    );
  }
}