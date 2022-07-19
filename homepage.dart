import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFBAB63B),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'Get\nOrganic Food',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Find the freshest food and get\nfree delivery in your town',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page01(),
                      ));
                },
                child: Container(
                  height: 55,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Get Staeted',
                      style: TextStyle(
                          color: Color(0xFFBAB63B),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/image/Shopping_Kids-removebg-preview.png',
                  height: 380,
                  width: 380,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page01 extends StatefulWidget {
  const Page01({Key? key}) : super(key: key);

  @override
  State<Page01> createState() => _Page01State();
}

class _Page01State extends State<Page01> {
  List<Map<String, dynamic>> product = [
    {
      'Image': 'assets/image/bell-pepper.png',
      'name': 'Vegetables',
    },
    {
      'Image': 'assets/image/fruits (1).png',
      'name': 'Fruist',
    },
    {
      'Image': 'assets/image/sprout.png',
      'name': 'Greens',
    },
    {
      'Image': 'assets/image/mushroom.png',
      'name': 'Mushroom',
    },
    {
      'Image': 'assets/image/rice.png',
      'name': 'Cereals',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFBAB63B),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.tune,
                              color: Colors.white,
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.shopping_bag_outlined,
                                        color: Colors.black,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFBAB63B),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '4',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/IMG20220130083917_1-01.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search foodstuffs',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: List.generate(
                          5,
                          (index) => InkResponse(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Page02(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  margin: EdgeInsets.only(
                                      left: 15, right: 5, top: 160),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          product[index]['Image'],
                                          color: Color(0xFFBAB63B),
                                          height: 35,
                                          width: 35,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          product[index]['name'],
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFBAB63B),
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Popular Foodstuffs',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 11,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: 209,
                              width: 157,
                              decoration: BoxDecoration(
                                color: Color(0xFFFDE9B4),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Image.asset(
                                    'assets/image/banana1.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Banana',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        'Ecuador',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '\$1.50',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xFFBAB63B),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 174,
                              width: 157,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFEFD6),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/image/pngegg (10).png',
                                    height: 90,
                                    width: 90,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Champignon',
                                        style: TextStyle(
                                            color: Color(0xFFA36E52),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        'Ukraine',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '\$3.55',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xFFBAB63B),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            Container(
                              height: 174,
                              width: 157,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFD8D3),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/image/pngegg (8).png',
                                    height: 90,
                                    width: 90,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Strawberry',
                                        style: TextStyle(
                                            color: Color(0xFFF48473),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        'Holland',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '\$23.10',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xFFBAB63B),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 209,
                              width: 157,
                              decoration: BoxDecoration(
                                color: Color(0xFFFDE9B4),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Image.asset(
                                    'assets/image/pngegg (9).png',
                                    height: 100,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Kiwi',
                                        style: TextStyle(
                                            color: Color(0xFF9EBB3A),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        'New Zealand',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '\$2.30',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xFFBAB63B),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Page02 extends StatefulWidget {
  const Page02({Key? key}) : super(key: key);

  @override
  State<Page02> createState() => _Page02State();
}

class _Page02State extends State<Page02> {
  List<Map<String, dynamic>> CartProduct = [
    {
      'ConColor': Color(0xFFFFC9B1),
      'Image': 'assets/image/Peach.png',
      'Name': 'Peach',
      'FontColor': Colors.deepOrangeAccent.shade200,
      'Rate': '\$3.15',
      'Add': '2',
      'Item': '(kg)'
    },
    {
      'ConColor': Color(0xFFD4FFCF),
      'Image': 'assets/image/Basil.png',
      'Name': 'Basil',
      'FontColor': Colors.green,
      'Rate': '\$1.50',
      'Add': '3',
      'Item': '(pc)'
    },
    {
      'ConColor': Color(0xFFFFE199),
      'Image': 'assets/image/Pumpkin.png',
      'Name': 'Pumpkin',
      'FontColor': Colors.orange,
      'Rate': '\$3.50',
      'Add': '1',
      'Item': '(kg)'
    },
    {
      'ConColor': Color(0xFFFEA9A4),
      'Image': 'assets/image/Tomato.png',
      'Name': 'Tomato',
      'FontColor': Colors.redAccent,
      'Rate': '\$5.75',
      'Add': '6',
      'Item': '(kg)'
    },
    {
      'ConColor': Color(0xFFFFC9B1),
      'Image': 'assets/image/Pineapple.png',
      'Name': 'Pineapple',
      'FontColor': Colors.orangeAccent,
      'Rate': '\$3.15',
      'Add': '3',
      'Item': '(pc)'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkResponse(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Cart',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    height: 33,
                    width: 33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/image/IMG20220130083917_1-01.jpeg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            margin: EdgeInsets.only(top: 10),
                            decoration: (BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: CartProduct[index]['ConColor'],
                            )),
                            child: Center(
                                child: Image.asset(
                              CartProduct[index]['Image'],
                              height: 80,
                              width: 80,
                            )),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                CartProduct[index]['Name'],
                                style: TextStyle(
                                    color: CartProduct[index]['FontColor'],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Spain',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                CartProduct[index]['Rate'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(1, 0),
                                            spreadRadius: 1,
                                            blurRadius: 2)
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            ),
                                            color: Colors.white,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.grey,
                                            size: 16,
                                          ),
                                        ),
                                        Text(
                                          CartProduct[index]['Add'],
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                            color: Colors.white,
                                          ),
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.grey,
                                            size: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    CartProduct[index]['Item'],
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFBAB63B),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total:',
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$13.90',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                  color: Color(0xFFBAB63B),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
