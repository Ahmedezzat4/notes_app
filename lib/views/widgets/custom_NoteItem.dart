import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteColor});
  final noteColor;
  @override
  Widget build(Object context) {
    return Container(
      decoration: BoxDecoration(
        color: noteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
              ),
              trailing: IconButton(
                padding: EdgeInsets.only(bottom: 50),
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                ),
                color: Colors.black,
                iconSize: 26,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Text(
                  'Build your career with hard work',
                  style: TextStyle(
                    color: Colors.black.withAlpha((255 * .5).toInt()),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, top: 14),
              child: Text(
                'August 9, 2025',
                style: TextStyle(
                    color: Colors.black.withAlpha((255 * .5).toInt()),
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
