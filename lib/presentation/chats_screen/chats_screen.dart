import 'dart:io';

import 'package:cellove_app/presentation/chats_screen/register_screen.dart';
// import 'package:cellove_app/presentation/chats_screen/widgets/tabbar_demo.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cellove_app/core/app_export.dart';
import 'models/chat_model.dart';
import 'models/store_model.dart';
import 'widgets/chats_item_widget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:cellove_app/core/SimplifiedUri.dart';
import 'package:cellove_app/controller/count_controller.dart';
import 'package:get/get.dart';

/*
Future<StoreModel> getData() async {
  var url = Uri.parse('https://naengjanggo.shop/services');

  // final queryParameters = {"departmentId": 0, "categoryId": 0};

// final uri =
//     Uri.http('https://naengjanggo.shop', '/services', queryParameters);
// final headers = {HttpHeaders.contentTypeHeader: 'application/json'};

  final params = {"departmentId": 0, "categoryId": 0};
  final departmentId = 0;
  final categoryId = 0;
  final url_address = 'https://naengjanggo.shop/services' +
      '/' +
      departmentId.toString() +
      '/' +
      categoryId.toString();
  // final Uri uri =
  //     SimplifiedUri.uri(url_address);
  final headers = {HttpHeaders.contentTypeHeader: 'application/json'};
  final response = await http.get(url);

  print("헤헤");
  print(response.body.toString());

  if (response.statusCode == 200) {
    print(response.body);
    return StoreModel.fromJson(json.decode(response.body));
  } else {
    // 만약 응답이 OK가 아니면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}
*/
// const API_url = 'https://naengjanggo.shop';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  String _value = '1';
  int isLogin = 0;
  // late Future<StoreModel> store_list;
  final controller = Get.put(LoginController());

  final List<Map<String, dynamic>> mainBoxContent = [
    {
      'id': 0,
      'title': "제휴된 업체 총 42곳 !",
      'description': '로그인 후, 혜택을 받아보세요',
      'trailing': '로그인'
    },
    {
      'id': 1,
      'title': "안녕하세요, 도하님!",
      'description': '소프트웨어융합대학 소프트웨어학과 4학년',
      'trailing': '마이페이지'
    }
  ];

  @override
  void initState() {
    super.initState();
    // store_list = getData();
    // print(store_list);
    isLogin = controller.loginId;
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: ColorConstant.fromHex('#fbe1d5')),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ChatsScreen())),
              child: Container(
                width: 500,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    71,
                  ),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const RegisterScreen())),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: getSize(50),
                        ),
                        child: SvgPicture.asset(
                          "assets/images/membership_img/menu_icon.svg",
                          width: getSize(
                            40,
                          ),
                          fit: BoxFit.fill,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(12),
            // SizedBox(
            //   height: getVerticalSize(
            //     40,
            //   ),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       hintText: 'search the store',
            //       hintStyle: TextStyle(
            //         fontSize: getFontSize(
            //           16.0,
            //         ),
            //         color: ColorConstant.bluegray400,
            //       ),
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(
            //           getHorizontalSize(
            //             8,
            //           ),
            //         ),
            //         borderSide: BorderSide.none,
            //       ),
            //       prefixIcon: Padding(
            //         padding: EdgeInsets.only(
            //           left: getHorizontalSize(
            //             16,
            //           ),
            //           right: getHorizontalSize(
            //             10,
            //           ),
            //         ),
            //         child: SizedBox(
            //           height: getSize(
            //             20,
            //           ),
            //           width: getSize(
            //             20,
            //           ),
            //           child: SvgPicture.asset(
            //             ImageConstant.imgIconSearch,
            //             fit: BoxFit.contain,
            //           ),
            //         ),
            //       ),
            //       prefixIconConstraints: BoxConstraints(
            //         minWidth: getSize(
            //           20,
            //         ),
            //         minHeight: getSize(
            //           20,
            //         ),
            //       ),
            //       filled: true,
            //       fillColor: ColorConstant.whiteA700,
            //       isDense: true,
            //       contentPadding: EdgeInsets.only(
            //         top: getVerticalSize(
            //           11.375,
            //         ),
            //         bottom: getVerticalSize(
            //           11.375,
            //         ),
            //       ),
            //     ),
            //     style: TextStyle(
            //       color: ColorConstant.bluegray400,
            //       fontSize: getFontSize(
            //         16.0,
            //       ),
            //       fontFamily: 'General Sans',
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(20),
                      bottom: getVerticalSize(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: getHorizontalSize(
                              10,
                            ),
                          ),
                          child: Text(
                            mainBoxContent[isLogin]['title'],
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                22,
                              ),
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              2,
                            ),
                            right: getHorizontalSize(
                              10,
                            ),
                          ),
                          child: Text(
                            mainBoxContent[isLogin]['description'],
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              13,
                            ),
                          ),
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const RegisterScreen())),
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
                                mainBoxContent[isLogin]['trailing'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.deepOrangeAccent,
                                  fontSize: getFontSize(
                                    13,
                                  ),
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(
                      "assets/images/membership_img/sejong_logo.svg",
                      height: 200,
                      width: 200,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: DropdownButton(
                value: _value,
                items: const [
                  DropdownMenuItem(
                    child: Text("소프트웨어융합대학",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black38,
                          fontFamily: 'Gugi-Regular',
                        )),
                    value: '1',
                  ),
                  DropdownMenuItem(
                    child: Text("Second Item",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black38,
                          fontFamily: 'Gugi-Regular',
                        )),
                    value: '2',
                  )
                ],
                onChanged: (value) {
                  setState(() {
                    _value = value.toString();
                  });
                },
                hint: const Text("Select item"),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              children: <Widget>[
                // SizedBox(height: 10.0),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1, //리스트 개수
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          SizedBox(
                            height: 50.0,
                            // color: ColorConstant.fromHex('#f2a580'),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                // Icon(Icons.format_list_numbered,
                                //     color: Colors.white),
                                Padding(padding: EdgeInsets.only(right: 8.0)),
                                Text('음식점 제휴리스트',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black38,
                                      fontFamily: 'Gugi-Regular',
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 150.0,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: itemsList2.length,
                              itemBuilder: (context, index) {
                                final item =
                                    StoreModel.fromJson(itemsList2[index]);
                                return Card(
                                  elevation: 5.0,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 3,
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    alignment: Alignment.center,
                                    child: Text(item.title),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 20.0),
                        ],
                      );
                    },
                  ),
                ),
                Column(children: [
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 4.0,
                            crossAxisSpacing: 8.0,
                            childAspectRatio: 1.0),
                    itemCount: itemsList.length,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) {
                      final item = ChatModel.fromJson(itemsList[index]);
                      return ChatsItemWidget(item);
                    },
                  ),
                ]),
              ],
            ),
            // ListView.builder(
            //   padding: const EdgeInsets.only(top: 10, bottom: 10),
            //   physics: const NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   itemCount: itemsList.length,
            //   itemBuilder: (context, index) {
            //     final item = ChatModel.fromJson(itemsList[index]);
            //     return ChatsItemWidget(item);
            //   },
            // ),
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
