import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/Home/List_Clinics/Components/List_ambulance.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/My_Drawer.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/material.dart';

class ListClinic extends StatefulWidget {
  const ListClinic({super.key});

  @override
  State<ListClinic> createState() => _ListClinicState();
}

class _ListClinicState extends State<ListClinic> {
  bool _showContainer = false;

  void toggleContainer(bool value) {
    setState(() {
      _showContainer = value;
    });
  }

  void _hideContainer() {
    setState(() {
      _showContainer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: _hideContainer,
            child: SkeletonPage(
                top: 188,
                sizedbox: 30,
                myTopChild: Container(
                  margin: EdgeInsets.only(top: 65, left: 28, right: 28),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lists of Clinics",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          MyDrawer()
                        ],
                      ),
                      MyTextfield(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 51,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 10),
                              Icon(
                                Icons.search,
                                color: pColor,
                                size: 24,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: TextField(
                                  style: textfieldStyle,
                                  decoration: InputDecoration(
                                      hintText: 'Search Clinic',
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    SingleClinic(onToggle: toggleContainer),
                    SizedBox(height: 25),
                    SingleClinic(
                      onToggle: toggleContainer,
                    ),
                    SizedBox(height: 25),
                    SingleClinic(onToggle: toggleContainer),
                  ],
                )),
          ),
          _showContainer == true
              ? (Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: darkRed, width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: ListAmbulance(),
                  )))
              : SizedBox.shrink()
        ],
      ),
    );
  }
}

class SingleClinic extends StatelessWidget {
  final Function(bool) onToggle;
  SingleClinic({super.key, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    const TextStyle mysubtitle = TextStyle(
      color: Colors.white,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    );
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 165,
      decoration: BoxDecoration(
          color: Color(0xD9E63946), borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                          blurRadius: 4,
                          color: Colors.black),
                    ],
                    borderRadius: BorderRadius.circular(100)),
                child: Image(image: AssetImage('assets/images/logo1.png')),
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'POLYCLINIC GY (LUNAS) [HQ]',
                    style: TextStyle(
                      fontFamily: "Roboto",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Text('NO. 270 & 271 (TINGKAT BAWAH),', style: mysubtitle),
                  Text('TAMAN DESA PERMAI II,', style: mysubtitle),
                  Text('09600 LUNAS,', style: mysubtitle),
                  Text('Kedah', style: mysubtitle),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 37,
                  width: 103,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.call,
                        color: pColor,
                        size: 25,
                      ),
                      VerticalDivider(
                        color: pColor,
                        thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      InkWell(
                        onTap: () {
                          onToggle(true);
                        },
                        onTapCancel: () {
                          onToggle(false);
                        },
                        child: Icon(
                          Icons.car_rental,
                          color: pColor,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
