import 'package:dukkan_assi/data/model/event_model.dart';

abstract class EventModelRepository {
  Future<List<EventModel>> getList();
  Future<List<EventModel>> getSearchList(String str);
}
