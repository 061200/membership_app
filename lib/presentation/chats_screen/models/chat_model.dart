import 'package:cellove_app/core/app_export.dart';
import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:flutter/material.dart';

class ChatModel {
  ChatModel({
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

  final int serviceId;
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

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
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
        name: "",
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
        "serviceId": serviceId,
        "department": department,
        "category": category,
        "description": description,
        "payment": payment,
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
    "serviceId": 1,
    "department": "소프트웨어융합대학",
    "category": "음식",
    "description": "소프트웨어융합대학 재학생 10% 할인",
    "payment": "Y",
    "mainImage":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSieWskP_4RSSTYG5dkBUjNHWGtnxA3hzhmmw&usqp=CAU",
    'title': '미식반점',
  },
  {
    "serviceId": 2,
    "department": "소프트웨어융합대학",
    "category": "음식",
    "title": "샐러드쿡",
    "description":
        "샐러드 단품 구매 시 500원 할인\n샐러드+음료 세트 구매 시 1,000원 할인\n배달 앱을 통한 주문 시 가게 요청사항에 소속 학과 기재 시 아몬드 브리즈 증정",
    "mainImage":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSieWskP_4RSSTYG5dkBUjNHWGtnxA3hzhmmw&usqp=CAU",
    "payment": "Y"
  },
  {
    "serviceId": 3,
    "department": "소프트웨어융합대학",
    "category": "음식",
    "title": "스시붐",
    "description": "현금 및 계좌이체 시 5% 할인",
    "mainImage":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSieWskP_4RSSTYG5dkBUjNHWGtnxA3hzhmmw&usqp=CAU",
    "payment": "Y"
  },
  {
    "serviceId": 5,
    "department": "소프트웨어융합대학",
    "category": "음식",
    "title": "지그재그",
    "description": "10만원 이상 현금 및 계좌이체 시 10% 할인",
    "mainImage":
        "https://modo-phinf.pstatic.net/20151030_102/1446141680248CgjuG_JPEG/mosaNT9y8v.jpeg?type=f320_320",
    "payment": "Y"
  },
  {
    "serviceId": 6,
    "department": "소프트웨어융합대학",
    "category": "음식",
    "title": "토스트카페마리 세종대점",
    "description":
        "※ 혜택 중 택 1\n• 현금 및 계좌이체 시 5% 할인\n• 1만원 이상 결제 시 5% 할인\n• 2만원 이상 결제 시 8% 할인\n• 3만원 이상 결제 시 배송비 무료",
    "mainImage":
        "https://cdn.econovill.com/news/photo/202104/526908_434087_102.jpg",
    "payment": "Y"
  },
  {
    "serviceId": 8,
    "department": "소프트웨어융합대학",
    "category": "음식",
    "title": "리얼후라이",
    "description": "치킨 메뉴 주문 시 2,000원 할인\n8만원 이상 단체 주문 시 10% 할인 (매장 문의)",
    "mainImage":
        "https://d12zq4w4guyljn.cloudfront.net/300_300_20200111084801_menu1_yWq7n26CqVPd.jpg",
    "payment": "Y"
  },
  {
    "serviceId": 7,
    "department": "소프트웨어융합대학",
    "category": "카페",
    "title": "히읗히읗",
    "description": "모든 음료 주문 시 쿠키 증정",
    "mainImage":
        "https://mblogthumb-phinf.pstatic.net/MjAyMDA4MThfMTQ0/MDAxNTk3NzU4NDg4NDQ2.ZKxhhm2jhGCFfPxwBv-wW9wfAFGOwbpP30OC1m15fLIg.85r_bZrCsqOw2btyXtGfoeFbUi1CHeeBayX3PFk4DJYg.JPEG.yunhoi3834/SE-c1f5e997-d9f0-49c3-8e29-6d3a2f97a027.jpg?type=w800",
    "payment": "Y"
  },
  {
    "serviceId": 4,
    "department": "소프트웨어융합대학",
    "category": "편의시설",
    "title": "이철헤어커커 세종대점",
    "description": "컷 시술 시 현금 및 계좌이체 2,000원 할인\n펌, 염색 20% 할인\n추가 할인 시 샵 문의",
    "mainImage":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXmqsvkWJjZRdYtajWRM_a1hmmTTV7TSUupA&usqp=CAU",
    "payment": "N"
  }
];
