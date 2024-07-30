import 'package:flutter/material.dart';

class changePassword extends StatefulWidget {
  const changePassword({super.key});

  @override
  State<changePassword> createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
  TextEditingController oldpasswordcontroller = TextEditingController();
  TextEditingController newpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          color: const Color.fromRGBO(207, 247, 211, 0.93),
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20),
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
                      '  Account settings',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  height: 259,
                  width: 342,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(63, 179, 40, 0.52),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Old Password',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10, left: 14),
                          // margin: ,
                          width: double.infinity,
                          height: 40,
                          decoration: ShapeDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: TextField(
                            controller: oldpasswordcontroller,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'New Password',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10, left: 14),
                          // margin: ,
                          width: double.infinity,
                          height: 40,
                          decoration: ShapeDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: TextField(
                            controller: newpasswordcontroller,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Container(),
                  flex: 1,
                ),
                ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Text(
                    'Confirm ',
                    style: TextStyle(),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
