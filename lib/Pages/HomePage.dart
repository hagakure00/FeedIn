import 'package:flutter/material.dart';
import 'package:newsapi/Pages/News/NewsPageHome.dart';
import 'package:newsapi/Pages/Sport/SportPageHome.dart';
import 'package:newsapi/Service/Api.dart';
import 'package:newsapi/Service/colors.dart';
import 'package:newsapi/Widgets/Card_slider.dart';
import 'Game/GamePageHome.dart';
import 'Tech/TechPageHome.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())),
            child: SizedBox(height: 30, child: Image.asset("assets/images/logos.png"))),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // news
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Actualités a la Une',style:  TextStyle(color: black,fontSize: 20,height: 1,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                ),
                SizedBox(
                  width: 140,
                  child: IconButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NewsPageHome())),
                      icon: Row(
                        children: const [
                          Text('Voir toute l\'actu ',style:  TextStyle(color: primary,fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                          Icon(Icons.double_arrow_rounded,color: primary,size: 15),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 218,
                child:  const CardSlider(sourceNews: GetRss.getRssOuestFr)
            ),

            ///////////
            //////////

            // tech
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Actualités Techno',style:  TextStyle(color: black,fontSize: 20,height: 1,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                ),
                SizedBox(
                  width: 140,
                  child: IconButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TechPageHome())),
                      icon: Row(
                        children: const [
                          Text('Voir toute l\'actu ',style:  TextStyle(color: primary,fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                          Icon(Icons.double_arrow_rounded,color: primary,size: 15),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 218,
                child:  const CardSlider(sourceNews: GetRss.getRssNextImpact)
            ),

            ///////////
            //////////

            // jeux video
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Actualités Jeux Videos',style:  TextStyle(color: black,fontSize: 20,height: 1,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                ),
                SizedBox(
                  width: 140,
                  child: IconButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const GamePageHome())),
                      icon: Row(
                        children: const [
                          Text('Voir toute l\'actu ',style:  TextStyle(color: primary,fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                          Icon(Icons.double_arrow_rounded,color: primary,size: 15),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 218,
                child:  const CardSlider(sourceNews: GetRss.getRssGameBlog)
            ),

            ///////////
            //////////

            // sport
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Actualités Sportive',style:  TextStyle(color: black,fontSize: 20,height: 1,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                ),
                SizedBox(
                  width: 140,
                  child: IconButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SportPageHome())),
                      icon: Row(
                        children: const [
                          Text('Voir toute l\'actu ',style:  TextStyle(color: primary,fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                          Icon(Icons.double_arrow_rounded,color: primary,size: 15),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 218,
                child:  const CardSlider(sourceNews: GetRss.getRssFrance24Sport)
            ),



          ],
        ),
      )
    );
  }

}


