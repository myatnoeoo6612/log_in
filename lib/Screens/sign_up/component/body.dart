import 'package:flutter/material.dart';
import 'package:log_in/Screens/login_page/login_screen.dart';
import 'package:log_in/Screens/sign_up/component/background.dart';
import 'package:log_in/Screens/sign_up/component/socalicon.dart';
import 'package:log_in/components/RoundedButton.dart';
import 'package:log_in/components/already_check_account.dart';
import 'package:log_in/components/round_input_field.dart';
import 'package:log_in/components/round_password_field.dart';
import 'package:log_in/constants.dart';

import 'or_divider.dart';

class SignUp_Body extends StatelessWidget {
  //final Widget child;
  const SignUp_Body(
      {
        Key? key,
        //required this.child
      }) : super(key: key
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: background_signup(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGN UP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height * 0.03,),
            Image.asset(
              "assets/icon/signup.png",
              height: size.height * 0.35,
            ),
            RoundInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: (){},
            ),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                      },
                    )
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icon/facebook.png",
                  press: (){},
                ),
                SocalIcon(
                  iconSrc: "assets/icon/google-plus.png",
                  press: (){},
                ),
                SocalIcon(
                  iconSrc: "assets/icon/twitter.png",
                  press: (){},
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}




