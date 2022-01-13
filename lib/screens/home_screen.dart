import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newpractice/screens/components/productlist.dart';
import 'package:newpractice/style/style.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  bool isSelected = false;
  List iconList = [
    {
      "icon": Icons.home,
      "isSelected": false,
    },
    {
      "icon": Icons.favorite,
      "isSelected": false,
    },
    {
      "icon": Icons.search,
      "isSelected": false,
    },
    {
      "icon": Icons.person,
      "isSelected": false,
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.white,
      appBar: AppBar(
        backgroundColor: KColor.white,
        elevation: 0,
        leading: const Image(image: AssetImage('images/menu.png')),
        title: Center(
          child: Text(
            "SOSKO",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.montserratAlternates().fontFamily,
                color: const Color(0xFF00CC96)),
          ),
        ),
        actions: [Image.asset('images/notification.png')],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 170,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.00),
                        color: const Color(0xFFF6F7FB)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "-skincare products",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFF8706F8)),
                            ),
                            const Text(
                              "50% off on \nevery Skincare\nProducts",
                              style: TextStyle(
                                  color: Color(0xFF172239),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.00),
                                  color: const Color(0xFF00CC96)),
                              child: const Center(
                                child: Text(
                                  "Shop Now",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 140,
                          width: 140,
                          child: const Image(
                            image: AssetImage(
                              "images/products.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              DefaultTabController(
                length: 5,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      isScrollable: true,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF00CC96)),
                      labelColor: Colors.white,
                      labelStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w700),
                      // labelPadding: EdgeInsets.only(left: 28),
                      unselectedLabelColor: Color(0xFFceccd5),
                      tabs: const [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: 'Lifestyle',
                        ),
                        Tab(
                          text: 'Clothing',
                        ),
                        Tab(text: 'Shirts'),
                        Tab(
                          text: 'Jeans',
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Special For You",
                      style: TextStyle(
                          color: Color(0xFF172239),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                            color: KColor.appbartext,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              ProductList(),
              Container(
                margin: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Products",
                      style: TextStyle(
                          color: Color(0xFF172239),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                            color: KColor.appbartext,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              ProductList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image(image: AssetImage('images/navimg.png')),
        backgroundColor: KColor.appbartext,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 60,
        //color: Colors.white,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(35), topLeft: Radius.circular(35)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 12,
                  offset: Offset(0, 3))
            ]),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Icon(
        //       Icons.home,
        //       color: KColor.appbartext,
        //     ),
        //     Icon(
        //       Icons.favorite,
        //       color: KColor.appbartext,
        //     ),
        //     Icon(
        //       Icons.search,
        //       color: KColor.appbartext,
        //     ),
        //     Icon(
        //       Icons.person,
        //       color: KColor.appbartext,
        //     ),
        //   ],
        // ),
        child: Row(
          children: List.generate(
              iconList.length,
              (index) => Container(
                    // padding: EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          iconList[index]["isSelected"] =
                              !iconList[index]["isSelected"];
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 95,
                          ),
                          Icon(
                            iconList[index]["icon"],
                            size: 28,
                            color: iconList[index]["isSelected"]
                                ? KColor.appbartext
                                : Colors.grey,
                          ),
                          Container(
                            height: 10,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8)),
                              color: iconList[index]["isSelected"]
                                  ? KColor.appbartext
                                  : Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
