
import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_account_creation_successful.dart';
import 'package:tagbakin_layout/widgets/app_bar.dart';
import 'package:tagbakin_layout/widgets/home_icon.dart';
import 'package:tagbakin_layout/widgets/logout_icon.dart';
import 'package:tagbakin_layout/widgets/logs_icon.dart';
import 'package:tagbakin_layout/widgets/popup_menu.dart';
import 'package:tagbakin_layout/widgets/profile_icon.dart';

class AdminCA extends StatefulWidget{
  static const String id = 'register_screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<AdminCA>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [

                //App Bar Menu
                appBar(
                  title: Text('Admin | Create Account'),
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

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      //Title
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                            'Create New Account'
                        ),
                      ),
                      const SizedBox(height: 30),

                      //Username
                      TextFormField(
                        // onChanged: () {},
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                          hintText: 'Username',
                        ),
                      ),

                      const SizedBox(height: 30),

                      //Password
                      TextFormField(
                        // onChanged: () {},
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                          hintText: 'Password',
                        ),
                      ),

                      const SizedBox(height: 30),

                      //Confirm Password
                      TextFormField(
                        // onChanged: () {},
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                          hintText: 'Confirm Password',
                        ),
                      ),

                      const SizedBox(height: 30),

                      //Account Type
                      PopUpMenu(),

                      //Error for backend?
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                            'Error'
                        ),
                      ),

                      const SizedBox(height: 30),

                      //Register button
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.center,
                            primary: Color(0xFFAE8537),
                            minimumSize: Size.fromHeight(40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero),
                            ),
                          ),

                          //Goes to account_creation_successful.dart
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, AdminACS.id);
                          },
                          child: Text(
                            "REGISTER",
                          ),
                        ),
                      ),

                      const SizedBox(height: 40),

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