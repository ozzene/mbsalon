import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';

class ClientFavouriteScreen extends StatefulWidget {
  const ClientFavouriteScreen({super.key});

  @override
  State<ClientFavouriteScreen> createState() => _ClientFavouriteScreenState();
}

class _ClientFavouriteScreenState extends State<ClientFavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf3f3f3),
      body: SafeArea(
        bottom: false,
        top: true,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.defaultSpacing),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Favourites",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: Dimensions.fontSizeExtraLarge,
                              fontWeight: FontWeight.w900,
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.paddingSizeDefault,
                              vertical: Dimensions.paddingSizeSmall,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(100),
                                bottomLeft: Radius.circular(100),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Service",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.paddingSizeDefault,
                              vertical: Dimensions.paddingSizeSmall,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).highlightColor,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(100),
                                bottomRight: Radius.circular(100),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Salon",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF252525),
                                    ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.paddingSizeDefault),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(
                  Dimensions.paddingSizeDefault,
                ),
                width: Get.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
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
                                  margin: EdgeInsets.only(
                                      bottom: Dimensions.paddingSizeDefault),
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
                                        child: Stack(
                                          children: [
                                            
                                            SizedBox(
                                              width: 100,
                                              height: 100,
                                              child: Image.asset(
                                                Images.massage,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.all(Dimensions.paddingSizeSmall),
                                              child: Positioned(
                                                child: Image.asset(
                                                  Images.icFav,
                                                  color: Colors.red,
                                                  height: 24,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions
                                                  .paddingSizeDefault),
                                          child: Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Spa - Massage - Makeup",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium
                                                      ?.copyWith(
                                                          fontSize: Dimensions
                                                              .fontSizeSmall,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                ),
                                                SizedBox(
                                                  height: Dimensions
                                                      .paddingSizeExtraSmall,
                                                ),
                                                Text(
                                                  "Ganga Salon Spa",
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
                                                SizedBox(
                                                  height: Dimensions
                                                      .paddingSizeExtraSmall,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "304 Collins Street, NYC",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge
                                                          ?.copyWith(
                                                            fontSize: Dimensions
                                                                .fontSizeSmall,
                                                            fontWeight:
                                                                FontWeight.w400,
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
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: Dimensions
                                                            .paddingSizeSmall,
                                                        vertical: Dimensions
                                                            .paddingSizeExtraSmall,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          Dimensions
                                                              .radiusSmall,
                                                        ),
                                                        color: const Color(
                                                                0xFFE3994D)
                                                            .withOpacity(0.2),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "5.0",
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
                                                                  color: Color(
                                                                      0xFFE3994D),
                                                                ),
                                                          ),
                                                          SvgPicture.asset(
                                                            Images.starSolid,
                                                            height: 14,
                                                            color: Color(
                                                                0xFFE3994D),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      "Explore",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge
                                                          ?.copyWith(
                                                            fontSize: Dimensions
                                                                .fontSizeDefault,
                                                            fontWeight:
                                                                FontWeight.w700,
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
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
