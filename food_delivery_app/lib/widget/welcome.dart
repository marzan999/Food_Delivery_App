import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/page2.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/abc.jpg'), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150, right: 50),
                  child: Text(
                    'Grab your\nDelicious food',
                    style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: Text(
                    'Delevery food in your phone',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(35)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(35)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(35)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Page2()));
                  },
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 206, 141, 137),
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                        child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
