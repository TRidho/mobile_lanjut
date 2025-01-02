import 'package:flutter/material.dart';

class ResAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ResAppbar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      title: GestureDetector(
        onTap: () {},
        child: const Padding(
            padding: EdgeInsets.all(0),
            child: Icon(Icons.account_circle_outlined)),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                elevation: 0,
              ),
              onPressed: () async {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              )),
        ),
        Container(
          margin: const EdgeInsets.only(right: 15),
          child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                elevation: 0,
              ),
              onPressed: () async {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ),
      ],
      elevation: 0.5,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    );
  }
}
