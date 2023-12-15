import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  final _loginFormkey = GlobalKey<FormState>();
  final TextEditingController _usernameCotrl = TextEditingController();
  final TextEditingController _passwordCotrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 250, 255),
      appBar: AppBar(
        title: Text("Anan app"),
        backgroundColor: Color.fromARGB(255, 183, 206, 255),
      ),
      body: Form(
        key: _loginFormkey,
        child: Column(
          children: [
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "plase enter your Username";
                }
                return null;
              },
              controller: _usernameCotrl,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 52, 112))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 52, 112)))),
            ),
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "plase enter your password";
                }
                return null;
              },
              obscureText: true,
              controller: _passwordCotrl,
              decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 52, 112))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 52, 112)))),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginFormkey.currentState!.validate()) {
                    print("Successfull");
                  }
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
