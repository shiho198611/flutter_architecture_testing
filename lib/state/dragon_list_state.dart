import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart';
import 'package:flutter_architecture_testing/state/query_action_status.dart';

abstract class DragonListEvent {
  const DragonListEvent();
}

class DragonListQuery extends DragonListEvent {}

class DragonInitStatus extends RemoteListUpdateStatus<DragonShip> {
  DragonInitStatus() : super(ActionStatus.none, List.empty(growable: false));
}

class DragonUpdateStatus extends RemoteListUpdateStatus<DragonShip> {
  DragonUpdateStatus(List<DragonShip> dragons)
      : super(ActionStatus.success, dragons);
}

class DragonFailStatus extends RemoteListUpdateStatus<DragonShip> {
  DragonFailStatus() : super(ActionStatus.fail, List.empty(growable: false));
}
