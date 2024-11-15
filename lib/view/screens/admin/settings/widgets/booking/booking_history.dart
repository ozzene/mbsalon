import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class BookingHistoryScreen extends StatefulWidget {
  const BookingHistoryScreen({super.key});

  @override
  State<BookingHistoryScreen> createState() => _BookingHistoryScreenState();
}

class _BookingHistoryScreenState extends State<BookingHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f4),
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
                "Booking History",
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: ["", "", "", "", "", "", ""]
                      .asMap()
                      .entries
                      .map(
                        (e) => Container(
                          margin: EdgeInsets.only(
                            top: Dimensions.paddingSizeSmall,
                          ),
                          color: Theme.of(context).highlightColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        width: 100,
                                        height: 120,
                                        color: Theme.of(context).highlightColor,
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              child: Container(
                                                padding: EdgeInsets.all(
                                                    Dimensions
                                                        .paddingSizeExtraSmall),
                                                color:
                                                    Theme.of(context).hintColor,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "12:00 PM",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                            fontSize: Dimensions
                                                                .fontSizeDefault,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: Colors.white,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Container(
                                        margin: EdgeInsets.all(
                                          Dimensions.paddingSizeDefault,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "We Love Vids",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                    fontSize: Dimensions
                                                        .fontSizeExtraLarge,
                                                    fontWeight: FontWeight.w700,
                                                    letterSpacing: 1,
                                                  ),
                                            ),
                                            SizedBox(
                                              height:
                                                  Dimensions.paddingSizeSmall,
                                            ),
                                            Text(
                                              "1 Service",
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
                                            SizedBox(
                                              height:
                                                  Dimensions.paddingSizeSmall,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "\$50",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                        fontSize: Dimensions
                                                            .fontSizeExtraLarge,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        letterSpacing: 1,
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                      ),
                                                ),
                                                Text(
                                                  " - 45 min",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                        fontSize: Dimensions
                                                            .fontSizeLarge,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 1,
                                                        color: Theme.of(context)
                                                            .primaryColor,
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
                              Container(
                                width: Get.width,
                                color:
                                    Colors.deepOrangeAccent.withOpacity(0.15),
                                padding: EdgeInsets.all(
                                  Dimensions.paddingSizeDefault,
                                ),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Booking Pending",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontSize: Dimensions.fontSizeDefault,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.deepOrangeAccent,
                                        ),
                                  ),
                                ),
                              ),
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
    );
  }
}
