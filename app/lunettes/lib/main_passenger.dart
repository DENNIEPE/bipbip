import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunettes/passenger/bloc/cubit/sample_cubit/cubit/sample_cubit.dart';
import 'package:lunettes/config/app_config.dart';
import 'package:lunettes/config/size_config.dart';
import 'package:lunettes/passenger/bloc/cubit/sample_cubit/repositories/sample_repository.dart';
import 'package:lunettes/constants/app_const.dart';
import 'package:lunettes/config/routes/route_generator_passenger.dart';

void main() {
  var appConfig = AppConfig(
    description: 'This is a Development version of Target',
    themeData: ThemeData(
      primarySwatch: Colors.red,
    ),
    child: MyApp(),
  );
  runApp(appConfig);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  bool isDark = false;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    // runs everytime the state loads.
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        // Links all cubit
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => SampleCubit(SampleRepository()),
            ),
          ],
          child: MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            title: Constants.appName,
            theme: isDark ? Constants.darkTheme : Constants.lightTheme,
            initialRoute: '/sample_screen',
            onGenerateRoute: RouteGenerator.generateRoute,
          ),
        );
      });
    });
  }
}
