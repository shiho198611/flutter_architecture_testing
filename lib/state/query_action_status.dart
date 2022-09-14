
import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart';

abstract class QueryActionStatus {
  final ActionStatus _actionStatus;
  QueryActionStatus(this._actionStatus);

  ActionStatus getActionStatus() {
    return _actionStatus;
  }
}

abstract class RemoteListUpdateStatus<T> extends QueryActionStatus {
  List<T> remoteData;
  RemoteListUpdateStatus(ActionStatus status, this.remoteData): super(status);
}

enum ActionStatus {
  none,
  success,
  fail
}