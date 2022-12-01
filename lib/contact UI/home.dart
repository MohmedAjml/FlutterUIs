import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Contact(),
    ),
  );
}

// ignore: camel_case_types
class Contact extends StatelessWidget {
  const Contact({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Contacts",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
           ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.contacts_rounded,
                  size: 35,
                ),
              ),
              title: const Text(
                "Shankar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "+91 7272772272",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.blue,
                    ))
              ])),
          const Divider(
              color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,
              height: 5),
          ListTile(
              leading: const CircleAvatar(
                 backgroundColor: Colors.green,
                radius: 30,
                child: Icon(
                  Icons.contacts_rounded,
                  size: 35,
                ),
              ),
              title: const Text(
                "Maya",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "+91 9834655124",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.blue,
                    ))
              ])),
          const Divider(
            color: Colors.black,
            thickness: .5,
            endIndent: 20,
            indent: 20,
            height: 5,
          ),
          ListTile(
              leading: const CircleAvatar(
                 backgroundColor: Colors.green,
                radius: 30,
                child: Icon(
                  Icons.contacts_rounded,
                  size: 35,
                ),
              ),
              title: const Text(
                "John",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "+91 8837895567",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.blue,
                    ))
              ])),
          const Divider(
              color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,
              height: 5),
          ListTile(
              leading: const CircleAvatar(
                 backgroundColor: Colors.green,
                radius: 30,
                child: Icon(
                  Icons.contacts_rounded,
                  size: 35,
                ),
              ),
              title: const Text(
                "Banner",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "+91 9534565946",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.blue,
                    ))
              ])),
          const Divider(
              color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,
              height: 5),
          ListTile(
              leading: const CircleAvatar(
                 backgroundColor: Colors.green,
                radius: 30,
                child: Icon(
                  Icons.contacts_rounded,
                  size: 35,
                ),
              ),
              title: const Text(
                "Kuldip",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "+91 7931235132",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.blue,
                    ))
              ])),
          const Divider(
              color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,
              height: 5),
          ListTile(
              leading: const CircleAvatar(
                 backgroundColor: Colors.green,
                radius: 30,
                child: Icon(
                  Icons.contacts_rounded,
                  size: 35,
                ),
              ),
              title: const Text(
                "Davidson",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "+91 8533215124",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.blue,
                    ))
              ])),
          const Divider(
              color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,
              height: 5),
          ListTile(
              leading: const CircleAvatar(
                 backgroundColor: Colors.green,
                radius: 30,
                child: Icon(
                  Icons.contacts_rounded,
                  size: 35,
                ),
              ),
              title: const Text(
                "Albert",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "+91 9836544554",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.blue,
                    ))
              ])),
          const Divider(
              color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,
              height: 5),
          ListTile(
              leading: const CircleAvatar(
                 backgroundColor: Colors.green,
                radius: 30,
                child: Icon(
                  Icons.contacts_rounded,
                  size: 35,
                ),
              ),
              title: const Text(
                "Zara",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "+91 8739875124",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.blue,
                    ))
              ])),
              const Divider(
              color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,
              height: 5),
              ListTile(
              leading: const CircleAvatar(
                 backgroundColor: Colors.green,
                radius: 30,
                child: Icon(
                  Icons.contacts_rounded,
                  size: 35,
                ),
              ),
              title: const Text(
                "Paul",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "+91 9767675124",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.blue,
                    ))
              ])),
        ],
      ),
    );
  }
}
