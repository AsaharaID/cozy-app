// ignore_for_file: prefer_const_constructors

import 'package:cozy_app/model/city.dart';
import 'package:cozy_app/model/space.dart';
import 'package:cozy_app/model/tips.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widgets/city_card.dart';
import 'package:cozy_app/widgets/space_card.dart';
import 'package:cozy_app/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: edge,
            ),
            child: ListView(
              children: [
                //TITLE/HEADER
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Explore Now',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Mencari kosan yang cozy',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //POPULAR CITIES
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Popular Cities',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      CityCard(City(
                        id: 1,
                        imageUrl: 'assets/city1.png',
                        name: 'Jakarta',
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      CityCard(City(
                        id: 2,
                        imageUrl: 'assets/city2.png',
                        name: 'Bandung',
                        isPopular: true,
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      CityCard(City(
                        id: 3,
                        imageUrl: 'assets/city3.png',
                        name: 'Surabaya',
                      )),
                      SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                //RECOMENDED SPACE
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Recomended Space',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Column(
                    children: [
                      SpaceCard(
                        Space(
                            city: 'Bandung',
                            country: 'Germany',
                            id: 1,
                            imageUrl: 'assets/space1.png',
                            name: 'Kuretakeso Hott',
                            price: 11,
                            rating: 4),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(
                        Space(
                            city: 'Seattle',
                            country: 'Bogor',
                            id: 2,
                            imageUrl: 'assets/space2.png',
                            name: 'Roemah Nenek',
                            price: 11,
                            rating: 5),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(
                        Space(
                            city: 'Jakarta',
                            country: 'Indonesia',
                            id: 3,
                            imageUrl: 'assets/space3.png',
                            name: 'Darrling How',
                            price: 20,
                            rating: 3),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                //TIPS AND GUIDANCE
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Tips & Guidance',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Column(
                    children: [
                      TipsCard(
                        Tips(
                          id: 1,
                          title: 'City Guidelines', 
                          imageUrl: 'assets/tips1.png',
                          updatedAt: '20 Apr')
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TipsCard(
                        Tips(
                          id: 2,
                          title: 'Jakarta Fairship',
                          imageUrl: 'assets/tips-2.png',
                          updatedAt: '11 Dec'
                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
