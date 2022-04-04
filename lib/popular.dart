class PopularModel {
  String image;
  int color;

  PopularModel(this.image, this.color);
}

List<PopularModel> populars = popularsData
    .map((item) => PopularModel(item['image'] as String, item['color'] as int
))
    .toList();

var popularsData = [
  {"image": "assets/images/temple.png", "color": 0xFFFEF1ED},
  {"image": "assets/images/temple.png", "color": 0xFFEDF6FE},
  {"image": "assets/images/temple.png", "color": 0xFFFEF6E8},
  {"image": "assets/images/temple.png", "color": 0xFFEAF8E8},
];