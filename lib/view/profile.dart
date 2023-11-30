import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import '../Global/globals.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var size, height, width;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    ImagePicker Image = ImagePicker();
    File? file;

    getImageFromCamera() async {
      final ima = await Image.pickImage(source: ImageSource.camera);
      setState(() {
        file = File(ima!.path);
      });
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 39,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Color(0xff457B9D),
                          ),
                          child: Center(
                            child: Text(
                              "Profile",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: Stack(
                          alignment: const Alignment(1.3, 1),
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage("assets/icons/User.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2),
                          color: Globals.isDark
                              ? const Color(0xfff59434)
                              : const Color(0xffbca6e8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            const Expanded(
                              flex: 4,
                              child: Text("Theme Change"),
                            ),
                            Expanded(
                              flex: 1,
                              child: Switch(
                                value: Globals.isDark,
                                thumbColor: MaterialStateProperty.all(
                                    Globals.isDark
                                        ? Colors.black
                                        : Colors.white),
                                onChanged: (bool value) async {
                                  setState(() {
                                    Globals.isDark = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
