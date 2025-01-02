import 'package:flutter/material.dart';
import 'package:flutter_form_app/komponen/appbar.dart';
import 'package:flutter_form_app/menu/akun/accountpage.dart';
import 'package:flutter_form_app/menu/home/homepage.dart';
import 'package:flutter_form_app/menu/logout/logout.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selected_index = 0;
  List pages = [const HomePage(), const AccountPage(), const Logout()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: ResAppbar(),
      body: Center(
        child: pages.elementAt(selected_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        onTap: tappage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "akun"),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout")
        ],
      ),
    );
  }

  void tappage(index) {
    setState(() {
      selected_index = index;
    });
  }
}
