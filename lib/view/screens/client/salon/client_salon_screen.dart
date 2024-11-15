// ignore_for_file: deprecated_member_use
import 'package:mbs/view/screens/admin/salon/widget/details_section.dart';
import 'package:mbs/view/screens/admin/salon/widget/gallery_section.dart';
import 'package:mbs/view/screens/admin/salon/widget/services_section.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class ClientSalonScreen extends StatefulWidget {
  const ClientSalonScreen({super.key});

  @override
  State<ClientSalonScreen> createState() => _ClientSalonScreenState();
}

class _ClientSalonScreenState extends State<ClientSalonScreen> {
  int selectedSection = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // First collapsible SliverAppBar
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            automaticallyImplyLeading: false,
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
                  icon: Image.asset(
                    Images.icFav,
                    width: 24,
                    height: 24,
                    color: Colors.red,
                  ),
                  onPressed: () {},
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
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Image.asset(
                      Images.icShare,
                      width: 24,
                      height: 24,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Share.share('check out my website https://example.com');
                    },
                  ),
                ),
              ),
            ],
            expandedHeight: Get.height * 0.35,
            leading: Padding(
              padding: EdgeInsets.only(left: Dimensions.paddingSizeExtraSmall),
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
                  icon: Image.asset(
                    Images.icBack,
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
                              height: (Get.height * 0.25),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    Images.icHorizontalBg,
                                  ),
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
                            height: (Get.height * 0.25) + 25,
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
                                          vertical: Dimensions.paddingSizeSmall,
                                          horizontal:
                                              Dimensions.paddingSizeDefault,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
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
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                              ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: Dimensions.paddingSizeDefault,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: Dimensions.paddingSizeSmall,
                                          horizontal:
                                              Dimensions.paddingSizeDefault,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
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
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                              ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: Dimensions.paddingSizeDefault,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: Dimensions.paddingSizeSmall,
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
                                                color: const Color(0xFFFFFFFF),
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
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: Dimensions.fontSizeOverLarge,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeSmall,
                          ),
                          Text(
                            "25, Collins Street, NYC",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: Dimensions.fontSizeLarge,
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
                                                    Dimensions.fontSizeLarge,
                                                color: const Color(0xFFEA843F),
                                              ),
                                        ),
                                        SizedBox(
                                          width:
                                              Dimensions.paddingSizeExtraSmall,
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
                                          fontSize: Dimensions.fontSizeLarge,
                                          color: Theme.of(context).hintColor,
                                          fontWeight: FontWeight.w300,
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

          // Second collapsible SliverAppBar
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            primary: false,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            toolbarHeight: 80,
            title: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: Dimensions.paddingSizeDefault),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
                                            : const Color(0xFF545454),
                                        fontWeight: FontWeight.w700,
                                        fontSize: Dimensions.fontSizeDefault,
                                      ),
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

          SliverList(
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: true,
              (context, index) => SizedBox(
                height: Get.height,
                child: Column(
                  children: [
                    //button section widget
                    if (selectedSection == 0) const DetailsSection(),
                    if (selectedSection == 1) const ServicesSection(),
                    if (selectedSection == 2) const GallerySection(),
                    // if (selectedSection == 3) const StaffSection(),
                  ],
                ),
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
