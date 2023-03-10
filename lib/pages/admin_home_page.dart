import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_account_deleted_successful.dart';
import 'package:tagbakin_layout/pages/admin_create_account.dart';
import 'package:tagbakin_layout/widgets/app_bar.dart';
import 'package:tagbakin_layout/widgets/home_icon.dart';
import 'package:tagbakin_layout/widgets/logout_icon.dart';
import 'package:tagbakin_layout/widgets/logs_icon.dart';
import 'package:tagbakin_layout/widgets/profile_icon.dart';

class AdminHP extends StatefulWidget{

  static const id = 'admin_home_page';

  @override
  _AdminHPState createState() => _AdminHPState();
}

class _AdminHPState extends State<AdminHP>{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: SafeArea(
          child: Column(
            children: [
              appBar(
                title: Text('Admin | Home Page'),
                appBarIcon: LogoutIcon(),
                appBarOption1: HomeIcon(),
                appBarOption2: ProfileIcon(),
                appBarOption3: LogsIcon(),
              ),

              /*

              i wanna ask help abt the contents (for loop na dito i believe)

               */

            ],
          ),
      ),
    ),

      //Two buttons below the page
      bottomNavigationBar: Container(

        height: 65,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            //delete inactive button
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Align(
                                alignment: Alignment.centerLeft,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close_rounded,
                                    color: Colors.black,
                                    size: 23,
                                  ),
                                ),
                              ),
                              
                              Icon(
                                  Icons.lock_open_rounded,
                                  color: Colors.black54,
                              ),
                              
                              Text('Input Password to proceed'),

                            ],
                          ),
                        ),

                        content: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                            hintText: 'Password',
                          ),
                        ),

                        actions: [
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
                                Navigator.pushNamed(context, AdminADS.id);
                                //admin_inactive_deleted_successful.dart
                              },
                              child: Text(
                                "Edit Details",
                              ),
                            ),
                          ),
                        ],
                      ),
                    //backend here for password verification
                  );
                  },

                child: Text(
                  'delete inactive'
                ),
            ),

            //create account button
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close_rounded,
                                color: Colors.black,
                                size: 23,
                              ),
                            ),
                          ),

                          Icon(
                            Icons.lock_open_rounded,
                            color: Colors.black54,
                          ),

                          Text('Input Password to proceed'),

                        ],
                      ),
                    ),

                    content: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                        hintText: 'Password',
                      ),
                    ),

                    actions: [
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
                            Navigator.pushNamed(context, AdminCA.id);
                            //admin_inactive_deleted_successful.dart
                          },
                          child: Text(
                            "Edit Details",
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }, //backend, same situation here

              child: Text(
                  'create account'
              ),
            ),

          ],
        ),
      ),
  );
  }
}