import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/round_button.dart';
import 'package:food_delivery/common_widget/round_textfield.dart';
import 'package:food_delivery/view/login/otp_view.dart';
import 'package:food_delivery/view/login/signup_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginView> {
  TextEditingController txtEmail = TextEditingController();
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
              'Login',
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              'Add your details to login',
              style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 50,
            ),
            RoundTextfield(
              hintText: 'Your email',
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 30,
            ),
            RoundTextfield(
              hintText: 'Your password',
              obscureText: true,
              controller: txtPassword,
            ),
            const SizedBox(
              height: 30,
            ),
            RoundButton(
              title: 'Login',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OtpView()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Or Login with',
              style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xff367FC0),
                    borderRadius: BorderRadius.circular(28)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/img/facebook_logo.png',
                      width: 15,
                      height: 13,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Login with facebook',
                      style: TextStyle(
                          color: TColor.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffDD4B39),
                    borderRadius: BorderRadius.circular(28)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/img/google_logo.png',
                      width: 15,
                      height: 18,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Login with Google',
                      style: TextStyle(
                          color: TColor.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupView()));
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
                    'Signup',
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
