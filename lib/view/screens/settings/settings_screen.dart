import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/widgets/custom_switch.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f4),
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
                "Salon Settings",
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //push notifcation
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Push Notification",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF121212)
                                          .withOpacity(0.6),
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeExtraSmall,
                              ),
                              Text(
                                "Keep it On. If you want to receive notifications",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeSmall,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0XFF121212)
                                          .withOpacity(0.5),
                                      letterSpacing: 1,
                                    ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: Dimensions.paddingSizeSmall,
                          ),
                          CustomSwitch(
                            value: false,
                            onChanged: (bool val) {},
                            activeColor: Theme.of(context).primaryColor,
                            backgroundColor: Colors.grey,
                            width: 50.0,
                            height: 30.0,
                            padding: const EdgeInsets.all(4.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //vacation mode
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vacation Mode",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF121212)
                                          .withOpacity(0.6),
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeExtraSmall,
                              ),
                              SizedBox(
                                width: Get.width * 0.75,
                                child: Text(
                                  "Keep it Off, your salon and services will not be shown to the customer until turned On.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeSmall,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0XFF121212)
                                            .withOpacity(0.5),
                                        letterSpacing: 1,
                                      ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: Dimensions.paddingSizeSmall,
                          ),
                          CustomSwitch(
                            value: false,
                            onChanged: (bool val) {},
                            activeColor: Theme.of(context).primaryColor,
                            backgroundColor: Colors.grey,
                            width: 50.0,
                            height: 30.0,
                            padding: const EdgeInsets.all(4.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //server at customer address
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Serve At Customer Address",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF121212)
                                          .withOpacity(0.6),
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeExtraSmall,
                              ),
                              SizedBox(
                                width: Get.width * 0.75,
                                child: Text(
                                  "If you keep this option ON, Customers can choose their address to make orders and you have to complete the service at their location.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeSmall,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0XFF121212)
                                            .withOpacity(0.5),
                                        letterSpacing: 1,
                                      ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: Dimensions.paddingSizeSmall,
                          ),
                          CustomSwitch(
                            value: false,
                            onChanged: (bool val) {},
                            activeColor: Theme.of(context).primaryColor,
                            backgroundColor: Colors.grey,
                            width: 50.0,
                            height: 30.0,
                            padding: const EdgeInsets.all(4.0),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //pay after srrvice
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Offer Pay After Service Option",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF121212)
                                          .withOpacity(0.6),
                                      letterSpacing: 1,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeExtraSmall,
                              ),
                              SizedBox(
                                width: Get.width * 0.75,
                                child: Text(
                                  "If you keep this option ON, Customers can choose to pay after service. And you have to collect money manually at order completion.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeSmall,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0XFF121212)
                                            .withOpacity(0.5),
                                        letterSpacing: 1,
                                      ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: Dimensions.paddingSizeSmall,
                          ),
                          CustomSwitch(
                            value: false,
                            onChanged: (bool val) {},
                            activeColor: Theme.of(context).primaryColor,
                            backgroundColor: Colors.grey,
                            width: 50.0,
                            height: 30.0,
                            padding: const EdgeInsets.all(4.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 12,
                      color: Colors.white,
                    ),
                    //edit salon details
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Edit Salon Details",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //edit salon details
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Manage Staff",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //edit salon details
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Edit Bank Details",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //edit salon details
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Edit Aviability & Slots",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //edit salon details
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Manage Services",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 12,
                      color: Colors.white,
                    ),
                    //wallet
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Wallet",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //booking history
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Manage Services",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //edit salon details
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Earning Reports",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //payouts
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Payouts",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 12,
                      color: Colors.white,
                    ),
                    //edit salon details
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Terms Of Use",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //privacy policy
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Privacy Policy",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //change language
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Change Language",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //edit salon details
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Change Password",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //edit salon details
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Help & FAQ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //FAQ
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Log Out",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color(0xFF121212).withOpacity(0.6),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 12,
                      color: Colors.white,
                    ),
                    //logout
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      width: Get.width,
                      color: Colors.red.withOpacity(0.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Logout",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.withOpacity(0.75),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    const Divider(
                      thickness: 12,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
