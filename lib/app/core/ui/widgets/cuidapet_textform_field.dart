import 'package:cuidapet_adf/app/core/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CuidapetTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final String label;
  final bool isObscure;
  final ValueNotifier<bool> _obscureTextVN;

  CuidapetTextFormField({
    super.key,
    required this.label,
    this.isObscure = false,
    this.controller,
    this.validator,
  }) : _obscureTextVN = ValueNotifier<bool>(isObscure);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureTextVN,
      builder: (_, obscureTextVNValue, child) {
        return TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureTextVNValue,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            suffixIcon: isObscure
                ? IconButton(
                    onPressed: () {
                      _obscureTextVN.value = !obscureTextVNValue;
                    },
                    icon: Icon(
                      obscureTextVNValue ? Icons.lock : Icons.lock_open,
                      color: context.primaryColor,
                    ),
                  )
                : null,
          ),
        );
      },
    );
  }
}
