import 'package:flutter/material.dart';
import 'package:log_in/Screens/components/background.dart';
import 'package:log_in/Screens/login_page/login_screen.dart';
import 'package:log_in/constants.dart';

import '../../components/RoundedButton.dart';
import '../sign_up/sign_up.dart';


class Welcome_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("WELCOME TO EUD",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
            SizedBox(height: size.height * 0.03,),
            Image.asset(
              "assets/icon/chat.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedButton(
              text: "LOG IN",
              press: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context){
                      return const LoginScreen();
                    }
                    )
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: (){Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context){return SignUpScreen();}
                    )
                  );
                },
            ),
          ],
        ),
      ),
    );
  }
}





