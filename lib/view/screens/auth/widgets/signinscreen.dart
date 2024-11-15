import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbs/controller/auth_controller.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/admin/navigation/bottom_navigation_widget.dart';
import 'package:mbs/view/screens/auth/widgets/registrationscreen.dart';
import 'package:mbs/view/screens/client/navigation/client_bottom_tabs.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController useremail = TextEditingController();
  TextEditingController userpass = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    useremail.dispose();
    userpass.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (authController) {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      Images.bg1,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.all(
                  Dimensions.paddingSizeDefault,
                ),
                width: Get.width,
                height: Get.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Sign in to continue",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                        "Register your shop with us. find customers, manage appointments and grow business",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontSize: Dimensions.fontSizeDefault,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeExtraLarge,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Email Address",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.white,
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        CustomTextField(
                          borderRadius: Dimensions.radiusDefault,
                          hintText: '',
                          controller: TextEditingController(),
                          fillColor: Colors.white.withOpacity(0.1),
                          inputType: TextInputType.emailAddress,
                          borderColor: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeExtraLarge,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Password",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.white,
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        CustomTextField(
                          borderRadius: Dimensions.radiusDefault,
                          hintText: '',
                          controller: TextEditingController(),
                          fillColor: Colors.white.withOpacity(0.1),
                          inputType: TextInputType.emailAddress,
                          borderColor: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeSmall,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forgot Password?",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontSize: Dimensions.fontSizeDefault,
                              fontWeight: FontWeight.w500,
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
                              color: Colors.white, fontStyle: FontStyle.normal),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(Dimensions.radiusDefault),
                            ),
                          ),
                          shadowColor: Theme.of(context).primaryColor,
                        ),
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ClientBottomTabs(),
                            ),
                          );
                        },
                        child: Text(
                          'Continue',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeLarge,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegistrationScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "New User? Register Here",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.white,
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w500,
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
            )
          ],
        ),
      );
    });
  }
}
