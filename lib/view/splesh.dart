import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/view/phone.dart';

import 'auth.dart';

class splesh extends StatefulWidget {
  const splesh({super.key});

  @override
  State<splesh> createState() => _spleshState();
}

class _spleshState extends State<splesh> with SingleTickerProviderStateMixin {
  late final GifController controller1;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Auth(),
        ),
      ),
    );
    // GifController controller1 = GifController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            // height: MediaQuery.of(context).size.height * 0.45,
          ),
          SizedBox(
            // width: double.infinity,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(17),
            //   // boxShadow: [
            //   //   BoxShadow(
            //   //       color: Colors.black54, spreadRadius: 1, blurRadius: 5),
            //   // ],
            // ),
            child: Image.asset(
              "assets/img/slogo.png",
            ),
            // Gif(
            //   image: AssetImage(
            //       "https://www.canva.com/design/DAFphmGEj7w/ndJU7PXsZxeFPdn04W2Yig/edit?utm_content=DAFphmGEj7w&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton"),
            //   controller: controller1,
            //   // if duration and fps is null, original gif fps will be used.
            //   //fps: 30,
            //   //duration: const Duration(seconds: 3),
            //   autostart: Autostart.no,
            //   placeholder: (context) => const Text('Loading...'),
            //   onFetchCompleted: () {
            //     controller1.reset();
            //     controller1.forward();
            //   },
            // ),
            // Image.network(
            //   "https://www.canva.com/design/DAFphmGEj7w/ndJU7PXsZxeFPdn04W2Yig/edit?utm_content=DAFphmGEj7w&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton",
            //   height: 300,
            //   width: 300,
            // ),

            // Lottie.network(
            //     "https://lottie.host/?file=c03ed3e9-2e68-4d36-8b1c-ff01a5d55a1f/TUIhtSB6q6.lottie",
            //     animate: true,
            //     alignment: Alignment.center,
            //     fit: BoxFit.cover,
            //     height: 200,
            //     width: 300),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          // Spacer(),
          Text(
            "#Your Shopping Made ❤️ Simple!✌️",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green),
          ),
          SizedBox(
            height: 50,
          ),
          // Spacer(),
          CircularProgressIndicator(color: Colors.green),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
