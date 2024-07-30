import 'package:flutter/material.dart';
import 'package:recoz_app/HomePage.dart';
import 'package:recoz_app/authentication/login_screen.dart';
import 'package:recoz_app/authentication/forgot_password.dart';
import 'package:recoz_app/authentication/otp_verification.dart';
import 'package:recoz_app/authentication/signup_screen.dart';

import 'package:recoz_app/authentication/start_screen.dart';
import 'package:recoz_app/consult/appointment.dart';
import 'package:recoz_app/consult/appointment_detail.dart';
import 'package:recoz_app/consult/calender.dart';
import 'package:recoz_app/consult/doctors_profile.dart';
import 'package:recoz_app/consult/information.dart';
import 'package:recoz_app/consult/upcoming_appointment.dart';

import 'package:recoz_app/consult/women_specialist_profile.dart';
import 'package:recoz_app/profile/about_us.dart';
import 'package:recoz_app/profile/account_and_security.dart';
import 'package:recoz_app/profile/choose_language.dart';
import 'package:recoz_app/profile/help_center.dart';
import 'package:recoz_app/profile/user_information.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppointmentPage(),
    );
  }
}
