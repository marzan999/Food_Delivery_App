import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/data.dart';

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final a = ProductInfo.generatedProductList();

  int quantity = 0;
  int delivary = 20;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 194, 192, 192),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            'My Cart',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: a.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          height: 150,
                          color: Color.fromARGB(255, 218, 212, 201),
                          margin: EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Image.asset(
                                a[index].image,
                                fit: BoxFit.cover,
                                width: 200,
                                height: double.infinity,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    a[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  // Text(a[index].rating),
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
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        a[index].price,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
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
                                  SizedBox(
                                    height: 10,
                                  ),
                                  // Text('${a[index].totalPrice ?? a[index]}'),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (a[index].quantity > 0) {
                                                a[index].quantity--;
                                              }
                                            });
                                          },
                                          child: Icon(Icons.remove)),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '${a[index].quantity}',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              a[index].quantity++;
                                            });
                                          },
                                          child: Icon(Icons.add)),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      })),
                )),
            SizedBox(
              height: 5,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Color.fromARGB(255, 226, 223, 223),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivary',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Text(
                              '\$$delivary',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Order',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Text(
                              '\$$delivary',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 19, 79, 128),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            'Pay ' + '\$$total',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
