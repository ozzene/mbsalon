// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class ClientChatScreen extends StatefulWidget {
  const ClientChatScreen({super.key});

  @override
  State<ClientChatScreen> createState() => _ClientChatScreenState();
}

class _ClientChatScreenState extends State<ClientChatScreen> {
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
                      flex: 1,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Message",
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
                          SizedBox(
                            width: Dimensions.paddingSizeSmall,
                          ),
                          SvgPicture.asset(
                            Images.notifications,
                            width: 22,
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
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: ["", "", "", "", "", "", "", "", "", "", "", ""]
                          .asMap()
                          .entries
                          .map((e) => chatCard(
                                context,
                                title: 'Your Chat',
                              ))
                          .toList(),
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

  Widget chatCard(BuildContext context, {required String title}) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.paddingSizeExtraSmall),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: const Color(0xFF545454).withOpacity(0.25),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            Dimensions.paddingSizeDefault,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: const AssetImage(
                  Images.icPlaceholder,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    Images.icPlaceholder,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: Dimensions.paddingSizeDefault,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alena Botosh",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: const Color(0xFF252525),
                                fontWeight: FontWeight.w500,
                                fontSize: Dimensions.fontSizeDefault,
                              ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeExtraSmall,
                        ),
                        Text(
                          "Perfect, will check it",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: const Color(0xFF545454),
                                fontWeight: FontWeight.w400,
                                fontSize: Dimensions.fontSizeSmall,
                              ),
                        )
                      ],
                    ),
                    Text(
                      "08:44 PM",
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: const Color(0xFF545454),
                                fontWeight: FontWeight.w400,
                                fontSize: Dimensions.fontSizeSmall,
                              ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
