import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menu.dart'; // Import your MenuPage

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: 400,
              color: Color.fromARGB(255, 14, 47, 158),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            // isScrollControlled: false,
                            context: context,
                            builder: (context) => MenuPage(),
                          );
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Text("Inventory Management",
                          style: GoogleFonts.lexend(
                              color: Colors.white, fontSize: 20)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.logout,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Column(
                            children: [
                              Text(
                                "4",
                                style: GoogleFonts.inter(
                                    fontSize: 22, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Bookings",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Column(
                              children: [
                                Text(
                                  "6",
                                  style: GoogleFonts.inter(
                                      fontSize: 22, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Available ",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Column(
                              children: [
                                Text(
                                  "10",
                                  style: GoogleFonts.inter(
                                      fontSize: 22, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Total",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 22),
              child: Row(
                children: [
                  Text(
                    "All Bookings",
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 22,
              endIndent: 22,
              height: 20,
              color: Colors.grey[220],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 5,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Guest Name : Sanjay Rumba",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text("Guest Count : 4",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("CheckIn Date :2024/02/10",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("CheckOut Date : 2024/02/11",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 5,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Guest Name : Sanjay Rumba",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text("Guest Count : 4",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("CheckIn Date :2024/02/10",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("CheckOut Date : 2024/02/11",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 5,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Guest Name : Sanjay Rumba",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text("Guest Count : 4",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("CheckIn Date :2024/02/10",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("CheckOut Date : 2024/02/11",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 5,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Guest Name : Sanjay Rumba",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text("Guest Count : 4",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("CheckIn Date :2024/02/10",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("CheckOut Date : 2024/02/11",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
