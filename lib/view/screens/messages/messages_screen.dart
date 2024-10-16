// ignore_for_file: deprecated_member_use, depend_on_referenced_packages

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/controller/auth_controller.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/util/style.dart';
import 'package:mbs/view/screens/chat/chat_screen.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (authController) {
        return Scaffold(
          body: Container(
            color: Theme.of(context).primaryColor.withOpacity(0.05),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.defaultSpacing,
                      vertical: Dimensions.paddingSizeExtraLarge,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Messagess",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: Dimensions.fontSizeExtraLarge,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: Get.width,
                      color: const Color(0xFFFFFFFF),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeSmall),
                            width: Get.width,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: robotoRegular.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  color: Theme.of(context)
                                      .disabledColor
                                      .withOpacity(.75),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.paddingSizeSmall),
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF4F4F4),
                                isDense: true,
                                focusedBorder: null,
                                suffixIcon: Padding(
                                  padding: EdgeInsets.all(
                                      Dimensions.paddingSizeDefault),
                                ),

                                // IconButton(
                                //   onPressed: widget.iconPressed,
                                //   icon: Icon(widget.prefix, color: Theme.of(context).hintColor),
                                // ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                physics: const BouncingScrollPhysics(),
                                itemCount: 50,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ChatScreen(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal:
                                            Dimensions.paddingSizeDefault,
                                        vertical: Dimensions.paddingSizeSmall,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(
                                          Dimensions.paddingSizeDefault,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Dimensions.radiusDefault,
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Theme.of(context)
                                                    .shadowColor
                                                    .withOpacity(0.3),
                                                blurRadius: 2,
                                                spreadRadius: 10,
                                                offset: const Offset(3, 3))
                                          ],
                                        ),
                                        child: SizedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const CircleAvatar(
                                                radius: 25,
                                                backgroundImage: AssetImage(
                                                  "assets/images/images/profiledummy.jpeg",
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: Dimensions
                                                        .paddingSizeDefault,
                                                  ),
                                                  height: 50,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        "Jackie Ngarande",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge
                                                            ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: Dimensions
                                                                  .fontSizeLarge,
                                                            ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              right: Dimensions
                                                                  .paddingSizeExtraSmall,
                                                            ),
                                                            child: SvgPicture
                                                                .asset(
                                                              Images.doubleTick,
                                                              height: 12,
                                                              color: Theme.of(
                                                                      context)
                                                                  .disabledColor,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Sound good for me too",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      Dimensions
                                                                          .fontSizeDefault,
                                                                  color: Theme.of(
                                                                          context)
                                                                      .hintColor,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 50,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "01:08 PM",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: Dimensions
                                                                  .fontSizeExtraSmall,
                                                              color: Theme.of(
                                                                      context)
                                                                  .hintColor),
                                                    ),
                                                    CircleAvatar(
                                                      radius: 10,
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .primaryColor,
                                                      child: Text(
                                                        "2",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge
                                                            ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: Dimensions
                                                                  .fontSizeExtraSmall,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
