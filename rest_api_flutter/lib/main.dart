import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_flutter/app/repositories/data_repository.dart';
import 'package:rest_api_flutter/app/services/api.dart';
import 'package:rest_api_flutter/app/services/api_service.dart';
import 'package:rest_api_flutter/app/ui/dashbord.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<DataRepository>(
      create: (_) => DataRepository(
        apiService: APIService(API.sandbox()),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coronavirus Tracker',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF101010),
          cardColor: Color(0xFF222222),
        ),
        home: Dashbord(),
      ),
    );
  }
}
