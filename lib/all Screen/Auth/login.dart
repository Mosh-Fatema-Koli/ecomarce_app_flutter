
import 'package:ecomarce_app_flutter/all%20Screen/Auth/auth.dart';
import 'package:ecomarce_app_flutter/all%20Screen/Auth/reg.dart';
import 'package:ecomarce_app_flutter/all%20Screen/nav.dart';
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

 /*signin() async {

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
 }*/

 signIn()async{
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcontroller.text,
          password: passwordcontroller.text,
      );
      var authCredential = userCredential.user;
      print(authCredential!.uid);
      if(authCredential.uid.isNotEmpty){
        Navigator.push(context, CupertinoPageRoute(builder: (_)=>NavScreen()));
      }
      else{
        Fluttertoast.showToast(msg: "Something is wrong");
      }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: "No user found for that email.");

      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Wrong password provided for that user.");

      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
       body: Stack(
         children: [

          Container(
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(255, 245, 246, 250),

          ),
           const Positioned(
           top: 100,
           left: 0,
           right:0,

               child: Center(child: Text("E-Shop",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),

           const Positioned(
               top: 130,
               left: 0,
               right:0,

               child: Center(child: Icon(Icons.shopping_cart,size: 50,color: Colors.orange,))),

           Positioned(
            top: 200,
            left: 0,
            right: 0,
             child: Container(
              height: MediaQuery.of(context).size.height,
           
             decoration: BoxDecoration(
               color: Color.fromARGB(255, 11, 236, 225), borderRadius: BorderRadius.circular(20)),
           
             child: Padding(
             padding: const EdgeInsets.all(30),
             child: Column(
               children: [
                 Text(
                   "Log In",
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
                           signIn();
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
         ],
       ),
    );
  }
}
