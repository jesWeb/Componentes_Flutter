import 'package:flutter/material.dart';

class inputText extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const inputText({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
    
      onChanged: (value) => formValues[formProperty] = value,
     
      validator: (value) {
        if (value == null) {
          return 'Este campo es requerido';
        }
        return value.length < 3 ? 'Minimo de tres Letras' : null;
      },
    
      autovalidateMode: AutovalidateMode.onUserInteraction,
     
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: Icon(Icons.people),
      ),
    );
  }
}
