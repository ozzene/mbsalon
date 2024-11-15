// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbs/util/app_constants.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class ClientBookingScreen extends StatefulWidget {
  const ClientBookingScreen({super.key});

  @override
  State<ClientBookingScreen> createState() => _ClientBookingScreenState();
}

class _ClientBookingScreenState extends State<ClientBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFf9f9ff),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSizeLarge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset(
                          Images.arrowback,
                          width: 24,
                          color: const Color(0xFF252525),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "My Appointments",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: Dimensions.fontSizeLarge,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF252525),
                                  ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            Images.search,
                            width: 32,
                            color: const Color(0xFF252525),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Dimensions.paddingSizeDefault),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(
                    Dimensions.paddingSizeDefault,
                  ),
                  child: Expanded(
                    child: DefaultTabController(
                      initialIndex: 0,
                      length: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TabBar(
                            indicatorColor: Theme.of(context).primaryColor,
                            labelColor: Theme.of(context).primaryColor,
                            unselectedLabelColor: const Color(0xFF545454),
                            dividerColor: Colors.pink,
                            indicatorWeight: 2,
                            tabs: <Widget>[
                              Tab(
                                child: Text(
                                  "Upcoming",
                                  style: TextStyle(
                                      fontSize: Dimensions.fontSizeSmall,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Completed",
                                  style: TextStyle(
                                      fontSize: Dimensions.fontSizeSmall,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Cancelled",
                                  style: TextStyle(
                                      fontSize: Dimensions.fontSizeSmall,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: <Widget>[
                                Column(
                                  children: [""]
                                      .asMap()
                                      .entries
                                      .map(
                                        (e) => appointmentCard(context),
                                      )
                                      .toList(),
                                ),
                                Column(
                                  children: [""]
                                      .asMap()
                                      .entries
                                      .map(
                                        (e) => appointmentCard(context),
                                      )
                                      .toList(),
                                ),
                                Column(
                                  children: [""]
                                      .asMap()
                                      .entries
                                      .map(
                                        (e) => appointmentCard(context),
                                      )
                                      .toList(),
                                )
                              ],
                            ),
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
      ),
    );
  }

  Widget appointmentCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.paddingSizeExtraSmall),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimensions.radiusDefault,
          ),
        ),
        shadowColor: Theme.of(context).shadowColor.withOpacity(0.1),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(
            Dimensions.paddingSizeSmall,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "July 15, 2024 -09:00 AM",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontSize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Divider(
                thickness: 0.5,
                color: Color(0xFF545454).withOpacity(0.5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF545454),
                      borderRadius: BorderRadius.circular(
                        Dimensions.radiusLarge,
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            Images.icPlaceholder,
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        Dimensions.radiusSmall,
                      ),
                      child: Image.asset(
                        Images.salon1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.paddingSizeSmall,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Live Style Salon",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              Images.location,
                              color: const Color(0xFF545454),
                              height: 16,
                              width: 14,
                            ),
                            SizedBox(
                              width: Dimensions.paddingSizeExtraSmall,
                            ),
                            Expanded(
                              child: Text(
                                "13 Baker St. 12B London",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeSmall,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF545454),
                                    ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeExtraSmall,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              Images.scanqr,
                              color: const Color(0xFF545454),
                              height: 16,
                              width: 14,
                            ),
                            SizedBox(
                              width: Dimensions.paddingSizeExtraSmall,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "Service id: ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: Dimensions.fontSizeSmall,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF545454),
                                        ),
                                  ),
                                  Text(
                                    "#S73H7H97H",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeExtraSmall,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
