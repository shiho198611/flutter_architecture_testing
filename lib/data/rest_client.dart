
import 'package:flutter_architecture_testing/data/remote/dragon_ship.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api.spacexdata.com/v4/")
abstract class RestClient {

  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("dragons")
  Future<List<DragonShip>> getDragonShip();

}