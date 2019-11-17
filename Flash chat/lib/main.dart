import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        // welcome screen
       WelcomeScreen.id: (context) => WelcomeScreen(),
        // login screen
        LoginScreen.id: (context) => LoginScreen(),
        // chat screen
        ChatScreen.id: (context) => ChatScreen(),
        // registration
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
