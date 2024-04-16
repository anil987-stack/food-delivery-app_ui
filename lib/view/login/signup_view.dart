import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/round_button.dart';
import 'package:food_delivery/common_widget/round_textfield.dart';
import 'package:food_delivery/view/login/login_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtNum = TextEditingController();
  TextEditingController txtAdd = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 64,
            ),
            Text(
              'Sign Up',
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              'Add your details to sign up',
              style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 50,
            ),
            RoundTextfield(
              hintText: 'Name',
              controller: txtName,
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 30,
            ),
            RoundTextfield(
              hintText: 'Email',
              controller: txtEmail,
            ),
            const SizedBox(
              height: 30,
            ),
            RoundTextfield(
              hintText: 'Mobile N0.',
              keyboardType: TextInputType.phone,
              controller: txtNum,
            ),
            const SizedBox(
              height: 30,
            ),
            RoundTextfield(
              hintText: 'Address',
              controller: txtAdd,
            ),
            const SizedBox(
              height: 30,
            ),
            RoundTextfield(
              obscureText: true,
              hintText: 'Password',
              controller: txtPassword,
            ),
            const SizedBox(
              height: 30,
            ),
            RoundTextfield(
              obscureText: true,
              hintText: 'Confirm Password',
              controller: txtPassword,
            ),
            const SizedBox(
              height: 40,
            ),
            RoundButton(
              title: 'Sign up',
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginView()));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        color: TColor.primary,
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
