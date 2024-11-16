import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/client/salon/client_salon_screen.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';

class ClientSearchScreen extends StatefulWidget {
  const ClientSearchScreen({super.key});

  @override
  State<ClientSearchScreen> createState() => _ClientSearchScreenState();
}

class _ClientSearchScreenState extends State<ClientSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf3f3f3),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.defaultSpacing),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        Images.icBack,
                        width: 32,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.defaultSpacing),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Search",
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
                    SizedBox(
                      width: Get.width,
                      child: CustomTextField(
                        borderRadius: 100,
                        hintText: 'Search',
                        controller: TextEditingController(),
                        fillColor: const Color(0xFFf3f3f3),
                        inputType: TextInputType.emailAddress,
                        borderColor: Colors.transparent,
                        suffixicon: Images.icFilter,
                        suffixiconcolor: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recents",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Dimensions.fontSizeLarge,
                                  color: const Color(0xFF252525)),
                        ),
                        Row(
                          children: [
                            Text(
                              "Clear all",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: Dimensions.fontSizeSmall,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Column(
                      children: ["Hair Color", "Spa Massage", "Woman Haircut"]
                          .asMap()
                          .entries
                          .map(
                            (e) => Container(
                              padding: EdgeInsets.symmetric(
                                vertical: Dimensions.paddingSizeSmall,
                                horizontal: Dimensions.paddingSizeExtraSmall,
                              ),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 0.2,
                                          color: Color(0xFF545454)))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e.value,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: Dimensions.fontSizeSmall,
                                          color: const Color(0xFF545454),
                                        ),
                                  ),
                                  Text(
                                    "x",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge,
                                          color: const Color(0xFF545454),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Suggestions",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: Dimensions.fontSizeLarge,
                                  color: const Color(0xFF252525)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
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
                                  margin: EdgeInsets.only(bottom: Dimensions.paddingSizeDefault),
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
                                        child: Image.asset(
                                          Images.massage,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions
                                                  .paddingSizeDefault),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Special Ganga hot stone massage",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelMedium
                                                          ?.copyWith(
                                                              fontSize: Dimensions
                                                                  .fontSizeLarge,
                                                              color: const Color(
                                                                  0xFF252525),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                    SizedBox(
                                                      height: Dimensions
                                                          .paddingSizeExtraSmall,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        
                                                        Text(
                                                          "By Ganga Salon Spa",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .fontSizeSmall,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
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
                                                              .start,
                                                      children: [
                                                       
                                                        Text(
                                                          "\$150 ",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .fontSizeLarge,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Theme.of(context).primaryColor,
                                                                  ),
                                                        ),
                                                        Text(
                                                          "- 3.5 hour",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .fontSizeSmall,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Theme.of(context).primaryColor,
                                                                  ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
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
