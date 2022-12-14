
import 'package:ecomarce_app_flutter/all%20Screen/auth.dart';
import 'package:ecomarce_app_flutter/all%20Screen/reg.dart';
import 'package:ecomarce_app_flutter/widget/customtextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

   String? errorMessage = '';

  TextEditingController emailcontroller= TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();

 signin() async {

  try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailcontroller.text,
    password: passwordcontroller.text,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Sign In",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 420,

            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(20)),

            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    " Admin Log In",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextField(
                    controller: emailcontroller,
                    hintText: "Enter your Email",
                  ),
                  CustomTextField(
                    controller: passwordcontroller,
                    hintText: "Enter your password",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    
                       width: 300.0,
 
                    child: ElevatedButton(
                      
                      onPressed: () {
                            signin();
                      },
                      child: Text("Log In"),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Or"),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(RegScreen());
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {

                        },
                        style: ButtonStyle(

                        ),
                        child: Text("Login With Facebook " ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {

                        },
                        child: Text("Login With Google" ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
