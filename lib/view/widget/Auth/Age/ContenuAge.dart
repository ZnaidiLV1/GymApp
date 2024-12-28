import 'package:flutter/material.dart';

class ContenuAge extends StatelessWidget {
  const ContenuAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Picker(
          adapter: NumberPickerAdapter(data: [
            NumberPickerColumn(begin: 0, end: 100),
          ]),
          delimiter: [
            PickerDelimiter(
              child: Container(
                width: 30.0,
                alignment: Alignment.center,
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
          hideHeader: true,
          title: Text("Select a number"),
          onConfirm: (Picker picker, List value) {
            print(value.toString());
            print(picker.getSelectedValues());
          },
        ).makePicker(),
      );
  }
}