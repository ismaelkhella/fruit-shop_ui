import 'package:flutter/material.dart';
import '_routing/router.dart' as router;
import '_routing/routes.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: homeViewRoute,
    );
  }
}