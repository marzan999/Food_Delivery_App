import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/data.dart';

class Page2 extends StatelessWidget {
  final a = ProductInfo.generatedProductList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 214, 212, 212),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Let\'s finds the best\nfood around you',
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Find by Catagory',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    color: Colors.transparent,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 130,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: AssetImage(
                                      a[index].image,
                                    ),
                                    fit: BoxFit.cover)),
                          );
                        },
                        separatorBuilder: (_, index) => SizedBox(
                              width: 10,
                            ),
                        itemCount: a.length),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      ' Result (16)',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 40),
                        itemCount: a.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 241, 239, 239),
                                borderRadius: BorderRadius.circular(0)),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      a[index].image,
                                      fit: BoxFit.cover,
                                      height: 100,
                                      width: double.infinity,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2, left: 5),
                                        child: Text(
                                          a[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Colors.orange,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Colors.orange,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Colors.orange,
                                                  ),
                                                  Icon(
                                                    Icons.star_border_outlined,
                                                    size: 15,
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Color.fromARGB(
                                                            255, 216, 142, 137),
                                                      ),
                                                      Text(a[index].location)
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    a[index].price,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.shopping_cart,
                                                        size: 18,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
