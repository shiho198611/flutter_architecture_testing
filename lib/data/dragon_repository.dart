
import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart';
import 'package:flutter_architecture_testing/data/space_x_remote_service.dart';

class DragonRepository {

  final SpaceXRemoteService _remoteService;

  DragonRepository(this._remoteService);

  Future<List<DragonShip>> getDragons() {
    return _remoteService.getRestClient().getDragonShip();
  }

}