import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewRooms extends StatefulWidget {
  const ViewRooms({super.key});

  @override
  State<ViewRooms> createState() => _ViewRoomsState();
}

class _ViewRoomsState extends State<ViewRooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                Text(
                  "View Rooms",
                  style: GoogleFonts.inter(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
