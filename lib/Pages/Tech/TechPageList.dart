import 'package:flutter/material.dart';
import 'package:newsapi/Service/Api.dart';
import 'package:newsapi/Service/colors.dart';
import 'package:newsapi/Widgets/List_list.dart';
import '../HomePage.dart';
import 'TechPageFull.dart';



class TechPageList extends StatefulWidget {
  const TechPageList({Key? key}) : super(key: key);

  @override
  _TechPageListState createState() => _TechPageListState();
}

class _TechPageListState extends State<TechPageList> {

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
                    child: Text('Actualités a la Une',style:  TextStyle(color: black,fontSize: 20,height: 1,fontWeight: FontWeight.w400,letterSpacing: 0.5,decoration: TextDecoration.none)),
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
