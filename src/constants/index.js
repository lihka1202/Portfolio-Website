/**
 * Contains all the constants that would be used
 */

import {
  mobile,
  backend,
  creator,
  web,
  javascript,
  html,
  reactjs,
  nodejs,
  mongodb,
  docker,
  threejs,
  nus,
  followtrade,
  fruitspec,
  bettersg,
  transcelestial,
  python,
  cpp,
  java,
  golang,
  sql,
  aws,
  playwright,
  timerChromeExtension,
  snoopy,
  doughnut,
  portfolio,
  SGParking,
  Duke,
  Inka,
  ToneSpyder,
  Alex,
  MBOT,
  meta,
  udemy,
} from '../assets';

export const navLinks = [
  {
    id: 'about',
    title: 'About',
  },
  {
    id: 'work',
    title: 'Work',
  },
  {
    id: 'contact',
    title: 'Contact',
  },
];

const services = [
  {
    title: 'Frontend Developer',
    icon: web,
  },
  {
    title: 'DevOps Engineer',
    icon: mobile,
  },
  {
    title: 'Backend Developer',
    icon: backend,
  },
  {
    title: 'Quality Assurance',
    icon: creator,
  },
];

const technologies = [
  {
    name: 'HTML 5',
    icon: html,
  },
  {
    name: 'C++',
    icon: cpp,
  },
  {
    name: 'JavaScript',
    icon: javascript,
  },
  {
    name: 'React JS',
    icon: reactjs,
  },
  {
    name: 'Playwright',
    icon: playwright,
  },
  {
    name: 'Node JS',
    icon: nodejs,
  },
  {
    name: 'MongoDB',
    icon: mongodb,
  },
  {
    name: 'Three JS',
    icon: threejs,
  },
  {
    name: 'python',
    icon: python,
  },
  {
    name: 'docker',
    icon: docker,
  },
  {
    name: 'java',
    icon: java,
  },
  {
    name: 'Go',
    icon: golang,
  },
  {
    name: 'SQL',
    icon: sql,
  },
  {
    name: 'AWS',
    icon: aws,
  },
];

