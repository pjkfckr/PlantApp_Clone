import 'package:flutter/material.dart';
import 'package:speed_code/constants.dart';
import 'package:speed_code/screens/home/components/radius_text_button.dart';
import 'package:speed_code/screens/home/components/title_with_custom_underline.dart';

class TitleWithMoreButton extends StatelessWidget {
  final String title;
  const TitleWithMoreButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(
            text: title,
          ),
          const Spacer(),
          const RadiusTextButton(
            width: 60,
            height: 40,
            radius: 20,
            text: 'More',
          ),
        ],
      ),
    );
  }
}
