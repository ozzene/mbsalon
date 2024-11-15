// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/admin/home/home_screen.dart';
import 'package:mbs/view/screens/admin/messages/messages_screen.dart';
import 'package:mbs/view/screens/admin/notifications/notification_screen.dart';
import 'package:mbs/view/screens/admin/requests/request_screen.dart';
import 'package:mbs/view/screens/admin/salon/salon_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    HomeScreen(),
    RequestScreen(),
    MessagesScreen(),
    NotificationsScreen(),
    SalonScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraLarge),
        height: Get.width * 0.15,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 50,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buildBottomNavItem(
              0,
              [Images.icBooking, Images.icBooking],
              "Bookings",
              context,
            ),
            buildBottomNavItem(
                1,
                [
                  Images.icRequests,
                  Images.icRequests,
                ],
                "Requests",
                context),
           
            buildBottomNavItem(
              2,
              [Images.icMessage, Images.icMessage],
              "Messages",
              context,
            ),
             
            buildBottomNavItem(
              4,
              [Images.icSalon, Images.icSalon],
              "Salon",
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavItem(
      int index, List<String> icon, String title, BuildContext context) {
    return SizedBox(
      width: Get.width * 0.15,
      child: AnimatedAlign(
        duration: const Duration(milliseconds: 1000),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () => _onItemTapped(index),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    _selectedIndex == index ? icon[1] : icon[0],
                    width: 18,
                    height: 18,
                    color: _selectedIndex == index
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).disabledColor,
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeExtraSmall,
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: _selectedIndex == index
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).disabledColor,
                        ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
