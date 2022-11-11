import 'package:dukkan_assi/data/model/event_model.dart';
import 'package:dukkan_assi/data/repository/event_repository.dart';
import 'package:dukkan_assi/domain/base_event.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';

// ignore: must_be_immutable
class EventProvider extends ChangeNotifier
    implements BaseEvent<List<EventModel>> {
  late EventModelRepository eventRepository;

  List<EventModel> eventList = [];
  bool isLoading = false;

  void searchEvent(String value) {
    EasyDebounce.cancel('searchEvent');
    EasyDebounce.debounce(
      'searchEvent',
      const Duration(milliseconds: 500),
      () async {
        updateLoading(true);

        eventList = await eventRepository.getSearchList(value);
        updateLoading(false);
      },
    );
  }

  EventProvider({required this.eventRepository});

  void updateLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  @override
  Future<List<EventModel>> getEventList() async {
    updateLoading(true);
    eventList = await eventRepository.getList();
    updateLoading(false);

    return eventList;
  }
}
