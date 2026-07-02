import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:management_asset/presentations/theme/colors_style_theme.dart';
import 'package:management_asset/presentations/theme/text_style_theme.dart';

class CustomTextFieldBase extends StatelessWidget {
  final TextEditingController? controller;
  final Color color;
  final Color fillColor;
  final String hintText;
  final String? prefixText;
  final Widget? prefix;
  final bool obsure;
  final bool? isUppercase;
  final bool autoShowKeyboard;
  final double customRadius;
  final double? fontSize;
  final Function(String)? onchange;
  final FormFieldValidator<String>? validatorText;
  final TextInputType? textInputType;
  final Widget? suffixWidget;
  final List<TextInputFormatter>? textInputFormatter;

  const CustomTextFieldBase({
    this.controller,
    required this.color,
    this.fillColor = Colors.white,
    required this.hintText,
    this.prefixText,
    this.prefix,
    this.obsure = false,
    this.isUppercase = false,
    this.autoShowKeyboard = false,
    this.customRadius = 10,
    this.fontSize = 14,
    this.textInputType,
    this.textInputFormatter,
    this.onchange,
    this.validatorText,
    this.suffixWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: textInputFormatter,
      keyboardType: textInputType,
      obscureText: obsure,
      validator: validatorText,
      style: AppFontStyle.bodyMedium(context, color: primaryDark,),
      autofocus: autoShowKeyboard,
      textCapitalization: isUppercase == true ? TextCapitalization.words : TextCapitalization.none,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
        filled: true,
        alignLabelWithHint: true,
        fillColor: fillColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1,)
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          borderSide: BorderSide(width: 1, color: Colors.red)
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          borderSide: BorderSide(width: 1, color: Colors.red)
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 20, maxWidth: 50),
        hintText: hintText,
        hintStyle: AppFontStyle.bodyMedium(context, color: primaryDark),
        suffixIcon: suffixWidget,
        prefixIcon: prefix != null 
          ? Padding(
              padding: const EdgeInsets.only(left: 10, right: 8),
              child: prefix,
            )
          : null,
        prefixText: prefixText,
        prefixStyle: AppFontStyle.bodyLarge(context, color: Colors.white),
      ),
      onChanged: onchange,
    );
  }
}

class CustomTextFieldFullHeight extends StatelessWidget {
  final TextEditingController? controller;
  final Color color;
  final Color fillColor;
  final String hintText;
  final Widget? prefix;
  final bool obsure;
  final bool? isUppercase;
  final double customRadius;
  final double? fontSize;
  final Function(String)? onchange;
  final FormFieldValidator<String>? validatorText;
  final TextInputType? textInputType;
  final Widget? suffixWidget;
  final List<TextInputFormatter>? textInputFormatter;

  const CustomTextFieldFullHeight({
    this.controller,
    required this.color,
    this.fillColor = Colors.white,
    required this.hintText,
    this.prefix,
    this.obsure = false,
    this.isUppercase = false,
    this.customRadius = 10,
    this.fontSize = 14,
    this.textInputType,
    this.textInputFormatter,
    this.onchange,
    this.validatorText,
    this.suffixWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: textInputFormatter,
      keyboardType: textInputType,
      obscureText: obsure,
      validator: validatorText,
      style: AppFontStyle.bodyMedium(context, color: primaryDark),
      maxLines: 5,
      minLines: 3,
      textCapitalization: isUppercase == true ? TextCapitalization.words : TextCapitalization.none,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        filled: true,
        alignLabelWithHint: true,
        fillColor: fillColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1,)
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          borderSide: BorderSide(width: 1, color: Colors.red)
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          borderSide: BorderSide(width: 1, color: Colors.red)
        ),
        hintText: hintText,
        hintStyle: AppFontStyle.bodyMedium(context, color: primaryLight),
        prefixIcon: prefix,
        suffixIcon: suffixWidget,
      ),
      onChanged: onchange,
    );
  }
}

class CustomTextFieldBaseReadOnly extends StatelessWidget {
  final TextEditingController? controller;
  final Color color;
  final Color fillColor;
  final String hintText;
  final String? prefixText;
  final Widget? prefix;
  final bool? isUppercase;
  final double customRadius;
  final double? fontSize;
  final TextInputType? textInputType;
  final Widget? suffixWidget;
  final List<TextInputFormatter>? textInputFormatter;

  const CustomTextFieldBaseReadOnly({
    this.controller,
    required this.color,
    this.fillColor = Colors.white,
    required this.hintText,
    this.prefixText,
    this.prefix,
    this.isUppercase = false,
    this.customRadius = 10,
    this.fontSize = 14,
    this.textInputType,
    this.textInputFormatter,
    this.suffixWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: textInputFormatter,
      keyboardType: textInputType,
      readOnly: true,
      enabled: false,
      style: AppFontStyle.bodyMedium(context, color: Color(0XFF656565)),
      textCapitalization: isUppercase == true ? TextCapitalization.words : TextCapitalization.none,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        filled: true,
        alignLabelWithHint: true,
        fillColor: fillColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1,)
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 20, maxWidth: 50),
        hintText: hintText,
        hintStyle: AppFontStyle.bodyMedium(context, color: Color(0XFF656565)),
        suffixIcon: suffixWidget,
        prefixIcon: prefix != null 
          ? Padding(
              padding: const EdgeInsets.only(left: 10, right: 8),
              child: prefix,
            )
          : null,
        prefixText: prefixText,
        prefixStyle: AppFontStyle.bodyLarge(context, color: Colors.white),
      ),
    );
  }
}

class CustomTextFieldFullHeightReadOnly extends StatelessWidget {
  final TextEditingController? controller;
  final Color color;
  final Color fillColor;
  final String hintText;
  final Widget? prefix;
  final bool? isUppercase;
  final double customRadius;
  final double? fontSize;
  final TextInputType? textInputType;
  final Widget? suffixWidget;
  final List<TextInputFormatter>? textInputFormatter;

  const CustomTextFieldFullHeightReadOnly({
    this.controller,
    required this.color,
    this.fillColor = Colors.white,
    required this.hintText,
    this.prefix,
    this.isUppercase = false,
    this.customRadius = 10,
    this.fontSize = 14,
    this.textInputType,
    this.textInputFormatter,
    this.suffixWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: textInputFormatter,
      keyboardType: textInputType,
      readOnly: true,
      enabled: false,
      style: AppFontStyle.bodyMedium(context, color: Color(0XFF656565)),
      maxLines: 5,
      minLines: 3,
      textCapitalization: isUppercase == true ? TextCapitalization.words : TextCapitalization.none,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        filled: true,
        alignLabelWithHint: true,
        fillColor: fillColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(customRadius)),
          borderSide: BorderSide(width: 1, color: color),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1,)
        ),
        hintText: hintText,
        hintStyle: AppFontStyle.bodyMedium(context, color: Color(0XFF656565)),
        prefixIcon: prefix,
        suffixIcon: suffixWidget,
      ),
    );
  }
}