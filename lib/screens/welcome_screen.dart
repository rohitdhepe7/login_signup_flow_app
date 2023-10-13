import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/login_screen.dart';
import 'package:login_signup_flow_app/screens/register_screen.dart';

class WelComeScreen extends StatelessWidget {
  const WelComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            "assets/img-3.png",
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/logo.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 25,
          ),
          //Login Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: const Color(0xFF1E232C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Register Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF1E232C)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          color: const Color(0xFF1E232C),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: const Text(
              "Continue as a guest",
              style: TextStyle(
                color: Color(0xFF35C2C1),
              ),
            ),
          ),
          Spacer(),
        ],
      )),
    );
  }
}
