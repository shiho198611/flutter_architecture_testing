import 'package:flutter/material.dart';
import 'package:flutter_architecture_testing/bloc/dragon_bloc.dart';
import 'package:flutter_architecture_testing/data/dragon_repository.dart';
import 'package:flutter_architecture_testing/state/dragon_list_state.dart';
import 'package:flutter_architecture_testing/state/query_action_status.dart';
import 'package:flutter_architecture_testing/widget/wrapper/network_image_load_wrapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class DragonWidget extends StatelessWidget {
  const DragonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Space X Dragons"),
      ),
      body: const DragonListBlocWidget(),
    );
  }
}

class DragonListBlocWidget extends StatelessWidget {
  const DragonListBlocWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dragonRepository = Provider.of<DragonRepository>(context);

    return BlocProvider(
      create: (_) => DragonBloc(dragonRepository)..add(DragonListQuery()),
      child: const DragonList(),
    );
  }
}

class DragonListRouteState extends State<DragonList> with RouteAware {
  @override
  Widget build(BuildContext context) {
    final imgLoadWrapper = Provider.of<DragonImageLoadWrapper>(context);

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
                final imageUrl = dragon.flickrImages?.first;
                final name = (dragon.name != null) ? dragon.name! : "";
                final wikiUrl =
                    (dragon.wikipedia != null) ? dragon.wikipedia! : "";

                return Column(children: [
                  Row(
                    children: [
                      (imageUrl == null)
                          ? const Text("No Image")
                          : Padding(
                              padding: const EdgeInsets.all(20),
                              child: imgLoadWrapper.loadImage(imageUrl),
                            ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 150,
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name,
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                                Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: GestureDetector(
                                      child: const Text("Go to wiki",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline)),
                                      onTap: () async {
                                        await launchUrl(Uri.parse(wikiUrl));
                                      },
                                    ))
                              ],
                            ),
                          )),
                    ],
                  ),
                  const Divider()
                ]);
              },
              itemCount: status.remoteData.length,
            );
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
