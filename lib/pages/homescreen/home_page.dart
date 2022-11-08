// ignore_for_file: prefer_const_constructors, implementation_imports, unnecessary_import, unused_import, avoid_unnecessary_containers, prefer_final_fields, unused_element

import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:bkol_mobile/pages/homescreen/rating_page.dart';
import 'package:bkol_mobile/pages/widgets/button_home_screen.dart';
import 'package:bkol_mobile/pages/widgets/list_lowongan.dart';
import 'package:bkol_mobile/pages/widgets/rating_user.dart';
import 'package:bkol_mobile/pages/widgets/search_filter_home.dart';
import 'package:bkol_mobile/pages/widgets/slider_banner.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentStateBanner = 0;
  int _currentStateRating = 0;
  bool _reverseBannerState = false;
  bool _reverseRatingState = false;
  int _buttonStateBanner = 0;
  final CarouselController _carouselController = CarouselController();
  final CarouselController _carouselRatingController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: ListView(
        children: [
          // Banner Slider
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: CarouselSlider(
                  items: slider,
                  carouselController: _carouselController,
                  options: CarouselOptions(
                      height: 270,
                      viewportFraction: 1,
                      aspectRatio: 2,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      reverse: _reverseBannerState,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentStateBanner = index;
                        });
                      }),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.only(left: 24, bottom: 24),
                  child: Row(
                    children: slider.asMap().entries.map((e) {
                      if (e.key == _currentStateBanner) {
                        return Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.amber),
                        );
                      } else {
                        return Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                        );
                      }
                    }).toList(),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(left: 24, bottom: 24, right: 24),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 32,
                        width: 32,
                        child: FloatingActionButton(
                          heroTag: "prev",
                          backgroundColor: (_buttonStateBanner == 2)
                              ? Colors.amber
                              : Color(0xffc4c4c4).withOpacity(0.65),
                          onPressed: () {
                            setState(() {
                              _reverseBannerState = false;
                              _buttonStateBanner = 2;
                              if (slider.length == _currentStateBanner) {
                                _carouselController.animateToPage(1);
                              }
                              {
                                _carouselController
                                    .animateToPage(_currentStateBanner + 1);
                              }
                            });
                          },
                          child: (_buttonStateBanner == 2)
                              ? Icon(
                                  FontAwesomeIcons.angleLeft,
                                  color: Colors.black,
                                )
                              : Icon(
                                  FontAwesomeIcons.angleLeft,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        height: 32,
                        width: 32,
                        child: FloatingActionButton(
                          heroTag: "next",
                          backgroundColor: (_buttonStateBanner == 1)
                              ? Colors.amber
                              : Color(0xffc4c4c4).withOpacity(0.65),
                          onPressed: () {
                            setState(() {
                              _reverseBannerState = true;
                              _buttonStateBanner = 1;
                              if (slider.length == _currentStateBanner) {
                                _carouselController.animateToPage(1);
                              }
                              {
                                _carouselController
                                    .animateToPage(_currentStateBanner - 1);
                              }
                            });
                          },
                          child: (_buttonStateBanner == 1)
                              ? Icon(
                                  FontAwesomeIcons.angleRight,
                                  color: Colors.black,
                                )
                              : Icon(
                                  FontAwesomeIcons.angleRight,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyButton(
                    iconButton: 'assets/images/icons/registration.png',
                    captionButton: 'Registrasi AK 1',
                    state: 1,
                    hero: 'regist_ak',
                  ),
                  MyButton(
                    iconButton: 'assets/images/icons/training.png',
                    captionButton: 'Loker Depok',
                    state: 2,
                    hero: 'loker_depok',
                  ),
                  MyButton(
                    iconButton: 'assets/images/icons/vacancy.png',
                    captionButton: 'Loker Luar Depok',
                    state: 3,
                    hero: 'loker_luar_depok',
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  FilterLokerHome(),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // List Lowongan
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'LOWONGAN PEKERJAAN',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListLowonganAll(
                          title: 'Lowongan Pekerjaan',
                          page: 'inside',
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListLowonganHome(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Text(
                        'Daftar Pelatihan',
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: CarouselSlider(
                          items: ratingSlider,
                          carouselController: _carouselRatingController,
                          options: CarouselOptions(
                            height: 400,
                            viewportFraction: 1,
                            aspectRatio: 2,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            reverse: _reverseRatingState,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentStateRating = index;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          padding: EdgeInsets.only(left: 11, bottom: 14),
                          child: Row(
                            children: ratingSlider.asMap().entries.map((e) {
                              if (e.key == _currentStateRating) {
                                return Container(
                                  margin: EdgeInsets.only(right: 5),
                                  width: 20,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black),
                                );
                              } else {
                                return Container(
                                  margin: EdgeInsets.only(right: 5),
                                  width: 20,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black38),
                                );
                              }
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
