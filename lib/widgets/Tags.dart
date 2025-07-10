import 'package:flutter/widgets.dart';
import 'package:travelapp/widgets/Tag.dart';

class Tags extends StatefulWidget {
  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late List<Tag> tags;

  @override
  void initState() {
    super.initState();

    tags = [
      Tag(id: 1, tag: "#Health", active: true, makeActive: makeActive),
      Tag(id: 2, tag: "#Music", active: false, makeActive: makeActive),
      Tag(id: 3, tag: "#Technology", active: false, makeActive: makeActive),
      Tag(id: 4, tag: "#Sports", active: false, makeActive: makeActive),
    ];
  }

  void makeActive(int id) {
  setState(() {
    tags.forEach((tag) {
      if (tag.id == id) {
        tag.active = true;
      } else {
        tag.active = false;
      }
    });
  });
}

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: tags,
            ),
          );
  }
}