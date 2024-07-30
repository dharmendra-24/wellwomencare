import 'package:flutter/material.dart';

class DoctorsProfile extends StatelessWidget {
  const DoctorsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [Icon(Icons.bookmark_border_rounded)],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [Text('Doctor\'s Profile',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 32),)],
        ),
      )),
    );
  }
}
