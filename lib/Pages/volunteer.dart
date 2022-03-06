import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/markdown_files/volunteer_markdown.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Volunteer extends StatelessWidget {
  const Volunteer({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          const Center(
            child: Text(
              "Volunteer Work",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              )
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.onBackground,
                width: 1
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            margin: const EdgeInsets.all(8),
            height: 715,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                  child: Markdown(data: volunteerMarkdownHeading)
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 75,
                        child: Markdown(data: "# Regional IT Manager"),
                      ),
                      SizedBox(
                        height: 275,
                        child: Markdown(data: volunteerMarkdownWebminister),
                      ),
                      Divider(
                        height: 10,
                        thickness: 4,
                      ),
                      SizedBox(
                        height: 75,
                        child: Markdown(data: "# Instructor"),
                      ),
                      SizedBox(
                        height: 175,
                        child: Markdown(data: volunteerMarkdownInstructor),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
