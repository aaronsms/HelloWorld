import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/presentation/core/palette.dart';

class RegisterAccountForm extends StatelessWidget {
  final IconData icon;
  final String labelText;
  final bool obscureText;
  final TextInputType textInputType;
  final List<TextInputFormatter> inputFormatters;
  final String Function(String input) validator;
  final String initialField;
  final void Function(String input) onChanged;
  final void Function() iconOnPressed;

  const RegisterAccountForm(
      {Key key,
      @required this.icon,
      @required this.labelText,
      this.obscureText = false,
      this.validator,
      this.onChanged,
      this.iconOnPressed,
      this.textInputType,
      this.inputFormatters, this.initialField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        validator: validator,
        obscureText: obscureText,
        onChanged: onChanged,
        keyboardType: textInputType,
        inputFormatters: inputFormatters,
        initialValue: initialField,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: iconOnPressed,
            icon: Icon(
              icon,
              color: Palette.primaryColor,
            ),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Palette.primaryColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(
              color: Palette.primaryColor,
              width: 2,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          contentPadding: const EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}
