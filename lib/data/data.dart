import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = const Color(0xffb00b69);
Color kGradient2 = const Color(0xff420a55);
Color kGradient3 = const Color(0xff042069);

String imagePath = "images/aditya.jpeg";

//String data to modify
String name = "Samragnee Bose";
String username = "flutterroles";

//Link to resume on Google Drive
String resumeLink =
    "https://drive.google.com/file/d/1uZPqMWva6pZxzQxsR_ILLZ_FxJr24QeY/view?usp=sharing";

//Contact Email
String contactEmail = "samragneebose@gmail.com";

String aboutWorkExperience = '''
I have worked as an Android Development Intern at Arctano Solutions Pvt. Ltd. from May 2022 to August 2022.

I used Flutter to develop interactive and responsive UIs as well as a common code base for Android and Web.
I have also contributed to client applications by developing a user profile page, a GST number verifier page and a "Help & Support" page.
''';

String contactInfo='''
Feel free to reach out to me on LinkedIn or shoot me a mail at $contactEmail.
Don't forget to check out my GitHub as well!!
''';

String aboutMeSummary = '''
I'm currently a final year student at Vellore Institute of Technology pursuing my B.Tech in Computer Science and Engineering. 
I have been in love with the subject ever since I was introduced to it during my school days! 

I have a passion for creativity, and developing applications is one of the ways I fuel this passion.
Apart from that I'm a fast learner and can quickly take to new technologies with a little bit of guidance. 

Looking forward to explore new domains and technologies!!  
''';

String location = "Dharamshala, India";
String website = "adityathakur.in";
String portfolio = "adityathakurxd";
String email = "mail@adityathakur.in";

List<Project> projectList = [
  Project(
      name: "Customised Password Generator",
      description:
          '''Winner IEEE Mandi 'Go Online' Challenge at Electrothon, NIT Hamirpur.''',
      link: "https://github.com/SamragneeBose/custom-password-generator"),
  Project(
      name: "Job Application Project",
      description:
          '''Fiasco is one stop solution to help you manage Family expenses in one place!''',
      link: "https://github.com/SamragneeBose/job-application-project"),
];
