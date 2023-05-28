import 'package:flutter/material.dart';
import 'package:shift_planner/controller/CustomCarDialog.dart';
import 'package:shift_planner/widget/CustomDatePicker.dart';
import 'package:shift_planner/widget/CustomDriverDialog.dart';
import 'package:shift_planner/widget/CustomTimePicker.dart';

import '../widget/CustomButton.dart';

  class CustomDialog{

  Future<void> showSimpleDialog(BuildContext context) async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              width: 328,
              height: 345,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text("Filter",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0E1826),
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text("clear",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFF6368),
                          )),
                      const Spacer(),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.close_rounded,
                            color: Color(0xff0E1826),
                            size: 18,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Start Date",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff89919E)),
                              ),
                              CustomDatePicker(),
                            ],
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "End Date",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff89919E)),
                              ),
                              CustomDatePicker(),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Start Time",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff89919E)),
                              ),
                              CustomTimePicker(),
                            ],
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "End Time",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff89919E)),
                              ),
                              CustomTimePicker(),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Select Car/License Plate",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff89919E)),
                              ),
                              Container(
                                height: 30,
                                child: TextField(
                                  decoration: InputDecoration(

                                    contentPadding:
                                    EdgeInsets.only(bottom: 4),
                                    suffixIcon: InkWell(
                                      onTap: (){
                                        Navigator.pop(context);
                                        ShowCarDialog().showCarDialog(context);
                                      },
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 16,
                                        color: Color(0xff7488A6),
                                      ),
                                    ),
                                    hintText: "AA 00 000",
                                    hintStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff0E1826)),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Select Driver",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff89919E)),
                              ),
                              Container(
                                height: 30,
                                child:  TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.only(bottom: 4),
                                    suffixIcon: InkWell(
                                      onTap: (){

                                        Navigator.pop(context);
                                        ShowDriverDialog().DriverDialog(context);
                                      },
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 16,
                                        color: Color(0xff7488A6),
                                      ),
                                    ),
                                    hintText: "Aminul Islam",
                                    hintStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff0E1826)),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Center(child: CustomButton("Apply", onTap: () {})),
                ],
              ),
            ),
          );
        });


  }
}