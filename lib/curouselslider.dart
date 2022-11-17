import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carousel extends StatelessWidget {
  const carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Carousel Slider"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: CarouselSlider(
          items: [
            Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1633919058136-f1c55d5dc198?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'))),
            ),
            Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1508739773434-c26b3d09e071?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'))),
            ),
            Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1477346611705-65d1883cee1e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'))),
            )
          ],
          options: CarouselOptions(
              aspectRatio: 25 / 8,
              scrollPhysics: const BouncingScrollPhysics(),
              enlargeCenterPage: true,
              autoPlay: true,
              viewportFraction: .8),
        ),
      floatingActionButton: FloatingActionButton
        (backgroundColor: Colors.red,
        onPressed: () {
      },
      child: Icon(Icons.add),

      ),
    );



  }
}
