import 'package:flutter/material.dart';
import 'package:newsapi/Pages/Sport/SportPageFull.dart';
import 'package:newsapi/Service/Api.dart';
import 'package:newsapi/Service/colors.dart';
import 'package:newsapi/Widgets/List_list.dart';

import '../HomePage.dart';



class SportPageList extends StatefulWidget {
  const SportPageList({Key? key}) : super(key: key);

  @override
  _SportPageListState createState() => _SportPageListState();
}

class _SportPageListState extends State<SportPageList> {

  @override
  Widget build(BuildContext context) {

    final tabNewsSelect = <Widget>[
      const Tab(text: 'France 24'),
      const Tab(text: 'France TV'),
      const Tab(text: 'Ouest FR'),
      const Tab(text: 'Rmc Sport'),
    ];

    final tabNewsView = <Widget>[
      const Listlist(sourceNews: GetRss.getRssFrance24Sport),
      const Listlist(sourceNews: GetRss.getRssFranceTvSport),
      const Listlist(sourceNews: GetRss.getRssOuestFrSport),
      const Listlist(sourceNews: GetRss.getRssRmcSport),
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
                    child: Text('Actualités Sportive',style:  TextStyle(color: black,fontSize: 20,height: 1,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SportPageList())),
                            icon: Icon(Icons.library_books_rounded,color: black.withOpacity(0.3),size: 23)),
                        IconButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SportPageFull())),
                            icon: Icon(Icons.photo_library_rounded,color: black.withOpacity(0.3),size: 23)),
                      ],
                    ),
                  )
                ],
              ),

              TabBar(indicatorColor: primary, tabs: tabNewsSelect,labelColor: primary,unselectedLabelColor: black),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height  - 200,
                  child: TabBarView(children: tabNewsView))


            ],
          )
      ),
    );
  }



}
