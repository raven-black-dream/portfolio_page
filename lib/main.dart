import 'package:flutter/material.dart';
import 'package:portfolio_website/Pages/about.dart';
import 'package:portfolio_website/Pages/home.dart';
import 'package:portfolio_website/Pages/projects.dart';
import 'package:portfolio_website/Pages/resume.dart';
import 'package:portfolio_website/Pages/volunteer.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Evan Harley - Portfolio",
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary : Color(0xFF63D3FF),
          onPrimary : Color(0xFF003547),
          primaryContainer : Color(0xFF004D65),
          onPrimaryContainer : Color(0xFFBAE9FF),
          secondary : Color(0xFF5BDBBF),
          onSecondary : Color(0xFF00382D),
          secondaryContainer : Color(0xFF005142),
          onSecondaryContainer : Color(0xFF7AF8DA),
          tertiary : Color(0xFFFFB2BD),
          onTertiary : Color(0xFF670020),
          tertiaryContainer : Color(0xFF8A1635),
          onTertiaryContainer : Color(0xFFFFDADE),
          error : Color(0xFFF2B8B5),
          errorContainer : Color(0xFF8C1D18),
          onError : Color(0xFF601410),
          onErrorContainer : Color(0xFFF9DEDC),
          background : Color(0xFF1C1B1F),
          onBackground : Color(0xFFE6E1E5),
          surface : Color(0xFF1C1B1F),
          onSurface : Color(0xFFE6E1E5),
          surfaceVariant : Color(0xFF49454F),
          onSurfaceVariant : Color(0xFFCAC4D0),
          outline : Color(0xFF938F99),
          onInverseSurface : Color(0xFF1C1B1F),
          inverseSurface : Color(0xFFE6E1E5),
          inversePrimary : Color(0xFF006684),
          shadow : Color(0xFF000000)
        )
      ),
        builder: (context, widget) => ResponsiveWrapper.builder(
            widget,
            maxWidth: 1200,
            minWidth: 480,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(480, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ],
            background: Container(color: Theme.of(context).colorScheme.surface)),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/about': (context) => const About(),
        '/resume': (context) => const Resume(),
        '/projects': (context) => const Projects(),
        '/volunteer': (context) => const Volunteer()
      }
    );
  }
}

