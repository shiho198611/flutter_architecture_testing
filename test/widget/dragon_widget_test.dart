import 'package:flutter/material.dart';
import 'package:flutter_architecture_testing/data/dragon_repository.dart';
import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart';
import 'package:flutter_architecture_testing/widget/dragon_wiget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

@GenerateMocks([DragonRepository])
import 'dragon_widget_test.mocks.dart';

void main() {
  late DragonRepository mockRepo;

  List<DragonShip> mockDragonShips = List.empty(growable: true);

  setUp(() {
    mockRepo = MockDragonRepository();

    mockDragonShips.addAll(getMockDragonShips());
  });

  testWidgets("First load list data and show list", (widgetTester) async {
    /**
     * Test widget must warp with MediaQuery.
     *
     * Scaffold need MaterialApp to wrap.
     *
     * see reference: https://stackoverflow.com/questions/48498709/widget-test-fails-with-no-mediaquery-widget-found
     * */
    final testWidget = MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: Provider.value(
          value: mockRepo,
          child: const DragonWidget(),
        ),
      ),
    );

    /**
     * For widget test, mock "Future" value must use: Future.value
     *
     * see reference: https://stackoverflow.com/questions/63329015/what-is-the-proper-way-to-unittest-future-errors-in-flutter-dart
     * */
    when(mockRepo.getDragons()).thenAnswer(
      (realInvocation) => Future.value(mockDragonShips),
    );

    await widgetTester.pumpWidget(testWidget);
    await widgetTester.pump(); // must trigger

    expect(
      find.text("Go to wiki"),
      findsWidgets,
    );
  });

  tearDown(() {
    mockDragonShips.clear();
  });
}

List<DragonShip> getMockDragonShips() {
  final list = List<DragonShip>.empty(growable: true);
  for (int i = 0; i < 10; i++) {
    DragonShip ship = DragonShip(name: "dragon_$i");
    list.add(ship);
  }
  return list;
}
