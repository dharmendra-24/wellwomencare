import 'package:flutter/material.dart';

class otp_Verification extends StatefulWidget {
  const otp_Verification({super.key});

  @override
  State<otp_Verification> createState() => _otp_VerificationState();
}

class _otp_VerificationState extends State<otp_Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(207, 247, 211, 0.9),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'OTP Verification',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(63, 179, 40, 0.93),
                ),
              ),
              Text(
                'Enter the verification code we just sent\n on your email adress',
                style: TextStyle(
                    color: Color.fromRGBO(63, 179, 40, 0.93),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 52,
              ),
              Container(
                width: 244,
                height: 62,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(63, 179, 40, 0.93),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '6',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 32,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(63, 179, 40, 0.93),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '6',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 32,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(63, 179, 40, 0.93),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '6',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 32,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 58),
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
                  child: Text(
                    'Verify',
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
