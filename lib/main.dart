import 'package:eshop/view/product_d_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eshop/view/auth.dart';
import 'package:eshop/view/bottom_bar.dart';
import 'package:eshop/view/home.dart';
import 'package:eshop/view/otp.dart';
import 'package:eshop/view/phone.dart';
import 'package:eshop/view/register_page.dart';
import 'package:eshop/view/splesh.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences Preferences = await SharedPreferences.getInstance();
  var email = Preferences.getString('email');
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splesh',
      routes: {
        'splesh': (context) => splesh(),
        'auth': (contexy) => email == null ? Auth() : Home(),
        'phone': (context) => MyPhone(),
        'otp': (context) => otp(),
        'bottom': (context) => BottomBar(),
        'Register': (context) => Register(),
        'PD_page': (context) => PD_page(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New App"),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_bag_outlined),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      drawer: Drawer(backgroundColor: Colors.indigo),
      body: Column(
        children: [
          Slider(
            value: 0,
            onChanged: (val) {},
          )
        ],
      ),
    );
  }
}
