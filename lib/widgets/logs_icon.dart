import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_history_logs.dart';
import 'package:tagbakin_layout/pages/admin_home_page.dart';
import 'package:tagbakin_layout/pages/admin_inactive_page.dart';

import '../pages/login.dart';

class LogsIcon extends StatelessWidget{

  Widget build(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        cardColor: Colors.white,
      ),
      child: IconButton(
        onPressed : () async{
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AdminHL();
            //This leads to admin_inactive_page.dart for now
          },
          ),
          );
        },
        icon: Icon(
            Icons.file_present,
            size: 33
        ),
      ),
    );
  }
}