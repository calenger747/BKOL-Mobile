// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingUser extends StatefulWidget {
  const RatingUser({super.key});

  @override
  State<RatingUser> createState() => _RatingUserState();
}

class _RatingUserState extends State<RatingUser> {
  final List<Map<String, dynamic>> listRating = [
    {
      "review": "Thanks so much for sharing your experience with us.",
      "user": "John Doe",
      "city": "Jakarta",
      "rating": 4.5
    },
    {
      "title":
          "Many thanks for the 4-star rating. If there's anything we can do to improve our offering, please let us know!",
      "user": "John Doe",
      "city": "Jakarta",
      "rating": 4
    },
    {
      "title":
          "Thanks so much for taking the time to leave us a 5-star rating - it's much appreciated!",
      "user": "John Doe",
      "city": "Jakarta",
      "rating": 5
    },
    {
      "title":
          "We are grateful that you took the time out to leave us a review.",
      "user": "John Doe",
      "city": "Jakarta",
      "rating": 3.5
    },
  ];

  @override
  Widget build(BuildContext context) {
    late double rating;
    var size = MediaQuery.of(context).size;

    final double height = (size.height - kToolbarHeight - 100) / 2;
    final double width = size.width * 0.6;

    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: listRating.length,
      itemBuilder: (_, index) {
        Container(
          height: 100.0,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amber.shade400,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
                    child: RatingBar.builder(
                      initialRating: listRating.elementAt(index)['rating'],
                      allowHalfRating: true,
                      glowRadius: 4,
                      itemSize: 20,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      onRatingUpdate: (value) {
                        setState(() {
                          rating = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  '${listRating.elementAt(index)['review']}',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${listRating.elementAt(index)['user']}, ${listRating.elementAt(index)['city']}',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
