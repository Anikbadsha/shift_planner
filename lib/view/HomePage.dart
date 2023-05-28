import 'package:flutter/material.dart';
import 'package:shift_planner/controller/ShowFilterDialog.dart';
import 'package:shift_planner/widget/CustomCard.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Padding(
              padding: EdgeInsets.only(top: 32, bottom: 15),
              child: Text(
                "Shift Planner",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff0E1826),
                ),
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // -- Search Box
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
                    const SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: (){
                        CustomDialog().showSimpleDialog(context);
                      },
                      child: Container(
                        width: 40,
                        height: 40,

                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xffF89818),
                          borderRadius: BorderRadius.circular(4),

                        ),
                        child: Image(
                          alignment: Alignment.center,
                          width: 13.33,
                            height: 10.66,
                            image: AssetImage('assets/images/img.png')),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  children: List.generate(
                    5,
                    (index) => Container(
                      margin: EdgeInsets.only(right: 8,
                      bottom: 8),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: 25,
                      // padding: EdgeInsets.symmetric(horizontal: 4,vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            width: 1,
                            style: BorderStyle.solid,
                            color: const Color(0xffD1D5DB)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "David",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0E1826)),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: const BoxDecoration(
                                color: Color(0xffFF6368),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.close,
                              color: Color(0xffFFFFFF),
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Available Shifts",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0E1826),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const CustomCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
