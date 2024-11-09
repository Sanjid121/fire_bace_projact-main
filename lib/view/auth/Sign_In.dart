import 'package:fire_bace_projact/controller/authcontrolar.dart';
import 'package:fire_bace_projact/view/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'Sign_up.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

final ss = Get.find<Authcontrolar>();


class _Page3State extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFFFFFFF), Color(0xFFFFFFFFF)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 116, left: 24),
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text('Welcome Back!', 24, FontWeight.w700, 0xFFF1D1E25),
                      SizedBox(
                        height: 7,
                      ),
                      text('Sign In to your account', 16, FontWeight.w400,
                          0xFFF808D9E),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                    width: 345,
                    height: 48,
                    child: custom_elebatbutton(onchyng: () async {
                      await ss.GogoleAuth();
                    })),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: custom_devidar()),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: text('OR', 16, FontWeight.w700, 0xFFF808D9E),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, left: 11),
                      child: custom_devidar(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  child:
                      custom_text_from('Type your email', Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                    child: custom_text_from(
                        'Type your password', Icons.lock_outline_rounded,
                        sd: Icon(Icons.visibility_off))),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 260),
                child: Container(
                  child: InkWell(
                    onTap: () {},
                    child: text(
                        'Forgot Password?', 14, FontWeight.w700, 0xFFF0062FF),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 358,
                  height: 48,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: custom_ElevatedButton(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Sign_up()));
                      }, 'Sign In')),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    text('Don’t have account?', 14, FontWeight.w700,
                        0xFFF808D9E),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Sign_up()));
                        },
                        child:
                            text('Sign Up', 14, FontWeight.w700, 0xFFF0062FF))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
