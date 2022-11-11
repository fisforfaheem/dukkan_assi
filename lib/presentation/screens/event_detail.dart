import 'package:dukkan_assi/data/model/event_model.dart';
import 'package:dukkan_assi/presentation/widgets/mp_circle_avatar.dart';
import 'package:flutter/material.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({
    Key? key,
    required this.event,
  }) : super(key: key);

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.title),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Event Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(event.title),
              subtitle: Text(event.description),
              trailing: Text(DateTime.parse(event.datetimeUtc)
                  .toString()
                  .split(' ')[0]
                  .toString()),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Event Venue Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(event.venue.name),
              subtitle: Text(event.venue.address),
              trailing: Text(event.venue.popularity.toString()),
            ),
            const Divider(),
            ListTile(
              title: Text(event.venue.city),
              subtitle: Text(event.venue.country),
              trailing: Text(event.venue.displayLocation.toString()),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Event Performer Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // list of performers
            Flexible(
              child: ListView.builder(
                itemCount: event.performers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    dense: true,
                    leading: ClipOval(
                      child: avatar(
                        event.performers[index].image,
                        Colors.blue,
                      ),
                    ),
                    title: Text(event.performers[index].name),
                    subtitle: Text(event.performers[index].type),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
