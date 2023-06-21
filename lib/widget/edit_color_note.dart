import 'package:flutter/material.dart';
import 'package:note/Model/note_model.dart';
import 'package:note/const/Kconst.dart';
import 'package:note/widget/color_item.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                // BlocProvider.of<NotesCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActice: currentIndex == index ? true : false,
              ),
            ),
          );
        },
      ),
    );
  }
}
