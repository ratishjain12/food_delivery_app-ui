import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(244, 243, 243, 1),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              Icons.shopping_basket,
              color: Colors.black45,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Food Delivery',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: double.infinity,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            colors: [Colors.yellow, Colors.orange])),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          'pizza',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  choices('Burgers', Colors.white, Colors.grey, Colors.white,
                      FontWeight.normal),
                  choices('Kebab', Colors.white, Colors.grey, Colors.white,
                      FontWeight.normal),
                  choices('Desserts', Colors.white, Colors.grey, Colors.white,
                      FontWeight.normal),
                  choices('Salad', Colors.white, Colors.grey, Colors.white,
                      FontWeight.normal),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Free Delivery',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 450,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem('assets/images/one.jpeg', '\$13.00'),
                  makeItem('assets/images/two.jpeg', '\$15.00'),
                  makeItem('assets/images/three.jpeg', '\$17.00'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget choices(
      name, Color cl, Color font, Color borderColor, FontWeight weight) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 110,
      decoration: BoxDecoration(
        color: cl,
        border: Border.all(color: borderColor.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(24),
      ),
      child: GestureDetector(
          onTap: () {},
          child: Align(
            alignment: Alignment.center,
            child: Text(
              name,
              style: TextStyle(fontSize: 20, color: font, fontWeight: weight),
            ),
          )),
    );
  }

  Widget makeItem(image, price) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.7),
              Colors.black.withOpacity(.2),
            ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 295,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      price,
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Vegetarian Pizza',
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
