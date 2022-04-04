import 'dart:ui';

import 'package:chaardham/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../recommendation_model.dart';

class SelectedPlaceScreen extends StatelessWidget {
  final _pageController = PageController(viewportFraction: 0.8);

  final RecommendedModel recommendedModel;

  SelectedPlaceScreen({Key? key, required this.recommendedModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          //front back font image
          children: <Widget>[
            Container(

              height: 57.6,
              margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.5),
                        color: Colors.black12,
                      ),
                      child: Image.asset('assets/images/backbutton.png'),
                    ),
                  ),
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.5),
                      color: Colors.black12,
                    ),
                    child: Image.asset('assets/images/like.png'),
                  ),
                ],
              ),
            ),
            Container(
              height: 218.4,
              margin: EdgeInsets.only(top: 16 ,bottom: 20),
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    recommendedModel.images.length,
                        (int index) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  recommendations[index].images[index])
                          )
                      ),

                    ),


                ),

              ),
            ),
            Container(
              alignment: Alignment.center,
              child: SmoothPageIndicator(
                  controller: _pageController,
                  count: recommendedModel.images.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.black38,
                    dotHeight: 4.8,
                    dotWidth: 8,
                    spacing: 4.8,
                  )),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 250.8,
                margin: EdgeInsets.only(left: 28.8, bottom: 20, right: 28.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 19.2),
                      child: Text(
                        recommendedModel.tagLine,
                        maxLines: 2,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 32.6, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 19.2),
                      child: Text(
                        recommendedModel.description,
                        maxLines: 10,
                        style: GoogleFonts.lato(
                            fontSize: 15.2, fontWeight: FontWeight.w500),
                      ),
                    ),
                                      ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 28.8, right: 28.8, bottom: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start from',
                        style: GoogleFonts.lato(
                          fontSize: 19.8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '\₹ ${recommendedModel.price.toString()}',
                        style: GoogleFonts.lato(
                          fontSize: 21.6,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 62.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.black),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: 28.8,right: 28.8),
                        child: Text("Explore Now>> ", style: GoogleFonts.lato(
                          fontSize: 19.2,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
