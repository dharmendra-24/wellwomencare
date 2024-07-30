import 'package:flutter/material.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 247, 211, 0.9),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 58),
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color.fromRGBO(63, 179, 40, 0.93),
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              const Text(
                'Don\'t worry it occurs.Please enter the \n email adress linked with your account.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(63, 179, 40, 0.93),
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              const Text(
                'Email',
                style: TextStyle(
                    color: Color.fromRGBO(
                      63,
                      179,
                      40,
                      0.93,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(20),
                ),

                //margin: const EdgeInsets.only(top: 95),
                width: 310,
                height: 48,
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: 'Your Email',
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(
                          63,
                          179,
                          40,
                          0.9,
                        ),
                        fontSize: 22,
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
                height: 17,
              ),
              Container(
                width: 310,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color.fromRGBO(63, 179, 40, 0.91),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Send Code',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
