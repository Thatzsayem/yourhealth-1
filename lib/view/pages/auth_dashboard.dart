import 'package:flutter/material.dart';
import 'package:yourhealth/view/widgets/widgets.dart';

import 'choose_usertype.dart';

class AuthDashboardPage extends StatelessWidget {
  onSignPressed(BuildContext context) {
    print("Sign In Button Pressed");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ChooseUserType()));
  }

  onRegisterPressed(BuildContext context) {
    print("Registered Button Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Header(),
              const SizedBox(height: 40),
              UserAvatar(),
              const SizedBox(height: 30),
              RoundedButton(
                label: "Sign In",
                bgColor: Colors.blue,
                onPressed: () => onSignPressed(context),
              ),
              const SizedBox(height: 20),
              RoundedButton(
                label: "Register",
                bgColor: Colors.grey,
                onPressed: () => onRegisterPressed(context),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
