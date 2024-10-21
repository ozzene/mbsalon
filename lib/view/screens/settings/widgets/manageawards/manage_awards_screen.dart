// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/settings/widgets/manageawards/widget/update_award_screen_screen.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';
import 'package:mbs/view/widgets/multiselected_widget.dart';
import 'package:image_picker/image_picker.dart';

class ManageAwardsScreen extends StatefulWidget {
  const ManageAwardsScreen({super.key});

  @override
  State<ManageAwardsScreen> createState() => _ManageAwardsScreenState();
}

class _ManageAwardsScreenState extends State<ManageAwardsScreen> {
  int selectedSection = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFf4f4f4,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeExtraSmall,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  Images.arrowback,
                  height: 30,
                  width: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeSmall,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
              ),
              child: Text(
                "Manage Awards",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeDefault,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Container(
                      width: Get.width,
                      padding: EdgeInsets.all(
                        Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: ["", "", "", ""]
                            .asMap()
                            .entries
                            .map(
                              (e) => Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeSmall,
                                ),
                                padding: EdgeInsets.all(
                                  Dimensions.paddingSizeDefault,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFf4f4f4),
                                  borderRadius: BorderRadius.circular(
                                    Dimensions.radiusDefault,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(
                                        Dimensions.paddingSizeSmall,
                                      ),
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .hintColor
                                              .withOpacity(0.25),
                                          borderRadius: BorderRadius.circular(
                                              Dimensions.radiusDefault)),
                                      child: SvgPicture.asset(
                                        Images.award,
                                        color: Theme.of(context).primaryColor,
                                        height: 25,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(
                                            Dimensions.paddingSizeExtraSmall),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(Dimensions
                                                  .paddingSizeExtraSmall),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Really nice job",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                              fontSize: Dimensions
                                                                  .fontSizeLarge,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing: 1,
                                                            ),
                                                      ),
                                                      SizedBox(
                                                        height: Dimensions
                                                            .paddingSizeExtraSmall,
                                                      ),
                                                      Text(
                                                        "By the first time you",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                                fontSize: Dimensions
                                                                    .fontSizeSmall,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                letterSpacing:
                                                                    1),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(
                                                      Dimensions
                                                          .paddingSizeDefault,
                                                    ),
                                                    width: 40,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .hintColor
                                                          .withOpacity(0.25),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      Images.dots,
                                                      color: Theme.of(context)
                                                          .hintColor,
                                                      height: 25,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(Dimensions
                                                  .paddingSizeExtraSmall),
                                              child: Text(
                                                "Premium cort King. The first time you have a chance at the game you will have a good time playing with the",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                        fontSize: Dimensions
                                                            .fontSizeSmall,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Theme.of(context)
                                                            .disabledColor,
                                                        letterSpacing: 1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        tooltip: 'Add Staff',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UpdateAwardScreen(),
            ),
          );
        },
        child: SvgPicture.asset(
          Images.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
