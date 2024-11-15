import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbs/controller/auth_controller.dart';
import 'package:mbs/helper/route_helper.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (authController) {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      Images.bg1,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SafeArea(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 75,
                            ),
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'MBS ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w900,
                                        ),
                                  ),
                                  TextSpan(
                                    text: 'SALON',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                    child: Container(
                      padding: EdgeInsets.all(
                        Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Premium Beauty Services",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Register your shop with us and \nhave valuable leads",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeExtraLarge,
                          ),
                          SizedBox(
                            height: 50,
                            width: Get.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(Dimensions.radiusDefault),
                                  ),
                                ),
                                shadowColor: Theme.of(context).primaryColor,
                              ),
                              onPressed: () =>
                                  Get.offAllNamed(RouteHelper.auth),
                              child: Text(
                                'Continue',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
