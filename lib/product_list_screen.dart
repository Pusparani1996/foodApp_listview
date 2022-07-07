import 'dart:html';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productName = ["Apple", "Green Apple", "Grapes", "Orange"];
  List<String> productUnit = ["Kg", "Dozen", "Kg", "kg"];
  List<int> productPrice = [10, 20, 30, 40];
  List<String> productImage = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6syPu5Njlz_DwJ8q8La6bxfuQzhkhpeJT9w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5s0nVoF9sDuYWIJwuSrV3vDyoT26pS64Psg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf291uUYgvBIHo-K7QWdeXn-jbiFZqOME5ZQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS3-jC9Iu_zBxPNeFBY6koriThqplo-rTQoQ&usqp=CAU"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product List"),
          actions: [
            Center(
              child: Badge(
                badgeContent: const Text(
                  "0",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                animationDuration: const Duration(microseconds: 300),
                child: const Icon(Icons.shopping_bag_outlined),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: productName.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        child: SizedBox(
                          width: 10,
                          //height: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                children: [
                                  Image(
                                      height: 100,
                                      width: 100,
                                      image: NetworkImage(
                                          productImage[index].toString())),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        productName[index].toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        productUnit[index].toString() +
                                            "" +
                                            r"$" +
                                            productPrice[index].toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          width: 100,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              "Add to card",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }))),
          ],
        ));
  }
}
