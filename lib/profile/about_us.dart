import 'package:flutter/material.dart';

class About_Us extends StatefulWidget {
  const About_Us({super.key});

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(207, 247, 211, 0.9),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_circle_left_outlined),
                      Text(
                        'About us',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    children: [
                      Image.asset('asdfg'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'The app Natural Remedies combines our job,creating apps,and our passion for health and natural remedies and is the results of years of studies on scientific  journals,specialized magazines and essays about the topic.'),
                      Row(
                        children: [CircleAvatar(), Text('Ciorgia')],
                      ),
                      Text(
                          'She combines her passion for a natural lifestyle and her university studies,she has indeed a Master of Science degrree in Physics and a Phd in physics in the field biophyscis.Reading scientific researches and testing new methods and recipes is since always her job that ,we hope ,has bocome useful to')
                    ],
                  ),
                  height: 750,
                  width: 350,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
