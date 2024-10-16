// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  int selectedSection = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Theme.of(context).disabledColor,
              elevation: 0,
              actions: [
                Container(
                  margin: EdgeInsets.all(
                    Dimensions.paddingSizeExtraSmall,
                  ),
                  height: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: BoxShape.circle),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      Images.share,
                      width: 18,
                      height: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: Dimensions.paddingSizeExtraSmall),
                  child: Container(
                    margin: EdgeInsets.all(
                      Dimensions.paddingSizeExtraSmall,
                    ),
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        shape: BoxShape.circle),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        Images.favorite,
                        width: 18,
                        height: 18,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                )
              ],
              expandedHeight: Get.height * 0.5,
              pinned: true,
              floating: true,
              snap: true,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding:
                    EdgeInsets.only(left: Dimensions.paddingSizeExtraSmall),
                child: Container(
                  margin: EdgeInsets.all(
                    Dimensions.paddingSizeExtraSmall,
                  ),
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      Images.arrowback,
                      width: 24,
                      height: 24,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const <StretchMode>[
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                centerTitle: true,
                background: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.1),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/images/pedicure.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
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
                                  SizedBox(
                                    height: 50,
                                    width: Get.width * 0.9,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical:
                                                Dimensions.paddingSizeSmall,
                                            horizontal:
                                                Dimensions.paddingSizeDefault,
                                          ),
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).primaryColor,
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0xFF121212)
                                                    .withOpacity(0.09),
                                                offset: const Offset(3, 3),
                                                blurRadius: 9,
                                                spreadRadius: 1,
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Text(
                                            "MALE",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontSize:
                                                      Dimensions.fontSizeSmall,
                                                  color:
                                                      const Color(0xFFFFFFFF),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: Dimensions.paddingSizeDefault,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical:
                                                Dimensions.paddingSizeSmall,
                                            horizontal:
                                                Dimensions.paddingSizeDefault,
                                          ),
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).primaryColor,
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0xFF121212)
                                                    .withOpacity(0.09),
                                                offset: const Offset(3, 3),
                                                blurRadius: 9,
                                                spreadRadius: 1,
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Text(
                                            "40 min",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontSize:
                                                      Dimensions.fontSizeSmall,
                                                  color:
                                                      const Color(0xFFFFFFFF),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Silver pedicure package",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeExtraLarge,
                                    color: const Color(0xFF121212),
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "By Salon Makne & Mackup",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    color: const Color(0xFF121212),
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "\$72.00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeExtraLarge,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    SizedBox(
                                      width: Dimensions.paddingSizeSmall,
                                    ),
                                    Text(
                                      "\$72.00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationThickness: 3,
                                            fontSize: Dimensions.fontSizeLarge,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: Dimensions.paddingSizeSmall,
                                    horizontal: Dimensions.paddingSizeDefault,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE3994D)
                                        .withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        Images.price,
                                        height: 16,
                                        width: 14,
                                        color: const Color(0xFFE3994D),
                                      ),
                                      SizedBox(
                                        width: Dimensions.paddingSizeSmall,
                                      ),
                                      Text(
                                        "-20%",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              fontSize:
                                                  Dimensions.fontSizeLarge,
                                              color: const Color(0xFFE3994D),
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    ],
                                  ),
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
          ];
        },
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: Dimensions.paddingSizeDefault,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeDefault,
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Text(
                      "Welcome to eisax We offer a curated selection of quality products, from everyday essentials to unique finds. Whether you're shopping for gifts or treating yourself, you'll find something special here. Experience great value and excellent customer service with every purchase!",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: Dimensions.fontSizeDefault,
                          color: Theme.of(context).hintColor),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeDefault,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeDefault,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeExtraSmall,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Offered By",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: Dimensions.fontSizeLarge,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeExtraSmall,
              ),
              child: Container(
                constraints: const BoxConstraints(maxHeight: 130),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Dimensions.radiusLarge,
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
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.25),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeSmall,
                          vertical: Dimensions.paddingSizeSmall,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Pedicure - Massage - Makeup - Haircut",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Dimensions.fontSizeSmall,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            ),
                            Text(
                              "Lakme Salon & MackUp",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Dimensions.fontSizeDefault,
                                    color: const Color(0xFF121212),
                                  ),
                            ),
                            Text(
                              "25 New Collins Street",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: Dimensions.fontSizeDefault,
                                    color: Theme.of(context).hintColor,
                                  ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: Dimensions.paddingSizeExtraSmall,
                                    horizontal: Dimensions.paddingSizeSmall,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xFFEA843F)
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
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  Dimensions.fontSizeSmall,
                                              color: const Color(0xFFEA843F),
                                            ),
                                      ),
                                      SizedBox(
                                        width: Dimensions.paddingSizeExtraSmall,
                                      ),
                                      SvgPicture.asset(
                                        Images.starSolid,
                                        color: const Color(0xFFEA843F),
                                        height: 16,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeSmall,
                                ),
                                Text(
                                  " 15km",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.fontSizeDefault,
                                        color: Theme.of(context).hintColor,
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
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 80,
        child: Padding(
          padding:  EdgeInsets.all(Dimensions.paddingSizeDefault),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width*0.9,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Theme.of(context).primaryColor,
                    textStyle: const TextStyle(
                        color: Colors.white, fontStyle: FontStyle.normal),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(Dimensions.radiusDefault),
                      ),
                    ),
                    shadowColor: Theme.of(context).primaryColor,
                  ),
                  onPressed: () async {},
                  child: Text(
                    'Book Service',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
