import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(207, 247, 211, 0.9),
        centerTitle: true,
        title: const Text(
          'WellWomencare',
          style: TextStyle(
              fontFamily: 'FontMain',
              color: Color.fromRGBO(
                63,
                179,
                40,
                0.93,
              ),
              fontWeight: FontWeight.w400),
        ),
        leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset('asset/image/hands.png')),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              'asset/image/girl.png',
              width: 40,
              height: 40,
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromRGBO(207, 247, 211, 0.9),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 320,
                    height: 188,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.97),
                          Color.fromRGBO(246, 157, 75, 0.97),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, top: 5),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                          width: 92, height: 92, 'asset/image/stethoscope.png'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      children: [Icon(Icons.more_horiz)],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                      left: 10,
                    ),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  Dr. jone Doe,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text:
                                      'specializing in holistic \n womens health',
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 179, 40, 0.93),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  Dr. jone Smith,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: 'specializing in fertilty',
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 179, 40, 0.93),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  Dr. Mary jones,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: 'specializing in menopause',
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 179, 40, 0.93),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Featured practitioners',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 28),
                            child: Container(
                              width: 61,
                              height: 22,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                    width: 0.2,
                                    color:
                                        const Color.fromRGBO(255, 34, 83, 1)),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                            246,
                                            157,
                                            75,
                                            1,
                                          ),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Container(
                                    width: 21,
                                    height: 22,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(
                                            246, 157, 75, 1)),
                                    child: const Center(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        size: 21,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Container(
                    width: 320,
                    height: 188,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(245, 245, 245, 1),
                          Color.fromRGBO(255, 255, 255, 1),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, top: 5),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                          width: 92, height: 92, 'asset/image/stethoscope.png'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      children: [Icon(Icons.more_horiz)],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 10,
                    ),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  Fetal development,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text:
                                      'your baby \n  is about 155 cm \"  \n  long and weighs about 100 \n  gram',
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 179, 40, 0.93),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  Due Date ,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: 'Nov 11, 22',
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 179, 40, 0.93),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  Dr. Mary jones,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: '15 weeks',
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 179, 40, 0.93),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Pregnancy Companion',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 28),
                            child: Container(
                              width: 61,
                              height: 22,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                    width: 0.2,
                                    color:
                                        const Color.fromRGBO(255, 34, 83, 1)),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 34, 83, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 24,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: const Color.fromRGBO(
                                            255, 34, 83, 1)),
                                    child: const Center(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        size: 21,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Container(
                    width: 320,
                    height: 188,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromRGBO(34, 195, 205, 1),
                          Color.fromRGBO(30, 255, 163, 0.99),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, top: 5),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                          width: 92, height: 92, 'asset/image/stethoscope.png'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                    ),
                    child: Column(
                      children: [Icon(Icons.more_horiz)],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                      left: 10,
                    ),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  vitex for vertility,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      '  Red raspberry leaf tea for pregrnancy ,',
                                  style: TextStyle(
                                      fontFamily: ' Ashwangandha for menopause',
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  Ashwagandha for menopause,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Problems and diseases',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 28),
                            child: Container(
                              width: 61,
                              height: 22,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                  width: 0.2,
                                  color: const Color.fromRGBO(0, 149, 255, 1),
                                ),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              30, 255, 163, 0.99),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      color: const Color.fromRGBO(
                                          30, 255, 163, 0.99),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color:
                                            Color.fromRGBO(63, 179, 40, 0.93),
                                        size: 21,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Container(
                    width: 320,
                    height: 188,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(101, 191, 255, 1),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, top: 5),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                          width: 92, height: 92, 'asset/image/stethoscope.png'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                    ),
                    child: Column(
                      children: [Icon(Icons.more_horiz)],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                      left: 10,
                    ),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  6 days',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: '  Until your next period ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  Cycle Length',
                                  style: TextStyle(
                                      //fontFamily: ' Ashwangandha for menopause',
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: '  28 days',
                                  style: TextStyle(
                                      //fontFamily: ' Ashwangandha for menopause',
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '  Next Period,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: '  November 7th,',
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                        1,
                                        16,
                                        26,
                                        1,
                                      ),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'MyCycle',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 28),
                            child: Container(
                              width: 61,
                              height: 22,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                  width: 0.2,
                                  color: const Color.fromRGBO(0, 149, 255, 1),
                                ),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 149, 255, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      color:
                                          const Color.fromRGBO(0, 149, 255, 1),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        size: 21,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
