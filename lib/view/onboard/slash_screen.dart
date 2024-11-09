import 'package:fire_bace_projact/view/auth/Sign_In.dart';
import 'package:fire_bace_projact/view/onboard/Onboarding_1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SlashScreen extends StatefulWidget {
  const SlashScreen({Key? key}) : super(key: key);

  @override
  _SlashScreenState createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(microseconds: 0), () async {
      _onbord();
    });

    super.initState();
  }

  _onbord() async {
    SharedPreferences ss = await SharedPreferences.getInstance();
    if (ss.getBool('onbord') == null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => Onboarding_1()));
      print('sanjid');
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Sign_In()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset('assets/Spash Screen 01.png'),
        ),
      ),
    );
  }
}
