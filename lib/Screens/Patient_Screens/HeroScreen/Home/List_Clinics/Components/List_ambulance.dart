import 'package:ambulance_booking/Resources/resources.dart';
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
              Icon(Icons.arrow_back, color: darkRed),
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
          EachContainer()
        ],
      ),
    );
  }
}

class EachContainer extends StatelessWidget {
  const EachContainer({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle mytitleStyle = TextStyle(
        fontFamily: "Roboto", color: Colors.white, fontWeight: FontWeight.w700);
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 122,
        decoration: BoxDecoration(
          color: Color(0xD9E63946),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.circle,
                    color: Color(0xFFFFD166),
                    size: 14,
                  ),
                  Text(
                    "Available",
                    style: TextStyle(
                      color: Color(0xFFFFD166),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image(image: AssetImage('assets/images/ambulance.png')),
                  Text('Ambulance AMB- 1234'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
