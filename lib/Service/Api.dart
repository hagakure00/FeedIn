import 'package:newsapi/Model/NewsModel.dart';
import 'package:webfeed/domain/rss_feed.dart';
import 'package:http/http.dart' as http;


class GetRss {

  static Future<List<News>> getRssFrance24() async {
    var data = await http.get(Uri.parse("https://www.france24.com/fr/rss"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssOuestFr() async {
    var data = await http.get(Uri.parse("https://www.ouest-france.fr/rss/une"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssFranceTv() async {
    var data = await http.get(Uri.parse("https://www.francetvinfo.fr/france.rss"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssFranceRt() async {
    var data = await http.get(Uri.parse("https://francais.rt.com/rss"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }


  static Future<List<News>> getRssFrance24Sport() async {
    var data = await http.get(Uri.parse("https://www.france24.com/fr/sports/rss"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssOuestFrSport() async {
    var data = await http.get(Uri.parse("https://www.ouest-france.fr/rss/sport"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssFranceTvSport() async {
    var data = await http.get(Uri.parse("https://www.francetvinfo.fr/sports.rss"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssRmcSport() async {
    var data = await http.get(Uri.parse("https://rmcsport.bfmtv.com/rss/fil-sport/"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }


  static Future<List<News>> getRssComptHardware() async {
    var data = await http.get(Uri.parse("https://www.comptoir-hardware.com/home.xml"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssClubic() async {
    var data = await http.get(Uri.parse("https://www.clubic.com/feed/news.rss"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssZnet() async {
    var data = await http.get(Uri.parse("https://www.zdnet.fr/feeds/rss/actualites/"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssNextImpact() async {
    var data = await http.get(Uri.parse("https://www.inpact-hardware.com/rss/news.xml"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }

  static Future<List<News>> getRssGameBlog() async {
    var data = await http.get(Uri.parse("https://www.gameblog.fr/rssmap/rss_all.xml"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssGamekult() async {
    var data = await http.get(Uri.parse("https://www.gamekult.com/feed.xml"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssJeuxOnline() async {
    var data = await http.get(Uri.parse("https://www.jeuxonline.info/rss/actualites/rss.xml"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }
  static Future<List<News>> getRssGamergen() async {
    var data = await http.get(Uri.parse("https://gamergen.com/rss"));
    var rssFeed = RssFeed.parse(data.body.toString());
    List<News> news = [];
    for (int i = 0; i < rssFeed.items!.length; i++) {
      news.add(News(rssFeed.items![i].title, rssFeed.items![i].description, rssFeed.items![i].pubDate.toString(),
          rssFeed.items![i].enclosure!.url, rssFeed.items![i].link));
    }
    return news;
  }


}


