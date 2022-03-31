import 'package:cellove_app/core/app_export.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:flutter/material.dart';

// class Cellub {
//   final int id;
//   final String title;
//   final String description;
//   final String image;
//
//   Cellub(
//       {required this.id,
//       required this.title,
//       required this.description,
//       required this.image});
//
//   factory Cellub.fromJson(Map<String, dynamic> json) {
//     return Cellub(
//       id: json['id'],
//       title: json['title'],
//       description: json['description'],
//       image: json['image'],
//     );
//   }
// }
//
// Future<Cellub> fetchPost() async {
//   final response = await http.get('https://naengjanggo.shop/celub/search');
//
//   if (response.statusCode == 200) {
//     // 만약 서버가 OK 응답을 반환하면, JSON을 파싱합니다.
//     return Cellub.fromJson(json.decode(response.body));
//   } else {
//     // 만약 응답이 OK가 아니면, 에러를 던집니다.
//     throw Exception('Failed to load post');
//   }
// }

class ChatModel {
  ChatModel({
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

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        image: json["image"],
        title: json["title"],
        pinned: json["pinned"],
        muted: json["muted"],
        archived: json["archived"],
        name: json["name"],
        lastMessage: json["lastMessage"],
        date: json["date"],
        unread: json["messagesCount"],
        membersCount: json["membersCount"],
        groupMembers: List<String>.from(json["groupMembers"].map((x) => x)),
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

List<Map<String, dynamic>> itemsList = [
  {
    'image': 'assets/images/celeb_img/dasha_kim.jpg',
    'title': 'Dasha Kim',
    'pinned': true,
    'muted': false,
    'archived': false,
    'name': 'Youtuber',
    'lastMessage': 'I posted a new video on YouTub...',
    'date': '11:36',
    'messagesCount': 2,
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
    'image': 'assets/images/celeb_img/forever_young.jpg',
    'title': '인영 forever young',
    'pinned': false,
    'muted': false,
    'archived': false,
    'name': 'Youtuber',
    'lastMessage': '여행을 사랑하는 유튜버입니다. 혼자 ...',
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
