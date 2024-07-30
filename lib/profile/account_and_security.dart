import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountandSecurity extends StatefulWidget {
  const AccountandSecurity({super.key});

  @override
  State<AccountandSecurity> createState() => _AccountandSecurityState();
}

class _AccountandSecurityState extends State<AccountandSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Remwdies'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.construction), label: 'Consult'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'profile'),
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        color: const Color.fromRGBO(207, 247, 211, 0.93),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    size: 20,
                  ),
                  Text(
                    '  Account settings',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'personal Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 58,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'User Information',
                  style: TextStyle(
                      fontSize: 24, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 58,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'About Us',
                  style: TextStyle(
                      fontSize: 24, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Account Controls ',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Color.fromRGBO(0, 0, 0, 1)),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 58,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'Change Password',
                  style: TextStyle(
                      fontSize: 24, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 58,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'Email Adress',
                  style: TextStyle(
                      fontSize: 24, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 58,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                      fontSize: 24, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
            ],
          ),
        ),
      ))),
    );
  }
}
