import 'package:flutter/material.dart';
import 'package:chat_test/main_screen.dart';
import 'package:chat_test/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat_test_flt',
      debugShowCheckedModeBanner: false, //디버그 라벨 제거
      initialRoute: '/',
      routes: {
        '/':(context) => SplashScreen(),
        '/main' : (context) => MainScreen()
      },
    );
  }
}

