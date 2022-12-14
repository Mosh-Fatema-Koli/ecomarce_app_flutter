
import 'package:ecomarce_app_flutter/all%20Screen/auth.dart';
import 'package:ecomarce_app_flutter/all%20Screen/login.dart';
import 'package:ecomarce_app_flutter/widget/customtextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegScreen extends StatefulWidget {
   RegScreen({Key? key}) : super(key: key);



  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {

  String? errorMessage = '';

  TextEditingController emailcontroller= TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();
 

signup() async {
  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailcontroller.text,
    password: passwordcontroller.text,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.yellow,

      body: Center(
        child: Container(
          margin: EdgeInsets.only(
            top:200,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Register",
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
                  width: 300,
                  child: MaterialButton(
                    onPressed: () {
                        signup();          
                    },
                    color: Colors.red,
                    child: Text("Submit"),
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
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}