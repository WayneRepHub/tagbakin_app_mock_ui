import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_inactive_deleted_successful.dart';
import 'package:tagbakin_layout/widgets/app_bar.dart';
import 'package:tagbakin_layout/widgets/home_icon.dart';
import 'package:tagbakin_layout/widgets/logout_icon.dart';
import 'package:tagbakin_layout/widgets/logs_icon.dart';
import 'package:tagbakin_layout/widgets/profile_icon.dart';

class AdminIP extends StatefulWidget{

  static const id = 'admin_inactive_page';

  @override
  _AdminIPState createState() => _AdminIPState();

}

class _AdminIPState extends State<AdminIP>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                appBar(
                  title: Text('Admin | Inactive Page'),
                  appBarIcon: LogoutIcon(),
                  appBarOption1: HomeIcon(),
                  appBarOption2: ProfileIcon(),
                  appBarOption3: LogsIcon(),

                ),

                //Left Most White Back Arrow
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 33,
                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Column(
                    children: [

                      //Title
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                            'Delete Inactive Items'
                        ),
                      ),

                      SizedBox(height: 10,),

                      Container(
                        height: 450,
                        width: 300,
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            /*

                            More For loop contents (help)

                             */
                          ],
                        ),
                      ),

                      SizedBox(height: 15,),

                      //Delete Selected Items Button
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFAE8537),
                            minimumSize: Size(30, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero),
                            ),
                          ),

                          onPressed: () {
                            Navigator.pushNamed(context, AdminIDS.id);
                            //admin_inactive_deleted_successful.dart
                          },
                          child: Text(
                            "Delete Selected",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),

              ],
            ),
        ),
      ),
    );
  }
}