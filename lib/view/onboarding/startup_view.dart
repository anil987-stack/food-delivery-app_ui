import 'package:flutter/material.dart';
import 'package:food_delivery/view/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Image.asset(
          'assets/img/splash_bg.png',
          height: media.height,
          width: media.width,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/img/app_logo.png',
          height: media.height * 0.7,
          width: media.width * 0.7,
          fit: BoxFit.contain,
        )
      ]),
    );
  }
}
