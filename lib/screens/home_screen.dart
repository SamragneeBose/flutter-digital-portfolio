import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'navbar/top_bar_contents.dart';
import 'navbar/responsive.dart';
import 'navbar/menu_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: const TopBarContents(),
            ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    kGradient1,
                    kGradient2,
                    kGradient3,
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  name,
                  style: kTitleText,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      //Call to launch email
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: contactEmail,
                      );
                      await launchUrl(emailLaunchUri);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Contact",
                          style: kSubTitleText.copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About Me", style: kSectionTitleText),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(aboutMeSummary),
                    OutlinedButton(
                        onPressed: () async {
                          //Code to launch resume
                          final Uri url = Uri.parse(resumeLink);
                          await launchUrl(url);
                        },
                        child: Text(
                          "View Resume",
                          style: kSubTitleText,
                        )
                    ),
                    const Divider(),
                    Center(child: Text("Projects", style: kSectionTitleText)),
                    ProjectWidget(projectData: projectList[0]),
                    ProjectWidget(projectData: projectList[1]),
                    Text(
                      "Experience",
                      style: kSectionTitleText,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(aboutWorkExperience),
                    const Divider(),
                    Text(
                      "Let's get in touch!",
                      style: kSectionTitleText,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(aboutWorkExperience),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
