import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomTimePicker extends StatefulWidget {
  final Function(String)? callBack;
  final String? time;

  const CustomTimePicker( {Key? key, this.callBack, this.time}) : super(key: key);

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  TextEditingController timeInput = TextEditingController();

  @override
  void initState() {
    timeInput.text = widget.time??"10:00"; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(

          height: 35,
          width: double.infinity,

          child: TextField(
            controller: timeInput, //editing controller of this TextField
            enabled: true,
            decoration: InputDecoration(

              suffixIcon: Icon(
                Icons.access_time_filled_rounded,
                size: 16,
                color: Color(0xff7488A6),
              ), //icon of text field
            ),
            readOnly: true, //set it true, so that user will not able to edit text
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff0E1826)),
            onTap: () async {
              TimeOfDay? pickedTime = await showTimePicker(

                context: context,
                initialTime: TimeOfDay.now(),

                builder: (BuildContext context, Widget? child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
                    child: child!,
                  );
                },
              );

              if (pickedTime != null) {
                String formattedTime = DateFormat('HH:mm').format(
                  DateTime(2021, 1, 1, pickedTime.hour, pickedTime.minute,),
                );

                setState(() {
                  timeInput.text = formattedTime;
                  widget.callBack!(formattedTime); //set output time to TextField value.
                });
              } else {
                print("Time is not selected");
              }
            },
          )),
    );
  }
}