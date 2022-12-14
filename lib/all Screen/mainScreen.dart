
import 'package:ecomarce_app_flutter/all%20Screen/auth.dart';
import 'package:ecomarce_app_flutter/all%20Screen/home.dart';
import 'package:ecomarce_app_flutter/all%20Screen/login.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
