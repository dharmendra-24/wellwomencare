import 'package:flutter/material.dart';

class signUpscreen extends StatefulWidget {
  const signUpscreen({super.key});

  @override
  State<signUpscreen> createState() => _signUpscreenState();
}

class _signUpscreenState extends State<signUpscreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController confirmpasswordcontroller = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromRGBO(207, 247, 211, 0.9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 34),
                //height: 44,
                child: const Center(
                  child: Text(
                    '    Create Account,\n to get started now!',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                //margin: const EdgeInsets.only(top: 95),
                width: 342,
                height: 48,
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(
                          63,
                          179,
                          40,
                          0.9,
                        ),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(63, 179, 40, 1)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                //margin: const EdgeInsets.only(top: 95),
                width: 342,
                height: 48,
                child: TextField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(
                          63,
                          179,
                          40,
                          0.9,
                        ),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(63, 179, 40, 1)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                // margin: const EdgeInsets.only(top: 95),
                width: 342,
                height: 48,
                child: TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(
                          63,
                          179,
                          40,
                          0.9,
                        ),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(63, 179, 40, 1)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                // margin: const EdgeInsets.only(top: 95),
                width: 342,
                height: 48,
                child: TextField(
                  controller: confirmpasswordcontroller,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    suffixIconColor: Color.fromRGBO(
                      63,
                      179,
                      40,
                      0.9,
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(
                          63,
                          179,
                          40,
                          0.9,
                        ),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(63, 179, 40, 1)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Container(
                width: 342,
                margin: EdgeInsets.only(top: 50),
                //padding: EdgeInsets.only(top: 410, left: 24),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color.fromRGBO(63, 179, 40, 0.91),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => loginScreen()),
                    // );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 48,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Color.fromRGBO(63, 179, 40, 0.9))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'asset/image/google.png',
                              width: 35.23,
                              height: 31,
                            ),
                            Text('Google')
                          ]),
                    ),
                    Container(
                      width: 150,
                      height: 48,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Color.fromRGBO(63, 179, 40, 0.9))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'asset/image/facebook.png',
                              width: 35.23,
                              height: 31,
                            ),
                            Text('facebook')
                          ]),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Divider(
                    color: Color.fromRGBO(63, 179, 40, 0.9),
                  ),
                  Center(
                    /// padding: const EdgeInsets.only(left: 100),
                    child: Divider(
                      thickness: 0,
                      color: Color.fromRGBO(207, 247, 211, 0.9),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 108,
                      height: 17,
                      //color: Color.fromRGBO(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          'Or sign up with ',
                          style: TextStyle(
                              color: Color.fromRGBO(63, 179, 40, 0.9)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  'Already have an account? Login',
                  style: TextStyle(
                    color: Color.fromRGBO(63, 179, 40, 0.9),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
