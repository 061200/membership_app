import 'package:cellove_app/core/app_export.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:flutter/material.dart';

class MenuList {
  MenuList(
    this.menuId,
    this.menu,
    this.price,
  );

  final int menuId;
  final String menu;
  final int price;

  factory MenuList.fromJson(dynamic json) {
    return MenuList(
        json['menuId'] as int, json['menu'] as String, json['price'] as int);
  }
}

class StoreDetail {
  StoreDetail({
    required this.serviceId,
    required this.title,
    required this.address,
    required this.phoneNumber,
    required this.description,
    required this.mainImage,
    required this.menuList,
  });

  final int serviceId;
  final String title;
  final String address;
  final String phoneNumber;
  final String description;
  final String mainImage;
  final List<MenuList> menuList;

  factory StoreDetail.fromJson(Map<String, dynamic> json) {
    var menuObjsJson = json['menuList'] as List;
    List<MenuList> _menus =
        menuObjsJson.map((tagJson) => MenuList.fromJson(tagJson)).toList();

    return StoreDetail(
      serviceId: json["serviceId"],
      title: json["title"],
      address: json["address"],
      phoneNumber: json["phoneNumber"],
      description: json["description"],
      mainImage: json["mainImage"],
      menuList: _menus,
    );
  }

  Map<String, dynamic> toJson() => {
        "serviceId": serviceId,
        "title": title,
        "address": address,
        "phoneNumber": phoneNumber,
        "description": description,
        "mainImage": mainImage,
        "menuList": List<dynamic>.from(menuList.map((x) => x)),
      };
}

Map<String, dynamic> itemsList = {
  "serviceId": 1,
  "title": "미식반점",
  "address": "서울 광진구 군자로 70 1층",
  "phoneNumber": "0507-1492-2020",
  "description": "소프트웨어융합대학 재학생 10% 할인",
  "mainImage":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSieWskP_4RSSTYG5dkBUjNHWGtnxA3hzhmmw&usqp=CAU",
  "menuList": [
    {"menuId": 1, "menu": "탕후루탕수육(小)", "price": 15000},
    {"menuId": 2, "menu": "탕후루탕수육(中)", "price": 20000},
    {"menuId": 3, "menu": "사천탕후루탕수육(小)", "price": 15000},
    {"menuId": 4, "menu": "사천탕후루탕수육(中)", "price": 20000},
    {"menuId": 5, "menu": "미식짜장면(1인분)", "price": 6000},
    {"menuId": 6, "menu": "미식짜장면(곱배기)", "price": 7000},
    {"menuId": 7, "menu": "해물짬뽕(1인분)", "price": 8000},
    {"menuId": 8, "menu": "해물짬뽕(곱배기)", "price": 9000},
    {"menuId": 9, "menu": "미식볶음밥(1인분)", "price": 7500},
    {"menuId": 10, "menu": "미식볶음밥(곱배기)", "price": 8500},
    {"menuId": 11, "menu": "해물볶음짜장(1인분)", "price": 7000},
    {"menuId": 12, "menu": "해물볶음짜장(곱배기)", "price": 8000}
  ]
};
