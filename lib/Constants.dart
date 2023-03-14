// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio_website/Skills/SkillDesktopItem.dart';
import 'package:portfolio_website/Skills/SkillsMobileItem.dart';

const num kInitWidth = 1507;

class ProjectItems {
  final String image;
  final String title;
  final String description;
  final List<String> techStacks;
  final bool github;
  ProjectItems({
    required this.image,
    required this.title,
    required this.description,
    required this.techStacks,
    required this.github,
  });
}

final kprogrammingLanguageSkillList = [
  SkillsDesktopItem(
      messageTooltip: "C and C++",
      imageLocation: "images/c-.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "JavaScript",
      imageLocation: "images/java-script.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.repeated),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Java",
      imageLocation: "images/java.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.repeated),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Python",
      imageLocation: "images/python.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.repeated),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Swift",
      imageLocation: "images/swift.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.repeated),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "SQL",
      imageLocation: "images/sql-server.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Matlab",
      imageLocation: "images/icons8-matlab-128.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "GoLang",
      imageLocation: "images/golang.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "HTML",
      imageLocation: "images/html.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Bash",
      imageLocation: "images/bash.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Verilog",
      imageLocation: "images/verilog.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
];

final kFrameWorkList = [
  SkillsDesktopItem(
      messageTooltip: "React",
      imageLocation: "images/atom.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "MongoDB",
      imageLocation: "images/leaf.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Express.JS",
      imageLocation: "images/expressjs.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Node.JS",
      imageLocation: "images/nodejs.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Flutter",
      imageLocation: "images/flutterlogo.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "ROS",
      imageLocation: "images/ros.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Open CV",
      imageLocation: "images/opencv.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "SpringBoot",
      imageLocation: "images/springboot.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
];

final kOtherSoftwares = [
  SkillsDesktopItem(
      messageTooltip: "Linux",
      imageLocation: "images/linux.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Latex",
      imageLocation: "images/latex.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Jira",
      imageLocation: "images/jira.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Firebase",
      imageLocation: "images/firebase.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Arduino",
      imageLocation: "images/arduino.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Git",
      imageLocation: "images/git.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Markdown",
      imageLocation: "images/markdown.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsDesktopItem(
      messageTooltip: "Obsidian",
      imageLocation: "images/obsidian.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
];

final kprogrammingLanguageSkillMobileList = [
  SkillsMobileItem(
      messageTooltip: "C and C++",
      imageLocation: "images/c-.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "JavaScript",
      imageLocation: "images/java-script.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.repeated),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Java",
      imageLocation: "images/java.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.repeated),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Python",
      imageLocation: "images/python.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.repeated),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Swift",
      imageLocation: "images/swift.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.repeated),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "SQL",
      imageLocation: "images/sql-server.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Matlab",
      imageLocation: "images/icons8-matlab-128.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "GoLang",
      imageLocation: "images/golang.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "HTML",
      imageLocation: "images/html.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Bash",
      imageLocation: "images/bash.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Verilog",
      imageLocation: "images/verilog.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green, Colors.yellow],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
];

final kFrameWorkMobileList = [
  SkillsMobileItem(
      messageTooltip: "React",
      imageLocation: "images/atom.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "MongoDB",
      imageLocation: "images/leaf.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Express.JS",
      imageLocation: "images/expressjs.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Node.JS",
      imageLocation: "images/nodejs.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Flutter",
      imageLocation: "images/flutterlogo.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "ROS",
      imageLocation: "images/ros.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Open CV",
      imageLocation: "images/opencv.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "SpringBoot",
      imageLocation: "images/springboot.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orange, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
];

final kOtherMobileSoftwares = [
  SkillsMobileItem(
      messageTooltip: "Linux",
      imageLocation: "images/linux.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Latex",
      imageLocation: "images/latex.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Jira",
      imageLocation: "images/jira.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Firebase",
      imageLocation: "images/firebase.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Arduino",
      imageLocation: "images/arduino.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Git",
      imageLocation: "images/git.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Markdown",
      imageLocation: "images/markdown.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
  SkillsMobileItem(
      messageTooltip: "Obsidian",
      imageLocation: "images/obsidian.png",
      boxDecoration: BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.yellowAccent],
              tileMode: TileMode.mirror),
          //color: Colors.grey,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
];
final kItems1 = [
  ProjectItems(
      image: 'images/SG_PARKING.png',
      title: "SG Parking",
      description:
          "SG Parking was designed to make commute easier for drivers by allowing them to gauge the parking occupancies at their destinations well before they even started moving. This would also alleviate unnecessary jams at packed parking spots by directing users to other parking spots. This project was done under the Orbital scheme at the National University of Singapore.",
      techStacks: ['Flutter', 'Firebase', 'Python', 'HTML', 'Git'],
      github: true),
  ProjectItems(
      image: 'images/DUKE.png',
      title: 'Duke',
      description:
          "Duke is a CLI based Task Manager who is capable to managing a user's tasks. Duke can load and save the data, while ensuring that there is no data descrepancy. Duke is highly assistive in nature, due to a very high level of exception handling, which allows him to guide users when they falter. Duke is ultra portable and efficient in its operations.",
      techStacks: ["Java", "Bash", "Shell Scripting", "Git", "Gradle"],
      github: true),
  ProjectItems(
      image: 'images/ALEX.png',
      title: "Alex",
      description:
          "Alex is a remotely operated robot. Alex is capable of navigating through a maze with obstacles even when the users are unable to see it. Alex can make precise turns and park into narrow lanes should it be required to do so.",
      techStacks: [
        "USART",
        "Baremetal Arduino",
        "GPIO Programming",
        "Timers",
        "TLS",
        "ROS",
        "Hector Slam",
        "R-pi"
      ],
      github: false),
];

final kItems2 = [
  ProjectItems(
      image: 'images/MBOT.png',
      title: "MBOT",
      description:
          "MBOT is a project that is capable of navigating through a complex maze solely based on colour cues. MBOT is equipped with an ultrasonic sensor and a home built colour senson which is capable of detecting different colours in different lighting conditions",
      techStacks: [
        'Arduino',
        'Circuit Design',
        'Git',
      ],
      github: false),
  ProjectItems(
      image: 'images/INKA.png',
      title: 'Inka',
      description:
          "Inka is an ongoing project which aims to develop a flashcard manager based on a CLI interface. Inka aims to allow users to group flash cards according to different categories, while allowing them to create tags to group different cards across different groups!. This is an ongoing project, you can track its progress at the Github link provided below! ",
      techStacks: ["Java", "Bash", "Shell Scripting", "Git", "Gradle"],
      github: true),
  ProjectItems(
      image: 'images/SNAKE.png',
      title: "Snake Game",
      description:
          "The Snake Game is an ongoing project aiming to program a snake game on the Basys 3. This is made possible with Pmod DACs, Pmod OLED, AMP2, and a MIC3.",
      techStacks: [
        "Verilog",
        "Python",
        "FPGA Circuit Design",
      ],
      github: true),
];
