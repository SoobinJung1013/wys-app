import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wys_app/common/const/colors.dart';
import 'package:wys_app/screens/login/signup_screen.dart';

import '../home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Perform login logic here
    // For now, we'll just print the email and password to the console
    print('Email: $email');
    print('Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment(-0.8, -0.65),
        child: FloatingActionButton(
          backgroundColor: PRIMARY_COLOR,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Icon(Icons.arrow_back_outlined, color: Colors.white),
        ),
      ),
      body: Center(
        child: Stack(children: [
          Positioned(
            top: -1270,
            right: -700,
            left: -120,
            // bottom: ,
            child: Container(
              width: 1500,
              height: 1500,
              decoration: BoxDecoration(
                color: SECOND_COLOR,
                borderRadius: BorderRadius.circular(700),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: SizedBox(
                  width: 108,
                  height: 40,
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Color(0xFF181D2D),
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: SizedBox(
                  child: Text(
                    'Welcome back',
                    style: TextStyle(
                      color: Color(0xFFAAAAAA),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 350.0,
                        child: TextField(
                          cursorColor: PRIMARY_COLOR,
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email_outlined,
                                color: PRIMARY_COLOR),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      PRIMARY_COLOR), // Change the underline color
                            ),
                            labelStyle: TextStyle(color: PRIMARY_COLOR),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 350.0,
                        child: TextField(
                          cursorColor: PRIMARY_COLOR,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: PRIMARY_COLOR),
                            prefixIcon: Icon(Icons.lock_clock_outlined,
                                color: PRIMARY_COLOR),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      PRIMARY_COLOR), // Change the underline color
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: _login,
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30.0), // Set the desired corner radius
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(
                            350.0, 50.0)), // Set the desired width and height
                        backgroundColor:
                            MaterialStateProperty.all<Color>(PRIMARY_COLOR),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Text('Sign In'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 124,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF878CEF),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    width: 46,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(
                        side: BorderSide(width: 1, color: Color(0xFF878CEF)),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: Color(0xFF878CEF),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    width: 124,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF878CEF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Center(
                child: Container(
                  width: 350.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button press logic here
                      print('Login with Google button pressed');
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(350.0, 50.0)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      elevation: MaterialStateProperty.all<double>(20),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Color(0xFFC1C7D0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30.0), // Set the desired corner radius
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Login with Google',
                          style: TextStyle(
                            color: Color(0xFF878CEF),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Container(
                  width: 350.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button press logic here
                      print('Login with Facebook  button pressed');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      elevation: MaterialStateProperty.all<double>(20),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Color(0xFFC1C7D0)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all(Size(
                          350.0, 50.0)), // Set the desired width and height

                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          width: 25.0,
                          height: 25.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Login with Facebook',
                          style: TextStyle(
                            color: Color(0xFF878CEF),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'New member? ',
                          style: TextStyle(
                            color: Color(0xFFAAAAAA),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            color: Color(0xFF878CEF),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
