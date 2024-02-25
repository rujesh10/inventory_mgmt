import 'package:admin/screens/addRooms.dart';
import 'package:admin/screens/viewrooms.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      padding: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddRooms(),
                      ));
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 14, 47, 158),
                      radius: 40,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Add Rooms",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ViewRooms(),
                      ));
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 14, 47, 158),
                      radius: 40,
                      child: Icon(
                        Icons.view_array_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "View Rooms",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500, fontSize: 13),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 14, 47, 158),
                    radius: 40,
                    child: Icon(
                      Icons.history,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "History",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
