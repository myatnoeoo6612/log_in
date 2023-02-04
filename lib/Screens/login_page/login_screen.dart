import 'package:flutter/material.dart';
import 'package:log_in/Screens/login_page/%20component/body.dart';

import 'package:log_in/Screens/login_page/component/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogInBody(),
    );
  }
}


