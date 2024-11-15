import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class ClientProfileScreen extends StatefulWidget {
  const ClientProfileScreen({super.key});

  @override
  State<ClientProfileScreen> createState() => _ClientProfileScreenState();
}

class _ClientProfileScreenState extends State<ClientProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFf9f9ff),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.defaultSpacing),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Profile",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: Dimensions.fontSizeLarge,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF252525),
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.paddingSizeDefault),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(
                    Dimensions.paddingSizeDefault,
                  ),
                  child: Column(
                    children: [
                      profileCard(
                        context,
                        icon: Images.profile,
                        title: 'Your Profile',
                      ),
                      profileCard(
                        context,
                        icon: Images.card,
                        title: 'Payment Methods',
                      ),
                      profileCard(
                        context,
                        icon: Images.favorite,
                        title: 'Saved',
                      ),
                      profileCard(
                        context,
                        icon: Images.settings,
                        title: 'Settings',
                      ),
                      profileCard(
                        context,
                        icon: Images.refresh,
                        title: 'Transactions',
                      ),
                      profileCard(
                        context,
                        icon: Images.help,
                        title: 'Help Center',
                      ),
                      profileCard(
                        context,
                        icon: Images.lock,
                        title: 'Privacy Policy',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileCard(BuildContext context,
      {required String icon, required String title}) {
    return Padding(
      padding:  EdgeInsets.only(bottom: Dimensions.paddingSizeExtraSmall),
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
            Dimensions.paddingSizeDefault,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    icon,
                    height: 24,
                    color: const Color(0xFF525252),
                  ),
                  SizedBox(
                    width: Dimensions.paddingSizeSmall,
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color(0xFF525252),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
              SvgPicture.asset(
                Images.arrowforward,
                height: 24,
                color: const Color(0xFF525252),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
