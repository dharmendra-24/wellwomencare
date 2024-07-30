import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  TextEditingController searchcontroller = TextEditingController();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            color: const Color.fromRGBO(207, 247, 211, 0.9),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.arrow_circle_left_outlined),
                      Text(
                        'Help and Support',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  const Center(
                    child: Text(
                      'Hello Sahani ji!\n What can I help you today ?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    padding: const EdgeInsets.only(top: 10, left: 14),
                    // margin: ,
                    width: double.infinity,
                    height: 40,
                    decoration: ShapeDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: TextField(
                      controller: searchcontroller,
                      decoration: const InputDecoration(
                          labelText: 'Search',
                          prefix: Icon(Icons.search),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'You can search some keywords from your Problem for faster solution you might have.',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
                  const Text(
                    'Frequently Asked',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  Container(
                    color: Colors.white,
                    width: 342,
                    height: 110,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                          'How do I create an account?\n\nYou can create a WeCare account by:\n download and  application first then select....'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    width: 342,
                    height: 110,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                          "How do i book doctor appointment?\n\nYou can select the doctor's appointment option in menu select 'bell icon' select the continue button then you."),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    width: 342,
                    height: 110,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                          "How to change password?\n\nClick the Change password option in settings menu just below the Account & Security."),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    child: const Center(
                      child: Text(
                        'Chat with us',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromRGBO(63, 179, 40, 1)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
