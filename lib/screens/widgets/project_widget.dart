import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  final Project projectData;
  const ProjectWidget({super.key, required this.projectData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: SizedBox(
        width: context.screenConstraint().width * 0.8,
        height: context.screenConstraint().height*0.5,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                projectData.name,
                style: kProjectTitleText,
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                child: Text(
                  projectData.description,
                ),
              ),
              const Spacer(),
              const Divider(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () async {
                    //Launch project on GitHub
                    final Uri url = Uri.parse(projectData.link);
                    await launchUrl(url);
                  },
                  child: Text(
                    "View Project",
                    style: kSubTitleText.copyWith(color: Colors.white,),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
