import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'HomePage.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.title, required this.url}) : super(key: key);

  final String title;
  final String url;


  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {


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

      body: Center(
        child: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),

      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Share next and last video / en el siguiente video ',
        child: Icon(Icons.share),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}