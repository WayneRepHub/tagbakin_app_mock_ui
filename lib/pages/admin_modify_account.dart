
import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_account_modify_successful.dart';
import 'package:tagbakin_layout/widgets/app_bar.dart';
import 'package:tagbakin_layout/widgets/home_icon.dart';
import 'package:tagbakin_layout/widgets/logout_icon.dart';
import 'package:tagbakin_layout/widgets/logs_icon.dart';
import 'package:tagbakin_layout/widgets/popup_menu.dart';
import 'package:tagbakin_layout/widgets/profile_icon.dart';

class AdminMA extends StatefulWidget{
  static const String id = 'modify_screen';
  @override
  _ModifyScreenState createState() => _ModifyScreenState();
}

class _ModifyScreenState extends State<AdminMA>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              appBar(
                title: Text('Admin | Modify Account'),
                appBarIcon: LogoutIcon(),
                appBarOption1: HomeIcon(),
                appBarOption2: ProfileIcon(),
                appBarOption3: LogsIcon(),
              ),

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

                    Container(
                      alignment: Alignment.center,
                      child: Text(
                          'Modify Account Details'
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

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                          'Error'
                      ),
                    ),

                    const SizedBox(height: 30),

                    //Save Changes button
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
                          //admin_account_modify_successful.dart
                        },
                        child: Text(
                          "Save Changes",
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