import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';

class InputFieldWidget extends HookWidget {
  const InputFieldWidget(
    this.context, {
    required this.name,
    required this.onChanged,
    this.initialValue,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.isSecret = false,
    Key? key,
  }) : super(key: key);

  final BuildContext context;
  final String name;
  final Function(String) onChanged;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool isSecret;

  @override
  Widget build(BuildContext context) {
    final togglePasswordVisibility = useState(!isSecret);

    return TextFormField(
      initialValue: initialValue ?? '',
      autocorrect: false,
      keyboardType: keyboardType,
      style: context.inputStyle,
      obscureText: !togglePasswordVisibility.value,
      decoration: InputDecoration(
        hintText: name,
        prefix: const Text("  "),
        hintStyle: context.hintStyle,
        errorStyle: context.errorStyle,
        enabledBorder: const UnderlineInputBorder(),
        suffixIcon: isSecret
            ? IconButton(
                splashRadius: 0.1,
                icon: Icon(
                  togglePasswordVisibility.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () {
                  togglePasswordVisibility.value =
                      !togglePasswordVisibility.value;
                },
              )
            : null,
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
// about lambda tear off
//* https://gist.github.com/KinjalDhamatTatva/cc77c4adecec6319afb004c53a3435c8#file-lambda_tear_off-dart
