import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const Ecommerce(),
    ),
  );
}

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  State<Ecommerce> createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  // * BOTTOM NAVIGATION BAR LOGIC
  int currentIndex = 0;
  void onPress(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  // * DATA
  List buttons = [
    [
      const Icon(
        CupertinoIcons.bolt,
        color: Colors.orange,
      ),
      'Flash Deal'
    ],
    [
      const Icon(
        CupertinoIcons.doc_plaintext,
        color: Colors.orange,
      ),
      'Bill'
    ],
    [
      const Icon(
        CupertinoIcons.gamecontroller,
        color: Colors.orange,
      ),
      'Game'
    ],
    [
      const Icon(
        CupertinoIcons.gift,
        color: Colors.orange,
      ),
      'Gift Cards'
    ],
    [
      const Icon(
        CupertinoIcons.compass,
        color: Colors.orange,
      ),
      'More'
    ],
  ];

  List specialCards = [
    [
      'Watches',
      '10+ Brands',
      'https://images.unsplash.com/photo-1604242692760-2f7b0c26856d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
    ],
    [
      'Fashion',
      '20+ Brands',
      'https://images.unsplash.com/photo-1567966456076-905a50a06d8c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    ],
  ];

  List popularCards = [
    [
      'https://images.unsplash.com/photo-1567967455389-e432b1ca1404?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'Hand bags'
    ],
    [
      'https://images.unsplash.com/photo-1518061124653-4b85d51931f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      'Hats'
    ],
    [
      'https://images.unsplash.com/photo-1595535373192-fc8935bacd89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'Perfumes'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      // * APP BAR
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70.0,
        title: TextField(
          decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              filled: true,
              fillColor: Colors.grey[300],
              hintText: 'Search Products',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none)),
        ),
        actions: [
          CircleAvatar(
              radius: 23,
              backgroundColor: Colors.grey[300],
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.cart,
                    color: Colors.grey[600],
                  ))),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 23,
            backgroundColor: Colors.grey[300],
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.bell,
                  color: Colors.grey[600],
                )),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),

      // * BODY
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1531303435785-3853ba035cda?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Black Friday Sale',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Save Upto 40%',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 15, right: 15, bottom: 10),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, mainAxisExtent: 105),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 58,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange[100]),
                        child: buttons[index][0],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        buttons[index][1],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 15),
                      )
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 15, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Special for you',
                    style: TextStyle(fontSize: 22),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See more'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 25.0, right: 10),
                scrollDirection: Axis.horizontal,
                itemCount: specialCards.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              opacity: 1,
                              image: NetworkImage(specialCards[index][2]))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              specialCards[index][0],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              specialCards[index][1],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 15, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Product',
                    style: TextStyle(fontSize: 22),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See more'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 20, right: 10),
                scrollDirection: Axis.horizontal,
                itemCount: popularCards.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[100],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.network(
                              popularCards[index][0],
                              fit: BoxFit.cover,
                              width: 200,
                              height: 180,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              popularCards[index][1],
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),

      // * BOTTOM NAVIGATION BAR
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: Colors.orange[50],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 20,
          currentIndex: currentIndex,
          onTap: onPress,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_alt),
                label: '',
                tooltip: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart),
                label: '',
                tooltip: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble),
                label: '',
                tooltip: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: '',
                tooltip: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: '', tooltip: 'Settings')
          ],
        ),
      ),
    );
  }
}
