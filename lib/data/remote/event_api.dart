import 'package:dukkan_assi/data/model/event_model.dart';

abstract class EventApi {
  Future<List<EventModel>> getEventList();
  Future<List<EventModel>> getSearchEventList(String str);
}
