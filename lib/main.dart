import 'package:dukkan_assi/data/remote/event_api_imple.dart';
import 'package:dukkan_assi/data/repository/event_repositoery_impl.dart';
import 'package:dukkan_assi/domain/event_provider.dart';
import 'package:dukkan_assi/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => EventProvider(
              eventRepository: EventRepositoryImpl(
                eventApi: EventApiImpl(),
              ),
            ),
          ),
        ],
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              useMaterial3: true,
              primarySwatch: Colors.blue,
            ),
            home: const HomeScreen(),
          );
        });
  }
}
