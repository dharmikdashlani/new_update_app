import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/DB/productdb.dart';
import 'package:untitled/view/auth.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String email = "";

  Future getEmail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      email = preferences.getString('email').toString();
    });
  }

  Future logOut(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('email');

    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Auth(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            TextButton.icon(
              onPressed: () {
                logOut(context);
              },
              icon: const Icon(
                Icons.logout,
                size: 30,
              ),
              label: const Text(
                "LogOut",
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    color: const Color(0xff457B9D),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 4),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            height: 36,
                            width: MediaQuery.of(context).size.width * 0.67,
                            // color: Colors.white,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              onTap: () {},
                              decoration: const InputDecoration(
                                  icon: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.search,
                                      size: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  // enabled: false,
                                  focusColor: Colors.black,
                                  hintText: "Search Hear...",
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                              // enabled: ,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 40,
                          ),
                          const Icon(
                            Icons.message,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 40,
                          ),
                          const Icon(
                            Icons.notifications_active,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // CarouselSlider(
                  //   options: CarouselOptions(height: 200),
                  //   items: [1, 2, 3, 4, 5].map((i) {
                  //     return Builder(
                  //       builder: (BuildContext context) {
                  //         return Container(
                  //             width: MediaQuery.of(context).size.width,
                  //             margin:
                  //                 const EdgeInsets.symmetric(horizontal: 5.0),
                  //             decoration:
                  //                 const BoxDecoration(color: Color(0xff457B9D)),
                  //             child: Text(
                  //               'text $i',
                  //               style: const TextStyle(fontSize: 16.0),
                  //             ),);
                  //       },
                  //     );
                  //   }).toList(),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      "Trending Products",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  FutureBuilder(
                    future: ProductDb().GetData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      }
                      if (snapshot.hasData) {
                        List? data = snapshot.data;
                        return
                            // Text("${data![1]['product_description']}"),
                            Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              CarouselSlider(
                                disableGesture: true,
                                // autoPlay: true,
                                // pauseAutoPlayOnTouch: Duration(seconds: 5),
                                // height: MediaQuery.of(context).size.height * 0.60,
                                items: <Widget>[
                                  for (var i = 2; i < data!.length; i++)
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 20.0, left: 10.0),
                                      width: MediaQuery.of(context).size.width /
                                          0.89,
                                      // width: 500,
                                      decoration: BoxDecoration(
                                        color: Color(0xff457B9D),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://unwound-human.000webhostapp.com/PHP/home/${data.elementAt(i)['product_image']}",
                                          ),
                                          fit: BoxFit.fitHeight,
                                        ),

                                        // border:
                                        //     Border.all(color: Theme.of(context).accentColor),
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                      ),
                                    ),
                                ],
                                options: CarouselOptions(),
                              ),
                              GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisExtent: 250,
                                        mainAxisSpacing: 15,
                                        crossAxisSpacing: 10,
                                        childAspectRatio: 1),
                                itemBuilder: (_, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(2, 4),blurRadius: 3)
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                          //https://unwound-human.000webhostapp.com/public_html/PHP/Home/img
                                          child: Image.network(
                                            "https://unwound-human.000webhostapp.com/PHP/home/${data.elementAt(index)['product_image']}",
                                            height: 200,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // Text(
                                        //     "${data.elementAt(index)['product_description']}"),
                                        // Text("${data.elementAt(index)['price']}"),
                                        // Text(
                                        //     "${data.elementAt(index)['color_name']}"),
                                        // Text(
                                        //     "${data.elementAt(index)['brand_name']}"),
                                        // Text(
                                        //     "${data.elementAt(index)['categories_id']}"),
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${data.elementAt(index)['brand_name']}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black38),
                                              ),
                                              // SizedBox(
                                              //   width: 30,
                                              // ),
                                              Spacer(),
                                              Icon(
                                                Icons.favorite_border,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                itemCount: data!.length,
                              ),
                            ],
                          ),
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CarouselSlider(
// options: CarouselOptions(height: 200),
// items: [1, 2, 3, 4, 5].map((i) {
// return Builder(
// builder: (BuildContext context) {
// return Container(
// width: MediaQuery.of(context).size.width,
// margin:
// const EdgeInsets.symmetric(horizontal: 5.0),
// decoration:
// const BoxDecoration(color: Color(0xff457B9D)),
// child: Text(
// 'text $i',
// style: const TextStyle(fontSize: 16.0),
// ));
// },
// );
// }).toList(),
// ),
