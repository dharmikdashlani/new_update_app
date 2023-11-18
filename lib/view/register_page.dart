import 'package:flutter/material.dart';

import '../DB/signupDB.dart';
import 'bottom_bar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conpassword = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController poincode = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Form(
          key: globalKey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
              ),
              Stack(
                // fit: StackFit.loose,
                children: [
                  Image.asset(
                    "assets/img/topleft.png",
                    scale: 0.4,
                  ),
                  Positioned(
                    bottom: 90,
                    right: 130,
                    child: Text(
                      "Sing Up",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
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
                          onTap: () {},
                          controller: fname,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter FName";
                            }
                          },
                          decoration: InputDecoration(
                              // prefix: Icon(Icons.search,color: Colors.black,),
                              icon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 15,
                                  ),
                                  child: Image.asset("assets/icons/User.png")),
                              // enabled: false,
                              focusColor: Colors.black,
                              hintText: "Enter Your Name",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                          // enabled: ,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 63,
                      width: double.infinity,
                      //

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
                          onTap: () {},
                          controller: lname,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Last Name";
                            }
                          },
                          decoration: InputDecoration(
                              // prefix: Icon(Icons.search,color: Colors.black,),
                              icon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 15,
                                  ),
                                  child: Image.asset("assets/icons/User.png")),
                              // enabled: false,
                              focusColor: Colors.black,
                              hintText: "Enter Your Last Name",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                          // enabled: ,
                        ),
                      ),
                    ),
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
                          onTap: () {},
                          controller: email,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Email";
                            }
                          },
                          decoration: InputDecoration(
                              // prefix: Icon(Icons.search,color: Colors.black,),
                              icon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 15,
                                  ),
                                  child: Image.asset("assets/icons/Gmail.png")),
                              // enabled: false,
                              focusColor: Colors.black,
                              hintText: "Enater Your Eamil",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                          // enabled: ,
                        ),
                      ),
                    ),
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
                          onTap: () {},
                          controller: address,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Addr";
                            }
                          },
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
                              hintText: "Enater Your Address",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                          // enabled: ,
                        ),
                      ),
                    ),
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
                          onTap: () {},
                          controller: poincode,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter poincode";
                            }
                          },
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
                              hintText: "Enater Your Pincode",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                          // enabled: ,
                        ),
                      ),
                    ),
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
                          onTap: () {},
                          controller: city,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter city";
                            }
                          },
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
                              hintText: "Enater Your City",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                          // enabled: ,
                        ),
                      ),
                    ),
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
                          onTap: () {},
                          controller: state,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter state";
                            }
                          },
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
                              hintText: "Enater Your State",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                          // enabled: ,
                        ),
                      ),
                    ),
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
                          onTap: () {},
                          controller: password,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter password";
                            }
                          },
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
                              hintText: "Enater Your Password",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                          // enabled: ,
                        ),
                      ),
                    ),
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
                          controller: conpassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter cPassword";
                            }
                            if (value != password.text) {
                              return "Emter Same Password";
                            }
                          },
                          decoration: InputDecoration(
                              // prefix: Icon(Icons.search,color: Colors.black,),
                              icon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 15,
                                  ),
                                  child:
                                      Image.asset("assets/icons/Secure.png")),
                              // enabled: false,
                              focusColor: Colors.black,
                              hintText: "Enter Confirm Password",
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
                        onTap: () async {
                          if (globalKey.currentState!.validate()) {
                            Map<dynamic, dynamic> data = {
                              "fname": fname.text,
                              "lname": lname.text,
                              "email": email.text,
                              "password": password.text,
                              "full_address": address.text,
                              "pincode": poincode.text,
                              "city": city.text,
                              "state": state.text
                            };
                            var k = await RegisterDB().SingUpData(data: data);
                            if (k['result'] == 'Insert Succfully') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BottomBar(),
                                  ));
                            }
                          }
                        },
                        child: Container(
                          height: 65,
                          width: 354,
                          child: Center(
                            child: Text(
                              "Create Account",
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff1D3557),
                              borderRadius: BorderRadius.circular(35)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Already Have Any Account",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Sign In?",
                            style: TextStyle(
                              color: Color(0xff1D3557),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
