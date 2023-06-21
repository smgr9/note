import 'package:flutter/material.dart';
import 'package:note/widget/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Color(0xff1F005D),
      Color(0xffFF47DA),
      Color(0xffFF87AB),
      Color(0xffFCC8C2),
      Color(0xffF5ECCD),
    ];
    return SizedBox(
      height: 38 * 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActice: currentIndex == index ? true : false,
              ),
            ),
          );
        },
      ),
    );
  }
}
