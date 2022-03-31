import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:cellove_app/presentation/chat_inner_screen/widgets/audio_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cellove_app/core/app_export.dart';

class HotPlaceList extends StatelessWidget {
  const HotPlaceList({Key? key}) : super(key: key);

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
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
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700E5,
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(12)),
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.deepPurpleA20066,
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
                        children: [
                          Text(
                            "무슈부부커피스탠드",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                25,
                              ),
                              fontFamily: 'DoHyeon-Regular',
                            ),
                          ),
                          Text(
                            "  서울 마포구 양화로3길 77-10",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.bluegray400,
                              fontSize: getFontSize(
                                20,
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/cafe_musu.JPG',
                            height: getSize(
                              100,
                            ),
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          const Gap(15),
                          Text(
                            "망원동에서 에스프레소 가장 맛있는 집..",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.bluegray400,
                              fontSize: getFontSize(
                                20,
                              ),
                              fontFamily: 'DoHyeon-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700E5,
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(12)),
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.deepPurpleA20066,
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
                        children: [
                          Text(
                            "RESTTO COFFEE",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                25,
                              ),
                            ),
                          ),
                          Text(
                            " 서울특별시 광진구 군자로6길 50-5 레스토커피",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.bluegray400,
                              fontSize: getFontSize(
                                20,
                              ),
                              fontFamily: 'DoHyeon-Regular',
                            ),
                          ),
                          Image.asset(
                            'assets/images/cafe_restto.PNG',
                            height: getSize(
                              100,
                            ),
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          const Gap(15),
                          Text(
                            "북적북적한 골목 사이로 한적한 분위기를 즐길 수 있는 감성카페",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.bluegray400,
                              fontSize: getFontSize(
                                20,
                              ),
                              fontFamily: 'DoHyeon-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
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
