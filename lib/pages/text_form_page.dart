import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
                TextField(
                  maxLength: 10,
                  onChanged: ((value) {
                    // print(value);
                  }),
                  onSubmitted: ((value) {
                    print(value);
                  }),
                  // readOnly: true,
                  //maxLines: 3,
                  style: const TextStyle(color: Colors.red),
                  keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  //labelText: "Email",
                  hintText: "Email",
                  helperText: "Email yozishing kerak",
                  hintStyle: const TextStyle(fontSize: 20),
                  prefixIcon: const Icon(Icons.email),
                  suffixText: "@gmail.com",
                  filled: true,
                  fillColor: Colors.amber,
                  suffixIcon: const Icon(Icons.access_time),
                  
                  enabledBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.purple,width: 2),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green,width: 2),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
               ),
               const SizedBox(height: 20,),
               TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
               )

            ],
          ),
        ),
       ),
    );
  }
}