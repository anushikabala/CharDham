import 'package:cached_network_image/cached_network_image.dart';
import 'package:chaardham/Booking/temple_booking.dart';
import 'package:chaardham/temples.dart';
import 'package:flutter/material.dart';

import '../recommendation_model.dart';



class Details extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    "https://s3.india.com/travel/wp-content/uploads/2017/05/Kedarnath-1.jpg",
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 350,
                    color: Colors.black54,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                            Spacer(),
                            Icon(
                              Icons.heart_broken,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Kedarnath",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Rudraprayag district",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              const Text(
                                "May - June & Sept - Oct ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          height: 50,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FeaturesTile(
                    onTap: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => templeBooking()),);  },
                      icon: Icon(
                        Icons.temple_hindu,
                        color: Colors.grey,
                      ),
                      label: "Temple"),
                  FeaturesTile(
                      onTap: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => templeBooking()),);  },
                      icon: Icon(
                        Icons.restaurant,
                        color: Colors.grey,
                      ),
                      label: "Hotel"),
                  FeaturesTile(
                      onTap: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => templeBooking()),);  },
                      icon: Icon(
                        Icons.map,
                        color: Colors.grey,
                      ),
                      label: "Maps"),
                  FeaturesTile(
                      onTap: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => templeBooking()),);  },
                      icon: Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      label: "Call")
                ],
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 15, left: 15, right: 10, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DetailsCard(rating: '9/10', noOfReviews: 'Based on 50K reviews', title: 'Booking',),
                    DetailsCard(rating: 'BookNow', noOfReviews: 'Starting from 12k ', title: 'Packages',)
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: const Text(
                  "Kedarnath is one of the most sacred pilgrimages of Lord Shiva situated in Rudraprayag district of Garhwal region in Uttarakhand. Kedarnath is one of the Char Dham in Uttarakhand and the most important dham among Panch kedar. Kedarnath is situated at an altitude of 3586 mts, in the lap of the majestic mountain peaks and near the head of river Mandakini, Kedarnath range stands one of the twelve Jyotirlingas of Lord Shiva.",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 16,
              ),

            ],
          ),
        ));
  }
}





class DetailsCard extends StatelessWidget {
  late final String title;
  late final String noOfReviews;
  late final String rating;

  DetailsCard(
      {required this.title, required this.noOfReviews, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Color(0xFFE1F5FE).withOpacity(0.7),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "assets/booking.png",
                  height: 30,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    rating,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
           Text(
            noOfReviews,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class FeaturesTile extends StatelessWidget {
  late final Icon icon;
  late final String label;
  final Function()? onTap;

  FeaturesTile({required this.onTap,required this.icon, required this.label,});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Container(
        child: Column(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(40)),
                  child: icon),
            ),
            SizedBox(
              height: 9,
            ),
            Container(
                width: 70,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}


