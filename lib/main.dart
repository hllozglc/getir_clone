import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getirclone/view/campaigns/viewCampaignsDetail.dart';
import 'package:getirclone/view/campaigns/viewCampaignsMain.dart';
import 'package:getirclone/view/home/viewHome.dart';
import 'package:getirclone/view/search/viewSearch.dart';
import 'package:getirclone/view/user/viewUser.dart';
import 'package:getirclone/view/viewMain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      title: 'Getir',
      initialRoute: '/',
      getPages: [
        GetPage(name: routeMain, page: () => const Main()),
        GetPage(name: routeHome, page: () => const Home()),
        GetPage(name: routeSearch, page: () => const Search()),
        GetPage(name: routeUser, page: () => const User()),
        GetPage(name: routeCampaigns, page: () => const CampaignsMain()),
        GetPage(name: routeCampaignsDetail, page: () => const CampaignsDetail()),
      ],
    );
  }
}

String get routeMain => '/';
String get routeHome => '/home';
String get routeSearch => '/search';
String get routeUser => '/user';
String get routeCampaigns => '/campaignsmain';
String get routeCampaignsDetail => '/campaignsdetail';
