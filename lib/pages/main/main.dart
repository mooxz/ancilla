import 'package:flutter/material.dart';
import 'package:flutterapp/pages/main/init_main_content.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
	int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    body: IndexedStack(
		    index: _currentIndex,
		    children: pages,
	    ),
	    bottomNavigationBar: BottomNavigationBar(
		    unselectedFontSize: 14,
		    selectedItemColor: Colors.green,
		    currentIndex: _currentIndex,
		    type: BottomNavigationBarType.fixed,
		    items: items,
		    onTap: (index) {
					setState(() {
					  _currentIndex = index;
					});
		    },
	    ),
    );
  }
}
