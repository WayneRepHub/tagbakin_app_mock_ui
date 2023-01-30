import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/admin_account_creation_successful.dart';
import 'package:tagbakin_layout/pages/admin_account_deleted_successful.dart';
import 'package:tagbakin_layout/pages/admin_account_information.dart';
import 'package:tagbakin_layout/pages/admin_account_modify_successful.dart';
import 'package:tagbakin_layout/pages/admin_history_logs.dart';
import 'package:tagbakin_layout/pages/admin_home_page.dart';
import 'package:tagbakin_layout/pages/admin_inactive_deleted_successful.dart';
import 'package:tagbakin_layout/pages/admin_inactive_page.dart';
import 'package:tagbakin_layout/pages/admin_modify_account.dart';
import 'package:tagbakin_layout/pages/splash_page.dart';
import 'package:tagbakin_layout/pages/login.dart';
import 'package:tagbakin_layout/pages/admin_create_account.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        scaffoldBackgroundColor: Colors.white10,
      ),
      home: Splash(),
      routes: {
        AdminHP.id: (context) => AdminHP(), //Admin Home Page
        Login.id: (context) => Login(), //Login Page
        AdminCA.id: (context) => AdminCA(), //Admin Create Account Page
        AdminMA.id: (context) => AdminMA(), //Admin Modify Account Page
        AdminACS.id: (context) => AdminACS(), //Admin Account Creation Successful Page
        AdminADS.id: (context) => AdminADS(), //Admin Account Deletion Successful Page
        AdminAMS.id: (context) => AdminAMS(), //Admin Account Modification Successful Page
        AdminIP.id: (context) => AdminIP(), //Admin Inactive Page
        AdminIDS.id: (context) => AdminIDS(), //Admin Inactive Deletion Successful Page
        AdminAI.id: (context) => AdminAI(),
        AdminHL.id: (context) => AdminHL(),
      },
    );
  }
}

