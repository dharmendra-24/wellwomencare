import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userInformation extends StatefulWidget {
  const userInformation({super.key});

  @override
  State<userInformation> createState() => _userInformationState();
}

class _userInformationState extends State<userInformation> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController pincontroller = TextEditingController();
  TextEditingController adresscontroller = TextEditingController();
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    size: 20,
                  ),
                  Text(
                    '  User Information',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  child: Column(children: [
                    CircleAvatar(
                      radius: 70,
                    ),
                    Text('Change photo')
                  ]),
                ),
              ),
              SizedBox(
                height: 42,
              ),
              Text(
                'Username',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 40,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: TextField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Email',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 40,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Phone Number',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 40,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: TextField(
                  controller: phonenumbercontroller,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Pin',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 40,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: TextField(
                  controller: phonenumbercontroller,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Adress',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 14),
                // margin: ,
                width: double.infinity,
                height: 60,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: TextField(
                  controller: phonenumbercontroller,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 14),
                // margin: ,
                width: double.infinity,
                height: 35,
                decoration: ShapeDecoration(
                    color: const Color.fromRGBO(63, 179, 40, 0.75),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Center(
                    child: Text(
                  'Update',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )),
              ),
            ]),
          ),
        ),
      )),
    );
  }
}
