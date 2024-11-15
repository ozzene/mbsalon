// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/client/booking/client_booking_screen.dart';
import 'package:mbs/view/screens/client/chats/client_chat_screen.dart';
import 'package:mbs/view/screens/client/home/client_home_screen.dart';
import 'package:mbs/view/screens/client/profile/client_profile_screen.dart';
import 'package:mbs/view/screens/client/settings/settings_screen.dart';

class ClientBottomTabs extends StatefulWidget {
  const ClientBottomTabs({super.key});

  @override
  State<ClientBottomTabs> createState() => _ClientBottomTabsState();
}

class _ClientBottomTabsState extends State<ClientBottomTabs> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    ClientHomeScreen(),
    ClientProfileScreen(),
    ClientBookingScreen(),
    ClientChatScreen(),
    ClientSettingsScreen(),
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
              [Images.icHome, Images.icHome],
              "Home",
              context,
            ),
            buildBottomNavItem(
              1,
              [
                Images.icFav,
                Images.icFav,
              ],
              "Explore",
              context,
            ),
            buildBottomNavItem(
              2,
              [Images.icRequests, Images.icRequests],
              "Bookings",
              context,
            ),
            buildBottomNavItem(
              3,
              [Images.icMessage, Images.icMessage],
              "Chats",
              context,
            ),
            buildBottomNavItem(
              4,
              [Images.icProfile, Images.icProfile],
              "Profile",
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
