import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/Add_note_cubit/cubit/add_note_cubit.dart';

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
              radius: 26.5,
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

  List<Color> colors = const [
    Color.fromARGB(255, 247, 172, 197),
    Color.fromARGB(255, 236, 193, 208),
    Color.fromARGB(255, 252, 221, 126),
    Color.fromARGB(255, 243, 227, 180),
    Color.fromARGB(255, 154, 238, 197),
    Color.fromARGB(255, 195, 241, 219),
    Color.fromARGB(255, 144, 219, 230),
    Color.fromARGB(255, 185, 233, 240),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
