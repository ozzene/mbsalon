// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MultiSelectWidget extends StatefulWidget {
  final List<String> selectionWidgetList;
  final List<String> selectedWidgetList;
  final ValueChanged<List<String>> onSelectionChanged;
  final int maximumSelectionSize;

  const MultiSelectWidget(
      {super.key, required this.selectionWidgetList,
      required this.selectedWidgetList,
      required this.onSelectionChanged,
      required this.maximumSelectionSize});

  @override
  _MultiSelectWidgetState createState() => _MultiSelectWidgetState();
}

class _MultiSelectWidgetState extends State<MultiSelectWidget> {
  int tappedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: widget.selectionWidgetList.asMap().entries.map(
        (entry) {
          int index = entry.key;
          String hobby = entry.value;
          bool isSelected = widget.selectedWidgetList.contains(hobby);

          return GestureDetector(
            onTap: () {
              setState(() {
                tappedIndex = index;
              });
              Future.delayed(const Duration(milliseconds: 10), () {
                setState(() {
                  tappedIndex = -1;
                });
              });

              if (!widget.selectedWidgetList.contains(hobby)) {
                if (widget.selectedWidgetList.length <
                    widget.maximumSelectionSize) {
                  widget.selectedWidgetList.add(hobby);
                }
              } else {
                widget.selectedWidgetList
                    .removeWhere((element) => element == hobby);
              }
              widget.onSelectionChanged(widget.selectedWidgetList);
            },
            child: AnimatedContainer(
              width: 80, 
              height: 40,
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.only(
                right: 5,
                top: 4,
                bottom: 4,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).disabledColor,
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: tappedIndex == index
                        ? Theme.of(context).shadowColor
                        : Colors.transparent,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Center(
                    child: Text(
                      hobby,
                      style: TextStyle(
                        color: isSelected
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}

//how to use it 

// MultiSelectWidget(
//           selectionWidgetList: selectionWidgetList,
//           selectedWidgetList: selectedWidgetList,
//           maximumSelectionSize:10,
//           onSelectionChanged: (selected) {
//             setState(() {
//               selectedWidgetList = selected;
//             });
//           },
//         )