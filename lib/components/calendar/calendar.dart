import 'package:flutter/material.dart';
import 'package:wys_app/common/const/colors.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  int selectedYear = DateTime.now().year;
  int selectedMonth = DateTime.now().month;
  int selectedDay = DateTime.now().day;
  Color selectedColor = PRIMARY_COLOR; // 초기 선택 색상

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Container(
            color: SECOND_COLOR, // 원하는 배경색으로 변경
            child: CalendarDatePicker(
              initialDate: DateTime(selectedYear, selectedMonth, 1),
              firstDate: DateTime(selectedYear - 5),
              lastDate: DateTime(selectedYear + 5),
              onDateChanged: (DateTime? date) {
                Navigator.of(context).pop(date);
              },
            ),
          ),
        );
      },
    );

    if (pickedDate != null) {
      setState(() {
        selectedYear = pickedDate.year;
        selectedMonth = pickedDate.month;
        selectedDay = pickedDate.day;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$selectedYear-$selectedMonth-$selectedDay',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: selectedColor, // 선택한 색상 사용
            ),
          ),
        ),
        IconButton(
          onPressed: _selectDate,
          icon: Icon(Icons.calendar_today_sharp),
          iconSize: 30,
          color: selectedColor, // 선택한 색상 사용
        ),
      ],
    );
  }
}