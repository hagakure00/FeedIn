import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:newsapi/Pages/DetailPage.dart';
import 'package:newsapi/Service/colors.dart';


class CardList extends StatelessWidget {
  const CardList({Key? key, required this.titre, required this.date, required this.image, required this.url}) : super(key: key);

  final String titre;
  final String date;
  final String image;
  final String url;


  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(title: titre, url: url))),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                        child: CachedNetworkImage(
                            imageUrl: image,
                            errorWidget: (context, url, error) => const Center(child: Icon(Icons.error_outline, color: grey, size: 20)),
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const SpinKitFadingCircle(color: primary, size: 20)),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 120,
                          height: 100,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: const [0.7, 1],
                                colors: [white.withOpacity(0), white],
                              )),
                        ))
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 140,
                  padding: const EdgeInsets.only(left: 10,right: 5,top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: primary,
                          ),
                          padding: const EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                          child: Text( date.substring(0,10), style: const TextStyle(color: white,fontSize: 10,fontWeight: FontWeight.w500,height: 1,letterSpacing: 0.5,decoration: TextDecoration.none))),
                      const SizedBox(height: 10),
                      Text( titre, style: const TextStyle(color: black,fontSize: 12,fontWeight: FontWeight.w600,height: 1.3,letterSpacing: 0.5,decoration: TextDecoration.none),maxLines: 3),
                    ],),
                )
              ],)

        ),
      ),
    );
  }
}
