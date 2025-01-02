import 'package:flutter/material.dart';
import 'package:flutter_form_app/komponen/snackbar.dart';
import 'package:flutter_form_app/komponen/textfield.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final control_email = TextEditingController();
  final control_password = TextEditingController();
  final control_con_password = TextEditingController();

  Future<void> cekaja(context, email, password, conpassword) async {
    if (email != "" && password != "" && conpassword != "") {
      Navigator.pop(context);
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
                  "Daftar",
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
                height: 10,
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
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Masukkan kembali Password"),
                  InputTextField(
                    control: control_con_password,
                    hint: "Password",
                    obscure_text: true,
                    icon: Icons.password,
                    keytype: TextInputType.text,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: 250,
                height: 30,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sudah memiliki akun?",
                          style: TextStyle(fontSize: 10),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Login disini",
                            style: TextStyle(fontSize: 10, color: Colors.blue),
                          ),
                        ),
                      ],
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
                    cekaja(
                        context,
                        control_email.text.toString(),
                        control_password.text.toString(),
                        control_con_password.text.toString());
                  },
                  child: const Text(
                    'Daftar',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
