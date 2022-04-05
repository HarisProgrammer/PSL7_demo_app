import 'package:flutter/material.dart';
import 'package:psl_app_demo/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.deepPurple,
          elevation: 0,
          centerTitle: true,
        ),
        primarySwatch: Colors.deepPurple,
      ),
      home: const StartScreen(),
    );
  }
}


