import 'package:flutter/material.dart';
import 'package:plant_app_ui/screen/home/components/body.dart';

import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  final text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: text),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: Colors.white,
              backgroundColor: kPrimaryColor,
            ),
            onPressed: press,
            child: Text("More"),
          )
        ],
      ),
    );
  }
}
