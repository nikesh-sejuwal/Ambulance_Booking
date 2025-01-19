import 'package:ambulance_booking/Screens/Driver_Screens/Hero_Screens/History/modal_class/data.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/My_Alert_Dialogue.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../Resources/resources.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int current_page = 1;
  List<History> data = List.from(history);
  final TextStyle HistoryTextStyle =
      TextStyle(fontSize: 8.63, fontWeight: FontWeight.w600);
  final TextStyle HistoryListTextStyle = TextStyle(
      fontSize: 8.63, fontWeight: FontWeight.w400, fontFamily: 'Outfit');

  void changeOnTap(int index) {
    setState(() {
      current_page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        body: Container(
          color: pColor,
          child: Column(
            children: [
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(55),
                          topRight: Radius.circular(55))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  GoRouter.of(context).go('/');
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                )),
                            Text(
                              "History",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 10),
                            Text('')
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      TabBarSection(),
                      SizedBox(height: 20),
                      HistoryTable()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavbar(),
      ),
    );
  }

  Widget HistoryTable() {
    return Expanded(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              DataTable(
                // horizontalMargin: 50,
                columnSpacing: 80,
                border: TableBorder.symmetric(
                  borderRadius: BorderRadius.circular(5),
                ),
                dataRowMinHeight: 25,
                dataRowMaxHeight: 25,
                columns: _createColumns(),
                rows: _createRows(),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
          label: Text(
        "Booking ID",
        style: HistoryTextStyle,
      )),
      DataColumn(
          label: Text(
        "Date",
        style: HistoryTextStyle,
      )),
      DataColumn(
          label: Text(
        "Income",
        style: HistoryTextStyle,
      )),
    ];
  }

  List<DataRow> _createRows() {
    return data.map(
      (e) {
        return DataRow(cells: [
          DataCell(InkWell(
            onTap: () {
              showDialog(
                context: context,
                barrierColor: backColor,
                builder: (context) => MyAlertDialogue(
                  height: 328,
                  child: AdditionalDetails(),
                ),
              );
            },
            child: Text(
              e.bookingId.toString(),
              style: HistoryListTextStyle,
            ),
          )),
          DataCell(Text(
            "${DateFormat.yMMMd().format(e.date)}",
            style: HistoryListTextStyle,
          )),
          DataCell(Text(
            e.income.toStringAsFixed(2),
            style: HistoryListTextStyle,
          )),
        ]);
      },
    ).toList();
  }
}

class TabBarSection extends StatefulWidget {
  const TabBarSection({super.key});

  @override
  State<TabBarSection> createState() => _TabBarSectionState();
}

class _TabBarSectionState extends State<TabBarSection> {
  int currentIndex = 0;
  List<String> tabs = ["All", "Completed", "Pending", "Rejected"];
  List<History> myFakeData = history;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            tabs.length,
            (int index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: currentIndex == index ? pColor : Colors.black,
                        )),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                            color:
                                currentIndex == index ? pColor : Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                  ),
                )));
  }
}

class AdditionalDetails extends StatelessWidget {
  const AdditionalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 25),
            Icon(
              Icons.person,
              size: 28,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer name',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Customer id number',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Review',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    Icon(
                      Icons.star,
                      size: 35,
                      color: i < 3 ? Colors.yellow : greyColor,
                    ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
