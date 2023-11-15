import 'package:finance_pay/common/constants/app_colors.dart';
import 'package:finance_pay/common/constants/app_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final int? maxLength;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? helperText;

  // validity
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.padding,
    this.hintText,
    this.labelText,
    this.textCapitalization,
    this.controller,
    this.maxLength,
    this.suffixIcon,
    this.obscureText,
    this.validator,
    this.helperText,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder =
      const OutlineInputBorder(borderSide: BorderSide(color: Colors.black));

  String? _helperText;

  @override
  void initState() {
    super.initState();
    _helperText = widget.helperText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            setState(() {
              _helperText = null;
            });
          } else if (value.isNotEmpty) {
            setState(() {
              _helperText = widget.helperText;
            });
          }
        },
        // validity
        validator: widget.validator,
        obscureText: widget.obscureText ?? false,
        maxLength: widget.maxLength,
        keyboardType: TextInputType.text,
        controller: widget.controller,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.words,
        decoration: InputDecoration(
          errorMaxLines: 3,
          helperMaxLines: 3,
          helperText: _helperText,
          suffixIcon: widget.suffixIcon,
          hintText: widget.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: AppText.mediumText.copyWith(color: AppColors.pinkColor),
          labelText: widget.labelText?.toUpperCase(),
          border: defaultBorder,
          focusedBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(color: AppColors.pinkColor),
          ),
          errorBorder: defaultBorder,
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}
