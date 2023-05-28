import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCardOption extends StatefulWidget {
  const CardCardOption({Key? key}) : super(key: key);

  @override
  State<CardCardOption> createState() => _CardCardOptionState();
}

class _CardCardOptionState extends State<CardCardOption> {


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 12,),
      shrinkWrap: true,

        itemCount:4,
        itemBuilder: (BuildContext context,int index)=>Container(
          width: 328,
          decoration: const BoxDecoration(

              ),
          child: SizedBox(

            width: 312,
            height: 23,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                const Text("Toyota/A00000",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff0E1826),
              )),
                 IconButton(

                   alignment: Alignment.centerRight,
                    onPressed: (){},
                    icon:Icon(Icons.radio_button_off,size: 18,
                  color: Color(0xff7488A6),))

              ]),
            ),
          ),
          
          
        ));
  }
}
