// ignore_for_file: deprecated_member_use
import 'dart:io';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/settings/widgets/manageservices/widget/service_widget.dart';
import 'package:mbs/view/screens/settings/widgets/manageservices/widget/update_service_screen.dart';
import 'package:mbs/view/widgets/custom_textinput_widget.dart';
import 'package:mbs/view/widgets/multiselected_widget.dart';
import 'package:image_picker/image_picker.dart';

class ManageServicesScreen extends StatefulWidget {
  const ManageServicesScreen({super.key});

  @override
  State<ManageServicesScreen> createState() => _ManageServicesScreenState();
}

class _ManageServicesScreenState extends State<ManageServicesScreen> {
  int selectedSection = 0;

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
                "Manage Services",
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
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.paddingSizeDefault,
                top: Dimensions.paddingSizeDefault,
                bottom: Dimensions.paddingSizeDefault,
              ),
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: ["All", "Pedicure", "Massage", "Makeup", "Barber"]
                      .asMap()
                      .entries
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSection = e.key;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.only(
                              right: Dimensions.paddingSizeDefault,
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: Dimensions.paddingSizeSmall,
                              horizontal: Dimensions.paddingSizeLarge,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: selectedSection == e.key
                                  ? Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.25)
                                  : Theme.of(context).highlightColor,
                              border: selectedSection == e.key
                                  ? Border.all(
                                      width: 1,
                                      color: Theme.of(context).primaryColor)
                                  : null,
                            ),
                            child: Text(
                              e.value,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: selectedSection == e.key
                                        ? Theme.of(context).primaryColor
                                        : const Color(0xFF000000),
                                    fontWeight: FontWeight.w400,
                                    fontSize: Dimensions.fontSizeSmall,
                                  ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  width: Get.width,
                  padding: EdgeInsets.all(
                    Dimensions.paddingSizeDefault,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: ["", "", "", "", ""]
                        .asMap()
                        .entries
                        .map(
                          (e) => const ServiceWidget(),
                        )
                        .toList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      //
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 0,
        ),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          tooltip: 'Add Staff',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UpdateServiceScreen(),
              ),
            );
          },
          child: SvgPicture.asset(
            Images.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
