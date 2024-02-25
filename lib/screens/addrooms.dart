import 'package:admin/bloc/appbloc,.dart';
import 'package:admin/bloc/appevent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

class AddRooms extends StatefulWidget {
  const AddRooms({super.key});

  @override
  State<AddRooms> createState() => _AddRoomsState();
}

class _AddRoomsState extends State<AddRooms> {
  Future<void> _submitData() async {
    try {
      BlocProvider.of<AppBloc>(context).add(
        AddRoomEvent(
            roomName: roomName,
            price: price,
            guestCount: guestCount,
            bedCount: bedCount,
            images: image,
            description: description),
      );
    } catch (e) {
      print(e);
    }
  }

  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  String? roomName, price, guestCount, bedCount, image, description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // reverse: true,
          child: Form(
            key: _formKey,
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
                      "Add Rooms",
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        roomName = value;
                      });
                    },
                    decoration: const InputDecoration(
                        hintText: "Enter the name of the room",
                        label: Text("Room Name")),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        price = value;
                      });
                    },
                    decoration: const InputDecoration(
                        hintText: "Enter the price of the Room",
                        label: Text("Price")),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        guestCount = value;
                      });
                    },
                    decoration: const InputDecoration(
                        hintText: "Enter the number of guest",
                        label: Text("Guest Count")),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        bedCount = value;
                      });
                    },
                    decoration: const InputDecoration(
                        hintText: "Enter the number of beds",
                        label: Text("Bed Count")),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  width: 350,
                  // color: Colors.amber,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey)),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.image),
                      SizedBox(
                        width: 30,
                      ),
                      Text("Upload image")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        description = value;
                      });
                    },
                    maxLines: 5, // Adjust the number of lines as needed
                    decoration: const InputDecoration(
                      hintText: 'Enter room discription here',
                      labelText: 'Discription',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 56,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 14, 47, 158),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'SUBMIT',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
