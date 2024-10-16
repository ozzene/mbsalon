// ignore_for_file: deprecated_member_use
import 'package:mbs/view/screens/settings/settings_screen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/booking/confirm_booking_screen.dart';
import 'package:mbs/view/screens/salons/widget/details_section.dart';
import 'package:mbs/view/screens/salons/widget/gallery_section.dart';
import 'package:mbs/view/screens/salons/widget/services_section.dart';

class SalonScreen extends StatefulWidget {
  const SalonScreen({super.key});

  @override
  State<SalonScreen> createState() => _SalonScreenState();
}

class _SalonScreenState extends State<SalonScreen> {
  int selectedSection = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
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
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      Images.share,
                      width: 18,
                      height: 18,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Share.share('check out my website https://example.com');
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
                        Images.settings,
                        width: 18,
                        height: 18,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingsScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
              expandedHeight: Get.height * 0.45,
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
                      color: Colors.white,
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
                      SizedBox(
                        width: Get.width,
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
                                            "OPEN",
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
                                            "UNISEX",
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
                                            color: const Color(0xFFE3994D),
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
                                            "TOP RATED",
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Joey's Hair Salon",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeOverLarge,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "Westwood, Harare",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    color: Theme.of(context).hintColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical:
                                            Dimensions.paddingSizeExtraSmall,
                                        horizontal: Dimensions.paddingSizeSmall,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.radiusSmall),
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
                                                  color:
                                                      const Color(0xFFEA843F),
                                                ),
                                          ),
                                          SizedBox(
                                            width: Dimensions
                                                .paddingSizeExtraSmall,
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
                                      "(5 Ratings)",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            color: Theme.of(context).hintColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ],
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.paddingSizeDefault),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSizeDefault,
                    vertical: Dimensions.paddingSizeExtraSmall,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        "Details",
                        "Services",
                        "Gallery",
                        "Staff",
                        "Others"
                      ]
                          .asMap()
                          .entries
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedSection = e.key;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: EdgeInsets.only(
                                  right: Dimensions.paddingSizeDefault,
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault,
                                  horizontal: Dimensions.paddingSizeLarge,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: selectedSection == e.key
                                      ? Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.25)
                                      : Theme.of(context).highlightColor,
                                  border: selectedSection == e.key
                                      ? Border.all(
                                          width: 1,
                                          color: Theme.of(context).primaryColor)
                                      : null,
                                ),
                                child: Text(
                                  e.value,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: selectedSection == e.key
                                            ? Theme.of(context).primaryColor
                                            : const Color(0xFF000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.fontSizeSmall,
                                      ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
              //button section widget
              if (selectedSection == 0) const DetailsSection(),
              if (selectedSection == 1) const ServicesSection(),
              if (selectedSection == 2) const GallerySection(),
              // if (selectedSection == 3) const StaffSection(),
            ],
          ),
        ),
      ),
      bottomSheet: (selectedSection == 1)
          ? SizedBox(
              height: 80,
              child: Padding(
                padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$80",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: Dimensions.fontSizeExtraLarge,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          "Subtotal",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    color: Theme.of(context).hintColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Get.width * 0.7,
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
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ContinueBookingScreen()),
                          );
                        },
                        child: Text(
                          'Book Service',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
    );
  }
}
