import 'package:flutter/material.dart';
import 'package:lesson7/pages/custom_button.dart';
import 'package:lesson7/pages/decoration_page.dart';
import 'package:lesson7/pages/form_fielt.dart';
import 'package:lesson7/pages/gradient_page.dart';
import 'package:lesson7/pages/text_form_page.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormFieltPage(),
    );
  }
}