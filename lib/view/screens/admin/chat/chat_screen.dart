// ignore_for_file: deprecated_member_use, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/controller/auth_controller.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/util/style.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                      vertical: Dimensions.paddingSizeDefault,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: SvgPicture.asset(
                              Images.arrowback,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.paddingSizeSmall,
                        ),
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            "assets/images/images/profiledummy.jpeg",
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.paddingSizeSmall,
                        ),
                        Text(
                          "Kudah Ndhlovu",
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
                      color: Colors.cyan,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        color: Theme.of(context).highlightColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeSmall,
                          vertical: Dimensions.paddingSizeSmall,
                        ),
                        width: Get.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Dimensions.radiusExtraLarge,
                                    ),
                                    color: Theme.of(context).highlightColor),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Search",
                                          hintStyle: robotoRegular.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            color: Theme.of(context)
                                                .disabledColor
                                                .withOpacity(.75),
                                          ),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.circular(
                                              Dimensions.paddingSizeExtraLarge,
                                            ),
                                          ),
                                          filled: true,
                                          fillColor: Colors.transparent,
                                          isDense: true,
                                          focusedBorder: null,
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal:
                                                Dimensions.paddingSizeLarge,
                                            vertical:
                                                Dimensions.paddingSizeDefault,
                                          ),

                                          // IconButton(
                                          //   onPressed: widget.iconPressed,
                                          //   icon: Icon(widget.prefix, color: Theme.of(context).hintColor),
                                          // ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: FloatingActionButton(
                                        elevation: 0,
                                        backgroundColor:
                                            Theme.of(context).primaryColor,
                                        tooltip: 'Increment',
                                        onPressed: () {},
                                        child: SvgPicture.asset(
                                          Images.send,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.paddingSizeSmall,
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: FloatingActionButton(
                                elevation: 0,
                                backgroundColor: Theme.of(context).primaryColor,
                                tooltip: 'Increment',
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      Dimensions.paddingSizeDefault),
                                  child: SvgPicture.asset(
                                    Images.clip,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
