// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Donate",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.filter,
                color: Colors.white,
              ))
        ],
      ),
      // ignore: prefer_const_constructors
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1574482620826-40685ca5ebd2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: GridView.count(
                    crossAxisCount: 1,
                    shrinkWrap: true,
                    childAspectRatio:
                        1.9 / 1, //to match the aspect ratio of ui elements
                    crossAxisSpacing: 10, mainAxisSpacing: 14,
                    children: [
                      gridviewItem(
                        Colors.black.withOpacity(0.4),
                        Icons.water_drop_outlined,
                        "Kindly consider donating to this cause.\nYour donation does not benefit us\nin any way it is entirely spent providing\nclean water to those suffereing from\nthe lack of it. Any amount of donation\nis highly appricated. Every contribution\n can help birth a smile.",
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(32),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(200, 80),
                      textStyle: TextStyle(fontSize: 28),
                      primary: Colors.black.withOpacity(0.5),
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Thank You for donating!')));
                    },
                    child: Text(
                      'DONATE HERE',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 36,
                  width: 36,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DecoratedBox(
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.4)),
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Column(
                          children: [
                            // ignore: prefer_const_constructors
                            // Padding(
                            //   // ignore: prefer_const_constructors
                            //   padding:
                            //       EdgeInsets.only(left: 15, right: 15, top: 15),
                            //   child: const Text(
                            //     "224",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontWeight: FontWeight.w500,
                            //         fontSize: 22),
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 12,
                            //   width: 30,
                            // ),
                            // Padding(
                            //   padding: EdgeInsets.only(
                            //       left: 15, right: 15, bottom: 15),
                            //   child: const Text(
                            //     "Donors",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontWeight: FontWeight.w400,
                            //         fontSize: 22,
                            //         letterSpacing: 0.2),
                            //   ),
                            // ),
                            Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 15),
                                  child: Text(
                                    "\$200",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, bottom: 15),
                                  child: const Text(
                                    "Raised",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22,
                                        letterSpacing: 0.2),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 15),
                                  child: const Text(
                                    "\$500",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, bottom: 15),
                                  child: const Text(
                                    "Goal",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22,
                                        letterSpacing: 0.2),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            // const SizedBox(
            //   height: 35,
            // ),
            // Padding(
            //   padding: const EdgeInsetsDirectional.only(bottom: 20),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(
            //         16,
            //       ),
            //     ),
            //     child: Column(
            //       children: [
            //         Stack(
            //           children: [
            //             Container(
            //               height: MediaQuery.of(context).size.height / 2,
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(
            //                   20,
            //                 ),
            //                 child: const Image(
            //                   image: NetworkImage(
            //                       'https://images.unsplash.com/photo-1483004406427-6acb078d1f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
            //                   fit: BoxFit.cover,
            //                 ),
            //               ),
            //             )
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // )
            // ],
          ),
        ),
      ),
    );
  }

  Widget gridviewItem(
    color,
    icon,
    text,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          36,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
