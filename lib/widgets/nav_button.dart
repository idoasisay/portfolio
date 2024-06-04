import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  // VoidCallback?
  final VoidCallback onPressed;
  final String label;

  const NavButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed(); // CustomAppBar에서 onItemTapped 콜백 함수 호출
      },
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
