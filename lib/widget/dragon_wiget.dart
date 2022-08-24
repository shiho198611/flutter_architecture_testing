import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_architecture_testing/bloc/dragon_bloc.dart';
import 'package:flutter_architecture_testing/data/dragon_repository.dart';
import 'package:flutter_architecture_testing/data/space_x_remote_service.dart';
import 'package:flutter_architecture_testing/state/dragon_list_state.dart';
import 'package:flutter_architecture_testing/state/query_action_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class DragonWidget extends StatelessWidget {
  const DragonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Provider(
      create: (_) => DragonRepository(context.read<SpaceXRemoteService>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Space X Dragons"),
        ),
        body: const DragonListBlocWidget(),
      ),
    );
  }
}


class DragonListBlocWidget extends StatelessWidget {
  const DragonListBlocWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_)  => DragonBloc(context.read<DragonRepository>())..add(DragonListQuery()),
        child: const DragonList(),
    );
  }

}


class DragonListRouteState extends State<DragonList> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DragonBloc, RemoteListUpdateStatus>(
      builder: (context, status) {
        if (status is DragonUpdateStatus) {
          if (status.remoteData.isEmpty) {
            return const Center(
              child: Text("No Data", style: TextStyle(fontSize: 18)),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, int index) {
                  final dragon = status.remoteData[index];

                  return ListTile(
                    title: Text(dragon.description!),
                  );
              },
              itemCount: status.remoteData.length,);
          }
        } else {
          return const Center(
            child: Text("Loading...", style: TextStyle(fontSize: 18)),
          );
        }
      },
    );
  }

}


class DragonList extends StatefulWidget {
  const DragonList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DragonListRouteState();
  }


}