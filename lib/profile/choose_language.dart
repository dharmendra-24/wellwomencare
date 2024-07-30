import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  int selectedOption = 1;
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
          padding: EdgeInsets.only(top: 26),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            color: Color.fromRGBO(207, 247, 211, 0.9),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(Icons.arrow_circle_left_outlined),
                      Text(
                        ' Choose Language',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'English',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        Radio(
                            value: 1,
                            activeColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.green),
                            groupValue: selectedOption,
                            onChanged: (value) {
                              selectedOption = value!;
                            })
                      ]),
                  Divider(
                    color: Colors.green,
                    thickness: 2,
                  ),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hindi',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        Radio(
                            value: 1,
                            activeColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.green),
                            groupValue: selectedOption,
                            onChanged: (value) {
                              selectedOption = value!;
                            })
                      ]),
                  Divider(
                    color: Colors.green,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Spanish',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        Radio(
                            value: 1,
                            activeColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.green),
                            groupValue: selectedOption,
                            onChanged: (value) {
                              selectedOption = value!;
                            })
                      ]),
                  Divider(
                    color: Colors.green,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'French',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        Radio(
                            value: 1,
                            activeColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.green),
                            groupValue: selectedOption,
                            onChanged: (value) {
                              selectedOption = value!;
                            })
                      ]),
                  Divider(
                    color: Colors.green,
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
