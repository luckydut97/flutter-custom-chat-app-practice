import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chat_controller.dart';
import 'chat_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChatController(),
      child: MaterialApp(
        title: 'Chat Application',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/main': (context) => const ChatScreen(),
        },
      ),
    );
  }
}
