// ignore_for_file: deprecated_member_use, depend_on_referenced_packages

import 'package:dotted_border/dotted_border.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/controller/auth_controller.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/util/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedDaySlot = 0;
  List<String> dayslots = [];
  DateTime selectedDate = DateTime.now();
  DateTime selectedDay = DateTime.now();
  List<DateTime> dateList = [];

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _generateInitialDates();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  List<String> images = [
    "hair-cut.svg",
    "make-up.svg",
    "massage.svg",
    "pedicure.svg"
  ];

  // Initial set of dates (next 14 days)
  void _generateInitialDates() {
    DateTime startDate = DateTime.now()
        .subtract(const Duration(days: 7)); // Starting a week earlier
    for (int i = 0; i < 14; i++) {
      dateList.add(startDate.add(Duration(days: i)));
    }
    setState(() {});
  }

  // Function to append more dates (add 7 more days)
  void _loadMoreDates() {
    DateTime lastDate = dateList.last;
    for (int i = 1; i <= 7; i++) {
      dateList.add(lastDate.add(Duration(days: i)));
    }
    setState(() {});
  }

  // Detect when the user has scrolled to the end
  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMoreDates();
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.utc(1989, 11, 9);

    void getDays() {
      dayslots = [];

      DateTime currentDay = DateTime(currentDate.year, currentDate.month, 0);
      String formattedDay = DateFormat('EEE').format(currentDay);
      String formattedDate = DateFormat('dd').format(currentDay);
      dayslots.add("$formattedDay $formattedDate");
    }

    getDays();

    return GetBuilder<AuthController>(
      builder: (authController) {
        return Scaffold(
          body: Container(
            color: Theme.of(context).primaryColor.withOpacity(0.05),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(Dimensions.defaultSpacing),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bookings",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: Dimensions.fontSizeExtraLarge,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  insetPadding: EdgeInsets.all(0),
                                  elevation: 0,
                                  content: DateSelection(),
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeDefault,
                                vertical: Dimensions.paddingSizeSmall),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Dimensions.radiusSmall,
                              ),
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.25),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  Images.calender,
                                  color: Theme.of(context).primaryColor,
                                  width: 16,
                                  height: 18,
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeDefault,
                                ),
                                Text(
                                  DateFormat('MMMM yyyy').format(selectedDay),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeDefault,
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeSmall),
                      color: const Color(0xFFFFFFFF),
                      child: Column(
                        children: [
                          SizedBox(height: Dimensions.paddingSizeLarge),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            height: 52,
                            child: ListView.builder(
                              controller: _scrollController,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: dateList.length,
                              itemBuilder: (context, index) {
                                DateTime date = dateList[index];
                                bool isSelected = date.day == selectedDay.day &&
                                    date.month == selectedDay.month &&
                                    date.year == selectedDay.year;

                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedDay = date;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: Dimensions.paddingSizeSmall,
                                    ),
                                    child: Container(
                                      width: 50,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: isSelected
                                            ? Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.25)
                                            : const Color(0xFFF4F4F4),
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.radiusDefault,
                                        ),
                                      ),
                                      child: DottedBorder(
                                        borderType: BorderType.RRect,
                                        radius: const Radius.circular(
                                          Dimensions.radiusDefault,
                                        ),
                                        strokeWidth: 1,
                                        color: isSelected
                                            ? Theme.of(context).primaryColor
                                            : Colors.transparent,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            Dimensions.radiusDefault,
                                          ),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '${date.day}',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                        fontSize: Dimensions
                                                            .fontSizeExtraLarge,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: isSelected
                                                            ? Theme.of(context)
                                                                .primaryColor
                                                            : const Color(
                                                                    0xFF121212)
                                                                .withOpacity(
                                                                    0.75),
                                                        letterSpacing: 1,
                                                      ),
                                                ),
                                                Text(
                                                  DateFormat.E()
                                                      .format(date)
                                                      .toUpperCase(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                        fontSize: Dimensions
                                                            .fontSizeExtraSmall,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: isSelected
                                                            ? Theme.of(context)
                                                                .primaryColor
                                                            : const Color(
                                                                    0xFF121212)
                                                                .withOpacity(
                                                                    0.75),
                                                        letterSpacing: 1,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeLarge,
                          ),
                          SizedBox(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "0 Appointments",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Dimensions.fontSizeLarge,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          SizedBox(
                            width: Get.width,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: robotoRegular.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  color: Theme.of(context)
                                      .disabledColor
                                      .withOpacity(.75),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.paddingSizeSmall),
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF4F4F4),
                                isDense: true,
                                focusedBorder: null,
                                suffixIcon: Padding(
                                  padding: EdgeInsets.all(
                                      Dimensions.paddingSizeDefault),
                                ),

                                // IconButton(
                                //   onPressed: widget.iconPressed,
                                //   icon: Icon(widget.prefix, color: Theme.of(context).hintColor),
                                // ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeLarge,
                          ),
                          Expanded(
                            child: SizedBox(
                              child: SvgPicture.asset(Images.error,
                                  height: Get.width * 0.25,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.25)),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(
              bottom: 60,
            ),
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              tooltip: 'Increment',
              onPressed: () {},
              child: SvgPicture.asset(
                Images.scanqr,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20.0;
    Path path = Path();

    // Start from top-left
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);

    // Top-right curve cutout
    path.lineTo(size.width, size.height / 2 - radius);
    path.arcToPoint(
      Offset(size.width, size.height / 2 + radius),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    path.lineTo(size.width, size.height);

    // Bottom-right curve cutout
    path.lineTo(0, size.height);
    path.lineTo(0, size.height / 2 + radius);
    path.arcToPoint(
      Offset(0, size.height / 2 - radius),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class PromoDiscountWidget extends StatelessWidget {
  final Widget child;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  const PromoDiscountWidget({
    super.key,
    required this.child,
    this.decoration,
    this.padding,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(),
      child: Container(
        padding: padding,
        decoration: decoration,
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}

class DateSelection extends StatefulWidget {
  const DateSelection({super.key});

  @override
  State<DateSelection> createState() => _DateSelectionState();
}

class _DateSelectionState extends State<DateSelection> {
  int selectedMonth = 0;
  @override
  Widget build(BuildContext context) {
    List<String> months = [
      'Jan',
      'Feb',
      'March',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    return Container(
      margin: EdgeInsets.all(Dimensions.paddingSizeDefault),
      padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
        color: Colors.white,
      ),
      width: Get.width,
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Month",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Images.arrowback,
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                    ),
                    Text(
                      "2024",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                    SvgPicture.asset(
                      Images.arrowforward,
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: Dimensions.paddingSizeSmall,
            ),
            Container(
              constraints: const BoxConstraints(maxHeight: 100),
              child: GridView.builder(
                itemCount: months.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, index) {
                  final month = months[index];

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedMonth = index;
                      });
                    },
                    child: Container(
                      height: 40,
                      decoration: index == selectedMonth
                          ? BoxDecoration(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.25),
                              borderRadius: BorderRadius.circular(
                                Dimensions.radiusSmall,
                              ),
                            )
                          : null,
                      child: Center(
                        child: Text(
                          month,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: Dimensions.fontSizeSmall,
                                    fontWeight: FontWeight.w400,
                                    color: index == selectedMonth
                                        ? Theme.of(context).primaryColor
                                        : Theme.of(context).hintColor,
                                  ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeSmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Theme.of(context).highlightColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Dimensions.radiusSmall,
                            ),
                          ),
                        ),
                        shadowColor: Theme.of(context).primaryColor,
                      ),
                      onPressed: () async {
                        Get.back();
                      },
                      child: Text(
                        'Cancel',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Dimensions.paddingSizeSmall,
                ),
                Center(
                  child: SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Dimensions.radiusSmall,
                            ),
                          ),
                        ),
                        shadowColor: Theme.of(context).primaryColor,
                      ),
                      onPressed: () async {
                        Get.back();
                      },
                      child: Text(
                        'Done',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
