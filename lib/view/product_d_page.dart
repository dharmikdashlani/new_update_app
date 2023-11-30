import 'package:flutter/material.dart';

class PD_page extends StatefulWidget {
  const PD_page({super.key});

  @override
  State<PD_page> createState() => _PD_pageState();
}

class _PD_pageState extends State<PD_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Product"),
        backgroundColor: Color(0xff457B9D),
      ),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset("assets/icons/User.png"),
                Positioned(
                  child: FloatingActionButton(
                      elevation: 2,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                      ),
                      backgroundColor: Colors.white,
                      onPressed: () {}),
                  bottom: 0,
                  right: 20,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Color"),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow, shape: BoxShape.circle),
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.pink, shape: BoxShape.circle),
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(5),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("Size"),
                    Text(
                      "10.1",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2F2F3E)),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
