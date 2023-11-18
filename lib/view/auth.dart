import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/DB/signupDB.dart';
import 'package:untitled/view/bottom_bar.dart';
import 'package:untitled/view/home.dart';
import 'package:untitled/view/phone.dart';
import 'package:untitled/view/splesh.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  // @override
  // void initState() async{
  //   super.initState();
  //   localStorage = await SharedPreferences.getInstance();
  // }

  String email = "Test@gmail.com";
  String pass = "user123";

  TextEditingController emailCon = new TextEditingController();
  TextEditingController password = new TextEditingController();

  Future checklogin() async {
    Map k = {"email": emailCon.text, "password": password.text};

    Map data = await RegisterDB().SingInData(data: k);

    if (data['result'] == 'Login Succfully') {
      SharedPreferences Preferances = await SharedPreferences.getInstance();
      Preferances.setString('email', emailCon.text);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomBar(),
        ),
      );
      const Text(
        "login complete",
        style: TextStyle(
            fontStyle: FontStyle.italic, fontSize: 25, color: Colors.green),
      );
    } else {
      const Text(
        "filed",
        style: TextStyle(
            fontStyle: FontStyle.italic, fontSize: 25, color: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 35,
            ),
            Stack(
              // fit: StackFit.loose,
              children: [
                ClipRRect(
                  // borderRadius: BorderRadius.circular(25.0),
                  child: Flexible(
                      fit: FlexFit.tight,
                      child: Image.asset(
                        "assets/img/topright.png",
                        scale: 0.4,
                      )),
                ),
                Positioned(
                  bottom: 170,
                  right: 255,
                  child: Text(
                    "Sing In",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 120,
                  right: 200,
                  child: Text(
                    "Welcome!",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      height: 63,
                      width: double.infinity,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                                // spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(2, 5),
                                color: Colors.black45),
                          ]),
                      child: Center(
                        child: TextFormField(
                          controller: emailCon,
                          obscureText: false,
                          onTap: () {},
                          decoration: InputDecoration(
                              // prefix: Icon(Icons.search,color: Colors.black,),
                              icon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 15,
                                  ),
                                  child: Image.asset("assets/icons/Gmail.png")),
                              // enabled: false,
                              focusColor: Colors.black,
                              hintText: "Enter Your Email",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                          // enabled: ,
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 63,
                    width: double.infinity,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                              // spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(2, 5),
                              color: Colors.black45),
                        ]),
                    child: Center(
                      child: TextFormField(
                        controller: password,
                        obscureText: true,
                        onTap: () {},
                        decoration: InputDecoration(
                            // prefix: Icon(Icons.search,color: Colors.black,),
                            icon: Padding(
                                padding: EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Image.asset(
                                    "assets/icons/Password_icons.png")),
                            // enabled: false,
                            focusColor: Colors.black,
                            hintText: "Enter Your Password",
                            hintStyle: TextStyle(
                              fontSize: 16,
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none),
                        // enabled: ,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        // save();
                        // if(emailCon == email && password == pass){
                        //   Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const BottomBar(),
                        //     ),
                        //   );
                        // }
                        checklogin();
                      },
                      child: Container(
                        height: 65,
                        width: 354,
                        decoration: BoxDecoration(
                            color: Color(0xff1D3557),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          // if(localStorage !=null)
                          // Text("User Logged in sucsesfully"),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have Any Account",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'Register');
                        },
                        child: Text(
                          "Sign Up?",
                          style: TextStyle(
                            color: Color(0xff1D3557),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container(
                      //   child: CircleAvatar(
                      //     radius: 30,
                      //     backgroundColor: Colors.white,
                      //     child: Image(
                      //       image: AssetImage("assets/icons/google.png"),
                      //       height: 45,
                      //       width: 45,
                      //     ),
                      //   ),
                      //   decoration: BoxDecoration(
                      //       boxShadow: [
                      //         BoxShadow(
                      //             color: Colors.black38,
                      //             blurRadius: 2,
                      //             offset: Offset(3, 3)),
                      //       ],
                      //       borderRadius: BorderRadius.circular(25),
                      //       color: Colors.white),
                      // ),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      // Container(
                      //   child: CircleAvatar(
                      //     radius: 30,
                      //     backgroundColor: Colors.white,
                      //     child: Image(
                      //       image: AssetImage(
                      //         "assets/icons/fb.png",
                      //       ),
                      //       height: 50,
                      //       width: 50,
                      //     ),
                      //   ),
                      //   decoration: BoxDecoration(
                      //       boxShadow: [
                      //         BoxShadow(
                      //             color: Colors.black38,
                      //             blurRadius: 2,
                      //             offset: Offset(3, 3)),
                      //       ],
                      //       borderRadius: BorderRadius.circular(25),
                      //       color: Colors.white),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

//   save() async{
//     // await splesh.init();
//     localStorage.setString('test@gmail.com',emailCon.text.toString());
//     localStorage.setString('user123',password.text.toString());
//   }
}

// SizedBox(
// height: 45,
// width: double.infinity,
// child: ElevatedButton(
// child: Text("Home Page"),
// onPressed: () {
// Navigator.pushReplacement(
// context,
// MaterialPageRoute(
// builder: (context) => const BottomBar(),
// ),
// );
// },
// style: ElevatedButton.styleFrom(
// primary: Colors.green.shade600,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// ),
// ),
// ),
// ),
// SizedBox(
//   height: 45,
//   width: double.infinity,
//   child: ElevatedButton(
//     onPressed: () {
//       Navigator.pushNamed(context, 'phone');
//     },
//     child: Row(
//       children: [
//         Icon(
//           Icons.phone,
//           color: Colors.white,
//         ),
//         SizedBox(
//           width: 20,
//         ),
//         Text("Phone Number")
//       ],
//     ),
//     style: ElevatedButton.styleFrom(
//       primary: Colors.green.shade600,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),
//   ),
// ),
// SizedBox(
//   height: 20,
// ),
// SizedBox(
//   height: 45,
//   width: double.infinity,
//   child: ElevatedButton(
//     onPressed: () {
//       // Navigator.pushNamed(context, 'phone');
//     },
//     child: Row(
//       children: [
//         Icon(
//           Icons.mail,
//           color: Colors.white,
//         ),
//         SizedBox(
//           width: 20,
//         ),
//         Text("Email")
//       ],
//     ),
//     style: ElevatedButton.styleFrom(
//       primary: Colors.green.shade600,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),
//   ),
// ),
// SizedBox(
//   height: 20,
// ),
// SizedBox(
//   height: 45,
//   width: double.infinity,
//   child: ElevatedButton(
//     onPressed: () {
//       // Navigator.pushNamed(context, 'phone');
//     },
//     child: Row(
//       children: [
//         Icon(
//           Icons.network_wifi_sharp,
//           color: Colors.white,
//         ),
//         SizedBox(
//           width: 20,
//         ),
//         Text("Google"),
//         SizedBox(
//           width: 20,
//         ),
//       ],
//     ),
//     style: ElevatedButton.styleFrom(
//       primary: Colors.green.shade600,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),
//   ),
// ),
// SizedBox(
//   height: 20,
// ),
