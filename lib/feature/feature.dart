import 'package:app_flutter/core/providers/login.dart';
import 'package:app_flutter/core/providers/user.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter/core/routes/routes.dart';
import 'package:provider/provider.dart';

class Feature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        FutureProvider(create: (_) => LoginProvider().loadUserData()),
        FutureProvider(create: (_) => UserProvider().loadUserData()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[700],
          accentColor: Colors.cyan[400],
          // font style
          fontFamily: 'Georgia',
          textTheme: TextTheme(
            headline: TextStyle(fontWeight: FontWeight.bold),
            title: TextStyle(fontStyle: FontStyle.italic),
            body1: TextStyle(fontFamily: 'Hind'),
          ),
        ),
        title: 'App Flutter',
        initialRoute: '/',
        // home: Home(username: 'Alpinnz',),
        onGenerateRoute: Routes.sailor.generator(),
        navigatorKey: Routes.sailor.navigatorKey,
      ),
    );
  }
}
