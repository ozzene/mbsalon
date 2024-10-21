// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';
import 'package:mbs/view/widgets/multiselected_widget.dart';
import 'package:image_picker/image_picker.dart';

class UpdateStaffScreen extends StatefulWidget {
  const UpdateStaffScreen({super.key});

  @override
  State<UpdateStaffScreen> createState() => _UpdateStaffScreenState();
}

class _UpdateStaffScreenState extends State<UpdateStaffScreen> {
  List<String> serviceGenders = ["Male", "Female"];
  List<String> selectedServiceGenders = [];
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
                "Add Staff",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeDefault,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Container(
                      width: Get.width,
                      padding: EdgeInsets.all(
                        Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          SizedBox(
                            width: Get.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () async => await _pickImage(false),
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        120,
                                      ),
                                      color: const Color(
                                        0xFFf4f4f4,
                                      ),
                                      image: _profileImage != null
                                          ? DecorationImage(
                                              image: FileImage(
                                                _profileImage!,
                                                
                                              ),
                                              fit: BoxFit.cover
                                            )
                                          : null,
                                    ),
                                    padding: EdgeInsets.all(
                                        Dimensions.paddingSizeSmall),
                                    height: 120,
                                    width: 120,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          Images.add,
                                          height: 48,
                                          width: 48,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Staff Name",
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
                                hintText: 'John Doe',
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
                              CustomTextField(
                                borderRadius: Dimensions.radiusSmall,
                                hintText: '26377452729',
                                controller: TextEditingController(),
                                fillColor: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.25),
                                inputType: TextInputType.emailAddress,
                                // errorText: "Please enter your email",
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
                                "Genders",
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
                                maximumSelectionSize: 1,
                                onSelectionChanged: (selected) {
                                  setState(() {
                                    selectedServiceGenders = selected;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
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
                  'Add Staff',
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
