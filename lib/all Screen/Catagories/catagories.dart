
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  const Catagories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 1.0
      ),
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 100,
            color: Colors.amber,
          ),
        );
      },
    );

  }
}
