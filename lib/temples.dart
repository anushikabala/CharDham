class TempleModel {
  String image;

  TempleModel(this.image);
}

List<TempleModel> temples = templesData.map((item) => TempleModel(item['image'] as String)).toList();

var templesData = [
  {
    "image":
    "https://www.euttaranchal.com/tourism/photos/10-must-visit-temples-of-uttarakhand-9194616.jpg"
  },
  {
    "image":
    "https://www.euttaranchal.com/tourism/photos/10-must-visit-temples-of-uttarakhand-9194616.jpg"
  },
  {
    "image":
    "https://www.euttaranchal.com/tourism/photos/10-must-visit-temples-of-uttarakhand-9194616.jpg"
  },
  {
    "image":
    "https://www.euttaranchal.com/tourism/photos/10-must-visit-temples-of-uttarakhand-9194616.jpg"
  },
  {
    "image":
    "https://www.euttaranchal.com/tourism/photos/10-must-visit-temples-of-uttarakhand-9194616.jpg"
  },
  {
    "image":
    "https://www.euttaranchal.com/tourism/photos/10-must-visit-temples-of-uttarakhand-9194616.jpg"
  },
  {
    "image":
    "https://www.euttaranchal.com/tourism/photos/10-must-visit-temples-of-uttarakhand-9194616.jpg"
  },

];