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
String contactEmail = "mail@adityathakur.in";

String aboutWorkExperience = '''
Hello I am a freelancer

He has previously been a speaker at the Flutter Global Summit'21, Flutter Vikings and events across colleges, universities (like VIT Chennai, Vellore, MIT-ADT), and clubs (IEEE APSIT, SFIT, GirlScript, GeeksforGeeks Student Chapter, Google CrowdSource, and more) here in India. 
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
      name: "Shades",
      description:
          "Winner IEEE Mandi 'Go Online' Challenge at Electrothon, NIT Hamirpur.",
      link: "https://github.com/adityathakurxd/shades"),
  Project(
      name: "Fiasco",
      description:
          "Fiasco is one stop solution to help you manage Family expenses in one place!",
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: "Fiasco",
      description:
          "Fiasco is one stop solution to help you manage Family expenses in one place!",
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: "Flutter Portfolio",
      description: "A template for Portfolio",
      link: "https://github.com/adityathakurxd/flutter-portfolio")
];
