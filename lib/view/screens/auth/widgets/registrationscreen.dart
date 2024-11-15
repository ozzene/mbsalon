import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mbs/controller/auth_controller.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  List<String> serviceCategories = ["Pedicure", "Massage", "Makeup", "Haircut"];
  List<String> selectedServiceCategories = [];
  List<String> serviceGenders = ["Male", "Female", "Unisex"];
  List<String> selectedServiceGenders = [];

  int currentStep = 1;
  int stepLength = 6;
  late bool complete;

  next() {
    if (currentStep <= stepLength) {
      goTo(currentStep + 1);
    }
  }

  back() {
    if (currentStep > 1) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
    if (currentStep > stepLength) {
      setState(() => complete = true);
    }
  }

  File? _profileImage;

  Future<void> _pickImage(bool isCamera) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: isCamera ? ImageSource.camera : ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (authController) {
      return Scaffold(
        backgroundColor: (currentStep == (stepLength))
            ? Theme.of(context).primaryColor.withOpacity(0.25)
            : const Color(0xFFF4F4F4),
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              SafeArea(child: Container()),
              Container(
                width: Get.width,
                padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        Images.icBack,
                        color: Theme.of(context).primaryColor,
                        width: 32,
                        height: 32,
                        fit: BoxFit.fill,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeExtraLarge,
                    ),
                    Text(
                      'Email Registration',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: Dimensions.fontSizeExtraLarge,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeSmall,
                    ),
                    Text(
                      'Enter your details and complete \nprofile for better experience',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: Dimensions.fontSizeLarge,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF121212).withOpacity(0.5)),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeExtraLarge,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(
                    Dimensions.paddingSizeDefault,
                  ),
                  width: Get.width,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Full Name",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            CustomTextField(
                              borderRadius: Dimensions.radiusDefault,
                              hintText: '',
                              controller: TextEditingController(),
                              fillColor:
                                  Theme.of(context).hintColor.withOpacity(0.25),
                              inputType: TextInputType.emailAddress,
                              borderColor: null,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeLarge,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email Address",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            CustomTextField(
                              borderRadius: Dimensions.radiusDefault,
                              hintText: '',
                              controller: TextEditingController(),
                              fillColor:
                                  Theme.of(context).hintColor.withOpacity(0.25),
                              inputType: TextInputType.emailAddress,
                              borderColor: null,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeLarge,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            CustomTextField(
                              borderRadius: Dimensions.radiusDefault,
                              hintText: '',
                              controller: TextEditingController(),
                              fillColor:
                                  Theme.of(context).hintColor.withOpacity(0.25),
                              inputType: TextInputType.emailAddress,
                              borderColor: null,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeLarge,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Confirm Password",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            CustomTextField(
                              borderRadius: Dimensions.radiusDefault,
                              hintText: '',
                              controller: TextEditingController(),
                              fillColor:
                                  Theme.of(context).hintColor.withOpacity(0.25),
                              inputType: TextInputType.emailAddress,
                              borderColor: null,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: EdgeInsets.only(
              left: Dimensions.paddingSizeDefault,
              right: Dimensions.paddingSizeDefault,
              bottom: Dimensions.paddingSizeDefault),
          width: Get.width * 0.95,
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Theme.of(context).primaryColor,
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
                next();
              },
              child: Text('Continue',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      );
    });
  }
}
