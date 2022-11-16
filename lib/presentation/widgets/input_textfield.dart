import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String? Function(dynamic value) validator;
  final TextEditingController controller;
  final String labeltext;
  final TextInputType keyboardType;
  final IconData icon;
  const InputTextField(
      {required this.validator,
      required this.controller,
      required this.keyboardType,
      required this.labeltext,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: labeltext,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontFamily: 'acme'),
        filled: true,
      ),
    );
  }
}
