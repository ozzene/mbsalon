// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/controller/auth_controller.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/client/salon/client_salon_screen.dart';
import 'package:mbs/view/screens/client/search/client_search_by_category_screen.dart';
import 'package:mbs/view/screens/client/search/client_search_screen.dart';

class ClientHomeScreen extends StatefulWidget {
  const ClientHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ClientHomeScreen> createState() => _ClientHomeScreenState();
}

class _ClientHomeScreenState extends State<ClientHomeScreen> {
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
            color: const Color(0xFFf9f9ff),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.defaultSpacing),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: SvgPicture.asset(
                                Images.location,
                                color: const Color(0xFF252525),
                                height: 28,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Current Location",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeSmall,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF545454),
                                      ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "New York, USA",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF252525),
                                          ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(
                                          Dimensions.paddingSizeSmall),
                                      child: SvgPicture.asset(
                                        Images.arrowDown,
                                        color: const Color(0xFF252525),
                                        height: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Dimensions.paddingSizeExtraLarge),
                              ),
                              clipBehavior: Clip.antiAlias,
                              elevation: 50,
                              color: Colors.white,
                              child: Padding(
                                padding:
                                    EdgeInsets.all(Dimensions.paddingSizeSmall),
                                child: SvgPicture.asset(
                                  Images.notifications,
                                  color: const Color(0xFF252525),
                                  height: 24,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.paddingSizeDefault),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault),
                    child: SizedBox(
                      width: Get.width,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ClientSearchScreen(),
                            ),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              Dimensions.radiusDefault,
                            ),
                          ),
                          shadowColor:
                              Theme.of(context).shadowColor.withOpacity(0.2),
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(
                              Dimensions.paddingSizeLarge,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  Images.icSearch,
                                  color: const Color(0xFF545454),
                                  height: 14,
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeSmall,
                                ),
                                Text(
                                  "Search by store or category",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                          color: const Color(
                                            0xFF545454,
                                          ),
                                          fontSize: Dimensions.fontSizeDefault),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.paddingSizeDefault),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PromoDiscountWidget(
                          width: Get.width * 0.9,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 28,
                          ),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Up to 50% Off',
                                        style: TextStyle(
                                          color: const Color(0xFFE3994D)
                                              .withOpacity(0.75),
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      const Text(
                                        'Make the world staring at you with make up',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical:
                                              Dimensions.paddingSizeExtraSmall,
                                          horizontal:
                                              Dimensions.paddingSizeLarge,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: const Color(0xFFE3994D),
                                        ),
                                        child: const Text(
                                          'SC60',
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 3,
                                child: SizedBox(
                                  child: Image(
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.bottomCenter,
                                    image: AssetImage(
                                        "assets/images/images/makeup.png"),
                                  ),
                                ),
                              ),
                            ],
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Service Categories",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: Dimensions.fontSizeLarge,
                                  color: const Color(0xFF252525)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.paddingSizeDefault),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeDefault,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: ["Hair Cut", "Make Up", "Massage", "Pedicure"]
                            .asMap()
                            .entries
                            .map(
                              (item) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          SearchCategoryScreen(),
                                    ),
                                  );
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      100,
                                    ),
                                  ),
                                  shadowColor: Theme.of(context)
                                      .shadowColor
                                      .withOpacity(0.1),
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: Dimensions.paddingSizeSmall,
                                      horizontal: Dimensions.paddingSizeSmall,
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/images/${images[item.key]}",
                                          color: const Color(0xFF252525),
                                          width: 18,
                                          height: 18,
                                        ),
                                        SizedBox(
                                          width: Dimensions.paddingSizeSmall,
                                        ),
                                        Text(
                                          item.value,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeSmall,
                                                color: const Color(0xFF252525),
                                              ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.paddingSizeDefault),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeLarge),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nearby Salon",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimensions.fontSizeLarge,
                                          color: const Color(0xFF252525)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Map View",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: Dimensions.fontSizeSmall,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                    ),
                                    SizedBox(
                                      width: Dimensions.paddingSizeSmall,
                                    ),
                                    SvgPicture.asset(
                                      Images.maps,
                                      color: Theme.of(context).primaryColor,
                                      height: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeDefault),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: ["", "", ""]
                                    .asMap()
                                    .entries
                                    .map(
                                      (e) => Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            Dimensions.radiusDefault,
                                          ),
                                        ),
                                        shadowColor: Theme.of(context)
                                            .shadowColor
                                            .withOpacity(0.1),
                                        color: Colors.white,
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                            Dimensions.paddingSizeExtraSmall,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 90,
                                                height: 90,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    Dimensions.radiusSmall,
                                                  ),
                                                ),
                                                child: Image.asset(
                                                  Images.salon2,
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
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Looks salon and spa",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .labelMedium
                                                                ?.copyWith(
                                                                    fontSize:
                                                                        Dimensions
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
                                                              SvgPicture.asset(
                                                                Images.location,
                                                                color: const Color(
                                                                    0xFF545454),
                                                                height: 18,
                                                              ),
                                                              SizedBox(
                                                                width: Dimensions
                                                                    .paddingSizeExtraSmall,
                                                              ),
                                                              Text(
                                                                "New York, Califonia...",
                                                                style: Theme.of(
                                                                        context)
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
                                                              SvgPicture.asset(
                                                                Images
                                                                    .starSolid,
                                                                height: 18,
                                                                color: const Color(
                                                                    0xFFF4B43D),
                                                              ),
                                                              SizedBox(
                                                                width: Dimensions
                                                                    .paddingSizeExtraSmall,
                                                              ),
                                                              Text(
                                                                "4.0",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyLarge
                                                                    ?.copyWith(
                                                                      fontSize:
                                                                          Dimensions
                                                                              .fontSizeDefault,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: const Color(
                                                                          0xFF252525),
                                                                    ),
                                                              ),
                                                              Text(
                                                                "(120)",
                                                                style: Theme.of(
                                                                        context)
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
                                                                          0xFF252525),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const ClientSalonScreen()),
                                                          );
                                                        },
                                                        child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal: Dimensions
                                                                .paddingSizeDefault,
                                                            vertical: Dimensions
                                                                .paddingSizeSmall,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              100,
                                                            ),
                                                            border: Border.all(
                                                              width: 1,
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            "Book",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .labelMedium
                                                                ?.copyWith(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                          ),
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
                            ),
                          ),
                          SizedBox(height: Dimensions.paddingSizeExtraLarge),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeLarge),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Shop",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimensions.fontSizeLarge,
                                          color: const Color(0xFF252525)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "See All",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: Dimensions.fontSizeSmall,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                    ),
                                    SizedBox(
                                      width: Dimensions.paddingSizeExtraSmall,
                                    ),
                                    SvgPicture.asset(
                                      Images.arrowforward,
                                      color: Theme.of(context).primaryColor,
                                      height: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeDefault),
                            child: Row(
                              children: ["", ""]
                                  .asMap()
                                  .entries
                                  .map(
                                    (e) => Expanded(
                                      flex: 1,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            Dimensions.radiusDefault,
                                          ),
                                        ),
                                        shadowColor: Theme.of(context)
                                            .shadowColor
                                            .withOpacity(0.1),
                                        color: Colors.white,
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                            Dimensions.paddingSizeExtraSmall,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    Dimensions.radiusDefault,
                                                  ),
                                                  color: Colors.amber,
                                                  image: const DecorationImage(
                                                      image: AssetImage(
                                                        Images.massage,
                                                      ),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: Dimensions
                                                      .paddingSizeExtraSmall,
                                                  vertical: Dimensions
                                                      .paddingSizeSmall,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft: Radius.circular(
                                                        Dimensions
                                                            .radiusExtraLarge),
                                                    bottomRight: Radius
                                                        .circular(Dimensions
                                                            .radiusExtraLarge),
                                                  ),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Hair Care Shampoo",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelMedium
                                                          ?.copyWith(
                                                              fontSize: Dimensions
                                                                  .fontSizeDefault,
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
                                                        SvgPicture.asset(
                                                          Images.location,
                                                          color: const Color(
                                                              0xFF545454),
                                                          height: 16,
                                                          width: 14,
                                                        ),
                                                        SizedBox(
                                                          width: Dimensions
                                                              .paddingSizeExtraSmall,
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            "New York, Califonia...",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                  fontSize:
                                                                      Dimensions
                                                                          .fontSizeExtraSmall,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: const Color(
                                                                      0xFF545454),
                                                                ),
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
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "\$54",
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .labelMedium
                                                              ?.copyWith(
                                                                  fontSize:
                                                                      Dimensions
                                                                          .fontSizeLarge,
                                                                  color: const Color(
                                                                      0xFF252525),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                        ),
                                                        Text(
                                                          "20min",
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .labelMedium
                                                              ?.copyWith(
                                                                  fontSize:
                                                                      Dimensions
                                                                          .fontSizeLarge,
                                                                  color: const Color(
                                                                      0xFF252525),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
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
