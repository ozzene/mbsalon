import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';
import 'package:mbs/view/screens/admin/settings/widgets/booking/booking_history.dart';
import 'package:mbs/view/screens/admin/settings/widgets/edit_salon_details/edit_salon_details_screen.dart';
import 'package:mbs/view/screens/admin/settings/widgets/editbankdetails/edit_bank_details_screen.dart';
import 'package:mbs/view/screens/admin/settings/widgets/manageawards/manage_awards_screen.dart';
import 'package:mbs/view/screens/admin/settings/widgets/manageservices/manage_servicess_screen.dart';
import 'package:mbs/view/screens/admin/settings/widgets/managestaff/manage_staff_screen.dart';
import 'package:mbs/view/screens/admin/settings/widgets/payouts/payout_history_screen.dart';
import 'package:mbs/view/screens/admin/settings/widgets/wallet/wallet_screen.dart';
import 'package:mbs/view/widgets/custom_switch.dart';

class ClientSettingsScreen extends StatefulWidget {
  const ClientSettingsScreen({super.key});

  @override
  State<ClientSettingsScreen> createState() => _ClientSettingsScreenState();
}

class _ClientSettingsScreenState extends State<ClientSettingsScreen> {
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
                "Profile",
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
              padding: EdgeInsets.all(
                Dimensions.paddingSizeDefault,
              ),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Dimensions.radiusExtraLarge,
                      ),
                      border: Border.all(
                        width: 1,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    child: Image.asset(
                      Images.icFacial,
                      height: 24,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.paddingSizeDefault,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Eisax Eisax",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: Dimensions.fontSizeOverLarge,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).primaryColor,
                              letterSpacing: 1,
                            ),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeSmall,
                      ),
                      Text(
                        "Total Bookings : 0",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: Dimensions.fontSizeLarge,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).primaryColor,
                              letterSpacing: 1,
                            ),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeSmall,
                      ),
                      Container(
                        padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.25)),
                        child: Text(
                          "Edit Details",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).primaryColor,
                                    letterSpacing: 1,
                                  ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
                    Container(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                        vertical: Dimensions.paddingSizeDefault,
                      ),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
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
                    ),

                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const EditSalonDetailsScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: Get.width,
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeDefault,
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
                                    color: const Color(0xFF121212)
                                        .withOpacity(0.6),
                                    letterSpacing: 1,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ManageStaffScreen(),
                          ),
                        );
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: Get.width,
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeDefault,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Bookings",
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
                          ],
                        ),
                      ),
                    ),

                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditBankDetailsScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: Get.width,
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeDefault,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Addresses",
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
                          ],
                        ),
                      ),
                    ),

                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                        vertical: Dimensions.paddingSizeDefault,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Withdraw Request",
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
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ManageServicesScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeDefault,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Terms of Use",
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
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ManageAwardsScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeDefault,
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
                                    color: const Color(0xFF121212)
                                        .withOpacity(0.6),
                                    letterSpacing: 1,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WalletScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeDefault,
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
                                    color: const Color(0xFF121212)
                                        .withOpacity(0.6),
                                    letterSpacing: 1,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const Divider(
                      thickness: 4,
                      color: Colors.white,
                    ),

                    Container(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                      ),
                      height: 50,
                      color: Colors.red.withOpacity(0.3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Logout",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeDefault,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.withOpacity(0.5),
                                  letterSpacing: 1,
                                ),
                          ),
                        ],
                      ),
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
