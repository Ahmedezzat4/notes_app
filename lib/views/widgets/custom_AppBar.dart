import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28, color: Colors.white)),
        Spacer(),
        CustomIcon(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
