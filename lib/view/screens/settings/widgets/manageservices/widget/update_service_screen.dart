// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';
import 'package:mbs/view/widgets/multiselected_widget.dart';

class UpdateServiceScreen extends StatefulWidget {
  const UpdateServiceScreen({super.key});

  @override
  State<UpdateServiceScreen> createState() => _UpdateServiceScreenState();
}

class _UpdateServiceScreenState extends State<UpdateServiceScreen> {
  List<String> serviceGenders = ["Male", "Female", "Unisex"];
  List<String> selectedServiceGenders = [];
  final List<File> _images = [];

  Future<void> _pickImage(bool isCamera) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: isCamera ? ImageSource.camera : ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _images.add(File(pickedFile.path));
      });
    }
  }

  Future<void> _deleteImage(File image) async {
    setState(() {
      _images.remove(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFf4f4f4,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeExtraSmall,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  Images.arrowback,
                  height: 30,
                  width: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeSmall,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
              ),
              child: Text(
                "Add Service",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeLarge,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Container(
                      padding: EdgeInsets.all(
                        Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Price",
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
                                            height: 55,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                bottomLeft: Radius.circular(
                                                  Dimensions.radiusSmall,
                                                ),
                                                topLeft: Radius.circular(
                                                  Dimensions.radiusSmall,
                                                ),
                                              ),
                                              color: Theme.of(context)
                                                  .hintColor
                                                  .withOpacity(0.5),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              vertical:
                                                  Dimensions.paddingSizeSmall,
                                              horizontal:
                                                  Dimensions.paddingSizeLarge,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "\$",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeOverLarge,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing: 1,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomTextField(
                                              borderRadius:
                                                  Dimensions.radiusSmall,
                                              hintText: '774 123 456',
                                              controller:
                                                  TextEditingController(),
                                              fillColor: Colors.transparent,
                                              inputType:
                                                  TextInputType.emailAddress,
                                              borderColor: null,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.paddingSizeDefault,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Discount(Optional)",
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
                                            height: 55,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                bottomLeft: Radius.circular(
                                                  Dimensions.radiusSmall,
                                                ),
                                                topLeft: Radius.circular(
                                                  Dimensions.radiusSmall,
                                                ),
                                              ),
                                              color: Theme.of(context)
                                                  .hintColor
                                                  .withOpacity(0.5),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              vertical:
                                                  Dimensions.paddingSizeSmall,
                                              horizontal:
                                                  Dimensions.paddingSizeLarge,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "%",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeOverLarge,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing: 1,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomTextField(
                                              borderRadius:
                                                  Dimensions.radiusSmall,
                                              hintText: '774 123 456',
                                              controller:
                                                  TextEditingController(),
                                              fillColor: Colors.transparent,
                                              inputType:
                                                  TextInputType.emailAddress,
                                              borderColor: null,
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
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Time It Takes",
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
                                hintText: 'minutes',
                                controller: TextEditingController(),
                                fillColor: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.25),
                                inputType: TextInputType.emailAddress,
                                borderColor: null,
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
                                "Genders (Service is For)",
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: Dimensions.paddingSizeLarge,
                              ),
                              Text(
                                "About Service",
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
                                hintText: 'About Service',
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: Dimensions.paddingSizeLarge,
                              ),
                              Text(
                                "Service Images",
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
                                height: Dimensions.paddingSizeDefault,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () async => await _pickImage(false),
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.radiusDefault),
                                        color: const Color(
                                          0xFFf4f4f4,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(
                                          Dimensions.paddingSizeSmall),
                                      height: 55,
                                      width: 55,
                                      child: SvgPicture.asset(
                                        Images.add,
                                        height: 24,
                                        width: 24,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      physics: const BouncingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: _images
                                            .map(
                                              (image) => Container(
                                                padding: EdgeInsets.all(
                                                    Dimensions
                                                        .paddingSizeExtraSmall),
                                                margin: EdgeInsets.all(
                                                  Dimensions
                                                      .paddingSizeExtraSmall,
                                                ),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: FileImage(image),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Dimensions
                                                                .radiusDefault),
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        width: 0.2,
                                                        color: Theme.of(context)
                                                            .dividerColor)),
                                                height: 55,
                                                width: 55,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        _deleteImage(image);
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.all(
                                                          Dimensions
                                                              .paddingSizeExtraSmall,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Theme.of(
                                                                  context)
                                                              .hintColor
                                                              .withOpacity(0.4),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            Dimensions
                                                                .radiusExtraLarge,
                                                          ),
                                                        ),
                                                        child: SvgPicture.asset(
                                                          Images.bin,
                                                          height: 24,
                                                          width: 24,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 75,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeDefault,
              vertical: Dimensions.paddingSizeSmall,
            ),
            child: SizedBox(
              height: 50,
              width: Get.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor,
                  textStyle: const TextStyle(
                      color: Colors.white, fontStyle: FontStyle.normal),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        Dimensions.radiusDefault,
                      ),
                    ),
                  ),
                  shadowColor: Theme.of(context).primaryColor,
                ),
                onPressed: () async {},
                child: Text(
                  'Submit',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
