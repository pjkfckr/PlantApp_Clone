import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureItemCard(
            image: "assets/images/apple-watch.jpeg",
            press: () {},
          ),
          FeatureItemCard(
            image: "assets/images/mac-mini-hero-202301.jpeg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureItemCard extends StatelessWidget {
  final String image;
  final Function press;

  const FeatureItemCard({
    super.key,
    required this.image,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
