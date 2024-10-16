import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class FinishBookingScreen extends StatefulWidget {
  const FinishBookingScreen({super.key});

  @override
  State<FinishBookingScreen> createState() => _FinishBookingScreenState();
}

class _FinishBookingScreenState extends State<FinishBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Container(
            padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Address",
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: Dimensions.fontSizeLarge,
                              ),
                    ),
                    Text(
                      "Change",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Dimensions.defaultSpacing,
                ),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeDefault,
                      vertical: Dimensions.paddingSizeExtraSmall),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDAE4E7).withOpacity(0.25),
                    borderRadius: BorderRadius.circular(
                      Dimensions.radiusDefault,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                        child: Expanded(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                Images.location,
                                height: 20,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(
                                width: Dimensions.paddingSizeExtraSmall,
                              ),
                              Text(
                                "Default Address",
                                selectionColor: null,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black.withOpacity(0.75)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                        child: Expanded(
                          child: Text(
                            "John Adams",
                            selectionColor: null,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                        child: Expanded(
                          child: Text(
                            "+263774259097",
                            selectionColor: null,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.75)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                        child: Expanded(
                          child: Text(
                            "+5 Meadow, Westgate, Area D, Harare, Zimbabwe, Mashonaland West Province",
                            selectionColor: null,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.75)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: Dimensions.paddingSizeExtraLarge,
                ),
                // SizedBox(
                //   height: 100,
                //   child: CustomTextField(
                //     maxLines: 3,
                //     borderRadius: Dimensions.radiusDefault,
                //     hintText: 'Write any additional info',
                //     controller: TextEditingController(),
                //     fillColor: const Color(0xFFDAE4E7).withOpacity(0.25),
                //     focussedBorderColor: Colors.transparent,
                //     inputType: TextInputType.emailAddress,
                //     borderColor: Colors.transparent,
                //     borderWidth: 1,
                //   ),
                // ),
                SizedBox(
                  height: Dimensions.paddingSizeExtraLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To be paid",
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: Dimensions.fontSizeLarge,
                              ),
                    ),
                    Text(
                      "\$15.00",
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: Dimensions.fontSizeLarge,
                              ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.paddingSizeExtraLarge,
                ),
                // PaymentSelectionWidget(
                //   selectionWidgetList: [
                //     "Cash On Delivery",
                //     "Credit or Debit Card"
                //   ],
                //   selectedWidgetList: [],
                //   maximumSelectionSize: 1,
                //   onSelectionChanged: (selected) {},
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
