import 'package:flutter/material.dart';
import 'package:newsapi/Service/Api.dart';
import 'package:newsapi/Service/colors.dart';
import 'package:newsapi/Widgets/Card_slider.dart';
import 'package:newsapi/Widgets/List_list.dart';
import '../HomePage.dart';
import 'TechPageFull.dart';
import 'TechPageList.dart';


class TechPageHome extends StatefulWidget {
  const TechPageHome({Key? key}) : super(key: key);

  @override
  _TechPageHomeState createState() => _TechPageHomeState();
}

class _TechPageHomeState extends State<TechPageHome> {


  @override
  Widget build(BuildContext context) {

    final tabNewsSelect = <Widget>[
      const Tab(text: 'NextImpact'),
      const Tab(text: 'C. Hardware'),
      const Tab(text: 'Clubic'),
      const Tab(text: 'ZdNet'),
    ];

    final tabNewsView = <Widget>[
      const Listlist(sourceNews: GetRss.getRssNextImpact),
      const Listlist(sourceNews: GetRss.getRssComptHardware),
      const Listlist(sourceNews: GetRss.getRssClubic),
      const Listlist(sourceNews: GetRss.getRssZnet),
    ];


    return DefaultTabController(
      length: tabNewsSelect.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())),
              child: SizedBox(height: 30, child: Image.asset("assets/images/logos.png"))),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Actualités Techno',style:  TextStyle(color: black,fontSize: 20,height: 1,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TechPageList())),
                          icon: Icon(Icons.library_books_rounded,color: black.withOpacity(0.3),size: 23)),
                      IconButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TechPageFull())),
                          icon: Icon(Icons.photo_library_rounded,color: black.withOpacity(0.3),size: 23)),
                    ],
                  ),
                )
              ],
            ),

            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 218,
                child:  const CardSlider(sourceNews: GetRss.getRssZnet)
            ),
            const SizedBox(height: 10),
            TabBar(indicatorColor: primary, tabs: tabNewsSelect,labelColor: primary,unselectedLabelColor: black),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 430,
                child: TabBarView(children: tabNewsView))


          ],
        )
      ),
    );
  }

}


