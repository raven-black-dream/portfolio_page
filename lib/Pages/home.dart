import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        title: const Text("Evan Harley"),
        actions: [
          TextButton(
            child: const Text("Resume"),
            onPressed: () {
              Navigator.pushNamed(context, '/resume');
            },
          ),
          TextButton(
            child: const Text("Projects"),
            onPressed: () {
              Navigator.pushNamed(context, '/projects');
            },
          ),
          TextButton(
            child: const Text("About Me"),
            onPressed: () {
              Navigator.pushNamed(context, "/about");
            },
          ),
          TextButton(
            child: const Text("Volunteer Work"),
            onPressed: () {
              Navigator.pushNamed(context, '/volunteer');
            },
          ),
          IconButton(
              onPressed: () {
                launch('https://github.com/raven-black-dream');
              },
              icon: const FaIcon(FontAwesomeIcons.github)
          ),
          IconButton(
              onPressed: () {
                launch('https://www.linkedin.com/in/evan-harley-3bab1b22');
              },
              icon: const FaIcon(FontAwesomeIcons.linkedin)
          )
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: Text("HOME PAGE"),
      ),
    );
  }
}
