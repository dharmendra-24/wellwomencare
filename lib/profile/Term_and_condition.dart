import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class termAndcondition extends StatefulWidget {
  const termAndcondition({super.key});

  @override
  State<termAndcondition> createState() => _termAndconditionState();
}

class _termAndconditionState extends State<termAndcondition> {
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
          child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        color: const Color.fromRGBO(207, 247, 211, 0.93),
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    size: 20,
                  ),
                  Text(
                    ' Term and Condition',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 342,
                height: 750,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    'Term and condition\nThis document is an electronic record, \n generated compliance with the terms and rules of the information Technology Act 2000 \n Amended Provisions,Pertaining to electronic records in various status will be in accordance with \nthe provisions of Rule 3(1) of information Technology (Intermediaries guidelines),Rules \n2011 that require publishing the rules and\nregulation,privacy,policy and Terms of Use or access or usage of website.please read the following terms and condition very carefully as your use of services of this\n website .The mobile application both medium also referred to as FlipKart Health is subject to your acceptance of and compliance with following terms and conditions.\nAcknowledgement of Terms: When you acknowledge that you have read the terms andconditions \nset forth below and understood that access to this website/mobile application is subject to provision of same.if you do not agree to \nterms and condtion set forth below you should exit the website/mobile application \nnow.',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
