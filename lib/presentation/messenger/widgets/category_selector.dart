import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Learners', 'Mentors'];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        color: Palette.backgroundColor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45.0,
                      vertical: 30.0,
                    ),
                    child: Text(categories[index],
                        style: TextStyle(
                            color: index == selectedIndex
                                ? Palette.primaryColor
                                : Colors.grey,
                            fontFamily: 'Martel Sans',
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1,
                            fontSize: 24.0))));
          },
        ));
  }
}
