// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class ReviewsSection extends StatefulWidget {
  const ReviewsSection({super.key});

  @override
  State<ReviewsSection> createState() => _ReviewsSectionState();
}

class _ReviewsSectionState extends State<ReviewsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: Get.width,
              color: const Color(0xFFf3f3f3),
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeDefault,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "4.9",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: Dimensions.fontSizeOverLarge,
                          color: const Color(0XFF545454),
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeExtraSmall,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [1, 2, 3, 4, 5]
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: SvgPicture.asset(
                              Images.starSolid,
                              color: const Color(0xFFE3994D),
                              height: 24,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeExtraSmall,
                  ),
                  Text(
                    "205 Ratings",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: Dimensions.fontSizeDefault,
                          color: const Color(0XFF545454),
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                       horizontal: Dimensions.paddingSizeDefault,
                      ),
                      padding: EdgeInsets.symmetric(
                       vertical: Dimensions.paddingSizeDefault,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.5,
                            color: const Color(0xFF545454).withOpacity(0.5),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              Images.massage,
                              fit: BoxFit.fill,
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
                                              "Sunny Thomas",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium
                                                  ?.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeLarge,
                                                      color: const Color(
                                                          0xFF252525),
                                                      fontWeight:
                                                          FontWeight.w500),
                                            ),
                                            Text(
                                              "2 days ago",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium
                                                  ?.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeSmall,
                                                      color: const Color(
                                                          0xFF545454),
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimensions.paddingSizeSmall,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [1, 2, 3, 4, 5]
                                              .map(
                                                (e) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 2),
                                                  child: SvgPicture.asset(
                                                    Images.starSolid,
                                                    color:
                                                        const Color(0xFFE3994D),
                                                    height: 10,
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                        ),
                                        SizedBox(
                                          height: Dimensions.paddingSizeSmall,
                                        ),
                                        Text(
                                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  fontSize:
                                                      Dimensions.fontSizeSmall,
                                                  color:
                                                      const Color(0xFF545454),
                                                  fontWeight: FontWeight.w400),
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
