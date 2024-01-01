import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/styles.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.textEditingController,
    this.keyboardType,
    this.onChanged,
    this.onTap,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.focusNode,
     this.labelText,
     this.hintText,
    this.suffixIcon,
    this.contentPadding,
    this.icon,
    this.obscureText = false,
    this.readOnly = false,
    this.inputFormatters,
    this.textFieldName = '',
    this.maxLines = 1,
    this.initialValue = '',
    this.autoFocus = false,
    this.enabled,
    this.onSuffixIconPressed,
    this.paddingLeft,
    this.paddingRight,
    this.height,
    this.isPassword ,
    this.isEnabled ,
    required this.title,
    this.titleColor = Colors.black,
    this.prefixIcon,
    this.prefixText,
    this.errorColor,
    required this.hint, required this.textDirection,
  });

  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final Function(String?)? onChanged;
  final GestureTapCallback? onTap;
  final ValueChanged<String?>? onFieldSubmitted;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final Widget? icon;
  final bool readOnly;
  final List? inputFormatters;
  final String textFieldName;
  final int maxLines;
  final String? initialValue;
  final bool? autoFocus;
  final bool? enabled;
  final GestureTapCallback? onSuffixIconPressed;
  final double? paddingLeft;
  final double? paddingRight;
  final double? height;
  final ValueNotifier<bool>? isPassword;
  final ValueNotifier<bool>? isEnabled;
  final String title;
  final Color? titleColor;
  final Widget? prefixIcon;
  final String? prefixText;
  final Color? errorColor;
  final String hint;
  final TextDirection textDirection;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          textDirection: TextDirection.rtl,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: Text(
                title,
                style: Styles.textStyle20.copyWith(
                  color: titleColor,
                ),
              ),
            ),
          ],
        ),
        FormBuilderTextField (
          enabled: isEnabled?.value??true,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 21.sp,
          ),
          textDirection: textDirection,
          obscureText: isPassword?.value??false,
          onChanged: onChanged,
          controller: textEditingController,
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical: 17.h),
            //  contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            errorStyle: TextStyle(
              color: errorColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            hintStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            hintTextDirection: TextDirection.rtl,
            prefixText: prefixText,
            prefixStyle: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xffFFAA36),
                width: 2.w,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xffFFAA36),
                width: 2.w,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xffFFAA36),
                width: 2.w,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xffFFAA36),
                width: 2.w,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ), name: textFieldName,
        ),
      ],
    );
  }
}
//0B!vUp!Kz$
