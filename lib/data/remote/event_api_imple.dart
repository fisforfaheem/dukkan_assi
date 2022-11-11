import 'dart:convert';

import 'package:dukkan_assi/data/model/event_model.dart';
import 'package:dukkan_assi/data/remote/event_api.dart';
import 'package:http/http.dart';

class EventApiImpl implements EventApi {
  @override
  Future<List<EventModel>> getEventList() async {
    final response = await get(
      Uri.parse(
          'https://api.seatgeek.com/2/events?client_id=MzAyMTgyMjN8MTY2Nzk4MjE3Ny45MTk4MzQ2'),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> mapResponse = json.decode(response.body);
      var list = mapResponse['events'] as List;
      List<EventModel> listPokemon = [];
      for (var element in list) {
        // log(element.toString());
        listPokemon.add(EventModel.fromJson(element));
      }

      return listPokemon;
    } else {
      throw Exception("Error Code: ${response.statusCode}");
    }
  }

  @override
  Future<List<EventModel>> getSearchEventList(String str) async {
    final response = await get(
      Uri.parse(
          'https://api.seatgeek.com/2/events?client_id=MzAyMTgyMjN8MTY2Nzk4MjE3Ny45MTk4MzQ2&q=$str'),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> mapResponse = json.decode(response.body);
      var list = mapResponse['events'] as List;
      List<EventModel> listPokemon = [];
      for (var element in list) {
        // log(element.toString());
        listPokemon.add(EventModel.fromJson(element));
      }

      return listPokemon;
    } else {
      throw Exception("Error Code: ${response.statusCode}");
    }
  }
}
