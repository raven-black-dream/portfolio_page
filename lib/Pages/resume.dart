import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio_website/resume_markdown.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

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
              Navigator.popAndPushNamed(context, '/resume');
            },
          ),
          TextButton(
            child: const Text("Projects"),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/projects');
            },
          ),
          TextButton(
            child: const Text("About Me"),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/about');
            },
          ),
          TextButton(
            child: const Text("Volunteer Work"),
            onPressed: () {
              Navigator.popAndPushNamed(context,  '/volunteer');
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
        margin: const EdgeInsets.all(30),
        child: Markdown(data: resume)
      ),
    );
  }
}
