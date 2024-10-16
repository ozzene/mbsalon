// ignore_for_file: deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/booking/finish_booking_screen.dart';
import 'package:mbs/view/screens/salons/widget/services_section.dart';

class ContinueBookingScreen extends StatefulWidget {
  const ContinueBookingScreen({super.key});

  @override
  State<ContinueBookingScreen> createState() => _ContinueBookingScreenState();
}

class _ContinueBookingScreenState extends State<ContinueBookingScreen> {
  List<String> dayslots = [
    "WED 25",
    "WED 26",
    "WED 27",
    "WED 28",
    "WED 29",
    "WED 30"
  ];
  int selectedDaySlot = 0;
  int selectedTimeSlot = 0;
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    DateTime now = DateTime.now();

    List<String> interviewTimes = List.generate(6, (index) {
      DateTime interviewTime = now.add(Duration(minutes: index * 15));
      return DateFormat.jm().format(interviewTime); // Format to "HH:MM AM/PM"
    });

    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
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
                "Confirm Booking",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSizeDefault,
                  vertical: Dimensions.paddingSizeExtraLarge,
                ),
                color: const Color(0xFFFFFFFF),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Salon",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(143, 143, 143, 1),
                                    letterSpacing: 1,
                                  ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Harry's Curls & Steps",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: Dimensions.fontSizeExtraLarge,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context).primaryColor,
                                      letterSpacing: 1),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "25 Colins Street, NYC",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          143, 143, 143, 1),
                                      letterSpacing: 1),
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Select Date",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontSize: Dimensions.fontSizeDefault,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              143, 143, 143, 1),
                                          letterSpacing: 1),
                                ),
                                Text(
                                  "August 2024",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontSize: Dimensions.fontSizeDefault,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeDefault,
                            ),
                            Row(
                              children: dayslots.asMap().entries.map((date) {
                                var parts = date.value.split(' ');
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedDaySlot = date.key;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 100),
                                    height: 55,
                                    width: 50,
                                    margin: EdgeInsets.only(
                                      right: Dimensions.paddingSizeSmall,
                                    ),
                                    padding: EdgeInsets.all(
                                      Dimensions.paddingSizeExtraSmall,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Dimensions.radiusDefault,
                                      ),
                                      color: selectedDaySlot == date.key
                                          ? Theme.of(context).primaryColor
                                          : const Color(0xFFF4F4F4),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          parts[0],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeDefault,
                                                fontWeight: FontWeight.w500,
                                                color: selectedDaySlot ==
                                                        date.key
                                                    ? const Color(0xFFFFFFFF)
                                                    : const Color(0xFF121212),
                                                letterSpacing: 1,
                                              ),
                                        ),
                                        Text(
                                          parts[1],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                fontSize: Dimensions
                                                    .fontSizeExtraLarge,
                                                fontWeight: FontWeight.w700,
                                                color: selectedDaySlot ==
                                                        date.key
                                                    ? const Color(0xFFFFFFFF)
                                                    : const Color(0xFF121212),
                                                letterSpacing: 1,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeExtraLarge,
                            ),
                            Text(
                              "Select Time",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          143, 143, 143, 1),
                                      letterSpacing: 1),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeDefault,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                children:
                                    interviewTimes.asMap().entries.map((time) {
                                  var parts = time.value.split(' ');
                                  return Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedTimeSlot = time.key;
                                          });
                                        },
                                        child: AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 100),
                                          height: 40,
                                          width: Get.width * 0.27,
                                          margin: EdgeInsets.only(
                                            right: Dimensions.paddingSizeSmall,
                                          ),
                                          padding: EdgeInsets.all(
                                            Dimensions.paddingSizeExtraSmall,
                                          ),
                                          decoration: BoxDecoration(
                                            color: selectedTimeSlot == time.key
                                                ? Theme.of(context).primaryColor
                                                : const Color(0xFFF4F4F4),
                                            borderRadius: BorderRadius.circular(
                                              Dimensions.radiusSmall,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                parts[0],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeSmall,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: selectedTimeSlot ==
                                                              time.key
                                                          ? const Color(
                                                              0xFFFFFFFF)
                                                          : const Color(
                                                              0xFF121212),
                                                      letterSpacing: 1,
                                                    ),
                                              ),
                                              Text(
                                                parts[1],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeSmall,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: selectedTimeSlot ==
                                                              time.key
                                                          ? const Color(
                                                              0xFFFFFFFF)
                                                          : const Color(
                                                              0xFF121212),
                                                      letterSpacing: 1,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "10 Slots Available",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontSize: Dimensions
                                                    .fontSizeExtraSmall,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.green,
                                                letterSpacing: 1),
                                      ),
                                    ],
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeExtraLarge,
                            ),
                            Text(
                              "Service Location",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          143, 143, 143, 1),
                                      letterSpacing: 1),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            SizedBox(
                              height: 38,
                              width: Get.width * 0.36,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          Dimensions.radiusExtraLarge),
                                    ),
                                  ),
                                  shadowColor: Theme.of(context).primaryColor,
                                ),
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ContinueBookingScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'At Salon',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: Dimensions.fontSizeDefault,
                                          letterSpacing: 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeExtraLarge,
                            ),
                            Text(
                              "Services",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          143, 143, 143, 1),
                                      letterSpacing: 1),
                            ),
                            Container(
                              width: Get.width * 0.9,
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(
                                vertical: Dimensions.paddingSizeExtraSmall,
                              ),
                              child: Column(
                                children: ["", "", ""]
                                    .asMap()
                                    .entries
                                    .map(
                                      (e) => GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          constraints: const BoxConstraints(
                                              maxHeight: 120),
                                          margin: EdgeInsets.symmetric(
                                            vertical:
                                                Dimensions.paddingSizeSmall,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              Dimensions.radiusDefault,
                                            ),
                                            color: const Color(0xFFFFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0xFF121212)
                                                    .withOpacity(0.09),
                                                offset: const Offset(3, 3),
                                                blurRadius: 9,
                                                spreadRadius: 1,
                                              )
                                            ],
                                          ),
                                          clipBehavior: Clip.antiAlias,
                                          width: Get.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Expanded(
                                                flex: 5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    image:
                                                        const DecorationImage(
                                                      image: AssetImage(
                                                        "assets/images/images/brushes.jpeg",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    color: Theme.of(context)
                                                        .primaryColor
                                                        .withOpacity(0.25),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 9,
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: Dimensions
                                                        .paddingSizeDefault,
                                                    vertical: Dimensions
                                                        .paddingSizeDefault,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Text(
                                                            "Spa",
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
                                                                  color: const Color(
                                                                      0xFF121212),
                                                                ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "\$90",
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
                                                                              .fontSizeOverLarge,
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                              ),
                                                              Text(
                                                                " - 30 min",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyLarge
                                                                    ?.copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
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
                                                          Text(
                                                            "MALE",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
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
                                                      Container(
                                                        padding: EdgeInsets.all(
                                                          Dimensions
                                                              .paddingSizeSmall,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                        child: SvgPicture.asset(
                                                          Images.add,
                                                          color: Colors.white,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 80,
        child: Padding(
          padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$80",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: Dimensions.fontSizeExtraLarge,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    "Subtotal",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: Dimensions.fontSizeDefault,
                          color: Theme.of(context).hintColor,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
              SizedBox(
                width: Get.width * 0.7,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FinishBookingScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Continue',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getWeekdayName(int weekday) {
    const weekdayNames = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAS', 'SUN'];
    return weekdayNames[weekday - 1];
  }
}
