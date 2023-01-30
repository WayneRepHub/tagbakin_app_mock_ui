import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_account_modify_successful.dart';
import 'package:tagbakin_layout/widgets/app_bar.dart';
import 'package:tagbakin_layout/widgets/home_icon.dart';
import 'package:tagbakin_layout/widgets/logout_icon.dart';
import 'package:tagbakin_layout/widgets/logs_icon.dart';
import 'package:tagbakin_layout/widgets/profile_icon.dart';

class AdminAI extends StatefulWidget {
  static const id = 'admin_account_info_page';

  @override
  _AdminAIState createState() => _AdminAIState();
}

class _AdminAIState extends State<AdminAI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              appBar(
                title: Text('Admin | Account Page'),
                appBarIcon: LogoutIcon(),
                appBarOption1: HomeIcon(),
                appBarOption2: ProfileIcon(),
                appBarOption3: LogsIcon(),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Column(
                  children: [
                    //Title
                    Container(
                      alignment: Alignment.center,
                      child: Text('Account Information'),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: 450,
                      width: 300,
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //username
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white, width: 2.0),
                                ),
                              ),
                              child: Text(
                                'Lorem ipsum',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Text(
                            'Username',
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white, width: 2.0),
                                ),
                              ),
                              child: Text(
                                'Lorem ipsum',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Text(
                            'Password',
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white, width: 2.0),
                                ),
                              ),
                              child: Text(
                                'Lorem ipsum',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Text(
                            'Account Type',
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(height: 80,),

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
                                Navigator.pushNamed(context, AdminAMS.id);
                                //admin_inactive_deleted_successful.dart
                              },
                              child: Text(
                                "Edit Details",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
