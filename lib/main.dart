import 'package:fire_bace_projact/controller/controlar_init.dart';
import 'package:fire_bace_projact/view/onboard/slash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ControlarInit.init();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SlashScreen(),
  ));
}
