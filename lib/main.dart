import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom App Bar',
      initialRoute: '/',
      routes: {
        '/home': (context) => const HomePage(),
      },
      home: const Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: Center(
                child: Text('Content Area'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: Colors.blue,
      child: Row(
        children: [
          const Text(
            'Logo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: const Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          TextButton(
            onPressed: () {
              // 네비게이션 버튼이 눌렸을 때 실행되는 함수
            },
            child: const Text(
              'About',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          TextButton(
            onPressed: () {
              // 네비게이션 버튼이 눌렸을 때 실행되는 함수
            },
            child: const Text(
              'Contact',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("data"),
      ],
    );
  }
}



// import 'package:flutter/material.dart';

// void main() {
//   runApp(const PortfolioApp());
// }

// class PortfolioApp extends StatelessWidget {
//   const PortfolioApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Portfolio',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MainPage(),
//     );
//   }
// }

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   static final List<Widget> _widgetOptions = <Widget>[
//     const Text('내 소개 페이지'),
//     const Text('프로젝트 소개 페이지'),
//     const Text('블로그 페이지'),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Portfolio'),
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(60.0), // 네비게이션 바의 높이 설정
//           child: BottomNavigationBar(
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person),
//                 label: '내 소개',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.work),
//                 label: '프로젝트',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.book),
//                 label: '블로그',
//               ),
//             ],
//             currentIndex: _selectedIndex,
//             onTap: _onItemTapped,
//           ),
//         ),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//     );
//   }
// }
