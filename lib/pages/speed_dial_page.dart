import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';


class SpeedDialPage extends StatefulWidget {
  const SpeedDialPage({super.key});

  @override
  State<SpeedDialPage> createState() => _SpeedDialPageState();
}

class _SpeedDialPageState extends State<SpeedDialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.red,
            label: "First",
            child: const Icon(Icons.ac_unit_outlined)
          ),
          SpeedDialChild(
            backgroundColor: Colors.green,
            label: "First",
            child: const Icon(Icons.ac_unit_outlined)
          ),
          SpeedDialChild(
            backgroundColor: Colors.blue,
            label: "First",
            child: const Icon(Icons.ac_unit_outlined)
          ),
        ],
      ),
    );
   
  }
}

