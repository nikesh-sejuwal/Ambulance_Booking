import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/Home/List_Clinics/List_Clinic.dart';
import 'package:flutter/material.dart';

class ListAmbulance extends StatelessWidget {
  const ListAmbulance({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => ListClinic())),
                child: Icon(Icons.arrow_back, color: darkRed),
              ),
              Column(
                children: [
                  Text("Book an ambulance",
                      style: TextStyle(
                          color: darkRed,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w800,
                          fontSize: 18)),
                  SizedBox(height: 3),
                  Container(
                    width: 178,
                    height: 1,
                    color: darkRed,
                  ),
                  SizedBox(height: 5),
                  Text("POLYCLINIC GY (LUNAS) [HQ]",
                      style: TextStyle(
                          color: darkRed,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w800,
                          fontSize: 14)),
                ],
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            child: Column(
              children: [
                EachContainer(
                  ambulanceName: "Ambulance AMB-1234",
                  driverName: "John Doe",
                  isAvailable: true,
                  rating: 4.9,
                ),
                SizedBox(height: 10),
                EachContainer(
                  ambulanceName: "Ambulance AMB-12344",
                  driverName: "Ram Karki",
                  isAvailable: false,
                  rating: 2.2,
                ),
                SizedBox(height: 10),
                EachContainer(
                  ambulanceName: "Ambulance AMB-14",
                  driverName: "Shyam Karki",
                  isAvailable: true,
                  rating: 4.3,
                ),
                SizedBox(height: 10),
                SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EachContainer extends StatelessWidget {
  final String ambulanceName, driverName;
  final bool isAvailable;
  final double rating;
  const EachContainer(
      {super.key,
      required this.ambulanceName,
      required this.driverName,
      required this.isAvailable,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    TextStyle mytitleStyle = TextStyle(
      fontFamily: "Roboto",
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 14,
    );
    TextStyle mySubtitleStyle = TextStyle(
      fontFamily: "Roboto",
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 13,
    );
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 130,
        decoration: BoxDecoration(
          color: Color(0xD9E63946),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.circle,
                    color: isAvailable ? Color(0xFFFFD166) : Color(0xFF796060),
                    size: 14,
                  ),
                  SizedBox(width: 2),
                  Text(
                    isAvailable ? "Available" : "Reserved",
                    style: TextStyle(
                      color:
                          isAvailable ? Color(0xFFFFD166) : Color(0xFF796060),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                      height: 60,
                      width: 70,
                      image: AssetImage('assets/images/ambulance.png')),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ambulanceName,
                        style: mytitleStyle,
                      ),
                      SizedBox(height: 3),
                      Container(
                        width: 178,
                        height: 1,
                        color: Colors.white,
                      ),
                      SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.person_4,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            driverName,
                            style: mySubtitleStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 4),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            color: Colors.white),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      isAvailable
                          ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.green.shade500,
                              duration: Duration(milliseconds: 1000),
                              content: Text("Redirect to Accept request page")))
                          : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.red.shade500,
                              duration: Duration(milliseconds: 1000),
                              content: Text(
                                "Already reserved!!",
                                style: TextStyle(color: Colors.white),
                              )));
                    },
                    child: Container(
                      width: 87,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: darkRed,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                              color: darkRed,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
