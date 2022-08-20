import 'package:flutter/material.dart';
import 'package:lunettes/driver/screens/sample_map.dart';
import 'package:lunettes/driver/screens/sample_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/sample_screen':
        return MaterialPageRoute(builder: (context) => SampleScreen());

      case '/sample_map_screen':
        return MaterialPageRoute(builder: (context) => MapSample());
    }
  }

  /*Error Route */
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Error"),
          ),
          body: Center(
            child: Text("ERROR"),
          ),
        );
      },
    );
  }
}
