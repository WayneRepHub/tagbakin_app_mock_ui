import 'package:flutter/material.dart';

const List<String> list = <String>['Admin', 'Owner'];

class PopUpMenu extends StatefulWidget{

  _PopUpMenuState createState() => _PopUpMenuState();

}

class _PopUpMenuState extends State<PopUpMenu>{
  String dropdownValue = list.first;


  //Pop Up menu for Account Type Field
  Widget build(BuildContext context){
    return PopupMenuButton<String>(
        child: Row(
          children: [
          Text('Account Type'),
          Icon(Icons.arrow_downward),
        ],
        ),

        onSelected: (String result) {
          switch (result) {

            case 'Admin':
              Text('Admin');
              //backend
              break;

            case 'Owner':
              Text('Owner');
              //backend
              break;

            default:
          }
        },

        itemBuilder: (BuildContext context) =>
        <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'Admin',
            child: Text(
              'Admin',
            ),
          ),
          const PopupMenuItem<String>(
            value: 'Owner',
            child: Text(
              'Owner',
            ),
          ),
        ],
      );
  }
}