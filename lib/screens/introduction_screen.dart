import 'package:auth_provider_app/screens/homepage.dart';
import 'package:auth_provider_app/widget/signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final List<Introduction> list = [
    Introduction(
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      title: 'Buy & Sell',
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/onboarding3.png',
    ),
    Introduction(
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      title: 'Delivery',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/images/onboarding4.png',
    ),
    Introduction(
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      title: 'Receive Money',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'assets/images/onboarding5.png',
    ),
    Introduction(
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      title: 'Finish',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/onboarding3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Color.fromARGB(255, 63, 61, 61),
      introductionList: list,
      foregroundColor: Colors.black,
      skipTextStyle: TextStyle(color: Colors.white),
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}
