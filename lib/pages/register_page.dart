import 'package:deliveryfood/components/my_button.dart';
import 'package:deliveryfood/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Center(
              child: Icon(
                Icons.lock_open_rounded,
                size: 100.0,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25),

            //message, app slogan
            Text(
              "Let's create an account",
              style: TextStyle(
                fontSize: 16.0,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25.0),

            //email txtfield
            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            SizedBox(height: 25.0),

            //password
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            SizedBox(height: 25.0),

            //Confirm password
            MyTextfield(
              controller: confirmPasswordController,
              hintText: "Confirm password",
              obscureText: true,
            ),
            SizedBox(height: 10.0),

            //sign up button
            MyButton(text: "Sign Up", onTap: () {}),

            SizedBox(height: 25.0),

            //Already have an account ?Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 5.0),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
