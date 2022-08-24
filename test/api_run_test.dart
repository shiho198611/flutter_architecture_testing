import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart';
import 'package:flutter_architecture_testing/data/space_x_remote_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("dragons api testing", () async {
    SpaceXRemoteService service = SpaceXRemoteService();

    print("start run api testing");

    List<DragonShip> dragons = await service.getRestClient().getDragonShip();

    print("dragons list size: ${dragons.length}");
    print("wiki: ${dragons[0].wikipedia}");

  });
}
