import 'package:cellove_app/presentation/chats_screen/register_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:cellove_app/presentation/chat_inner_screen/widgets/audio_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cellove_app/core/app_export.dart';
import 'googleMap.dart';

import 'package:cellove_app/presentation/details/widgets/action.dart';
import 'widgets/chat_inner_item_widget.dart';

class ChatInnerScreen extends StatelessWidget {
  const ChatInnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              ColorConstant.fromHex('#EDE7FF'),
              ColorConstant.fromHex('#E5EBFF'),
            ])),
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(
                top: getVerticalSize(100),
                left: getSize(15),
                right: getSize(15),
              ),
            ),
            MapSample(),
            Container(
              height: 85,
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700E5,
              ),
              child: Container(
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    40,
                  ),
                  bottom: getVerticalSize(
                    4,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getHorizontalSize(
                      14,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          CupertinoIcons.chevron_left,
                          color: ColorConstant.deepPurpleA200,
                          size: 20,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Dasha Kim",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  76,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    8.5,
                                  ),
                                  top: getVerticalSize(
                                    3,
                                  ),
                                  right: getHorizontalSize(
                                    8.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: getHorizontalSize(
                                        25,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                2.5,
                                              ),
                                              bottom: getVerticalSize(
                                                2.5,
                                              ),
                                            ),
                                            child: SizedBox(
                                              height: getSize(
                                                12,
                                              ),
                                              width: getSize(
                                                12,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgIconuser1,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                2,
                                              ),
                                            ),
                                            child: Text(
                                              "12",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray400,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'General Sans',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: getHorizontalSize(
                                        43,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                2.5,
                                              ),
                                              bottom: getVerticalSize(
                                                2.5,
                                              ),
                                            ),
                                            child: SizedBox(
                                              height: getSize(
                                                12,
                                              ),
                                              width: getSize(
                                                12,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgIconeye2,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                2,
                                              ),
                                            ),
                                            child: Text(
                                              "3 827",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray400,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'General Sans',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                85.5,
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/celeb_img/dasha_kim.jpg',
                              height: getSize(
                                40,
                              ),
                              width: getSize(
                                40,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700E5,
                ),
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              24,
                            ),
                            bottom: getVerticalSize(
                              8,
                            ),
                          ),
                          child: SizedBox(
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const RegisterTheme())),
                              child: SvgPicture.asset(
                                ImageConstant.imgIconplus,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              16,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              40,
                            ),
                            width: getHorizontalSize(
                              263,
                            ),
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                30,
                              ),
                              top: getVerticalSize(
                                10,
                              ),
                              right: getHorizontalSize(
                                30,
                              ),
                              bottom: getVerticalSize(
                                10,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray50,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  8,
                                ),
                              ),
                            ),
                            child: Text(
                              'Type something...',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.bluegray400,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'General Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              24,
                            ),
                            bottom: getVerticalSize(
                              8,
                            ),
                          ),
                          child: SizedBox(
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgIconmicro,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const ActionList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
