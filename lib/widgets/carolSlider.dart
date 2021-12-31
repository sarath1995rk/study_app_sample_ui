import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:study_app_sample/others/constants.dart';

class CaroSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: trainingList.map((train) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width * .8,
                  child: Image.network(
                    train.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: .1,
                    sigmaY: .1,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    height: 150,
                    width: MediaQuery.of(context).size.width * .8,
                    color: Colors.black38,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              train.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Nunito_sans',
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              train.description,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      train.price.toString(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.red[300],
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '\$${train.offerPrice}',
                                      style: TextStyle(color: Colors.red[300]),
                                    ),
                                  ],
                                ),
                                const Text('View Details >',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        );
      }).toList(),
    );
  }
}
