import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:chaardham/bottom_navigation.dart';
import 'package:chaardham/popular.dart';
import 'package:chaardham/screens/Selectedplace_screen.dart';
import 'package:chaardham/screens/details.dart';
import 'package:chaardham/temples.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chaardham/recommendation_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //page controller
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarTravel(),
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Container(
                height: 57.6,
                margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.5),
                        color: Colors.black12,
                      ),
                      child: Image.asset('assets/images/drawer.png'),
                    ),
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.5),
                        color: Colors.black12,
                      ),
                      child: Image.asset('assets/images/search.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48, left: 28),
                child: Text(
                  'Exploring\nChaarDham Yatra ',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 40.6, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.only(left: 14.4, top: 28.8),
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black38,
                    labelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    unselectedLabelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: Colors.black, width: 2.4),
                    ),
                    tabs: [
                      Tab(
                        child: Container(
                          child: Text('Recommended'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Popular'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('New Destination'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Hidden Gems'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      recommendations.length,
                          (int index) =>
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SelectedPlaceScreen(
                                    recommendedModel: recommendations[index],)));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 28.8),
                              width: 333.6,
                              height: 218.4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.6),
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          recommendations[index].image))
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      bottom: 19.2,
                                      left: 19.2,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            4.8),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 19.2, sigmaY: 19.2),
                                          child: Container(
                                            height: 36,
                                            padding: EdgeInsets.only(
                                                left: 16.72, right: 14.4),
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: <Widget>[
                                                Image.asset(
                                                    'assets/images/location.png'),
                                                SizedBox(
                                                  width: 9.54,
                                                ),
                                                Text(
                                                  recommendations[index].name,
                                                  style: GoogleFonts.lato(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      color: Colors.white,
                                                      fontSize: 16.8),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          )),
                ),
              ),
              Container(),
              Padding(
                padding: const EdgeInsets.only(left: 28.8, top: 28.8),
                child: SmoothPageIndicator(
                    controller: _pageController,
                    count: recommendations.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.black,
                      dotColor: Colors.black38,
                      dotHeight: 4.8,
                      dotWidth: 8,
                      spacing: 4.8,
                    )),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Popular Categories",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Show All",
                      style: GoogleFonts.lato(
                        fontSize: 16.8,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 33.6),
                height: 45.6,
                child: ListView.builder(
                    itemCount: populars.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(left: 28.8, right: 9.6),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 19.2),
                        height: 5.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          color: Color(populars[index].color),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 19.2,
                            ),
                            Image.asset(
                              populars[index].image,
                              height: 16.8,
                            ),
                            const SizedBox(
                              width: 19.2,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                  margin: EdgeInsets.only(top: 28.8, bottom: 26.8),
                  height: 124.8,
                  child: ListView.builder(
                    itemCount: temples.length,
                    padding: EdgeInsets.only(left: 28.8, right: 12),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 124.8,
                        width: 188.4,
                        margin: EdgeInsets.only(right: 16.8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(temples[index].image),
                            )
                        ),
                      );
                    },
                  )
              ),

            ],

          ),
        ),
      ),
    );
  }
}
