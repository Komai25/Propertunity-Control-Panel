import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:propertunity_control_panel/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Control Panel',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 18, 147, 134),
        ),
      ),
      initialRoute: Routes.getLoginRoute(), //getLoginRoute()
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
