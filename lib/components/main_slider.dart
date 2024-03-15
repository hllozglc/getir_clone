import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

CarouselSlider mainSlider(List<String> sliderData) {
  return CarouselSlider(
    items: sliderData
        .map(
          (imageUrl) => GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/$imageUrl',
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList(),
    options: CarouselOptions(
      viewportFraction: 1,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 6),
      autoPlayAnimationDuration: const Duration(milliseconds: 600),
      enlargeCenterPage: false,
    ),
  );
}
