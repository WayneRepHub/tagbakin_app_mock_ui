
import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_create_account.dart';
import 'package:tagbakin_layout/pages/admin_home_page.dart';

class Login extends StatefulWidget {
  static const id = 'login_page';
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white10,
        body: Center(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  //Logo and title here
                  Container(
                    alignment: Alignment.center,
                    child: Text (
                      'Logo'
                    ),
                  ),
                  const SizedBox(height: 30),

                  //Username
                  TextFormField(

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                      hintText: 'Email',
                    ),
                  ),

                  const SizedBox(height: 30),

                  //Password
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12.0, 8, 12.0, 8),
                      hintText: 'Password',
                    ),
                  ),

                  const SizedBox(height: 10),

                  const SizedBox(height: 40),

                  //Login button
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
                      onPressed: ()  {
                        Navigator.pushNamed(context, AdminHP.id);
                        //admin_home_page.dart
                      },
                      child: Text(
                        "LOGIN",
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}