import 'package:flutter/material.dart';

class PlanTrip extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan your Trip'),
      ),
      body: SafeArea(
        child: Column(

          children: [
            Text(
                "\nBook Your Tour Guide",
              style: TextStyle(
                fontSize: 16.0, fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 150.0,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images2/default.png'),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images2/default.png'),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images2/default.png'),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images2/default.png'),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images2/default.png'),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),

                ],
              ),
            ),
            Text(
              "\nSelect a Hotel",
              style: TextStyle(
                fontSize: 16.0, fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              height: 200.0,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 195.0,
                    margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images2/shervani.jpg'),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        alignment: Alignment(0.0, 1.0),
                        child: Text(
                          "Shervani Hilltop",
                        ),
                      ),
                    )
                  ),
                  Container(
                      width: 195.0,
                      margin: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images2/raga.jpg'),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          alignment: Alignment(0.0, 1.0),
                          child: Text(
                            "Raga on the Ganges",
                          ),
                        ),
                      )
                  ),
                  Container(
                      width: 195.0,
                      margin: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images2/manu.jpg'),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          alignment: Alignment(0.0, 1.0),
                          child: Text(
                            "The Manu Maharani",
                          ),
                        ),
                      )
                  ),
                  Container(
                      width: 195.0,
                      margin: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images2/naini.jpg'),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          alignment: Alignment(0.0, 1.0),
                          child: Text(
                            "The Naini Retreat",
                          ),
                        ),
                      )
                  ),
                  Container(
                      width: 195.0,
                      margin: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images2/aloha.jpg'),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          alignment: Alignment(0.0, 1.0),
                          child: Text(
                            "Aloha on the Ganges Resort",
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        )
      )


    );
  }
}
