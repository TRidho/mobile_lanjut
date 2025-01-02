import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hint;
  final bool obscure_text;
  final icon;
  final keytype;
  final control;
  const InputTextField(
      {super.key,
      required this.hint,
      required this.obscure_text,
      required this.icon,
      required this.keytype,
      this.control});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SizedBox(
        height: 50,
        width: 250,
        child: TextField(
          controller: control,
          keyboardType: keytype,
          obscureText: obscure_text,
          decoration: InputDecoration(
              suffixIcon: Icon(icon),
              suffixIconColor: WidgetStateColor.resolveWith((states) =>
                  states.contains(WidgetState.focused)
                      ? Colors.white
                      : Colors.grey),
              focusColor: Colors.black,
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey[300], fontSize: 15),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 226, 226, 226))),
              focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 46, 54, 72)))),
        ),
      ),
    );
  }
}
