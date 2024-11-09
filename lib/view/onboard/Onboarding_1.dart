import 'package:fire_bace_projact/view/onboard/Onboarding_2-Get%20Started.dart';
import 'package:fire_bace_projact/view/widget/widget.dart';
import 'package:flutter/material.dart';

class Onboarding_1 extends StatefulWidget {
  const Onboarding_1({Key? key}) : super(key: key);

  @override
  State<Onboarding_1> createState() => _PageState();
}

@override
class _PageState extends State<Onboarding_1> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 424,
              width: double.maxFinite,
              child: Image.asset(
                'assets/sanjid.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  text('Easy Way to Get', 32, FontWeight.w700, 0xFFF242B42),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        text('Amet minim mollit non deserunt', 16,
                            FontWeight.w400, 0xFFF7E8CA0),
                        text('ullamco est sit aliqua dolor do amet', 16,
                            FontWeight.w400, 0xFFF7E8CA0),
                        text('sint. Velit officia consequat.', 16,
                            FontWeight.w400, 0xFFF7E8CA0),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Onboarding_2Get()));
                          },
                          child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFF0062FF),
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
