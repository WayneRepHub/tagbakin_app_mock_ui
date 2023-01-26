import 'package:flutter/material.dart';
import 'package:tagbakin_layout/widgets/admin_success.dart';
import 'package:tagbakin_layout/widgets/app_bar.dart';
import 'package:tagbakin_layout/widgets/home_icon.dart';
import 'package:tagbakin_layout/widgets/logout_icon.dart';
import 'package:tagbakin_layout/widgets/logs_icon.dart';
import 'package:tagbakin_layout/widgets/profile_icon.dart';

class AdminIDS extends StatefulWidget{
  static const String id = 'inactive_deleted_screen';

  @override
  _InactiveDeletedScreenState createState() => _InactiveDeletedScreenState();
}

class _InactiveDeletedScreenState extends State<AdminIDS>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
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

              adminSuccess(
                successIcon: Icon(Icons.restore_from_trash_sharp),
                dialogue: Text(
                    'Inactive Items Deleted'
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}