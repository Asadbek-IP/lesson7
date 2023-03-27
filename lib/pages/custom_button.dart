import 'package:flutter/material.dart';

class CustomButtonPage extends StatefulWidget {
  const CustomButtonPage({super.key});

  @override
  State<CustomButtonPage> createState() => _CustomButtonPageState();
}

class _CustomButtonPageState extends State<CustomButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onLongPress: (){
            print("bosssssssilllib duribdi");
          },
          onDoubleTap:() {
            print("Ikki marta bosildi");
          },
          onTap: () {
            print("Bosildi");
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage("assets/images/rasm.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
