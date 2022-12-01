// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: const Staggered(),
    ),
  );
}

class Staggered extends StatelessWidget {
  const Staggered({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> staggeredStyle = const [
      StaggeredTile.count(1, 1.7),
      StaggeredTile.count(1,1.9),
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2.2),
      StaggeredTile.count(1, 1.2),
    ];

    List<Tile> tiles = const [
      Tile(
          url:
          'https://images.unsplash.com/photo-1547619292-b592f993106f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
          title: 'Eiffel Tower',
          subtitle: 'PARIS'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1572583949319-3d1ea748e486?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
          title: 'Pescadero',
          subtitle: 'USA'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1517777322704-0630b47b8de2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',  
        title: 'Basel',
          subtitle: 'Switzerland'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1494894324626-f9727ea724ec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
          title: 'Alta Vista Drive',
          subtitle: 'Canada'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1505814643657-0ae175b0e77e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          title: 'Marina Bay',
          subtitle: 'Singapore')
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Staggered Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          staggeredTiles: staggeredStyle,
          controller: ScrollController(initialScrollOffset: 2),
          children: tiles,
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  const Tile({
    Key? key,
    required this.url,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color:const Color.fromARGB(255, 90, 161, 220),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(url),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(subtitle),
                ],
              ),
            )
          ],
        ));
  }
}