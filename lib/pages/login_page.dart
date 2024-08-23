import 'package:flutter/material.dart';
import 'package:mychatapp/components/inputfield.dart';
import 'package:mychatapp/components/mybutton.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key, this.onTap});

  // input text controllers
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final void Function()? onTap;

  void login(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
                fontSize: 50, color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(height: 25),
          // email input
          MyInputField(
            obscureText: false,
            controller: _emailcontroller,
            hintText: "Enter the Email",
          ),
          const SizedBox(
            height: 10,
          ),
          // Password Input
          MyInputField(
            obscureText: true,
            controller: _passwordcontroller,
            hintText: "Enter the password",
          ),
          const SizedBox(
            height: 25,
          ),
           MyButton(
            function: login,
            text: "Login",
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont have an accout?",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  " Register",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
