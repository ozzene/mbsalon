// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class ServicesSection extends StatefulWidget {
  const ServicesSection({super.key});

  @override
  State<ServicesSection> createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection> {
  // List to store added service items
  final List<String> _services = [];

  // Method to add or remove a service
  void _toggleService(String service) {
    setState(() {
      if (_services.contains(service)) {
        _services.remove(service);
      } else {
        _services.add(service);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> availableServices = [
      "Special Ganga hot stone massage",
      "Relaxing Swedish massage",
      "Therapeutic deep tissue massage",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: Get.width,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeExtraSmall,
              ),
              child: Text(
                "MASSAGE",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: Dimensions.fontSizeLarge,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          ],
        ),
        Container(
          width: Get.width,
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeDefault,
            vertical: Dimensions.paddingSizeExtraSmall,
          ),
          child: Column(
            children: availableServices
                .map(
                  (service) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        Dimensions.radiusDefault,
                      ),
                    ),
                    margin:
                        EdgeInsets.only(bottom: Dimensions.paddingSizeDefault),
                    shadowColor: Theme.of(context).shadowColor.withOpacity(0.5),
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
                              topLeft:
                                  Radius.circular(Dimensions.radiusDefault),
                              bottomLeft:
                                  Radius.circular(Dimensions.radiusDefault),
                            ),
                          ),
                          child: Image.asset(
                            Images.massage,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.paddingSizeSmall,
                                      ),
                                      child: Text(
                                        "Special Ganga hot stone massage",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeLarge,
                                                color: const Color(0xFF252525),
                                                fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.paddingSizeExtraSmall,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal:
                                                Dimensions.paddingSizeSmall,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "\$150 ",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge
                                                        ?.copyWith(
                                                          fontSize: Dimensions
                                                              .fontSizeLarge,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                  ),
                                                  Text(
                                                    "- 3.5 hour",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge
                                                        ?.copyWith(
                                                          fontSize: Dimensions
                                                              .fontSizeSmall,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
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
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "FEMALE",
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
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                          child: FloatingActionButton(
                                            elevation: 0,
                                            onPressed: () {
                                              _toggleService(service);
                                            },
                                            tooltip: _services.contains(service)
                                                ? 'Remove Service'
                                                : 'Add Service',
                                            backgroundColor:
                                                _services.contains(service)
                                                    ? Colors.red.withOpacity(0.75)
                                                    : Theme.of(context)
                                                        .primaryColor,
                                            child: SvgPicture.asset(
                                              _services.contains(service)
                                                  ? Images.minus
                                                  : Images.add,
                                              color: Colors.white,
                                              height: 32,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
