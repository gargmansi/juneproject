import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLogged = false;

  void toLogin() {
    setState(() {
      isLogged = !isLogged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isLogged ? "Logged in" : "Logged out"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: toLogin,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 50),
          ),
          child: Text(
            isLogged ? "Login" : "Logout",
            style: TextStyle(
                color: isLogged ? Colors.black : Colors.blue, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
