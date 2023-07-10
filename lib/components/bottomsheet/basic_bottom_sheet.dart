import 'package:flutter/material.dart';
import 'package:wys_app/common/const/colors.dart';
import 'package:wys_app/components/calendar/calendar.dart';

class BasicBottomSheet extends StatelessWidget {
  const BasicBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height / 2 + bottomInset,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(bottom: bottomInset),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(children: [
                // CustomTextField(),
                // Expanded(flex: 3, child: CalendarWidget()),
                Expanded(flex: 1, child: _SaveBotton()),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class _SaveBotton extends StatelessWidget {
  const _SaveBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Go To Chat Room ! "),
                  style: ElevatedButton.styleFrom(
                    primary: PRIMARY_COLOR, // background
                    onPrimary: Colors.white, // f
                  ) // oreground
                  )),
        ],
      ),
    );
  }
}
