import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSwatch(
        //   primarySwatch: Colors.blue,
        //   // primarySwatch로 기본 색상을 설정할 수 있음
        // ),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
