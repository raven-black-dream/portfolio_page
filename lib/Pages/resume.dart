import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio_website/markdown_files/resume_markdown.dart';

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
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: Markdown(data: resumeHeader,)
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onBackground,
                  width: 1
                ),
                borderRadius: BorderRadius.circular(12)

              ),
              height: 980,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                    child: Markdown(data: "# Experience"),
                  ),
                  const Divider(),
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12)
                    ),

                    height: 900,
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 60,
                          child:Markdown(data: "# BC Ministry of Transportation and Infrastructure",)),
                        Divider(),
                        SizedBox(
                          height: 200,
                          child: Markdown(data: resumeMOTI),
                        ),
                        Divider(
                          height: 10,
                          thickness: 4,
                        ),
                        SizedBox(
                          height: 60,
                          child: Markdown(data: "# Royal BC Museum"),
                        ),
                        Divider(),
                        SizedBox(
                          height: 200,
                          child: Markdown(data: resumeRBCM),
                        ),
                        Divider(
                          height: 10,
                          thickness: 4,
                        ),
                        SizedBox(
                          height: 60,
                          child: Markdown(data: "# Guilford Institute"),
                        ),
                        Divider(),
                        SizedBox(
                          height: 200,
                          child: Markdown(data: resumeGuilford),
                        )
                      ],
                    )
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onBackground,
                  width: 1
                ),
                borderRadius: BorderRadius.circular(12)
              ),
              height: 255,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                    child: Markdown(data: "# Skills"),
                  ),
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 50,
                          child: Markdown(data: "__Programming:__ Python, SQL, R, MongoDB, Commandline",)
                        ),
                        Divider(),
                        SizedBox(
                          height: 50,
                          child: Markdown(data: "__Machine Learning and Statistical Modelling:__ Clustering, Multiclass Classification, A/B Testing, Pytorch, Tensorflow")
                        ),
                        Divider(),
                        SizedBox(
                          height: 50,
                          child: Markdown(data: "__Application Development:__ Django, Flask, FastAPI, Flutter"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onBackground,
                      width: 1
                  ),
                  borderRadius: BorderRadius.circular(12)
              ),
              height: 390,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                    child: Markdown(data: "# Education"),
                  ),
                  Container(
                    height: 325,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                            height: 60,
                            child: Markdown(data: "# Udacity.com",)
                        ),
                        const Divider(),
                        SizedBox(
                          height: 80,
                          child: Markdown(data: resumeUdacity),
                        ),
                        const Divider(
                          height: 10,
                          thickness: 4,
                        ),
                        const SizedBox(
                            height: 60,
                            child: Markdown(data: "# Midlands Technical College")
                        ),
                        const Divider(),
                        SizedBox(
                          height: 80,
                          child: Markdown(data: resumeMTC),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )

      )
    );
  }
}
