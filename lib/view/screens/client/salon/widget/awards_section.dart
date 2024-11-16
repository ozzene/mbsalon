// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class AwardsSection extends StatefulWidget {
  const AwardsSection({super.key});

  @override
  State<AwardsSection> createState() => _AwardsSectionState();
}

class _AwardsSectionState extends State<AwardsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Get.width,
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            vertical: Dimensions.paddingSizeExtraSmall,
          ),
          child: Column(
            children: ["", "", ""]
                .map(
                  (service) => Card(
                    margin:
                        EdgeInsets.only(bottom: Dimensions.paddingSizeDefault),
                    elevation: 0,
                    color: const Color(0xFFf3f3f3),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: Dimensions.paddingSizeDefault,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            padding:
                                EdgeInsets.all(Dimensions.paddingSizeSmall),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Dimensions.radiusDefault,
                                ),
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1)),
                            child: Image.asset(
                              Images.icAward,
                              height: 32,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeSmall,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Beloved Salon Of The City",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium
                                                  ?.copyWith(
                                                    fontSize: Dimensions
                                                        .fontSizeExtraLarge,
                                                    color:
                                                        const Color(0xFF252525),
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height:
                                              Dimensions.paddingSizeExtraSmall,
                                        ),
                                        Text(
                                          "By NYC Salon Organization",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeDefault,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                        ),
                                        SizedBox(
                                          height:
                                              Dimensions.paddingSizeExtraSmall,
                                        ),
                                        Text(
                                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeDefault,
                                                color: const Color(0xFF545454),
                                                fontWeight: FontWeight.w400,
                                              ),
                                        )
                                      ],
                                    ),
                                  ),
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
