import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  static String verify = "";

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryCode = TextEditingController();
  var phone = "";

  @override
  void initState() {
    countryCode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/verification.png",
                height: 170,
                width: 170,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Phone Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "We need to register your Phone before getting started!!",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryCode,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        onChanged: (val) {
                          phone = val;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Phone"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    // Navigator.pushNamed(context, "otp");
                    // FirebaseAuth auth = FirebaseAuth.instance;
                    // await FirebaseAuth.instance.verifyPhoneNumber(
                    //   phoneNumber: '${countryCode.text + phone}',
                    //   timeout: const Duration(seconds: 60),
                    //   codeAutoRetrievalTimeout: (String verificationId) {
                    //     // Auto-resolution timed out...
                    //   },
                    //   verificationCompleted:
                    //       (PhoneAuthCredential phoneAuthCredential) {},
                    //   verificationFailed: (FirebaseAuthException error) {},
                    //   codeSent:
                    //       (String verificationId, int? forceResendingToken) {
                    //         Navigator.pushNamed(context, "otp");
                    //       },
                    // );
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${countryCode.text + phone}',
                      verificationCompleted: (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        MyPhone.verify = verificationId;
                        Navigator.pushNamed(context, "otp");
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  },
                  child: Text("Send the Code"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade600,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
