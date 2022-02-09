import 'package:flutter/material.dart';

@override
AppBar myAppBar = AppBar(
  actions: <Widget>[
    IconButton(
        tooltip: "Друзья", onPressed: () {}, icon: const Icon(Icons.people)),
    IconButton(
        tooltip: "Настройки",
        onPressed: () {},
        icon: const Icon(Icons.settings)),
    TextButton(
      onPressed: () {},
      child: const Text("Профиль"),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.white.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Colors.white.withOpacity(0.12);
            }
            return null;
          },
        ),
      ),
    ),
  ],
);
