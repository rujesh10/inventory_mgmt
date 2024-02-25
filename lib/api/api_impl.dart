import 'package:admin/api/api_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ApiImpl extends Api {
  @override
  saveRoomData(
      {String? roomName,
      String? price,
      String? guestCount,
      String? bedCount,
      String? images,
      String? description}) async {
    var response = {
      "roomName": roomName,
      "price": price,
      "guestCount": guestCount,
      "bedCount": bedCount,
      "images": images,
      "description": description,
    };
    try {
      await FirebaseFirestore.instance.collection("QrCollection").add(response);
    } catch (e) {
      print(e);
    }
  }
}
