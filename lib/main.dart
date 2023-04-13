import 'package:flutter/material.dart';
import './pages/news_overview_page.dart';
import './pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    NewsOverviewPage(),
    ProfilePage(),
    /* add more pages here */
  ];

  void _setCurrentPageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StraksNL',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primarySwatch: Colors.red),
      home: Scaffold(
        body: _pages[_currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: _currentPageIndex,
          onTap: _setCurrentPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.newspaper,
              ),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
