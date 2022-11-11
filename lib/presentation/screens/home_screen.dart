import 'package:dukkan_assi/domain/event_provider.dart';
import 'package:dukkan_assi/presentation/screens/event_detail.dart';
import 'package:dukkan_assi/presentation/widgets/mp_circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<EventProvider>(context, listen: false).getEventList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
          // search bar
          TextFormField(
            controller: _searchController,
            onChanged: (value) {
              context.read<EventProvider>().searchEvent(value);
            },
            decoration: const InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          ),

          // list of events
          Expanded(
            child: Consumer<EventProvider>(
              builder: (context, provider, child) {
                return provider.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : provider.eventList.isEmpty
                        ? const Center(
                            child: Text("Empty"),
                          )
                        : ListView.builder(
                            itemCount: provider.eventList.length,
                            itemBuilder: (context, index) {
                              final event = provider.eventList[index];

                              if (event.title.toString().toLowerCase().contains(
                                      _searchController.text.toLowerCase()) ||
                                  event.shortTitle
                                      .toString()
                                      .toLowerCase()
                                      .contains(_searchController.text
                                          .toLowerCase())) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              EventDetailScreen(
                                            event: event,
                                          ),
                                        ),
                                      );
                                    },
                                    title: Text(event.title.toString()),
                                    subtitle: Text(event.shortTitle.toString()),
                                    leading: ClipOval(
                                      child: avatar(
                                          event.performers.first.image
                                              .toString(),
                                          Colors.blue),
                                    ),
                                  ),
                                );
                              }
                              return const SizedBox();
                            },
                          );
              },
            ),
          ),
        ],
      ),
    );
  }
}
