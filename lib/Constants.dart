const num kInitWidth = 1507;

class ProjectItems {
  final String image;
  final String title;
  final String description;
  final List<String> techStacks;
  ProjectItems({
    required this.image,
    required this.title,
    required this.description,
    required this.techStacks,
  });
}

final kItems = [
  ProjectItems(
      image: 'images/SG_PARKING.png',
      title: "SG Parking",
      description:
          "SG Parking was designed to make commute easier for drivers by allowing them to gauge the parking occupancies at their destinations well before they even started moving. This would also alleviate unnecessary jams at packed parking spots by directing users to other parking spots. This project was done under the Orbital scheme at the National University of Singapore.",
      techStacks: ['Flutter', 'Firebase', 'Python', 'HTML', 'Git']),
  ProjectItems(
      image: 'images/DUKE.png',
      title: 'Duke',
      description:
          "Duke is a CLI based Task Manager who is capable to managing a user's tasks. Duke can load and save the data, while ensuring that there is no data descrepancy. Duke is highly assistive in nature, due to a very high level of exception handling, which allows him to guide users when they falter. Duke is ultra portable and efficient in its operations.",
      techStacks: ["Java", "Bash", "Shell Scripting", "Git", "Gradle"]),
  ProjectItems(
      image: 'images/ALEX.png',
      title: "Alex",
      description:
          "Alex is a remotely operated robot. Alex is capable of navigating through a maze with obstacles even when the users are unable to see it. Alex can make precise turns and park into narrow lanes should it be required to do so.",
      techStacks: [
        "USART",
        "GPIO Programming",
        "Timers",
        "TLS",
        "ROS",
        "Hector Slam",
        "R-pi"
      ])
];