const experiences = [
  {
    title: 'Project Director',
    company_name: 'National University of Singapore',
    icon: nus,
    iconBg: '#E6DEDD',
    date: 'August 2021 - July 2022',
    points: [
      'Worked to organize an orientation camp for the freshman matriculating into either Electrical Engineering or Computer Engineering.',
      'Liaised with NUS staff, external sponsors and caterers to organize a physical camp of three days.',
      'Created and vetted the proposed event flow with the camp advisor, proposed backups and wet weather alternatives.',
      'The camp was attended by 116 students, and we incurred an injury rate of 0%.',
    ],
    tags: [
      {
        name: 'Management',
        color: 'blue-text-gradient',
      },
      {
        name: 'Organization',
        color: 'green-text-gradient',
      },
      {
        name: 'Planning',
        color: 'pink-text-gradient',
      },
    ],
  },
  {
    title: 'Teaching Assistant (TA) ',
    company_name: 'National University of Singapore',
    icon: nus,
    iconBg: '#E6DEDD',
    date: 'July 2022 - December 2022',
    points: [
      'Conducted weekly lab sessions for 15 students and grade their assignments.',
      'Introduced students to concepts ranging from variables and arrays to recursion with backtracking, trivial graph searching algorithms, greedy algorithms and basic dynamic programming.',
    ],
    tags: [
      {
        name: 'C++',
        color: 'blue-text-gradient',
      },
      {
        name: 'Algorithms',
        color: 'green-text-gradient',
      },
      {
        name: 'Teaching',
        color: 'pink-text-gradient',
      },
    ],
  },
  {
    title: 'Software Engineering Intern',
    company_name: 'FollowTrade',
    icon: followtrade,
    iconBg: '#FFFFFF',
    date: 'Dec 2022 - March 2023',
    points: [
      'FollowTrade is a fintech start up which aims on introducing the tenants of social trading to Singapore.',
      'Worked on developing and integrating a broker agnostic platform with an existing broker.',
    ],
    tags: [
      {
        name: 'Rest APIs',
        color: 'blue-text-gradient',
      },
      {
        name: 'React',
        color: 'green-text-gradient',
      },
      {
        name: 'Spring Boot',
        color: 'pink-text-gradient',
      },
      {
        name: 'Django',
        color: 'orange-text-gradient',
      },
    ],
  },
  {
    title: 'Software Engineering Intern',
    company_name: 'FruitSpec',
    icon: fruitspec,
    iconBg: '#FFFFFF',
    date: 'July 2023 - Dec 2023',
    points: [
      'Interned at an emerging startup in Israel under the NOC initiative.',
      'Created services to transform navigational data into geoJSON objects, enabling the accurate representation of spatial structures on maps.',
      'Conducted performance analysis, identified choke points and improved performance by 30%.',
      'Developed services to analyze navigational data, producing files capable of plotting routes on maps and relevant traversal speeds.',
      'Built automated micro-service triggers which responded to data inputs from edge devices.',
      'Built a simulator system capable of conducting end to end backend pipeline testing.',
    ],
    tags: [
      {
        name: 'Python',
        color: 'blue-text-gradient',
      },
      {
        name: 'FastAPI',
        color: 'green-text-gradient',
      },
      {
        name: 'Django',
        color: 'pink-text-gradient',
      },
      {
        name: 'SQL',
        color: 'blue-text-gradient',
      },
      {
        name: 'Go',
        color: 'orange-text-gradient',
      },
      {
        name: 'AWS',
        color: 'green-text-gradient',
      },
    ],
  },
  {
    title: 'Volunteer Software Engineer',
    company_name: 'Better.sg',
    icon: bettersg,
    iconBg: '#FFFFFF',
    date: 'Dec 2023 - Present',
    points: [
      'Working on the SayLah app, which is expected to be used by nearly 8000 users.',
      'The app is meant to enable non-verbal users to communicate their feelings.',
    ],
    tags: [
      {
        name: 'Angular',
        color: 'blue-text-gradient',
      },
      {
        name: 'MongoDB',
        color: 'green-text-gradient',
      },
      {
        name: 'Express.JS',
        color: 'pink-text-gradient',
      },
      {
        name: 'Node.JS',
        color: 'orange-text-gradient',
      },
    ],
  },
  {
    title: 'Software Engineering Intern',
    company_name: 'Transcelestial',
    icon: transcelestial,
    iconBg: '#222222',
    date: 'January 2024 - Present',
    points: [
      'Currently engaged in the refactoring of the logging system codebase, transitioning from Rust to Go for improved efficiency and scalability.',
      'Addressing challenges related to querying specific CRUD operations within the API, streamlining processes for enhanced functionality.',
      "Contributing to the project's robustness by diligently writing tests using Playwright, ensuring comprehensive end-to-end testing and reinforcing code reliability.",
    ],
    tags: [
      {
        name: 'PlayWright',
        color: 'blue-text-gradient',
      },
    ],
  },
];

const testimonials = [
  {
    testimonial:
      'I thought it was impossible to make a website as beautiful as our product, but Rick proved me wrong.',
    name: 'Sara Lee',
    designation: 'CFO',
    company: 'Acme Co',
    image: 'https://randomuser.me/api/portraits/women/4.jpg',
  },
  {
    testimonial:
      "I've never met a web developer who truly cares about their clients' success like Rick does.",
    name: 'Chris Brown',
    designation: 'COO',
    company: 'DEF Corp',
    image: 'https://randomuser.me/api/portraits/men/5.jpg',
  },
  {
    testimonial:
      "After Rick optimized our website, our traffic increased by 50%. We can't thank them enough!",
    name: 'Lisa Wang',
    designation: 'CTO',
    company: '456 Enterprises',
    image: 'https://randomuser.me/api/portraits/women/6.jpg',
  },
];

