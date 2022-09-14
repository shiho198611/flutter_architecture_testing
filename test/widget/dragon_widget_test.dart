import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_architecture_testing/data/dragon_repository.dart';
import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart';
import 'package:flutter_architecture_testing/widget/dragon_wiget.dart';
import 'package:flutter_architecture_testing/widget/wrapper/network_image_load_wrapper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

@GenerateMocks([DragonRepository, DragonImageLoadWrapper])
import 'dragon_widget_test.mocks.dart';

void main() {
  late DragonRepository mockRepo;
  late DragonImageLoadWrapper mockImgLoadWrapper;
  late Image dummyImage;

  const List<int> _dummyTransparentImage = <int>[
    0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, 0x00, 0x00, 0x00, 0x0D, 0x49,
    0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x08, 0x06,
    0x00, 0x00, 0x00, 0x1F, 0x15, 0xC4, 0x89, 0x00, 0x00, 0x00, 0x0A, 0x49, 0x44,
    0x41, 0x54, 0x78, 0x9C, 0x63, 0x00, 0x01, 0x00, 0x00, 0x05, 0x00, 0x01, 0x0D,
    0x0A, 0x2D, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x49, 0x45, 0x4E, 0x44, 0xAE,
  ];

  List<DragonShip> dummyDragonShips = List.empty(growable: true);


  setUp(() {
    mockRepo = MockDragonRepository();
    dummyDragonShips.addAll(getDummyDragonShips());

    /**
     * NetworkImage on unit test is always get status code 400.
     * Thus, create an image wrapper to reverse the dependency.
     *
     * see reference: https://stackoverflow.com/questions/49166234/flutter-widget-tests-with-networkimage
     * */
    mockImgLoadWrapper = MockDragonImageLoadWrapper();

    final int8List = Uint8List.fromList(_dummyTransparentImage);
    dummyImage = Image.memory(int8List);

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
        home: MultiProvider(
          providers: [
            Provider.value(value: mockRepo),
            Provider.value(value: mockImgLoadWrapper),
          ],
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
      (realInvocation) => Future.value(dummyDragonShips),
    );

    /**
     * Just mock class can use "any".
     *
     * see reference: https://stackoverflow.com/questions/66582801/after-migrating-flutter-code-to-null-safety-mock-objects-not-accepting-any
     * */
    when(
      (mockImgLoadWrapper as MockDragonImageLoadWrapper).loadImage(any),
    ).thenReturn(
      dummyImage,
    );

    await widgetTester.pumpWidget(testWidget);
    await widgetTester.pump(); // must trigger

    expect(find.text("Go to wiki"), findsWidgets);
    expect(find.image(dummyImage.image), findsWidgets);

  });

  testWidgets("Load list empty and show reload button", (widgetTester) async {
    final testWidget = MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: MultiProvider(
          providers: [
            Provider.value(value: mockRepo),
            Provider.value(value: mockImgLoadWrapper),
          ],
          child: const DragonWidget(),
        ),
      ),
    );

    when(mockRepo.getDragons()).thenAnswer(
      (realInvocation) => Future.value(
        List.empty(growable: false),
      ),
    );

    await widgetTester.pumpWidget(testWidget);
    await widgetTester.pump();

    expect(find.text("Reload"), findsOneWidget);

  });

  testWidgets("Load first empty second reload and get reload data", (widgetTester) async {

    int callTimes = 0;

    final testWidget = MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: MultiProvider(
          providers: [
            Provider.value(value: mockRepo),
            Provider.value(value: mockImgLoadWrapper),
          ],
          child: const DragonWidget(),
        ),
      ),
    );

    when(mockRepo.getDragons()).thenAnswer((realInvocation) {
      if(callTimes == 0) {
        callTimes ++;
        return Future.value(
          List.empty(growable: false),
        );
      } else {
        return Future.value(dummyDragonShips);
      }
    });

    when(
      (mockImgLoadWrapper as MockDragonImageLoadWrapper).loadImage(any),
    ).thenReturn(
      dummyImage,
    );

    await widgetTester.pumpWidget(testWidget);
    await widgetTester.pump();

    await widgetTester.tap(find.text("Reload"));
    await widgetTester.pump();

    expect(find.text("Go to wiki"), findsWidgets);
    expect(find.image(dummyImage.image), findsWidgets);

  });

  tearDown(() {
    dummyDragonShips.clear();
  });
}

List<DragonShip> getDummyDragonShips() {
  final list = List<DragonShip>.empty(growable: true);
  for (int i = 0; i < 10; i++) {
    DragonShip ship = DragonShip(
      name: "dragon_$i",
      flickrImages: ["dragon_img_url_$i"],
    );
    list.add(ship);
  }
  return list;
}
