

import 'package:flutter_architecture_testing/data/rest_client.dart';
import 'package:dio/dio.dart';

class SpaceXRemoteService {

  RestClient getRestClient() {
    final dio = Dio();
    final client = RestClient(dio);

    return client;
  }

}