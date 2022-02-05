import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:newsapi/Service/colors.dart';
import 'package:newsapi/Widgets/Card_full.dart';


class Listfull extends StatelessWidget {
  const Listfull({Key? key, required this.sourceNews}) : super(key: key);

  final Function sourceNews;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: sourceNews(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if( snapshot.hasData) {
            if (snapshot.hasError) {
              return const Text("error");
            } else {
              return SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardFull(
                      titre: snapshot.data[index].titre,
                      date: snapshot.data[index].date,
                      image: snapshot.data[index].image,
                      url: snapshot.data[index].url,
                    );
                  },
                ),
              );
            }
          } return const Center(child: SpinKitFadingCircle(color: primary, size: 40));
        }
    );
  }
}
