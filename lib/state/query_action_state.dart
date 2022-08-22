
abstract class QueryActionStatus {
  final ActionStatus _actionStatus;
  QueryActionStatus(this._actionStatus);

  ActionStatus getActionStatus() {
    return _actionStatus;
  }
}

enum ActionStatus {
  none,
  success,
  fail
}