import 'package:flutter/material.dart';
import 'package:note/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {required this.title, required this.iconName, this.onPressed});
  final String title;
  final IconData iconName;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title",
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomSearchIcon(
          icon: iconName,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
