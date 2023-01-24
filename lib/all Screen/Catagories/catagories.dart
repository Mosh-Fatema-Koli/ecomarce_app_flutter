
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  const Catagories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          StreamBuilder(builder: (context, snapshot) {
            return SliverGrid(

              delegate: SliverChildBuilderDelegate(

                    (context, index) {
                  return Card(
                    color: Colors.green[100 * (index % 9 + 1)],
                    child: ListTile(title: Text("shohel$index"),),
                  );
                },
                childCount: 16,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 2
              ),
            );
          },)
        ],
      ),
    );
  }
}