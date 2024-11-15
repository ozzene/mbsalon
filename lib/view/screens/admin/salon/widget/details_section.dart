import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSizeDefault,
                ),
                child: Column(
                  children: [
                    Text(
                      "The first time you have a chance at the game you will have a good time playing it and you can play it",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: Dimensions.fontSizeLarge,
                            color: const Color(0xFF545454),
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.paddingSizeSmall,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSizeDefault,
                  vertical: Dimensions.paddingSizeExtraSmall,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact Us",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: Dimensions.fontSizeExtraLarge,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeExtraSmall,
                        ),
                        Text(
                          "For questions and queries",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: Dimensions.fontSizeLarge,
                                    color: Theme.of(context).hintColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.all(Dimensions.paddingSizeDefault),
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.05),
                            borderRadius:
                                BorderRadius.circular(Dimensions.radiusLarge),
                          ),
                          child: Image.asset(
                            Images.icCall,
                            color: Theme.of(context).primaryColor,
                            height: 24,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.paddingSizeDefault,
                        ),
                        Container(
                          padding: EdgeInsets.all(
                            Dimensions.paddingSizeDefault,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.05),
                            borderRadius:
                                BorderRadius.circular(Dimensions.radiusLarge),
                          ),
                          child: Image.asset(
                            Images.icMessage,
                            color: Theme.of(context).primaryColor,
                            height: 24,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.paddingSizeDefault,
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: Dimensions.paddingSizeDefault,
        ),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Availability",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: Dimensions.fontSizeExtraLarge,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSizeDefault,
                  vertical: Dimensions.paddingSizeExtraSmall,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Dimensions.paddingSizeExtraSmall,
                    ),
                    SizedBox(
                      width: Get.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Monday - Friday",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: Dimensions.fontSizeExtraLarge,
                                      color: Theme.of(context).hintColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                          Text(
                            "09:00 AM - 07:00 PM",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: Dimensions.fontSizeExtraLarge,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.paddingSizeSmall,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSizeDefault),
                child: Divider(
                  height: 1,
                  color: const Color(0xFF545454).withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: Dimensions.paddingSizeSmall,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSizeDefault,
                  vertical: Dimensions.paddingSizeExtraSmall,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Dimensions.paddingSizeExtraSmall,
                    ),
                    SizedBox(
                      width: Get.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Saturday - Sunday",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: Dimensions.fontSizeExtraLarge,
                                      color: Theme.of(context).hintColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                          Text(
                            "08:00 AM - 04:00 PM",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: Dimensions.fontSizeExtraLarge,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.paddingSizeDefault,
              ),
              Container(
                padding: EdgeInsets.all(
                  Dimensions.paddingSizeDefault,
                ),
                width: Get.width,
                height: Get.height * 0.25,
                decoration: const BoxDecoration(
                  color: Color(0xFF545454),
                  image: DecorationImage(
                      image: AssetImage(Images.icMap), fit: BoxFit.cover),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      
                      child: Image.asset(
                        Images.icPinAnd,
                        color: Theme.of(context).primaryColor,
                        height: 36,
                      ),
                    ),
                    SizedBox(
                     
                      width: Get.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: Get.width * .4,
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.paddingSizeDefault,
                              vertical: Dimensions.paddingSizeSmall,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Dimensions.radiusDefault,
                              ),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  Images.icNavigator,
                                  color: Colors.white,
                                  height: 32,
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeSmall,
                                ),
                                Text(
                                  "Navigate",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge),
                                )
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
                height: Dimensions.paddingSizeDefault,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
