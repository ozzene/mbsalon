import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mbs/controller/auth_controller.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';
import 'package:mbs/view/widgets/multiselected_widget.dart';
import 'package:mbs/view/widgets/stepper_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              if (!(currentStep == (stepLength)))
                Padding(
                  padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'SALON ',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                            TextSpan(
                              text: ' Registration',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeSmall,
                      ),
                      Text(
                        'Enter your details and complete\nyour registration',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: Theme.of(context).hintColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeExtraLarge,
                      ),
                      NumberStepper(
                        totalSteps: stepLength,
                        width: MediaQuery.of(context).size.width,
                        curStep: currentStep,
                        stepCompleteColor: Theme.of(context).primaryColor,
                        currentStepColor: const Color(0xffdbecff),
                        inactiveColor: const Color(0xffbababa),
                        lineWidth: 3.5,
                        key: const Key(''),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeDefault,
                      ),
                    ],
                  ),
                ),
              if ((currentStep == (stepLength)))
                Container(
                  width: Get.width,
                  padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        Images.tick,
                        color: Theme.of(context).primaryColor,
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeExtraLarge,
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'SALON ',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                            TextSpan(
                              text: ' Registration',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeDefault,
                      ),
                      Text(
                        'Submission Successful',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                fontSize: Dimensions.fontSizeOverLarge,
                                fontWeight: FontWeight.w500,
                                color:
                                    const Color(0xFF121212).withOpacity(0.75)),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeExtraLarge,
                      ),
                      Text(
                        'Request ID : SLOUENB38HDJSKKSJ',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                fontSize: Dimensions.fontSizeLarge,
                                fontWeight: FontWeight.w400,
                                color:
                                    const Color(0xFF121212).withOpacity(0.75)),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeExtraLarge,
                      ),
                    ],
                  ),
                ),
              if (currentStep == 1)
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
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Salon Owner's Name",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              CustomTextField(
                                borderRadius: Dimensions.radiusSmall,
                                hintText: '',
                                controller: TextEditingController(),
                                fillColor: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.25),
                                inputType: TextInputType.emailAddress,
                                borderColor: null,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeLarge,
                          ),
                          SizedBox(
                            width: Get.width * 0.9,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () async => await _pickImage(false),
                                  child: DottedBorder(
                                    color: Theme.of(context)
                                        .hintColor
                                        .withOpacity(0.5),
                                    strokeWidth: 3,
                                    radius: const Radius.circular(
                                      Dimensions.radiusLarge,
                                    ),
                                    dashPattern: const [5],
                                    borderType: BorderType.RRect,
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.radiusLarge,
                                        ),
                                        color: const Color(
                                          0xFFf4f4f4,
                                        ),
                                        image: _profileImage != null
                                            ? DecorationImage(
                                                image: FileImage(
                                                  _profileImage!,
                                                ),
                                                fit: BoxFit.cover)
                                            : null,
                                      ),
                                      padding: EdgeInsets.all(
                                          Dimensions.paddingSizeSmall),
                                      height: 120,
                                      width: 120,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(Dimensions
                                                .paddingSizeExtraSmall),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Theme.of(context)
                                                    .hintColor
                                                    .withOpacity(0.75)),
                                            child: const Icon(
                                              Icons.add,
                                              size: 24,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeLarge,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Owner Photo",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontSize: Dimensions
                                                    .fontSizeExtraLarge,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                color: Theme.of(context)
                                                    .hintColor),
                                      ),
                                      SizedBox(
                                        height: Dimensions.paddingSizeSmall,
                                      ),
                                      Text(
                                        "Your face should be visible completely. \nImage with Specs & Headphones will not be approved ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeSmall,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                color: Theme.of(context)
                                                    .hintColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeLarge,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Salon Name",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              CustomTextField(
                                borderRadius: Dimensions.radiusSmall,
                                hintText: '',
                                controller: TextEditingController(),
                                fillColor: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.25),
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
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              CustomTextField(
                                borderRadius: Dimensions.radiusSmall,
                                hintText: '',
                                controller: TextEditingController(),
                                fillColor: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.25),
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
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              CustomTextField(
                                borderRadius: Dimensions.radiusSmall,
                                hintText: '',
                                controller: TextEditingController(),
                                fillColor: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.25),
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
              if (currentStep == 2)
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
                        children: [
                          SizedBox(
                            height: Dimensions.paddingSizeLarge,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About Salon",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              CustomTextField(
                                borderRadius: Dimensions.radiusSmall,
                                hintText: '',
                                controller: TextEditingController(),
                                fillColor: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.25),
                                inputType: TextInputType.emailAddress,
                                borderColor: null,
                                maxLines: 8,
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
                                "Salon Address",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              CustomTextField(
                                borderRadius: Dimensions.radiusSmall,
                                hintText: '',
                                controller: TextEditingController(),
                                fillColor: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.25),
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
                              SizedBox(
                                height: Dimensions.paddingSizeLarge,
                              ),
                              Text(
                                "Phone Number",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    Dimensions.radiusSmall,
                                  ),
                                  color: Theme.of(context)
                                      .hintColor
                                      .withOpacity(0.25),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(
                                            Dimensions.radiusSmall,
                                          ),
                                          topLeft: Radius.circular(
                                            Dimensions.radiusSmall,
                                          ),
                                        ),
                                        color: Color(0xFF121212),
                                      ),
                                      child: CountryCodePicker(
                                        onChanged: print,
                                        initialSelection: 'IT',
                                        favorite: const ['+263', 'ZW'],
                                        showCountryOnly: false,
                                        showOnlyCountryWhenClosed: false,
                                        alignLeft: false,
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontSize:
                                                  Dimensions.fontSizeLarge,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                              color: Colors.white,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        borderRadius: Dimensions.radiusSmall,
                                        hintText: '774 123 456',
                                        controller: TextEditingController(),
                                        fillColor: Colors.transparent,
                                        inputType: TextInputType.emailAddress,
                                        // errorText: "Please enter your email",
                                        borderColor: null,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeLarge,
                          ),
                          Center(
                            child: SizedBox(
                              height: 50,
                              width: Get.width,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Theme.of(context)
                                      .hintColor
                                      .withOpacity(0.25),
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        Dimensions.radiusSmall,
                                      ),
                                    ),
                                  ),
                                  shadowColor: Theme.of(context).primaryColor,
                                ),
                                onPressed: () async {},
                                child: Text(
                                  'Fetch Location',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (currentStep == 3)
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
                            height: Dimensions.paddingSizeLarge,
                          ),
                          Text(
                            "Set Availability of your salon",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeLarge,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeLarge,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Monday - Friday",
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
                                height: Dimensions.paddingSizeDefault,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.paddingSizeLarge,
                                        vertical: Dimensions.paddingSizeDefault,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.radiusSmall,
                                        ),
                                        color: Theme.of(context)
                                            .hintColor
                                            .withOpacity(0.25),
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            Images.calender,
                                            color:
                                                Theme.of(context).primaryColor,
                                            height: 24,
                                          ),
                                          SizedBox(
                                            width: Dimensions.paddingSizeSmall,
                                          ),
                                          Text(
                                            "08:00 AM",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontSize: Dimensions
                                                      .fontSizeDefault,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "To",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                        ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.paddingSizeLarge,
                                        vertical: Dimensions.paddingSizeDefault,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.radiusSmall,
                                        ),
                                        color: Theme.of(context)
                                            .hintColor
                                            .withOpacity(0.25),
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            Images.calender,
                                            color:
                                                Theme.of(context).primaryColor,
                                            height: 24,
                                          ),
                                          SizedBox(
                                            width: Dimensions.paddingSizeSmall,
                                          ),
                                          Text(
                                            "08:00 AM",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontSize: Dimensions
                                                      .fontSizeDefault,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeExtraLarge,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Saturday - Sunday",
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
                                height: Dimensions.paddingSizeDefault,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.paddingSizeLarge,
                                        vertical: Dimensions.paddingSizeDefault,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.radiusSmall,
                                        ),
                                        color: Theme.of(context)
                                            .hintColor
                                            .withOpacity(0.25),
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            Images.calender,
                                            color:
                                                Theme.of(context).primaryColor,
                                            height: 24,
                                          ),
                                          SizedBox(
                                            width: Dimensions.paddingSizeSmall,
                                          ),
                                          Text(
                                            "08:00 AM",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontSize: Dimensions
                                                      .fontSizeDefault,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "To",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                        ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.paddingSizeLarge,
                                        vertical: Dimensions.paddingSizeDefault,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.radiusSmall,
                                        ),
                                        color: Theme.of(context)
                                            .hintColor
                                            .withOpacity(0.25),
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            Images.calender,
                                            color:
                                                Theme.of(context).primaryColor,
                                            height: 24,
                                          ),
                                          SizedBox(
                                            width: Dimensions.paddingSizeSmall,
                                          ),
                                          Text(
                                            "08:00 AM",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontSize: Dimensions
                                                      .fontSizeDefault,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
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
                                "Add booking slots by week days ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              Text(
                                "If you've added only two slots for Monday, then customers can select from those two slots for Monday.",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: Dimensions.fontSizeDefault,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        color: const Color(0xFF121212)
                                            .withOpacity(0.75)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Column(
                            children: [
                              "Monday",
                              "Tuesday",
                              "Wednesday",
                              "Thursday",
                              "Friday",
                              "Saturday",
                              "Sunday"
                            ]
                                .asMap()
                                .entries
                                .map(
                                  (e) => AnimatedContainer(
                                    margin: EdgeInsets.only(
                                      top: Dimensions.paddingSizeSmall,
                                    ),
                                    duration: const Duration(milliseconds: 300),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: Dimensions.paddingSizeLarge,
                                      vertical: Dimensions.paddingSizeLarge,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Dimensions.radiusSmall,
                                      ),
                                      color: Theme.of(context)
                                          .hintColor
                                          .withOpacity(0.25),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          e.value.toUpperCase(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeDefault,
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 1,
                                              ),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            "Add",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontSize: Dimensions
                                                      .fontSizeDefault,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 1,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              if (currentStep == 4)
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(
                      Dimensions.paddingSizeDefault,
                    ),
                    width: Get.width,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: Dimensions.paddingSizeDefault,
                              ),
                              Text(
                                "Categories You Serve",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              MultiSelectWidget(
                                selectionWidgetList: serviceCategories,
                                selectedWidgetList: selectedServiceCategories,
                                maximumSelectionSize: 4,
                                onSelectionChanged: (selected) {
                                  setState(() {
                                    selectedServiceCategories = selected;
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: Dimensions.paddingSizeDefault,
                              ),
                              Text(
                                "Genders You Serve",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              MultiSelectWidget(
                                selectionWidgetList: serviceGenders,
                                selectedWidgetList: selectedServiceGenders,
                                maximumSelectionSize: 4,
                                onSelectionChanged: (selected) {
                                  setState(() {
                                    selectedServiceGenders = selected;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (currentStep == 5)
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(
                      Dimensions.paddingSizeDefault,
                    ),
                    width: Get.width,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Text(
                            "Upload at least 3 images of your Salon",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeLarge,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          SizedBox(
                            width: Get.width,
                            child: Wrap(
                              spacing: 8,
                              runSpacing: Dimensions.paddingSizeDefault,
                              runAlignment: WrapAlignment.spaceBetween,
                              alignment: WrapAlignment.spaceBetween,
                              children: <String>["", "", "", "", "", ""]
                                  .asMap()
                                  .entries
                                  .map(
                                    (e) => GestureDetector(
                                      onTap: () async =>
                                          await _pickImage(false),
                                      child: DottedBorder(
                                        color: Theme.of(context)
                                            .hintColor
                                            .withOpacity(0.5),
                                        strokeWidth: 3,
                                        radius: const Radius.circular(
                                          Dimensions.radiusLarge,
                                        ),
                                        dashPattern: const [5],
                                        borderType: BorderType.RRect,
                                        child: AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              Dimensions.radiusLarge,
                                            ),
                                            color: const Color(
                                              0xFFf4f4f4,
                                            ),
                                            image: _profileImage != null
                                                ? DecorationImage(
                                                    image: FileImage(
                                                      _profileImage!,
                                                    ),
                                                    fit: BoxFit.cover)
                                                : null,
                                          ),
                                          padding: EdgeInsets.all(
                                              Dimensions.paddingSizeSmall),
                                          height: ((Get.width / 3)),
                                          width: ((Get.width / 3) -
                                              Dimensions.paddingSizeLarge),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(
                                                    Dimensions
                                                        .paddingSizeExtraSmall),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                                child: const Icon(
                                                  Icons.add,
                                                  size: 24,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              if (currentStep == 6)
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
                            height: Dimensions.paddingSizeLarge,
                          ),
                          Text(
                            'All of the details you have submitted have been received by us. We will check and update you on this once we have an update for you.',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeLarge,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.5),
                                ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Text(
                            'It will take around 3 to 4 business days to check and verify your profile.',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    fontSize: Dimensions.fontSizeLarge,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF121212)
                                        .withOpacity(0.5)),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Text(
                            'Write us on below details if you have any questions and queries',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    fontSize: Dimensions.fontSizeLarge,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF121212)
                                        .withOpacity(0.5)),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeExtraLarge,
                          ),
                          Text(
                            'hello@mbsalon.com',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    fontSize: Dimensions.fontSizeLarge,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF121212)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        bottomNavigationBar: !(currentStep == (stepLength))
            ? Container(
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
                    child: Text(
                        (currentStep == (stepLength - 1)) ? 'Finish' : 'Next',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            : null,
      );
    });
  }
}
