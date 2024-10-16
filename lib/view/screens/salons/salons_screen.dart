// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/salons/salon_screen.dart';

class SalonsScreen extends StatefulWidget {
  const SalonsScreen({super.key});

  @override
  State<SalonsScreen> createState() => _SalonsScreenState();
}

class _SalonsScreenState extends State<SalonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: Get.width,
            padding: EdgeInsets.only(
              bottom: Dimensions.paddingSizeDefault,
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: Get.width,
                    height: (Get.height * 0.3),
                    color: Theme.of(context).highlightColor.withOpacity(0.5),
                    padding: EdgeInsets.all(
                      Dimensions.paddingSizeDefault,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  height: (Get.height * 0.3) + 25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: SafeArea(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                child: Container(
                                  padding: EdgeInsets.all(
                                    Dimensions.paddingSizeDefault,
                                  ),
                                  width: Get.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: SizedBox(
                                          width: 30,
                                          height: 30,
                                          child: SvgPicture.asset(
                                            Images.arrowback,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: Dimensions.paddingSizeSmall,
                                        horizontal:
                                            Dimensions.paddingSizeDefault,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xFFE3994D),
                                      ),
                                      child: Text(
                                        "TOP RATED",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  Dimensions.fontSizeDefault,
                                              color: Colors.white,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.paddingSizeDefault,
                                    ),
                                    Text(
                                      "Offering best Massage services",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            color: Theme.of(context).hintColor,
                                          ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: Get.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF121212).withOpacity(0.09),
                              offset: const Offset(3, 3),
                              blurRadius: 9,
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: ["", "", "", "", "", ""]
                          .asMap()
                          .entries
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SalonScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                constraints:
                                    const BoxConstraints(maxHeight: 130),
                                margin:
                                    EdgeInsets.all(Dimensions.paddingSizeSmall),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    Dimensions.radiusDefault,
                                  ),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF121212)
                                          .withOpacity(0.09),
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
                                          horizontal:
                                              Dimensions.paddingSizeSmall,
                                          vertical: Dimensions.paddingSizeSmall,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Pedicure - Massage - Makeup - Haircut",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: Dimensions
                                                        .fontSizeSmall,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  ),
                                            ),
                                            Text(
                                              "Lakme Salon & MackUp",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: Dimensions
                                                        .fontSizeDefault,
                                                    color:
                                                        const Color(0xFF121212),
                                                  ),
                                            ),
                                            Text(
                                              "25 New Collins Street",
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: Dimensions
                                                        .paddingSizeExtraSmall,
                                                    horizontal: Dimensions
                                                        .paddingSizeSmall,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color:
                                                        const Color(0xFFEA843F)
                                                            .withOpacity(0.25),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "4.5",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge
                                                            ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: Dimensions
                                                                  .fontSizeSmall,
                                                              color: const Color(
                                                                  0xFFEA843F),
                                                            ),
                                                      ),
                                                      SizedBox(
                                                        width: Dimensions
                                                            .paddingSizeExtraSmall,
                                                      ),
                                                      SvgPicture.asset(
                                                        Images.starSolid,
                                                        color: const Color(
                                                            0xFFEA843F),
                                                        height: 16,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: Dimensions
                                                      .paddingSizeSmall,
                                                ),
                                                Text(
                                                  " 15km",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: Dimensions
                                                            .fontSizeDefault,
                                                        color: Theme.of(context)
                                                            .hintColor,
                                                      ),
                                                ),
                                              ],
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
