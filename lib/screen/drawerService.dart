
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:http/http.dart';

class ServiceDrawer extends StatefulWidget {
  const ServiceDrawer({Key? key}) : super(key: key);

  @override
  State<ServiceDrawer> createState() => _ServiceDrawerState();
}

class _ServiceDrawerState extends State<ServiceDrawer> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(

        ),
        child: ListView(
          children: [

        DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Column(
          children: [

              ListTile(
                trailing: IconButton(
                  onPressed: () => Scaffold.of(context).closeDrawer(),
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),

              ),
            ),

          ],
        )),//Text


            SizedBox(height: 15),
            ListTile(
                title: Text(
                  'All Store',
                  style: TextStyle(

                    fontWeight: FontWeight.w500,
                  ),
                ),
                ),
            DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 2,
              dashLength: 1,
            ),
            ListTile(
              title: Text(
                'Offers',
                style: TextStyle(

                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 2,
              dashLength: 1,
            ),
            ListTile(
              title: Text(
                'Daily Deals',
                style: TextStyle(

                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 2,
              dashLength: 1,
            ),


            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
