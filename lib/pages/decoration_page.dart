import 'package:flutter/material.dart';

class DecorationPage extends StatefulWidget {
  const DecorationPage({super.key});

  @override
  State<DecorationPage> createState() => _DecorationPageState();
}

class _DecorationPageState extends State<DecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.red,
            image:
                DecorationImage(image: AssetImage("assets/images/rasm.jpg"),fit: BoxFit.cover ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
        ),
      ),
    );
  }
}
