import 'bottom_bar_items.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/pages/mall/mall_page.dart';
import 'package:flutterapp/pages/profile/profile_page.dart';
import 'package:flutterapp/pages/home/home_page.dart';
import 'package:flutterapp/pages/group/group_page.dart';
import 'package:flutterapp/pages/subject/subject_page.dart';


List<MainBottomBarItem> items = [
	MainBottomBarItem('home', '首页'),
	MainBottomBarItem('subject', '书影音'),
	MainBottomBarItem('group', '小组'),
	MainBottomBarItem('mall', '市集'),
	MainBottomBarItem('profile', '我的')
];

List<Widget> pages = [
	HomePage(),
	SubjectPage(),
	GroupPage(),
	MallPage(),
	ProfilePage()
];