// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/salons/salons_screen.dart';
import 'package:mbs/view/screens/service/service_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
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
                                    SizedBox(
                                      width: 60,
                                      height: 60,
                                      child: SvgPicture.asset(
                                        "assets/images/images/massage.svg",
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.paddingSizeDefault,
                                    ),
                                    Text(
                                      "Pedicure",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeExtraLarge,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w400,
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
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: Dimensions.paddingSizeSmall,
                                horizontal: Dimensions.paddingSizeDefault,
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
                                      fontSize: Dimensions.fontSizeDefault,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "Salons",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Dimensions.fontSizeDefault,
                                  ),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SalonsScreen()),
                            );
                          },
                          child: Text(
                            "See All",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Dimensions.fontSizeSmall,
                                      color: Theme.of(context).hintColor,
                                    ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.paddingSizeDefault),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: ["", "", "", "", ""]
                            .asMap()
                            .entries
                            .map(
                              (e) => Container(
                                margin: EdgeInsets.only(
                                  right: Dimensions.paddingSizeDefault,
                                ),
                                width: Get.width * 0.5,
                                height: Get.height * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    Dimensions.radiusExtraLarge,
                                  ),
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.25),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/images/images/brushes.jpeg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(
                                              Dimensions.radiusExtraLarge),
                                          bottomRight: Radius.circular(
                                              Dimensions.radiusExtraLarge),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(
                                                      Dimensions
                                                          .radiusExtraLarge),
                                                  bottomRight: Radius.circular(
                                                      Dimensions
                                                          .radiusExtraLarge),
                                                ),
                                              ),
                                              clipBehavior: Clip.antiAlias,
                                              child: ClipRect(
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: 10.0,
                                                      sigmaY: 10.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: Dimensions
                                                          .paddingSizeExtraLarge,
                                                      vertical: Dimensions
                                                          .paddingSizeDefault,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Lacme Salon & Mackup",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        Dimensions
                                                                            .fontSizeExtraLarge,
                                                                    color: const Color(
                                                                        0xFFFFFFFF),
                                                                  ),
                                                        ),
                                                        SizedBox(
                                                          height: Dimensions
                                                              .paddingSizeSmall,
                                                        ),
                                                        Text(
                                                          "2232 Lakme Complex, Ground Floor, NYC",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        Dimensions
                                                                            .fontSizeDefault,
                                                                    color: Theme.of(
                                                                            context)
                                                                        .hintColor,
                                                                  ),
                                                        ),
                                                        SizedBox(
                                                          height: Dimensions
                                                              .paddingSizeSmall,
                                                        ),
                                                        Row(
                                                          children: [
                                                            1,
                                                            2,
                                                            3,
                                                            4,
                                                            5
                                                          ]
                                                              .map(
                                                                (e) => Padding(
                                                                  padding: EdgeInsets.only(
                                                                      right: Dimensions
                                                                          .paddingSizeSmall),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    Images
                                                                        .starSolid,
                                                                    color: const Color(
                                                                        0xFFE3994D),
                                                                    height: 14,
                                                                  ),
                                                                ),
                                                              )
                                                              .toList(),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeExtraLarge,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeDefault,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Services",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: Dimensions.fontSizeExtraLarge,
                                  ),
                        ),
                      ],
                    ),
                  ),
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
                                                  builder: (context) =>
                                                      const ServiceScreen()),
                                            );
                                          },
                              child: Container(
                                height: 100,
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
                                      flex: 3,
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
                                            vertical:
                                                Dimensions.paddingSizeDefault),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Premium Hot Stone Massage",
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
                                            SizedBox(
                                              height: Dimensions.paddingSizeSmall,
                                            ),
                                            Text(
                                              "By Make Salon and Make Up",
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
                                            SizedBox(
                                              height: Dimensions.paddingSizeSmall,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "\$27",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: Dimensions
                                                            .fontSizeDefault,
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
