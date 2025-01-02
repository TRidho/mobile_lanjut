import 'package:flutter/material.dart';
import 'package:flutter_form_app/komponen/snackbar.dart';
import 'package:flutter_form_app/komponen/textfield.dart';
import 'package:flutter_form_app/registration/lupapasspage.dart';
import 'package:flutter_form_app/registration/signinpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final control_email = TextEditingController();
  final control_password = TextEditingController();

  Future<void> cekaja(context, email, password) async {
    if (email != "" && password != "") {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      showSnackBar(context, "isi semua kolom.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              Image.asset('assets/images/logo.jpg'),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: const Text(
                  "Masuk",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Masukkan Email"),
                  InputTextField(
                    control: control_email,
                    hint: "Email",
                    obscure_text: false,
                    icon: Icons.email,
                    keytype: TextInputType.emailAddress,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Masukkan Password"),
                  InputTextField(
                    control: control_password,
                    hint: "Password",
                    obscure_text: true,
                    icon: Icons.password,
                    keytype: TextInputType.text,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                width: 250,
                height: 30,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "belum memiliki akun?",
                          style: TextStyle(fontSize: 10),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SigninPage()));
                          },
                          child: const Text(
                            "buat akun disini",
                            style: TextStyle(fontSize: 10, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LupaPassPage()));
                      },
                      child: const Text(
                        "Lupa akun?",
                        style: TextStyle(fontSize: 10, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                    // Background color
                    backgroundColor: const Color.fromARGB(255, 46, 54, 72),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  onPressed: () async {
                    cekaja(context, control_email.text.toString(),
                        control_password.text.toString());
                  },
                  child: const Text(
                    'Masuk',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
