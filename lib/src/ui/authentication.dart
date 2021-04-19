import 'package:flutter/material.dart';
import 'package:oneramadhan/src/resources/flutterfire.dart';
import 'package:oneramadhan/src/ui/home.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: _email,
              decoration: InputDecoration(
                hintText: "name@email.com",
                hintStyle: TextStyle(color: Colors.white),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            TextFormField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(color: Colors.white),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await register(_email.text, _password.text);
                  if (shouldNavigate) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
                child: Text("Register"),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await signIn(_email.text, _password.text);
                  if (shouldNavigate) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}