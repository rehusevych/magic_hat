import 'package:flutter/material.dart';
import 'package:magic_hat_task/presentation/core/colors.dart';
import 'package:magic_hat_task/presentation/core/theme/theme.dart';

BorderSide _underLineBorder =
    BorderSide(color: AppColors.secondary.withOpacity(0.2));

class AppTextField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final TextEditingController controller;

  const AppTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.onChanged,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      obscureText: widget.isPassword && !_isPasswordVisible,
      textInputAction: TextInputAction.next,
      onChanged: (text) => widget.onChanged?.call(text),
      style: context.appTextTheme.caption
          .copyWith(
            fontWeight: FontWeight.w600,
          )
          .paint(AppColors.secondary),
      decoration: InputDecoration(
        labelText: widget.hintText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.secondary,
                ),
              )
            : null,
        labelStyle: context.appTextTheme.caption
            .copyWith(
              fontWeight: FontWeight.w600,
            )
            .paint(AppColors.secondary),
        border: UnderlineInputBorder(
          borderSide: _underLineBorder,
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: _underLineBorder,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: _underLineBorder,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: _underLineBorder,
        ),
      ),
    );
  }
}
