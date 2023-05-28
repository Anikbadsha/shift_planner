import 'package:flutter/material.dart';
import 'package:shift_planner/widget/CustomCarCard.dart';

import '../widget/CustomButton.dart';

class ShowCarDialog {


  Future<void> showCarDialog(BuildContext context) async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              width: 328,
              height: 285,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text("Select Car",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0E1826),
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
                    Container(
                      width: 276,
                      height: 40,
                      padding: const EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color(0xffD1D5DB))),
                      child: Row(
                        children: const [
                          Icon(Icons.search_rounded, color: Color(0xff7488A6)),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffD1D5DB),
                            ),
                          )
                        ],
                      ),
                    ),
                      CardCardOption(),

                    const SizedBox(
                      height: 24,
                    ),
                    Center(child: CustomButton("Submit", onTap: () {})),
                  ],
                ),
              ),
            ),
          );
        });
  }
}


