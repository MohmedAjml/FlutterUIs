import 'package:flutter/material.dart';

import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BhomeUI(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class BhomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              'Category',
              style: TextStyle(color: Colors.black),
            ),
            leading: const Icon(
              Icons.category,
              color: Colors.black,
            ),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.black,
              )
            ],
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: TabBar(
                  labelPadding: EdgeInsets.all(10),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.blue,
                  isScrollable: true,
                  tabs: [
                    Text('For you'),
                    Text('Design'),
                    Text('Beauty'),
                    Text('Education'),
                    Text('Entertaiment'),
                  ]),
            )),
        body: TabBarView(
          children: [
            ListView.separated(
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Bhomelist(
                      index: index,
                    ),
                  );
                },
                separatorBuilder: (context, int index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: data.length),
            const Text('page2'),
            const Text('page3'),
            const Text('page4'),
            const Text('page5'),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.folder_copy), label: 'Files'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}

class Bhomelist extends StatelessWidget {
  final int index;

  const Bhomelist({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var user = data[index];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              height: 90,
              width: 90,
              color: Colors.blue,
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn2.iconfinder.com/data/icons/summer-time-24/512/parasol-summer-beach-umbrella-shade-weather-beaches-sand-nature.svg-256.png'),
                                fit: BoxFit.fill)),
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              user['text']!,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            Text.rich(
                              TextSpan(children: [
                                const WidgetSpan(
                                    child: CircleAvatar(
                                  radius: 12,
                                )),
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 5,
                                )),
                                TextSpan(text: user['name']),
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 20,
                                )),
                                const TextSpan(
                                  text: '4 min read',
                                )
                              ]),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
