import 'package:flutter/material.dart';
import 'package:tagbakin_layout/widgets/admin_success.dart';
import 'package:tagbakin_layout/widgets/app_bar.dart';
import 'package:tagbakin_layout/widgets/home_icon.dart';
import 'package:tagbakin_layout/widgets/logout_icon.dart';
import 'package:tagbakin_layout/widgets/logs_icon.dart';
import 'package:tagbakin_layout/widgets/profile_icon.dart';

class AdminAMS extends StatefulWidget{
  static const String id = 'account_modified_screen';

  @override
  _AccModifiedScreenState createState() => _AccModifiedScreenState();
}

class _AccModifiedScreenState extends State<AdminAMS>{
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
                appBarIcon: LogoutIcon(), //logout_icon.dart
                appBarOption1: HomeIcon(), //home_icon.dart
                appBarOption2: ProfileIcon(), //profile_icon.dart
                appBarOption3: LogsIcon(), //logs_icon.dart
              ),

              //Icon, Dialogue and Home button
              adminSuccess(
                successIcon: Icon(Icons.fact_check_sharp),
                dialogue: Text(
                    'Account Modified'
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}