import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/constants/gap.dart';
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
              height: MediaQuery.of(context).size.height*0.90,
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
            // const SizedBox(
            //   height: 10,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const SizedBox(
            //       width: 10,
            //     ),
            //     ElevatedButton(
            //         onPressed: () async {
            //           //Call to launch email
            //           final Uri emailLaunchUri = Uri(
            //             scheme: 'mailto',
            //             path: contactEmail,
            //           );
            //           await launchUrl(emailLaunchUri);
            //         },
            //         child: Row(
            //           children: [
            //             const Icon(
            //               Icons.add,
            //               size: 16,
            //               color: Colors.white,
            //             ),
            //             const SizedBox(
            //               width: 5,
            //             ),
            //             Text(
            //               "Contact",
            //               style: kSubTitleText.copyWith(color: Colors.white),
            //             )
            //           ],
            //         ))
            //   ],
            // ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Gap(),
                    const Gap(),
                    Text("About Me!", textAlign: TextAlign.center, style: kSectionTitleText),
                    const Gap(),
                    Text(aboutMeSummary, textAlign: TextAlign.center,),
                    OutlinedButton(
                        onPressed: () async {
                          //Code to launch resume
                          final Uri url = Uri.parse(resumeLink);
                          await launchUrl(url);
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: kPrimaryColor1,
                          backgroundColor: kWhite,
                          side: BorderSide(color: kPrimaryColor1),
                        ),
                        child: Text(
                          "View Resume",
                          style: kSubTitleText,
                        )
                    ),
                    const Gap(),
                    const Divider(),
                    const Gap(),
                    Text("Projects", textAlign: TextAlign.center, style: kSectionTitleText),
                    ProjectWidget(projectData: projectList[0]),
                    ProjectWidget(projectData: projectList[1]),
                    const Gap(),
                    const Divider(),
                    const Gap(),
                    Text(
                      "Experience",
                      style: kSectionTitleText,
                    ),
                    const Gap(),
                    Text(aboutWorkExperience, textAlign: TextAlign.center,),
                    const Gap(),
                    const Divider(),
                    const Gap(),
                    Text(
                      "Let's get in touch!",
                      style: kSectionTitleText,
                    ),
                    const Gap(),
                    Text(contactInfo, textAlign: TextAlign.center,),
                    const Gap(),
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
