part of 'detail_select_bloc.dart';

@freezed
class DetailSelectEvent with _$DetailSelectEvent {
  const factory DetailSelectEvent.selectFloor(int floor) = _SelectFloor;

  const factory DetailSelectEvent.selectBooth(int booth) = _SelectBooth;

  const factory DetailSelectEvent.showDetails() = _ShowDetails;
}
