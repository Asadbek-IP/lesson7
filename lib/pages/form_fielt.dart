import 'package:flutter/material.dart';

class FormFieltPage extends StatefulWidget {
  const FormFieltPage({super.key});

  @override
  State<FormFieltPage> createState() => _FormFieltPageState();
}

class _FormFieltPageState extends State<FormFieltPage> {
  String? email;
  String? password;

  final _key = GlobalKey<FormState>();
  
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (kiritilganEmail) => kiritilganEmail!.contains("@")
                      ? null
                      : "Email hato kiritildi",
                  decoration: const InputDecoration(label: Text("Email")),
                  onSaved: (newValue) => email = newValue,
                ),
                TextFormField(
                  
                  obscureText: isVisible,
                  validator: (kiritilganParol) => kiritilganParol!.length >= 6
                      ? null
                      : "6 tadan ko'p belgi kiriting",
                  decoration:  InputDecoration(label: const Text("Password"),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      
                      isVisible=true;
                    });
                  }, icon: const Icon(Icons.visibility))
                  ),
                  onSaved: (newValue) => password = newValue,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        _key.currentState!.save();
                      }
                      print(email);
                      print(password);
                    },
                    child: const Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
