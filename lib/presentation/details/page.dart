import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cellove_app/core/app_export.dart';
import 'package:cellove_app/presentation/details/widgets/action.dart';
import 'package:cellove_app/presentation/details/widgets/category.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:cellove_app/presentation/chats_screen/models/store_detail.dart';

// Future<StoreDetail> getData(value) async {
//   const urlPath = 'https://naengjanggo.shop/services';
//   final url = Uri.parse(urlPath);
//
//   final response = await http.get(url);
//
//   print("헤헤");
//   print(response.body);
//   if (response.statusCode == 200) {
//     print(response.body);
//     // print(StoreDetail.fromJson(jsonDecode(response.body)));
//     return StoreDetail.fromJson(jsonDecode(response.body));
//   } else {
//     // 만약 응답이 OK가 아니면, 에러를 던집니다.
//     throw Exception('Failed to load post');
//   }
// }

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late Future<StoreDetail> storeDetail;

  @override
  void initState() {
    super.initState();
    // storeDetail = getData(0);
  }

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments;

    // storeDetail = getData(item);

    return Scaffold(
      backgroundColor: ColorConstant.fromHex('#B4E197'),
      body: Stack(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                'assets/images/membership_img/sushi_boom.jpg',
                height: getSize(
                  375,
                ),
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    56,
                  ),
                ),
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20,
                  ),
                  right: getHorizontalSize(
                    20,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        CupertinoIcons.chevron_left,
                        color: ColorConstant.whiteA700,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      height: getSize(22),
                      width: getSize(22),
                      child: SvgPicture.asset(
                        ImageConstant.imgIconshare,
                        color: Colors.white,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: getSize(
                500,
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: const EdgeInsets.symmetric(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                  getHorizontalSize(16),
                ))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "스시붐",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                32,
                              ),
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: getSize(
                                      14,
                                    ),
                                    width: getSize(
                                      14,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgIconuser,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        2,
                                      ),
                                    ),
                                    child: Text(
                                      "28.6",
                                      overflow: TextOverflow.ellipsis,
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
                                ],
                              ),
                              const Gap(10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    height: getSize(
                                      14,
                                    ),
                                    width: getSize(
                                      14,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgIconeye,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        2,
                                      ),
                                    ),
                                    child: Text(
                                      "2 482",
                                      overflow: TextOverflow.ellipsis,
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
                                ],
                              ),
                            ],
                          ),
                          const Gap(10),
                          Text(
                            "                       [소프트웨어융합대학]\n                  현금 및 계좌이체시 5% 할인 \n\n서울특별시 광진구 군자동 광나루로17길 14-5",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                        "❤ 추천 할인메뉴 ❤",
                        style: TextStyle(
                          color: ColorConstant.bluegray400,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'General Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(left: 15),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                        {'icon': '🍣', 'text': '따뜻한 연어초밥', 'price': '5000원'},
                        {'icon': '🌈', 'text': '레인보우롤', 'price': '5000원'},
                        {'icon': '🐟', 'text': '회 덮밥', 'price': '5000원'},
                        {'icon': '🍣', 'text': '따뜻한 연어초밥2', 'price': '5000원'},
                        {'icon': '🌈', 'text': '레인보우롤2', 'price': '5000원'},
                        {'icon': '🐟', 'text': '회 덮밥2', 'price': '5000원'}
                      ].map<Widget>((e) => Category(e)).toList()),
                    ),
                    const Gap(15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                              ColorConstant.fromHex('#fbe1d5'),
                              ColorConstant.fromHex('#fbe1d5'),
                            ])),
                        child: const ActionList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
