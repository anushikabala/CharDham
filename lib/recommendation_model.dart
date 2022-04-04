class RecommendedModel {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;
  int price;

  RecommendedModel(this.name, this.tagLine, this.image, this.images,
      this.description, this.price);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'] as String, item['tagLine'] as String,
    item['image'] as String, item['images'] as List<String>, item['description'] as String, item['price'] as int))
    .toList();

var recommendationsData = [
  {
    "name": "Kedarnath, Rudraprayag",
    "tagLine": "Kedarnath",
    "image": "https://s3.india.com/travel/wp-content/uploads/2017/05/Kedarnath-1.jpg",
    "images": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Majestic_view_of_kedarnath.jpg/1024px-Majestic_view_of_kedarnath.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Temple_in_the_aftermath_of_the_flood.jpg/1024px-Temple_in_the_aftermath_of_the_flood.jpg",
      "https://badrinath-kedarnath.gov.in/Assets/image/k3.jpg",
      "https://www.tourmyindia.com/blog//wp-content/uploads/2021/10/Best-Places-to-Visit-in-Kedarnath.jpg",

    ],
    "description":
    "Kedarnath is one of the most sacred pilgrimages of Lord Shiva situated in Rudraprayag district of Garhwal region in Uttarakhand. Kedarnath is one of the Char Dham in Uttarakhand and the most important dham among Panch kedar. Kedarnath is situated at an altitude of 3586 mts, in the lap of the majestic mountain peaks and near the head of river Mandakini, Kedarnath range stands one of the twelve Jyotirlingas of Lord Shiva.",
    "price": 10
  },
  {
    "name": "Badrinath, Chamoli",
    "tagLine": "Badrinath",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Badrinath_Temple-_Uttarakhand.jpg/375px-Badrinath_Temple-_Uttarakhand.jpg",
    "images": [
      "https://www.tourmyindia.com/chardham/images/badrinath-dham1.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/e/e1/Badrinath_Temple_at_night.JPG",
      "https://badrinath-kedarnath.gov.in/Assets/image/badrinath.jpg",
      "https://www.euttaranchal.com/tourism/photos/badrinath-9071970.jpg"
      ],
    "description":
    "Badrinath is the only Shrine which is part of both Chota Char Dham and India Char Dham. Badrinath is one among four pilgrimage centres in four corners of India. Among them were Badrikashram (Badrinath Temple) in the North, Rameshwaram in South, Dwarkapuri in west and Jagannathpuri in east.",
    "price": 10
  },
  {
    "name": "Yamunotri, Uttarkashi",
    "tagLine": "Yamunotri ",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Yamunotri_temple_and_ashram.jpg/1024px-Yamunotri_temple_and_ashram.jpg",
    "images": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Majestic_view_of_kedarnath.jpg/1024px-Majestic_view_of_kedarnath.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Temple_in_the_aftermath_of_the_flood.jpg/1024px-Temple_in_the_aftermath_of_the_flood.jpg",
      "https://badrinath-kedarnath.gov.in/Assets/image/k3.jpg",
      "https://www.tourmyindia.com/blog//wp-content/uploads/2021/10/Best-Places-to-Visit-in-Kedarnath.jpg",
      ],
    "description":
    "Yamunotri, also Jamnotri, is the source of the Yamuna River and the seat of the Goddess Yamuna in Hinduism. It is situated at an altitude of 3,293 metres (10,804 ft) in the Garhwal Himalayas and located approximately 150 kilometers (93 mi) North of Uttarkashi, the headquarters of the Uttarkashi district in the Garhwal Division of Uttarakhand, India. It is one of the four sites in India's Chhota Char Dham pilgrimage. ",
    "price": 10
  },
  {
    "name": "Gangotri , Uttarkashi ",
    "tagLine": "Gangotri",
    "image": "https://s3.india.com/travel/wp-content/uploads/2017/05/Kedarnath-1.jpg",
    "images": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Majestic_view_of_kedarnath.jpg/1024px-Majestic_view_of_kedarnath.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Temple_in_the_aftermath_of_the_flood.jpg/1024px-Temple_in_the_aftermath_of_the_flood.jpg",
      "https://badrinath-kedarnath.gov.in/Assets/image/k3.jpg",
      "https://www.tourmyindia.com/blog//wp-content/uploads/2021/10/Best-Places-to-Visit-in-Kedarnath.jpg",
      ],
    "description":
    "Gangotri is a town and a Nagar Panchayat (municipality) in Uttarkashi district in the state of Uttarakhand, India. It is 99 km from Uttarkashi, the main district headquarter. It is a Hindu pilgrim town on the banks of the river Bhagirathi and origin of the river Ganges. ",
    "price": 100
  },

];