import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF6E9425),
        // SafeArea Makes Content Visible To Users
        body: SafeArea(
          //Center Makes all content centerly Alligned
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Row Houses the Back image and 
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 40),
                      height: 14.2,
                      width: 20,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/Back.png'))),
                    ),
                  ],
                ),
                // SizedBox For Empty Space Between Back Arrow And Notification Bell
                const SizedBox(
                  height: 110,
                ),
                Container(
                  height: 114,
                  width: 116,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/Vector.png'))),
                ),
                //Empty Space Between Bell Image and Text
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Get Notified',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                //Empty space Between Too Text
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  'Recieve notification when you get ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const Text(
                  'celebrated ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                //Empty Space Between Text And The Container
                const SizedBox(
                  height: 170,
                ),
                Container(
                  height: 58,
                  width: 210,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: const Center(
                      child: Text('Get Started',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ))),
                ),
                //Sized box To  Create Space Between The Container And The Total Scaffold
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ));
  }
}
