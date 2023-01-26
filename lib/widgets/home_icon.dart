import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_home_page.dart';

import '../pages/login.dart';

class HomeIcon extends StatelessWidget{

  Widget build(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        cardColor: Colors.white,
      ),
      child: IconButton(
        onPressed : () async{

          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context){

            return AdminHP();
            //admin_home_page.dart

          },
          ),
          );
        },
        icon: Icon(
            Icons.home,
            size: 33
        ),
      ),
    );
  }
}