const certifications = [
  {
    name: 'Introduction to Back-End Development',
    description: 'Issued January 2023',
    image: meta,
    source_code_link:
      'https://www.coursera.org/account/accomplishments/certificate/Q6SCLNNDG2YF',
  },
  {
    name: 'Flutter Web: Create a Responsive Sleek Developer Portfolio',
    description: 'Issued March 2023',
    image: udemy,
    source_code_link:
      'https://udemy-certificate.s3.amazonaws.com/pdf/UC-e0cb87d6-a201-4f4d-8720-2366f9ec6c95.pdf',
  },
  {
    name: 'Version Control',
    description: 'Issued Apr 2023',
    image: meta,
    source_code_link:
      'https://www.coursera.org/account/accomplishments/certificate/ME3X8PF77S2M',
  },
  {
    name: 'Programming in Python',
    description: 'Issued Apr 2023',
    image: meta,
    source_code_link:
      'https://www.coursera.org/account/accomplishments/certificate/JK4PGNHUECF5',
  },
  {
    name: 'The Complete SQL Bootcamp',
    description: 'Issued May 2023',
    image: udemy,
    source_code_link:
      'https://www.udemy.com/certificate/UC-0f344c5d-36fc-4583-bce0-e0c63cb776b3/',
  },
  {
    name: 'Introduction to Databases for Back-End Development',
    description: 'Issued May 2023',
    image: meta,
    source_code_link:
      'https://www.coursera.org/account/accomplishments/certificate/XE5S9VBVMMLY',
  },
  {
    name: "Go: The Complete Developer's Guide (Golang)",
    description: 'Issued Aug 2023',
    image: udemy,
    source_code_link:
      'https://www.udemy.com/certificate/UC-89e7afce-7da3-4dbb-9da7-528499215baf/',
  },
  {
    name: 'AWS Amazon S3 Mastery Bootcamp',
    description: 'Issued Aug 2023',
    image: udemy,
    source_code_link:
      'https://www.udemy.com/certificate/UC-eff0db8b-7f50-4daa-8390-7cc0d61d01ae/',
  },
  {
    name: 'Django Web Framework',
    description: 'Issued Dec 2023',
    image: meta,
    source_code_link:
      'https://www.coursera.org/account/accomplishments/verify/H9WFQQSG63MS',
  },
];
const projects = [
  {
    name: 'Timer Chrome Extension',
    description:
      'A chrome extension that allows users to keep track of the tasks they have yet to finish within a time frame.',
    tags: [
      {
        name: 'Chrome API',
        color: 'blue-text-gradient',
      },
      {
        name: 'JavaScript',
        color: 'green-text-gradient',
      },
      {
        name: 'CSS',
        color: 'pink-text-gradient',
      },
      {
        name: 'ChromeOS',
        color: 'orange-text-gradient',
      },
    ],
    image: timerChromeExtension,
    source_code_link: 'https://github.com/lihka1202/TimerChromeExtension',
  },
  {
    name: 'Snoopy',
    description:
      'A chrome extension that can keep track of the webpages that a user visits and hyperlinks generated by those webpages. Keeps users informed of the links and potential threats they are exposed to.',
    tags: [
      {
        name: 'ChromeOS',
        color: 'blue-text-gradient',
      },
      {
        name: 'JavaScript',
        color: 'green-text-gradient',
      },
      {
        name: 'CSS',
        color: 'orange-text-gradient',
      },
    ],
    image: snoopy,
    source_code_link: 'https://github.com/lihka1202/ChromeExtensionSnoopy',
  },
  {
    name: 'Doughnut World',
    description:
      'My debut project in Three.js, a captivating journey into 3D rendering. This test website showcases my experimentation with OrbitControls, lighting effects, meshes, and geometries while optimizing doughnut spawning algorithms to enhance render performance. ',
    tags: [
      {
        name: 'Three.JS',
        color: 'blue-text-gradient',
      },
      {
        name: 'R3F',
        color: 'green-text-gradient',
      },
      {
        name: 'css',
        color: 'pink-text-gradient',
      },
    ],
    image: doughnut,
    source_code_link: 'https://github.com/lihka1202/IntroThreeJSProj',
  },
  {
    name: 'Portfolio Website',
    description:
      "This is the portfolio website! If you haven't realized yet, the xwing model in the first section, the balls in the second section and the earth in the contact secion are movable! Just click and drag your mouse to see them move!",
    tags: [
      {
        name: 'reactjs',
        color: 'blue-text-gradient',
      },
      {
        name: 'R3F',
        color: 'green-text-gradient',
      },
      {
        name: 'Three.JS',
        color: 'pink-text-gradient',
      },
      {
        name: 'TailwindCSS',
        color: 'orange-text-gradient',
      },
    ],
    image: portfolio,
    source_code_link: 'https://github.com/lihka1202/Portfolio-Website',
  },
  {
    name: 'SGParking',
    description:
      'SGParking is an app that made commute easier for drivers by allowing them to gauge parking occupancies before they even reached their desired location. This was made possible through a sophisticated webscraping algorithm in python. This project was done under the NUS Orbital Scheme.',
    tags: [
      {
        name: 'flutter',
        color: 'blue-text-gradient',
      },
      {
        name: 'firebase',
        color: 'green-text-gradient',
      },
      {
        name: 'python',
        color: 'pink-text-gradient',
      },
    ],
    image: SGParking,
    source_code_link: 'https://github.com/lihka1202/Orbital2022',
  },
  {
    name: 'Duke',
    description:
      "Duke is an ultraportable and efficient CLI based Task Manager who is capable of managing a user's tasks. Duke can load and save data, while ensuring that there are no data sync issues.",
    tags: [
      {
        name: 'java',
        color: 'blue-text-gradient',
      },
      {
        name: 'Jtest',
        color: 'green-text-gradient',
      },
      {
        name: 'git',
        color: 'pink-text-gradient',
      },
    ],
    image: Duke,
    source_code_link: 'https://github.com/lihka1202/ip',
  },
  {
    name: 'Inka',
    description:
      'Inka is a CLI-based flashcard manager which allows users to group flashcards with different categories, repeat the cards as a deck and assist users in identifying their pressure points within a certain grouping.',
    tags: [
      {
        name: 'Java',
        color: 'blue-text-gradient',
      },
      {
        name: 'JTest',
        color: 'green-text-gradient',
      },
      {
        name: 'git',
        color: 'orange-text-gradient',
      },
    ],
    image: Inka,
    source_code_link: 'https://github.com/lihka1202/tp',
  },
  {
    name: 'ToneSpyder',
    description:
      'ToneSpyder is a program that can make use of the PMOD Mic Input and determine the Peak Amplitude and using the zero-crossing technique to determine the frequency of the input waveform and anotate the musical note in various systems.',
    tags: [
      {
        name: 'Verilog',
        color: 'blue-text-gradient',
      },
      {
        name: 'VHDL',
        color: 'green-text-gradient',
      },
      {
        name: 'State Management',
        color: 'pink-text-gradient',
      },
    ],
    image: ToneSpyder,
    source_code_link: 'https://github.com/lihka1202/EE2026_Project',
  },
  {
    name: 'Alex',
    description:
      'Alex is a remotely operated robot, designed to navigate around disaster zones with low visibility. Alex is equipped with a LIDAR which allows the users to localize the surrounding and perform complex manoeuvres in tight spaces.',
    tags: [
      {
        name: 'Baremetal C',
        color: 'blue-text-gradient',
      },
      {
        name: 'Arduino',
        color: 'green-text-gradient',
      },
      {
        name: 'ROS',
        color: 'pink-text-gradient',
      },
      {
        name: 'Rviz',
        color: 'orange-text-gradient',
      },
    ],
    image: Alex,
    source_code_link: 'https://github.com/lihka1202/Alex-CG2111A',
  },

  {
    name: 'MBOT',
    description:
      'MBOT is a robot that is capable of navigating through a complex maze solely based on colour cues. MBOT is equipped with an ultrasonic sensor and a home built colour sensor which can detect a wide spectrum of colouts in different lighting conditions.',
    tags: [
      {
        name: 'Arduino',
        color: 'blue-text-gradient',
      },
      {
        name: 'Baremetal C',
        color: 'green-text-gradient',
      },
      {
        name: 'Circuit Design',
        color: 'pink-text-gradient',
      },
    ],
    image: MBOT,
    source_code_link: 'https://github.com/lihka1202/MBOT-CG1111A',
  },
];

export { services, technologies, experiences, certifications, projects };
