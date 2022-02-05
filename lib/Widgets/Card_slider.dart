import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:newsapi/Service/colors.dart';

import 'Card_full.dart';


class CardSlider extends StatelessWidget {
  const CardSlider({Key? key, required this.sourceNews}) : super(key: key);

  final Function sourceNews;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 218,
      child: FutureBuilder(
          future: sourceNews(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if( snapshot.hasData) {
              if (snapshot.hasError) {
                return const Text("error");
              } else {
                return CarouselSlider.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index, int pageViewIndex) {
                    return CardFull(
                      titre: snapshot.data[index].titre,
                      date: snapshot.data[index].date,
                      image: snapshot.data[index].image,
                      url: snapshot.data[index].url,
                    );
                  },
                  options: CarouselOptions(
                    height: 218,
                    aspectRatio: 16/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                  ),
                );
              }
            } return  const Center(child: SpinKitFadingCircle(color: primary, size: 40));
          }
      ),
    );
  }
}
