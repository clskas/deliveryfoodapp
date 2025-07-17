import 'package:deliveryfood/components/my_button.dart';
import 'package:deliveryfood/components/my_textfield.dart';
import 'package:deliveryfood/services/auth/auth_service.dart';
//import 'package:deliveryfood/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() async {
    //get instance of auth service
    final authService = AuthService();

    //try sign in
    try {
      await authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
    }
    //display any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text(e.toString())),
      );
    }

   
  }

  void forgotPw() {
    showDialog(
      context: context,

      builder: (context) =>
          AlertDialog(backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text("User tapped forgot password"),),
    );
  }

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
              "Food Delivery App",
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

            //email txtfield
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            SizedBox(height: 10.0),

            //sign in button
            MyButton(
              text: "Sign In",
              onTap: () {
                login();
              },
            ),

            SizedBox(height: 25.0),

            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 5.0),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
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
