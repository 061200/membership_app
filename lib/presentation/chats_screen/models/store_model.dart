import 'package:cellove_app/core/app_export.dart';
import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:flutter/material.dart';

// class NetworkHelper {
//   // NetworkHelper(this.url);
//
//   // final String url;
//
//   var url = Uri.parse('https://naengjanggo.shop/services');
//
//   Future getData() async {
//     http.Response response = await http.get(url);
//     if (response.statusCode == 200) {
//       String data = response.body;
//       print(data);
//       return jsonDecode(data);
//     } else {
//       print(response.statusCode);
//     }
//   }
// }
//
// Future<StoreModel> getData() async {
//   var url = Uri.parse('https://naengjanggo.shop/services');
//   final response = await http.get(url);
//
//   if (response.statusCode == 200) {
//     // 만약 서버가 OK 응답을 반환하면, JSON을 파싱합니다.
//     return StoreModel.fromJson(json.decode(response.body));
//   } else {
//     // 만약 응답이 OK가 아니면, 에러를 던집니다.
//     throw Exception('Failed to load post');
//   }
// }

class StoreModel {
  StoreModel({
    required this.serviceId,
    required this.department,
    required this.category,
    required this.description,
    required this.payment,
    required this.image,
    required this.title,
    required this.pinned,
    required this.muted,
    required this.archived,
    required this.name,
    required this.lastMessage,
    required this.date,
    required this.unread,
    required this.membersCount,
    required this.groupMembers,
  });

  final int? serviceId;
  final String department;
  final String category;
  final String description;
  final String payment;
  final String image;
  final String title;
  final bool pinned;
  final bool muted;
  final bool archived;
  final String name;
  final String lastMessage;
  final String date;
  final int unread;
  final String membersCount;
  final List<String> groupMembers;

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        serviceId: json["serviceId"],
        department: json["department"],
        category: json["category"],
        description: json["description"],
        payment: json["payment"],
        image: json["mainImage"],
        title: json["title"],
        pinned: true,
        muted: false,
        archived: false,
        name: "현금 및 계좌이체시 5%",
        lastMessage: '여기서 결제 가능!',
        date: '11:36',
        unread: 8934,
        membersCount: '8 936',
        groupMembers: [
          ImageConstant.imgRectangle163,
          ImageConstant.imgRectangle1631,
          ImageConstant.imgRectangle1632,
          ImageConstant.imgRectangle1633,
          ImageConstant.imgRectangle1634,
          ImageConstant.imgRectangle1635,
        ],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "title": title,
        "pinned": pinned,
        "muted": muted,
        "archived": archived,
        "name": name,
        "lastMessage": lastMessage,
        "date": date,
        "messagesCount": unread,
        "membersCount": membersCount,
        "groupMembers": List<dynamic>.from(groupMembers.map((x) => x)),
      };
}

List<Map<String, dynamic>> itemsList2 = [
  {
    'mainImage': 'assets/images/membership_img/store1.jpg',
    'title': '스시붐',
    'pinned': true,
    'muted': false,
    'archived': false,
    'name': '현금 및 계좌이체시 5% ',
    'lastMessage': '여기서 결제 가능!',
    'date': '11:36',
    'messagesCount': 20,
    'membersCount': '8 936',
    'groupMembers': [
      ImageConstant.imgRectangle163,
      ImageConstant.imgRectangle1631,
      ImageConstant.imgRectangle1632,
      ImageConstant.imgRectangle1633,
      ImageConstant.imgRectangle1634,
      ImageConstant.imgRectangle1635,
    ]
  },
  {
    'image': 'assets/images/membership_img/store2.jpg',
    'title': '미식반점',
    'pinned': true,
    'muted': false,
    'archived': true,
    'name': '10% 할인',
    'lastMessage': '여기서 결제 가능!',
    'date': '11:25',
    'messagesCount': 2,
    'membersCount': '2 144',
    'groupMembers': [
      ImageConstant.imgRectangle1636,
      ImageConstant.imgRectangle1637,
      ImageConstant.imgRectangle1638,
      ImageConstant.imgRectangle1639,
    ]
  },
];
