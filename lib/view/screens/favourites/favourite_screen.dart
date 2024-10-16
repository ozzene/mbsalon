// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/controller/auth_controller.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  bool isSalon = true;
  List<String> images = [
    "hair-cut.svg",
    "make-up.svg",
    "massage.svg",
    "pedicure.svg"
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (authController) {
        return Scaffold(
          body: Container(
            color: Theme.of(context).primaryColor.withOpacity(0.05),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.defaultSpacing,
                      vertical: Dimensions.defaultSpacing,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              child: SvgPicture.asset(
                                Images.menu,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const SizedBox(
                              width: Dimensions.defaultSpacing,
                            ),
                            Text(
                              "Favourite",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeLarge,
                                    fontWeight: FontWeight.w700,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSalon = false;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.paddingSizeExtraLarge,
                                  vertical: Dimensions.paddingSizeDefault,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50)),
                                  color: !isSalon
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).highlightColor,
                                ),
                                child: Text(
                                  "Service",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.fontSizeSmall,
                                        color: !isSalon
                                            ? const Color(0xFFFFFFFF)
                                            : Theme.of(context).hintColor,
                                      ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSalon = true;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.paddingSizeExtraLarge,
                                  vertical: Dimensions.paddingSizeDefault,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      bottomRight: Radius.circular(50)),
                                  color: isSalon
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).highlightColor,
                                ),
                                child: Text(
                                  "Salon",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.fontSizeSmall,
                                        color: isSalon
                                            ? const Color(0xFFFFFFFF)
                                            : Theme.of(context).hintColor,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0xFFFFFFFF),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(height: 16.0),
                            if (!isSalon)
                              SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  children: ["", "", "", "", "", ""]
                                      .asMap()
                                      .entries
                                      .map(
                                        (e) => Container(
                                          height: 100,
                                          margin: EdgeInsets.all(
                                              Dimensions.paddingSizeSmall),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    image:
                                                        const DecorationImage(
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
                                                      horizontal: Dimensions
                                                          .paddingSizeSmall,
                                                      vertical: Dimensions
                                                          .paddingSizeDefault),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        "Premium Hot Stone Massage",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge
                                                            ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: Dimensions
                                                                  .fontSizeDefault,
                                                              color: const Color(
                                                                  0xFF121212),
                                                            ),
                                                      ),
                                                      SizedBox(
                                                        height: Dimensions
                                                            .paddingSizeSmall,
                                                      ),
                                                      Text(
                                                        "By Make Salon and Make Up",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge
                                                            ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: Dimensions
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
                                                          Text(
                                                            "\$27",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize:
                                                                      Dimensions
                                                                          .fontSizeDefault,
                                                                  color: Theme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                          ),
                                                          Text(
                                                            " - 30 min",
                                                            style: Theme.of(
                                                                    context)
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
                                                        ],
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
                              ),
                            if (isSalon)
                              SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  children: ["", "", "", "", "", ""]
                                      .asMap()
                                      .entries
                                      .map(
                                        (e) => Container(
                                          constraints: const BoxConstraints(
                                              maxHeight: 130),
                                          margin: EdgeInsets.all(
                                              Dimensions.paddingSizeSmall),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              Dimensions.radiusLarge,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Expanded(
                                                flex: 5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    image:
                                                        const DecorationImage(
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
                                                    horizontal: Dimensions
                                                        .paddingSizeSmall,
                                                    vertical: Dimensions
                                                        .paddingSizeSmall,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        "Pedicure - Massage - Makeup - Haircut",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge
                                                            ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: Dimensions
                                                                  .fontSizeSmall,
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                            ),
                                                      ),
                                                      Text(
                                                        "Lakme Salon & MackUp",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge
                                                            ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: Dimensions
                                                                  .fontSizeDefault,
                                                              color: const Color(
                                                                  0xFF121212),
                                                            ),
                                                      ),
                                                      Text(
                                                        "25 New Collins Street",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge
                                                            ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: Dimensions
                                                                  .fontSizeDefault,
                                                              color: Theme.of(
                                                                      context)
                                                                  .hintColor,
                                                            ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                              vertical: Dimensions
                                                                  .paddingSizeExtraSmall,
                                                              horizontal: Dimensions
                                                                  .paddingSizeSmall,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
                                                              color: const Color(
                                                                      0xFFEA843F)
                                                                  .withOpacity(
                                                                      0.25),
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "4.5",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyLarge
                                                                      ?.copyWith(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            Dimensions.fontSizeSmall,
                                                                        color: const Color(
                                                                            0xFFEA843F),
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  width: Dimensions
                                                                      .paddingSizeExtraSmall,
                                                                ),
                                                                SvgPicture
                                                                    .asset(
                                                                  Images
                                                                      .starSolid,
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
                                                            style: Theme.of(
                                                                    context)
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
                                                        ],
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
                           
                           
                              ),
                            const SizedBox(
                              height: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20.0;
    Path path = Path();

    // Start from top-left
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);

    // Top-right curve cutout
    path.lineTo(size.width, size.height / 2 - radius);
    path.arcToPoint(
      Offset(size.width, size.height / 2 + radius),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    path.lineTo(size.width, size.height);

    // Bottom-right curve cutout
    path.lineTo(0, size.height);
    path.lineTo(0, size.height / 2 + radius);
    path.arcToPoint(
      Offset(0, size.height / 2 - radius),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class PromoDiscountWidget extends StatelessWidget {
  final Widget child;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  const PromoDiscountWidget({
    super.key,
    required this.child,
    this.decoration,
    this.padding,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(),
      child: Container(
        padding: padding,
        decoration: decoration,
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}
