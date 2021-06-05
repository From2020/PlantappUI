import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedFlants extends StatelessWidget {
  const FeaturedFlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
              image: "assets/images/bottom_img_1.png", press: () {}),
          FeaturedPlantCard(
              image: "assets/images/bottom_img_2.png", press: () {}),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width * 0.8,
        height: 185,
        margin: EdgeInsets.only(
          left: kDefaultPadding / 2,
          right: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
