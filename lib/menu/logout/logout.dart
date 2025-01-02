import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(
            context, '/loginpage', (route) => false);
      },
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
        child: const Center(
            child: Text(
          "Keluar",
          style: TextStyle(fontWeight: FontWeight.w500),
        )),
      ),
    ));
  }
}
