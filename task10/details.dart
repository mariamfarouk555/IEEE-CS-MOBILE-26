import 'package:flutter/material.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Row(
                children: [
                  Icon(Icons.shopping_bag, color: Colors.black, size: 30),
                  SizedBox(width: 8),
                  Text(
                    "Gipsy ",

                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  Text(
                    "bee",

                    style: TextStyle(fontSize: 30, color: Colors.orange),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 65),
              child: Icon(Icons.menu, size: 40),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only( topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Image.asset(
                  "assets/headphones.png",
                  height: 250,
                  width: 400,
                ),
              ),

            ),
            Container(

                color: Colors.grey.shade200,
              padding: EdgeInsets.only(left: 40 , top: 20, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "WH-CH520 Wireless Headphone",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Wireless over ear",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Text(
              "500\$",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70,top: 30),
              child:
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Color : ",
                    style:
                    TextStyle(fontSize: 20, fontStyle:FontStyle.italic,fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(radius: 12, backgroundColor: Colors.grey),
                        SizedBox(width: 8),
                        Text("Grey", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(width: 50),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.orange, width: 2),
                          ),
                          child: CircleAvatar(radius: 12, backgroundColor: Colors.black),
                        ),
                        SizedBox(width: 8),
                        Text("Black", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),

              ],
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Battery : ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                SizedBox(width: 10),
                Chip(label: Text("20h")),
                SizedBox(width: 10),
                Chip(label: Text("30h"),backgroundColor: Colors.grey.shade200,
                ),
                SizedBox(width: 10),
                Chip(label: Text("40h")),
              ],
            )
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart, color: Colors.white, size: 24),
                  SizedBox(width: 8),
                  Text(
                    "Add To Cart",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),



          ],

        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
