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

class UpdateAwardScreen extends StatefulWidget {
  const UpdateAwardScreen({super.key});

  @override
  State<UpdateAwardScreen> createState() => _UpdateAwardScreenState();
}

class _UpdateAwardScreenState extends State<UpdateAwardScreen> {
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
                "Add Award",
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Award Title",
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
                                hintText: 'Really nice job',
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
                                height: Dimensions.paddingSizeLarge,
                              ),
                              Text(
                                "Awarded By",
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
                                hintText: 'The first time you',
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
                                height: Dimensions.paddingSizeLarge,
                              ),
                              Text(
                                "Description",
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
                                hintText: 'The first time you',
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
