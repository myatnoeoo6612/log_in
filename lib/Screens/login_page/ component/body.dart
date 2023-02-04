import 'package:flutter/material.dart';
import 'package:log_in/Screens/login_page/%20component/background.dart';
import 'package:log_in/components/RoundedButton.dart';
import 'package:log_in/constants.dart';

import '../../../components/already_check_account.dart';
import '../../../components/round_input_field.dart';
import '../../../components/round_password_field.dart';
import '../../../components/text_field_container.dart';
import '../../sign_up/sign_up.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: BackGround(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOG IN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height * 0.03,),
            Image.asset(
              "assets/icon/login.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03,),
            RoundInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03,),
            RoundPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedButton(
                text: "LOG IN",
                press: (){}
            ),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder:
                        (context) {
                      return SignUpScreen();
                    }
                )
                );
              }
            )
          ],
        ),
      ),
    );
  }
}










