import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/round_button.dart';
import 'package:food_delivery/view/login/login_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Image.asset(
              'assets/img/welcome_top_shape.png',
              width: media.width,
            ),
            Image.asset(
              'assets/img/app_logo.png',
              height: media.height * 0.36,
              width: media.width * 0.36,
              fit: BoxFit.contain,
            )
          ]),
          Text(
            'Discover the best foods from over 100\nrestaurants and fast delivery to your\ndoorstep',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: TColor.secondaryText,
            ),
          ),
          SizedBox(
            height: media.width * 0.1,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: 'Login',
                type: RoundButtonType.bgPrimary,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()));
                },
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: 'Register',
                type: RoundButtonType.textPrimary,
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
