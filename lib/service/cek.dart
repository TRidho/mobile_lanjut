import 'package:flutter/material.dart';
import 'package:flutter_form_app/komponen/snackbar.dart';

Future<void> cekaja(context, email, password) async {
  print(email);
  if (email != "" && password != "") {
    Navigator.pushReplacementNamed(context, '/home');
  } else {
    showSnackBar(context, "isi semua kolom.");
  }
}
