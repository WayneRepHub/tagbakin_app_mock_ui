import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_home_page.dart';

class adminSuccess extends StatelessWidget{
  
  Widget dialogue, successIcon;
  
  adminSuccess (
      {
        //needs to know which icon and dialogue text to display
        required this.dialogue,
        required this.successIcon
      });
  
  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      alignment: Alignment.center,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox(height: 150),

          successIcon, //Icon

          const SizedBox(height: 30),

          dialogue, //Text

          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AdminHP.id);
                //admin_home_page.dart
              },
              child: Text(
                'BACK TO HOME PAGE'
              ),
          ),
        ],
      ),
    );
  }
}