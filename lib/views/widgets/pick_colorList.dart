import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/Add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/constans.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              radius: 27.5,
              backgroundColor: Colors.red,
              child: CircleAvatar(backgroundColor: color, radius: 25),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(3.0),

            child: CircleAvatar(backgroundColor: color, radius: 25),
          );
  }
}

class PickColorlist extends StatefulWidget {
  const PickColorlist({super.key});

  @override
  State<PickColorlist> createState() => _PickColorlistState();
}

class _PickColorlistState extends State<PickColorlist> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
