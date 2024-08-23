import 'package:flutter/material.dart';
import 'package:mychatapp/components/inputfield.dart';
import 'package:mychatapp/components/mybutton.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key, this.onTap});

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();
  final void Function()? onTap;
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Register",
            style: TextStyle(
                fontSize: 50, color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(height: 25),
          MyInputField(
            obscureText: false,
            controller: _usernamecontroller,
            hintText: "Enter the Username",
          ),
          const SizedBox(height: 10),
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
            height: 10,
          ),
          MyInputField(
            obscureText: true,
            controller: _confirmpasswordcontroller,
            hintText: "Confirm the password",
          ),
          const SizedBox(
            height: 25,
          ),
          MyButton(
            function: register,
            text: "Register",
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Do you have an accout?",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  " Login",
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
