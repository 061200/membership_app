import 'package:cellove_app/presentation/chats_screen/chats_screen.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cellove_app/core/app_export.dart';
import 'models/chat_model.dart';
import 'widgets/chats_item_widget.dart';
import 'package:cellove_app/presentation/chat_inner_screen/chat_inner_screen.dart';
import 'package:cellove_app/controller/count_controller.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: ColorConstant.fromHex('#fbe1d5')),
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         begin: Alignment.centerLeft,
        //         end: Alignment.centerRight,
        //         colors: [
        //       ColorConstant.fromHex('#B4E197'),
        //       ColorConstant.fromHex('#E9EFC0'),
        //     ])),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ChatsScreen())),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    71,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(110, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/membership_img/main_logo_small.png',
                        height: getSize(
                          100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(12),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: ColorConstant.fromHex('#ed8756'),
                borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.fromHex('#ff9248'),
                    spreadRadius: getHorizontalSize(
                      1,
                    ),
                    blurRadius: getHorizontalSize(
                      1,
                    ),
                    offset: const Offset(
                      0,
                      1,
                    ),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Gap(20),
                  Text(
                    "세종대 포털 로그인",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getFontSize(
                        24,
                      ),
                      fontFamily: 'Gugi-Regular',
                    ),
                  ),
                  const Gap(20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '학번',
                      hintStyle: TextStyle(
                        fontSize: getFontSize(
                          16.0,
                        ),
                        color: ColorConstant.bluegray400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8,
                          ),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16,
                          ),
                          right: getHorizontalSize(
                            10,
                          ),
                        ),
                      ),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: getSize(
                          20,
                        ),
                        minHeight: getSize(
                          20,
                        ),
                      ),
                      filled: true,
                      fillColor: ColorConstant.whiteA700,
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        top: getVerticalSize(
                          11.375,
                        ),
                        bottom: getVerticalSize(
                          11.375,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: ColorConstant.bluegray400,
                      fontSize: getFontSize(
                        16.0,
                      ),
                      fontFamily: 'General Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(20),
                  TextFormField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: getFontSize(
                          16.0,
                        ),
                        color: ColorConstant.bluegray400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8,
                          ),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16,
                          ),
                          right: getHorizontalSize(
                            10,
                          ),
                        ),
                      ),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: getSize(
                          20,
                        ),
                        minHeight: getSize(
                          20,
                        ),
                      ),
                      filled: true,
                      fillColor: ColorConstant.whiteA700,
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        top: getVerticalSize(
                          11.375,
                        ),
                        bottom: getVerticalSize(
                          11.375,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: ColorConstant.bluegray400,
                      fontSize: getFontSize(
                        16.0,
                      ),
                      fontFamily: 'General Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(10),
                          bottom: getVerticalSize(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  1,
                                ),
                              ),
                              child: InkWell(
                                onTap: () => {
                                  controller.login(),
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const ChatsScreen(),
                                      ))
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: getHorizontalSize(
                                    185,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      30,
                                    ),
                                    top: getVerticalSize(
                                      7,
                                    ),
                                    right: getHorizontalSize(
                                      30,
                                    ),
                                    bottom: getVerticalSize(
                                      8,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        50,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    '로그인',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
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
            const Gap(50),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 5,
        child: Container(
          height: getVerticalSize(
            83,
          ),
          width: size.width,
          color: ColorConstant.whiteA700E5,
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  24,
                ),
                bottom: getVerticalSize(
                  24,
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ImageConstant.imgIcon,
                    ImageConstant.imgIcon1,
                    ImageConstant.imgIcon2,
                    ImageConstant.imgIcon3,
                  ]
                      .map<Widget>((icon) => SizedBox(
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            child: SvgPicture.asset(
                              icon,
                              fit: BoxFit.fill,
                            ),
                          ))
                      .toList()),
            ),
          ),
        ),
      ),
    );
  }
}
