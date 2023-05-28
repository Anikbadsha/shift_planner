import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatefulWidget {
  final Function(String)? callBack;
  final String? date;

  const CustomDatePicker( {super.key, this.callBack, this.date});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = widget.date??"12. Jan 2023"; //set the initial value of text field
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
            controller: dateinput, //editing controller of this TextField
            enabled: true,
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.date_range_rounded,
                size: 16,
                color: Color(0xff7488A6),
              ), //icon of text field
               //label text of field

            ),
            readOnly: true, //set it true, so that user will not able to edit text
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff0E1826)),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(
                      ), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101));

              if (pickedDate != null) {
                print(
                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                String formattedDate =
                DateFormat('dd. mm yyyy').format(pickedDate);

                setState(() {
                  dateinput.text = formattedDate;

                  widget.callBack!(
                      dateinput.text); //set output date to TextField value.
                });
              } else {
                print("Date is not selected");
              }
            },
          )),
    );
  }
}