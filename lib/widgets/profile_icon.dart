import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_modify_account.dart';

import '../pages/login.dart';

class ProfileIcon extends StatelessWidget{

  Widget build(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        cardColor: Colors.white,
      ),
      child: IconButton(
        onPressed : () async{

          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context){

            return AdminMA();
            //admin_modify_account.dart

          },
          ),
          );
        },
        icon: Icon(
            Icons.person_sharp,
            size: 33
        ),
      ),
    );
  }
}