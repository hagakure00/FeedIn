
class News {

  String? titreNews, descriptionNews, dateNews, urlImage, urlNews;

  News(
      this.titreNews,
      this.descriptionNews,
      this.dateNews,
      this.urlImage,
      this.urlNews);

  get url => urlNews;
  set url(value) {
    urlNews = value;
  }

  get image => urlImage;
  set image(value) {
    urlImage = value;
  }

  get date => dateNews;
  set date(value) {
    dateNews = value;
  }

  get description => descriptionNews;
  set description(value) {
    descriptionNews = value;
  }

  String get titre => titreNews!;
  set titre(String value) {
    titreNews = value;
  }
}