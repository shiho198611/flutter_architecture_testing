import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_architecture_testing/bloc/dragon_bloc.dart';
import 'package:flutter_architecture_testing/data/dragon_repository.dart';
import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart';
import 'package:flutter_architecture_testing/state/dragon_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([DragonRepository])
import 'dragon_bloc_test.mocks.dart';

void main() {
  late DragonRepository mockRepo;
  late DragonBloc bloc;
  List<DragonShip> mockDragonShips = List.empty(growable: true);

  setUp(() {
    mockRepo = MockDragonRepository();

    bloc = DragonBloc(mockRepo);

    mockDragonShips.addAll(getMockDragonShips());
  });

  blocTest("dragon list query emit[DragonUpdateStatus]",
      build: () {
        when(mockRepo.getDragons())
            .thenAnswer((realInvocation) => Future.value(mockDragonShips));
        return bloc;
      },
      act: (DragonBloc bloc) => bloc.add(DragonListQuery()),
      expect: () => [isA<DragonUpdateStatus>()],
      verify: (DragonBloc bloc) {
        final result = bloc.state.remoteData as List<DragonShip>;

        for(int i=0;i<result.length;i++) {
          final ship = result[i];
          expect(ship.name, "dragon_$i");
        }
      }, 
  );
}

List<DragonShip> getMockDragonShips() {
  final list = List<DragonShip>.empty(growable: true);
  for (int i = 0; i < 10; i++) {
    DragonShip ship = DragonShip(name: "dragon_$i");
    list.add(ship);
  }
  return list;
}
