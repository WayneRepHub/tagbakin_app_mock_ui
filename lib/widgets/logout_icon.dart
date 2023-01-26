import 'package:flutter/material.dart';

import '../pages/login.dart';

class LogoutIcon extends StatelessWidget{

  Widget build(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        cardColor: Colors.white,
      ),
      child: IconButton(
        onPressed : () async{

          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context){

            return Login();
            //login.dart

          },
          ),
          );
        },
        icon: Icon(
            Icons.logout_sharp,
            size: 33
        ),
      ),
    );
  }
}