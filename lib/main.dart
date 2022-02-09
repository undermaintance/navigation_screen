import 'package:flutter/material.dart';
import 'app_bar_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/contacts': (context) => const SecondScreen(),
        '/settings': (context) => const ThirdScreen(),
      },
      builder: (context, child) {
        return Scaffold(
          body: child,
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

Widget navDrawer(context) => Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.lightBlue,
          ),
          child: Container(),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text("Главная"),
          onTap: () {
            //Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.phone),
          title: const Text("Контакты"),
          onTap: () {
            Navigator.pushNamed(context, '/contacts');
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Настройки"),
          onTap: () {
            //Navigator.pop(context);
            Navigator.pushNamed(context, '/settings');
          },
        ),
      ]),
    );

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Главная страница'),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Контакты'),
        ));
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Настройки'),
        ));
  }
}
