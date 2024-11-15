// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
                "Wallet",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeLarge,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(
                        Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: Get.width,
                            padding: EdgeInsets.all(
                                Dimensions.paddingSizeExtraLarge),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Dimensions.radiusDefault,
                              ),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$0",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        letterSpacing: 1,
                                      ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(
                                      Dimensions.paddingSizeDefault),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Dimensions.radiusSmall,
                                    ),
                                    color: Theme.of(context).highlightColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Withdraw",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontSize: Dimensions
                                                    .fontSizeExtraLarge,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                                letterSpacing: 1),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Statement",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            ""
                          ]
                              .asMap()
                              .entries
                              .map(
                                (e) => Container(
                                  margin: EdgeInsets.only(
                                    bottom: Dimensions.paddingSizeSmall,
                                  ),
                                  padding: EdgeInsets.all(
                                    Dimensions.paddingSizeDefault,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red.withOpacity(0.05)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(
                                          Dimensions.paddingSizeExtraSmall,
                                        ),
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red),
                                        child: SvgPicture.asset(
                                          Images.minus,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(
                                            Dimensions.paddingSizeSmall,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "SLTRIDFZA707573ZXS",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                          fontSize: Dimensions
                                                              .fontSizeDefault,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 1,
                                                        ),
                                                  ),
                                                  Text(
                                                    " - Commission",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                            fontSize: Dimensions
                                                                .fontSizeDefault,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            letterSpacing: 1,
                                                            color: Colors.red),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height:
                                                    Dimensions.paddingSizeSmall,
                                              ),
                                              Text(
                                                "13 Oct, 2024 - Fri - 2:01 AM",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                        fontSize: Dimensions
                                                            .fontSizeDefault,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 1,
                                                        color: Theme.of(context)
                                                            .hintColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "-\$1.5",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontSize:
                                                  Dimensions.fontSizeLarge,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
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
    );
  }
}
