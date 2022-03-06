import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          height: 300,
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: const [
              SizedBox(
                height: 75,
                child: Markdown(data: "# Welcome!",),
              ),
              SizedBox(
                height: 50,
                child: Markdown(data: """My name is Evan Harley. Welcome to my portfolio. Here you can find a current
                copy of my resume, links to my Github and LinkedIn profiles, as well as to
                individual personal projects that I have worked on or am working on.
                """),
              ),
              SizedBox(
                height: 30,
                child: Markdown(data: "This page was developed in flutter to to teach myself a new language and framework."),
              ),
              SizedBox(
                height: 50,
                child: Markdown(data: "Please take a moment to look around."),
              )
            ],
          )
        ),
      ),
    );
  }
}
