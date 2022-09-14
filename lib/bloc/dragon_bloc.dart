
import 'package:flutter_architecture_testing/data/dragon_repository.dart';
import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart';
import 'package:flutter_architecture_testing/state/dragon_list_state.dart';
import 'package:flutter_architecture_testing/state/query_action_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DragonBloc extends Bloc<DragonListEvent, RemoteListUpdateStatus> {

  final DragonRepository _dragonRepository;

  DragonBloc(this._dragonRepository): super(DragonInitStatus()) {

    on<DragonListQuery>((event, emit) async {

      List<DragonShip> dragons = List.empty(growable: true);

      try{
         dragons.addAll(await _dragonRepository.getDragons());
      } catch (_) {}

      emit(DragonUpdateStatus(dragons));

    });

  }

}