import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:newsapi/Pages/DetailPage.dart';
import 'package:newsapi/Service/colors.dart';


class CardFull extends StatelessWidget {
  const CardFull({Key? key, required this.titre, required this.date, required this.image, required this.url}) : super(key: key);

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
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width -20,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                      width: MediaQuery.of(context).size.width -20,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0.4, 1],
                            colors: [black.withOpacity(0), Colors.black],
                          )),
                    )),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Text( titre, style: const TextStyle(color: white,fontSize: 14,height: 1.5,letterSpacing: 0.5,decoration: TextDecoration.none),maxLines: 2)),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                       decoration: BoxDecoration(
                         borderRadius: const BorderRadius.all(Radius.circular(5)),
                         color: Colors.black.withOpacity(0.5),
                       ),
                        padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 8),
                        child: Text( date.substring(0,10), style:  const TextStyle(color: white,fontSize: 12,height: 1,letterSpacing: 0.5,decoration: TextDecoration.none))))
              ],
            )
        ),
      ),
    );
  }
}
