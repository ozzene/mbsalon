// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class PayoutHistoryScreen extends StatefulWidget {
  const PayoutHistoryScreen({super.key});

  @override
  State<PayoutHistoryScreen> createState() => _PayoutHistoryScreenState();
}

class _PayoutHistoryScreenState extends State<PayoutHistoryScreen> {
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
                "Payout History",
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
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.paddingSizeDefault,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: ["", "", "", "", "", "", "", "", "", "", "", ""]
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
                            decoration: const BoxDecoration(
                              color: Color(
                                0xFFf4f4f4,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                                        .fontSizeExtraLarge,
                                                    fontWeight: FontWeight.w900,
                                                    letterSpacing: 1,
                                                    color: Theme.of(context).primaryColor
                                                  ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimensions.paddingSizeSmall,
                                        ),
                                        Text(
                                          "13 Oct, 2024 - Fri - 2:01 AM",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  fontSize: Dimensions
                                                      .fontSizeDefault,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  color: Theme.of(context)
                                                      .hintColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$396.89",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeExtraLarge,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1,
                                            color: const Color(0xFF121212)
                                          ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.paddingSizeSmall,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(
                                        Dimensions.paddingSizeSmall,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrangeAccent
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            Dimensions.radiusSmall,
                                          )),
                                      child: Text(
                                        "Pending",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeSmall,
                                                fontWeight: FontWeight.w800,
                                                letterSpacing: 1,
                                                color: Colors.deepOrangeAccent),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
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
