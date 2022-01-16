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
  int ind = -1;
  int ind1 = -1;
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
  List tabbarList = [
    {
      "description": "All",
    },
    {
      "description": "Lifestyle",
    },
    {
      "description": "Sports",
    },
    {
      "description": "Clothing",
    },
    {
      "description": "Babyproducts",
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
                fontWeight: FontWeight.w700,
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
                    height: 170,
                    width: 327,
                    margin: const EdgeInsets.only(top: 35, left: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "-skincare products",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF8706F8)),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "50% off on \nevery Skincare\nProducts",
                              style: TextStyle(
                                  color: Color(0xFF172239),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17),
                            ),
                            const SizedBox(
                              height: 20,
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
                          height: 139,
                          width: 139,
                          margin: const EdgeInsets.only(bottom: 25),
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
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(tabbarList.length, (int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              ind1 = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            //padding: const EdgeInsets.only(left: 3),
                            child: Container(
                                height: 28,
                                width: tabbarList[index]["description"] == "All"
                                    ? 53
                                    : tabbarList[index]["description"] ==
                                            "Sports"
                                        ? 76
                                        : tabbarList[index]["description"] ==
                                                "Babyproducts"
                                            ? 93
                                            : 87,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: ind1 == index
                                        ? KColor.appbartext
                                        : Color(0xFFF6F7FB)),
                                child: Center(
                                  child: Text(
                                    tabbarList[index]["description"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: ind1 == index
                                            ? KColor.white
                                            : Color(0xFF6D6D78)
                                                .withOpacity(.6)),
                                  ),
                                )),
                          ),
                        );
                      })),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              iconList.length,
              (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        // iconList[index]["isSelected"] =
                        //     !iconList[index]["isSelected"];
                        ind = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Icon(
                            iconList[index]["icon"],
                            size: 28,
                            color:
                                ind == index ? KColor.appbartext : Colors.grey,
                          ),
                          Container(
                            height: 8,
                            width: 15,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8)),
                              color: ind == index
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
