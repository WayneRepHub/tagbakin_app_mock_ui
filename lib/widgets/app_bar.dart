import 'package:flutter/material.dart';

class appBar extends StatelessWidget {

  Widget appBarIcon, appBarOption1, appBarOption2, appBarOption3, title;


  appBar(
      {
        required this.appBarIcon, //Logout Icon (First Row)

        //Three Icons needed on the second Row (spans for both admin and owner)
        required this.appBarOption1,
        required this.appBarOption2,
        required this.appBarOption3,

        //Title of app bar for each page
        required this.title,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: title,
              ),
              //PopUp Menu for categories
              appBarIcon,

            ],
          ),
          Row(
            children: [
              appBarOption1,
              appBarOption2,
              appBarOption3,
            ],
          ),
        ],
      ),

    );
  }
}

