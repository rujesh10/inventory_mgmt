abstract class AppEvent {}

class AddRoomEvent extends AppEvent {
  String? roomName, price, guestCount, bedCount, images, description;
  AddRoomEvent({
    this.roomName,
    this.price,
    this.guestCount,
    this.bedCount,
    this.description,
    this.images,
  });
}
