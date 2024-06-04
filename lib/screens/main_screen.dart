import 'package:flutter/material.dart';
import 'package:portfolio/pages/blog_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/portfolio_page.dart';
import 'package:portfolio/pages/project_page.dart';
import 'package:portfolio/widgets/custom_appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

// 메인페이지 스테이트 (렌더)
class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const PortfolioPage(),
    const ProjectPage(),
    const BlogPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomAppBar(onItemTapped: _onItemTapped),
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
    );
  }
}
