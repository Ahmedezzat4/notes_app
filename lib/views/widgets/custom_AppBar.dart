import 'package:flutter/material.dart';

import 'custom_searchBotton.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        Spacer(),
        CustomSearchbotton()
      ],
    );
  }
}
