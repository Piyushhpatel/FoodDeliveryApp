import 'package:bytecraft/utils/colors.dart';
import 'package:bytecraft/utils/dimensions.dart';
import 'package:bytecraft/widgets/icon_and_text_widget.dart';
import 'package:bytecraft/widgets/small_text.dart';
import 'package:flutter/material.dart';

import 'big_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  double size;

  AppColumn({super.key, required this.text, this.size = 0});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BigText(
        text: text,
        size: size == 0 ? Dimensions.font20 : size,
      ),
      SizedBox(
        height: Dimensions.height10,
      ),
      Row(
        children: [
          Wrap(
            children: List.generate(
                5,
                (index) =>
                    Icon(Icons.star, color: AppColors.mainColor, size: 15)),
          ),
          SizedBox(
            width: 10,
          ),
          SmallText(text: "4.5"),
          SizedBox(
            width: 10,
          ),
          SmallText(text: "1243"),
          SizedBox(
            width: 7,
          ),
          SmallText(text: "Comments"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      SizedBox(height: Dimensions.height15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconAndTextWidget(
            icon: Icons.circle_sharp,
            text: "Normal",
            iconColor: AppColors.iconColor1,
          ),
          IconAndTextWidget(
            icon: Icons.location_on,
            text: "1.7km",
            iconColor: AppColors.mainColor,
          ),
          IconAndTextWidget(
            icon: Icons.access_time_rounded,
            text: "32 mins",
            iconColor: AppColors.iconColor2,
          )
        ],
      )
    ]);
  }
}
