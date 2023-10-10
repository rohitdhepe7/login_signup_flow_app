import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Welcome back! Glad to see you, Again!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF7F8F9),
                    border: Border.all(color: Color(0xFFE8ECF4)),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(color: Color(0xFF8391A1))),
                  ),
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF7F8F9),
                    border: Border.all(color: Color(0xFFE8ECF4)),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(color: Color(0xFF8391A1)),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color(0XFF8391A1),
                        )),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Color(0xFF6A707C)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //login button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  color: Color(0xFFE8ECF4),
                  thickness: 1,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "or login with",
                    style: TextStyle(color: Color(0xFF6A707C)),
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: Color(0xFFE8ECF4),
                  thickness: 1,
                ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE8ECF4)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/fb.png",
                      height: 32,
                    ),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE8ECF4)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/google.png",
                      height: 32,
                    ),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE8ECF4)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/apple.png",
                      height: 32,
                    ),
                  ),
                )),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Color(0xFF35C2C1),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
