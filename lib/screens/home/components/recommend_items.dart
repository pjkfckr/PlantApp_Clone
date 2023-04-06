import 'package:flutter/material.dart';
import 'package:speed_code/screens/details/detail_screen.dart';

import '../../../constants.dart';

class RecommendItem extends StatelessWidget {
  const RecommendItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendCard(
            size: size,
            image: "assets/images/mac_studio.png",
            title: "Mac Studio",
            country: "US",
            price: 1100,
            press: () {},
          ),
          RecommendCard(
            size: size,
            image: "assets/images/mac-mini-hero-202301.jpeg",
            title: "Mac Mini",
            country: "US",
            price: 1100,
            press: () {},
          ),
          RecommendCard(
              size: size,
              image: "assets/images/apple-watch.jpeg",
              title: "Watch",
              country: "US",
              price: 1100,
              press: () {}),
        ],
      ),
    );
  }
}

class RecommendCard extends StatelessWidget {
  final Size size;
  final String image, title, country;
  final int price;
  final Function press;

  const RecommendCard(
      {Key? key,
      required this.size,
      required this.image,
      required this.title,
      required this.country,
      required this.press,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 3,
          bottom: kDefaultPadding * 2.5),
      // It will cover 40% of our total width
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge),
                    TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
