import 'package:flash_app_flutter/screens/chat_screen.dart';
import 'package:flash_app_flutter/screens/login_screen.dart';
import 'package:flash_app_flutter/screens/registration_screen.dart';
import 'package:flash_app_flutter/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      home: RegistrationScreen(),
    );
  }
}
