import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_button.dart';

class CustomAppBar extends StatelessWidget {
  final void Function(int) onItemTapped;

  const CustomAppBar({super.key, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      // color: Theme.of(context).colorScheme.primary,
      color: Colors.blue,
      child: Row(
        children: [
          homeNav(),
          const Spacer(),
          NavButton(
            label: '포트폴리오',
            onPressed: () {
              onItemTapped(1);
            },
          ),
          const SizedBox(width: 20.0),
          NavButton(
            label: '프로젝트',
            onPressed: () {
              onItemTapped(2);
            },
          ),
          const SizedBox(width: 20.0),
          NavButton(
            label: '블로그',
            onPressed: () {
              onItemTapped(3);
            },
          ),
        ],
      ),
    );
  }

  TextButton homeNav() {
    return TextButton(
      onPressed: () {
        onItemTapped(0); // CustomAppBar에서 onItemTapped 콜백 함수 호출
      },
      child: const Text(
        '홈',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
