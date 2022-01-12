import 'package:flutter/material.dart';
import 'package:newpractice/style/style.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  List productList = [
    {
      "image": "images/game.png",
      "description": "PS5 JoyStik",
      "type": "On Sale",
      "price": "\$20"
    },
    {
      "image": "images/speaker.png",
      "description": "Logistik Headphone",
      "type": "Technology",
      "price": "\$30"
    },
    {
      "image": "images/game.png",
      "description": "PS5 JoyStik",
      "type": "Clothing",
      "price": "\$40"
    },
  ];

  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Row(
                children: List.generate(productList.length, (int index) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 20),
                child: Column(
                  children: [
                    Container(
                        height: 200,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          // color: Colors.grey
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Color(0xFFF6F7FB),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Image.asset(
                                  "${productList[index]["image"]}",
                                  // fit: BoxFit.cover,
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              productList[index]["description"],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xFF172239)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: productList[index]["type"] == "On Sale"
                                      ? 50
                                      : productList[index]["type"] ==
                                              "Technology"
                                          ? 70
                                          : 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: productList[index]["type"] ==
                                              "On Sale"
                                          ? Colors.red.withOpacity(0.1)
                                          : productList[index]["type"] ==
                                                  "Technology"
                                              ? Color(0xFF8000FF)
                                                  .withOpacity(0.1)
                                              : Color(0xFF00FFB2)
                                                  .withOpacity(0.1)),
                                  child: Center(
                                      child: Text(productList[index]["type"],
                                          style: TextStyle(
                                              color: productList[index]
                                                          ["type"] ==
                                                      "On Sale"
                                                  ? Colors.red
                                                  : productList[index]
                                                              ["type"] ==
                                                          "Technology"
                                                      ? const Color(0xFF8000FF)
                                                      : const Color(0xFF00FFB2),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600))),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  child: productList[index]["type"] == "On Sale"
                                      ? const Text(
                                          "\$25",
                                          style: TextStyle(
                                              color: Color(0xFFB8B8B8),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        )
                                      : null,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  productList[index]["price"],
                                  style: const TextStyle(
                                      color: Color(0xFF172239),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              );
            })),
          ],
        ),
      ),
    );
  }
}
