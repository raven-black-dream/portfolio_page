import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio_website/markdown_files/resume_markdown.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> parts = [
      Markdown(data: resumeHeader),
      Markdown(data: resumeExperience),
      Markdown(data: resumeSkills),
      Markdown(data: resumeEducation)];
    final List<double> sizes = [100, 650, 150, 220];

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
              Navigator.popAndPushNamed(context, '/resume');
            },
          ),
          TextButton(
            child: Text("Projects",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/projects');
            },
          ),
          TextButton(
            child: Text("About Me",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, "/about");
            },
          ),
          TextButton(
            child: Text("Volunteer Work",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/volunteer');
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
        margin: const EdgeInsets.all(8),
        child: ListView.separated(
          itemCount: parts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: sizes[index],
              color: Theme.of(context).colorScheme.surface,
              child: Center(child: parts[index])
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      )
    );
  }
}
