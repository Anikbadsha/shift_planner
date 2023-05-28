import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_,context)=>SizedBox(height: 8,),
      itemCount: 5,
      shrinkWrap: true,
        itemBuilder: (BuildContext context,int index)=>Stack(children: [Container(

          height: 71,
          width: 328,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border:Border.all(
                  width: 1,
                  style: BorderStyle.solid,
                  color: Color(0xff2257AA))),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://images.unsplash.com/photo-1542190891-2093d38760f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80'))),),
                SizedBox(width: 12,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("David Morgan",style: TextStyle(

                          fontWeight: FontWeight.w600,fontSize: 14),),
                      Text("AA 99 999",style: TextStyle(

                          fontWeight: FontWeight.w400,fontSize: 12),),
                      Text("11. Jan 2023, 8:00 - 17:00",style: TextStyle(

                          fontWeight: FontWeight.w400,fontSize: 12),),
                    ],),
                ),

              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(4)),
              child: Container(
          height: 15,
          width: 61,
          decoration: BoxDecoration(
              color: Color(0xffF89818),

          ),
          child: Center(
              child: Text("status",style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),),
          ),),
            ))
        ],
        ));
  }
}

