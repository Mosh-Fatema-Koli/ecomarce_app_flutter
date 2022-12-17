
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [

              SizedBox(
                height: 10,
              ),
              Text("Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10,
              ),
                Container(
                  height: 150,
                  width: 150,
               
                  child: Image.asset("image/profile.png"),
                ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 250,
                    child: Column(
                      children: [
                        Text("Name:"),
                        SizedBox(
                          width: 25,
                        ),
                        Text("Fatema Koli"),]

          ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
    Card(
       color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
           width: 250,
          child: Column(
          children: [
          Text("Address:"),
   Text("Adabor 16,Road -16,House-12,Dhaka 1207 ",textAlign: TextAlign.center,),

   
          ],
          ),
        ),
      ),
    ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 250,
                    child: Column(
                      children: [
                        Text("Phone No:"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("01302607702"),
                      ],
                    ),
                  ),
                ),
              ),

               SizedBox(
                height: 10,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  MaterialButton(onPressed: (){},
                  child: Text("Edit"),
                  color: Colors.green,
                  
                  ),
                  SizedBox(width: 10,),

                  MaterialButton(onPressed: (){},
                  child: Text("Logout"),
                  color: Colors.red,
                  
                  )

                ],
              )

]),
        ),
      ),

    );
  }
}
