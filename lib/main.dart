import 'package:firebase_core/firebase_core.dart';
import 'package:flash_app_flutter/screens/chat_screen.dart';
import 'package:flash_app_flutter/screens/login_screen.dart';
import 'package:flash_app_flutter/screens/registration_screen.dart';
import 'package:flash_app_flutter/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: FirebaseOptions(
      //     apiKey: "apiKey",
      //     appId: "appId",
      //     messagingSenderId: "messagingSenderId",
      //     projectId: "projectId"),
      );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      home: RegistrationScreen(),
      routes: {
        ChatScreen.id: (context) => ChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
      },
    );
  }
}
