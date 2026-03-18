import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  String defaultLogin = "login";
  String defaultPassword = "password";
  Login({super.key});
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  String login = "";
  String password = "";
  bool viewBox = false;
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    login = widget.defaultLogin;
    password = widget.defaultPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Form(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: TextFormField(
                controller: loginController,
                decoration: const InputDecoration(
                  label: Text("Username"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(label: Text("Password")),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    viewBox = true;
                    login = loginController.text;
                    password = passwordController.text;
                  });
                },
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.blue)),
                child: const Text("Sign in"),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: Text(login),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: Text(password),
                  ),
                ],
              ),
            ),
            viewBox
                ? Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(color: Colors.black)),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
