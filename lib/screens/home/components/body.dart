import 'package:flutter/material.dart';
import 'package:speed_code/constants.dart';
import 'package:speed_code/screens/home/components/recommend_items.dart';
import 'package:speed_code/screens/home/components/title_with_more_btn.dart';

import 'featured_items.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(),
          const TitleWithMoreButton(title: "Recommended"),
          RecommendItem(),
          const TitleWithMoreButton(title: "Featured Apples"),
          FeaturedItems(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
