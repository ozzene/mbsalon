// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: Get.width,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeExtraSmall,
              ),
              child: Text(
                "MASSAGE",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: Dimensions.fontSizeExtraLarge,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          ],
        ),
        Container(
          width: Get.width,
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeDefault,
            vertical: Dimensions.paddingSizeExtraSmall,
          ),
          child: Column(
            children: ["", "", ""]
                .asMap()
                .entries
                .map(
                  (e) => GestureDetector(
                    onTap: () {},
                    child: Container(
                      constraints: const BoxConstraints(maxHeight: 120),
                      margin: EdgeInsets.symmetric(
                        vertical: Dimensions.paddingSizeSmall,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimensions.radiusDefault,
                        ),
                        color: const Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF121212).withOpacity(0.09),
                            offset: const Offset(3, 3),
                            blurRadius: 9,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      clipBehavior: Clip.antiAlias,
                      width: Get.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/images/images/brushes.jpeg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.25),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeDefault,
                                vertical: Dimensions.paddingSizeDefault,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Spa",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  Dimensions.fontSizeDefault,
                                              color: const Color(0xFF121212),
                                            ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "\$90",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: Dimensions
                                                      .fontSizeOverLarge,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                          ),
                                          Text(
                                            " - 30 min",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: Dimensions
                                                      .fontSizeDefault,
                                                  color: Theme.of(context)
                                                      .hintColor,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "MALE",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.w400,
                                              fontSize:
                                                  Dimensions.fontSizeDefault,
                                              color:
                                                  Theme.of(context).hintColor,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(
                                      Dimensions.paddingSizeSmall,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: SvgPicture.asset(
                                      Images.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        )
   
   
      ],
    );
  }
}
