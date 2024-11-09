import 'package:fire_bace_projact/view/auth/Sign_In.dart';
import 'package:fire_bace_projact/view/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding_2Get extends StatefulWidget {
  const Onboarding_2Get({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

ofbord() async {
  SharedPreferences ss = await SharedPreferences.getInstance();
  ss.setBool('onbord' ,true);
}

class _Page2State extends State<Onboarding_2Get> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: h,
          width: w,
          child: Column(
            children: [
              Container(
                  height: h / 1.7, child: Image.asset('assets/sanjid2.png')),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: text(
                        'Plan Your Task Easily and Task Your Plan Instantly',
                        32,
                        FontWeight.w700,
                        0xFFF242B42),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 358,
                height: 48,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: custom_ElevatedButton(() async {
                      await ofbord();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Sign_In()));
                    }, 'Get Started')),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    text('Have an account?', 14, FontWeight.w700, 0xFFF808D9E),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: text('Login', 14, FontWeight.w700, 0xFFF0062FF),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
