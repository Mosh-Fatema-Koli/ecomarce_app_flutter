import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CatagoriesScreen extends StatelessWidget {
  const CatagoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("catagories").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {

          if (snapshot.hasData) {

            return ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: snapshot.data!.docs.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            child:   Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    
                   

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(snapshot.data!.docs[index]['image'],fit: BoxFit.cover,)),

                ),
                SizedBox(height: 5,),
                Text(snapshot.data!.docs[index]['name'],style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      );
            
          }
          else{ 
            
            return Container();
            
            }
        
      },) ) ;
  }
}
