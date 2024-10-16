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
        Container(
          color: Colors.white,
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
                                    fontSize: Dimensions.fontSizeLarge,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeExtraSmall,
                        ),
                        Text(
                          "+263774259097",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    color: Theme.of(context).hintColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
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
                        fontSize: Dimensions.fontSizeLarge,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
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
                                      fontSize: Dimensions.fontSizeDefault,
                                      color: Theme.of(context).hintColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          Text(
                            "09:00 AM - 07:00 PM",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
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
                child: const Divider(
                  height: 2,
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
                                      fontSize: Dimensions.fontSizeDefault,
                                      color: Theme.of(context).hintColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          Text(
                            "08:00 AM - 04:00 PM",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
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
            ],
          ),
        ),
      ],
    );
  }
}
