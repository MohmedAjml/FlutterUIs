import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const Profile_UI(),
    ),
  );
}

// ignore: camel_case_types
class Profile_UI extends StatelessWidget {
  const Profile_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List options = const [
      [
        Icon(
          Icons.privacy_tip_outlined,
          color: Colors.black,
        ),
        'Privacy'
      ],
      [
        Icon(
          Icons.history_rounded,
          color: Colors.black,
        ),
        'Purchase History'
      ],
      [
        Icon(
          Icons.help_outline_rounded,
          color: Colors.black,
        ),
        'Help & Support'
      ],
      [
        Icon(
          Icons.settings_outlined,
          color: Colors.black,
        ),
        'Settings'
      ],
      [
        Icon(
          Icons.person_add_alt_outlined,
          color: Colors.black,
        ),
        'Invite a friend'
      ],
      [
        Icon(
          Icons.logout_rounded,
          color: Colors.black,
        ),
        'Logout'
      ]
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 35,
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://avatars.githubusercontent.com/u/113675533?v=4')),
                       border: Border.all(color:Colors.green),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, top: 10),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.squareFacebook,
                    color: Color.fromARGB(255, 5, 48, 111),
                    size: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.squareTwitter,
                    color: Color.fromARGB(255, 60, 149, 221),
                    size: 40,
                  ),
                   SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.squareWhatsapp,
                    color: Color.fromARGB(255, 117, 227, 124),
                    size: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.squareYoutube,
                    color: Color.fromARGB(255, 236, 38, 38),
                    size: 40,
                  ),
                 
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                "Mohmed Ajml",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(
              child: Text(
                "@Ajml",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                "Developer",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              physics: const BouncingScrollPhysics(),
              itemCount: options.length,
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black12.withOpacity(0.05)),
                  child: ListTile(
                    leading: options[index][0],
                    title: Text(
                      options[index][1],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}