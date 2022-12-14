// Mocks generated by Mockito 5.3.0 from annotations
// in flutter_architecture_testing/test/bloc/dragon_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:flutter_architecture_testing/data/dragon_repository.dart'
    as _i2;
import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [DragonRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockDragonRepository extends _i1.Mock implements _i2.DragonRepository {
  MockDragonRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.DragonShip>> getDragons() =>
      (super.noSuchMethod(Invocation.method(#getDragons, []),
              returnValue:
                  _i3.Future<List<_i4.DragonShip>>.value(<_i4.DragonShip>[]))
          as _i3.Future<List<_i4.DragonShip>>);
}
