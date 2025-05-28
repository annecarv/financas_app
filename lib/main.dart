import 'package:financas_app/features/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:financas_app/app.dart';

void main() {
  runApp(const App());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}