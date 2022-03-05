import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/markdown_files/home_markdown.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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
            child: Text("Resume",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/resume');
            },
          ),
          TextButton(
            child: Text("Projects",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/projects');
            },
          ),
          TextButton(
            child: Text("About Me",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/about");
            },
          ),
          TextButton(
            child: Text("Volunteer Work",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground
              ),
            ),
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
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Container(
            color: Theme.of(context).colorScheme.surface,
            height: 700,
            child: Markdown(
              data: homeMarkdown,
            ),
          ),
        ),
      ),
    );
  }
}
