import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_account_modify_successful.dart';
import 'package:tagbakin_layout/widgets/app_bar.dart';
import 'package:tagbakin_layout/widgets/home_icon.dart';
import 'package:tagbakin_layout/widgets/logout_icon.dart';
import 'package:tagbakin_layout/widgets/logs_icon.dart';
import 'package:tagbakin_layout/widgets/profile_icon.dart';

class AdminHL extends StatefulWidget {
  static const id = 'admin_history_logs_page';

  @override
  _AdminHLState createState() => _AdminHLState();
}

class _AdminHLState extends State<AdminHL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              appBar(
                title: Text('Admin | Logs Page'),
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
                      child: Text('History Logs'),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: 500,
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
                          /*
                          More for loop content pls help
                           */
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
