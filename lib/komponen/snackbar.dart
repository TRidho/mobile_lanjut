import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: SizedBox(
      height: 60,
      child: Center(
          child: Text(
        message,
        style: const TextStyle(fontSize: 17),
      )),
    ),
    duration: const Duration(seconds: 3),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
