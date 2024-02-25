import 'package:admin/api/api_impl.dart';
import 'package:admin/api/api_service.dart';
import 'package:admin/bloc/appevent.dart';
import 'package:admin/bloc/appstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final Api _apiService = ApiImpl();
  AppBloc() : super(AppInitialState()) {
    on<AddRoomEvent>((event, emit) async {
      var response = await _apiService.saveRoomData(
          roomName: event.roomName,
          price: event.price,
          guestCount: event.guestCount,
          bedCount: event.bedCount,
          images: event.images,
          description: event.bedCount);
      if (response != null) {
        emit(AppLoadedState(isSuccessfull: true));
      } else {
        emit(AppErrorState());
      }
    });
  }
}
