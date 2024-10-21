// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/widgets/custom_switch_widget.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        constraints: const BoxConstraints(maxHeight: 120),
        margin: EdgeInsets.symmetric(
          vertical: Dimensions.paddingSizeSmall,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Dimensions.radiusLarge,
          ),
          color: const Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.01),
              offset: const Offset(3, 3),
              blurRadius: 10,
              spreadRadius: 10,
            )
          ],
        ),
        clipBehavior: Clip.antiAlias,
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(
                  Dimensions.paddingSizeSmall,
                ),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/images/brushes.jpeg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Theme.of(context).primaryColor.withOpacity(
                        0.25,
                      ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        Dimensions.paddingSizeSmall,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimensions.radiusExtraLarge,
                        ),
                        color: Colors.white.withOpacity(
                          0.25,
                        ),
                      ),
                      child: SvgPicture.asset(
                        Images.bin,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSizeDefault,
                  vertical: Dimensions.paddingSizeDefault,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Cronograma Capilar Cachos ",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeLarge,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "\$460",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium
                                              ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeLarge,
                                                fontWeight: FontWeight.w700,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                        ),
                                        Text(
                                          " - 60 Min",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium
                                              ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeDefault,
                                                fontWeight: FontWeight.w400,
                                                color: Theme.of(context)
                                                    .disabledColor,
                                              ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Dimensions.paddingSizeSmall,
                                    ),
                                    Text(
                                      "FEMALE",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Theme.of(context).disabledColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        padding: EdgeInsets.symmetric(
                                          vertical:
                                              Dimensions.paddingSizeExtraSmall,
                                          horizontal:
                                              Dimensions.paddingSizeSmall,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color:
                                              Theme.of(context).highlightColor,
                                        ),
                                        child: Text(
                                          "Edit",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w400,
                                                fontSize:
                                                    Dimensions.fontSizeSmall,
                                              ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Dimensions.paddingSizeSmall,
                                    ),
                                    CustomSwitch(
                                      value: false,
                                      onChanged: (bool val) {},
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      backgroundColor: Colors.grey,
                                      width: 50.0,
                                      height: 30.0,
                                      padding: const EdgeInsets.all(4.0),
                                    )
                                  ],
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
            )
          ],
        ),
      ),
    );
  }
}
