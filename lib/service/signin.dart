import 'package:ecommerece_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // google auth code
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body field
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 400,

              //Column for Text and input field
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),

                  Text(
                    'Vegi',
                    style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.green,
                          ),
                        ]),
                  ),

                  // field for buttons

                  SignInButton(
                    Buttons.Apple,
                    text: "Sign in with Apple",
                    onPressed: () {},
                  ),

                  // with custom text
                  SignInButton(
                    Buttons.Google,
                    text: "Sign in with Google",
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                  ),

                  Text(
                    'Term and policy',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
