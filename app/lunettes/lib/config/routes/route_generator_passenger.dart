import 'package:flutter/material.dart';

import '../../passenger/screens/sample_map.dart';
import '../../passenger/screens/sample_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // CustomButtonTheme customTheme = CustomButtonTheme.DARK;
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
