import 'package:dukkan_assi/data/model/event_model.dart';
import 'package:dukkan_assi/data/remote/event_api.dart';
import 'package:dukkan_assi/data/repository/event_repository.dart';

class EventRepositoryImpl implements EventModelRepository {
  late final EventApi eventApi;
  EventRepositoryImpl({required this.eventApi});

  @override
  Future<List<EventModel>> getList() {
    return eventApi.getEventList();
  }

  @override
  Future<List<EventModel>> getSearchList(String str) {
    return eventApi.getSearchEventList(str);
  }
}
