// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';

class SearchCategoryScreen extends StatefulWidget {
  const SearchCategoryScreen({super.key});

  @override
  State<SearchCategoryScreen> createState() => _SearchCategoryScreenState();
}

class _SearchCategoryScreenState extends State<SearchCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: [
            Container(
              width: Get.width,
              padding: EdgeInsets.only(
                bottom: Dimensions.paddingSizeDefault,
              ),
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: Get.width,
                      height: (Get.height * 0.20),
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                      padding: EdgeInsets.all(
                        Dimensions.paddingSizeDefault,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width,
                    height: (Get.height * 0.20) + 25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Stack(
                            alignment: Alignment.bottomCenter,
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
                                          child: Image.asset(
                                            Images.icBack,
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 32,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset(
                                      Images.icMassages,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  Text(
                                    "Massage",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: Get.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xFF121212).withOpacity(0.09),
                                offset: const Offset(3, 3),
                                blurRadius: 9,
                                spreadRadius: 1,
                              )
                            ],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: CustomTextField(
                            borderRadius: 100,
                            hintText: 'Search',
                            controller: TextEditingController(),
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor: Colors.transparent,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Expanded(
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
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color.fromARGB(255, 239, 207, 175),
                                          Color(0xFFD9741A),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    child: Text(
                                      "TOP RATED",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: Dimensions.fontSizeSmall,
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
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            color: const Color(0xFF252525)),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Show All",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.fontSizeSmall,
                                        color: const Color(0xFF545454),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: ["", ""]
                                .asMap()
                                .entries
                                .map(
                                  (e) => Container(
                                    width: Get.width * 0.44,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Dimensions.radiusExtraLarge,
                                      ),
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.20),
                                      image: const DecorationImage(
                                        image: AssetImage(Images.salon1),
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
                                          child: Align(
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
                                                      sigmaX: 25.0,
                                                      sigmaY: 20.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: Dimensions
                                                          .paddingSizeDefault,
                                                      vertical: Dimensions
                                                          .paddingSizeDefault,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Stefan's Spa",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        Dimensions
                                                                            .fontSizeDefault,
                                                                    color: const Color(
                                                                        0xFFFFFFFF),
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
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          right:
                                                                              2),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    Images
                                                                        .starSolid,
                                                                    color: const Color(
                                                                        0xFFE3994D),
                                                                    height: 10,
                                                                  ),
                                                                ),
                                                              )
                                                              .toList(),
                                                        ),
                                                        SizedBox(
                                                          height: Dimensions
                                                              .paddingSizeSmall,
                                                        ),
                                                        Text(
                                                          "84 Green Square, NYC",
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
                                                                            .fontSizeSmall,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Dimensions.fontSizeExtraLarge,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Column(
                          children: ["", "", "", "", "", ""]
                              .asMap()
                              .entries
                              .map(
                                (e) => Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      Dimensions.radiusDefault,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                    bottom: Dimensions.paddingSizeDefault,
                                    left: Dimensions.paddingSizeDefault,
                                    right: Dimensions.paddingSizeDefault,
                                  ),
                                  shadowColor: Theme.of(context)
                                      .shadowColor
                                      .withOpacity(0.5),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                Dimensions.radiusDefault),
                                            bottomLeft: Radius.circular(
                                                Dimensions.radiusDefault),
                                          ),
                                        ),
                                        child: Image.asset(
                                          Images.massage,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions
                                                  .paddingSizeDefault),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Special Ganga hot stone massage",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelMedium
                                                          ?.copyWith(
                                                              fontSize: Dimensions
                                                                  .fontSizeLarge,
                                                              color: const Color(
                                                                  0xFF252525),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                    SizedBox(
                                                      height: Dimensions
                                                          .paddingSizeExtraSmall,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "By Ganga Salon Spa",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .fontSizeSmall,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: const Color(
                                                                        0xFF545454),
                                                                  ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: Dimensions
                                                          .paddingSizeExtraSmall,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "\$150 ",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .fontSizeLarge,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Theme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                  ),
                                                        ),
                                                        Text(
                                                          "- 3.5 hour",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .fontSizeSmall,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Theme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                  ),
                                                        ),
                                                      ],
                                                    ),
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
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
