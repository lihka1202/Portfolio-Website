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
  carrent,
  jobit,
  tripguide,
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
      'Skillset gained: REST APIs, REACT.js, Spring Boot, Java, Django, Boot',
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
      'Tech Stack : Angular + GoLang + Prisma(ORM) + Vercel(Deployment)',
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

const projects = [
  {
    name: 'Car Rent',
    description:
      'Web-based platform that allows users to search, book, and manage car rentals from various providers, providing a convenient and efficient solution for transportation needs.',
    tags: [
      {
        name: 'react',
        color: 'blue-text-gradient',
      },
      {
        name: 'mongodb',
        color: 'green-text-gradient',
      },
      {
        name: 'tailwind',
        color: 'pink-text-gradient',
      },
    ],
    image: carrent,
    source_code_link: 'https://github.com/',
  },
  {
    name: 'Job IT',
    description:
      'Web application that enables users to search for job openings, view estimated salary ranges for positions, and locate available jobs based on their current location.',
    tags: [
      {
        name: 'react',
        color: 'blue-text-gradient',
      },
      {
        name: 'restapi',
        color: 'green-text-gradient',
      },
      {
        name: 'scss',
        color: 'pink-text-gradient',
      },
    ],
    image: jobit,
    source_code_link: 'https://github.com/',
  },
  {
    name: 'Trip Guide',
    description:
      'A comprehensive travel booking platform that allows users to book flights, hotels, and rental cars, and offers curated recommendations for popular destinations.',
    tags: [
      {
        name: 'nextjs',
        color: 'blue-text-gradient',
      },
      {
        name: 'supabase',
        color: 'green-text-gradient',
      },
      {
        name: 'css',
        color: 'pink-text-gradient',
      },
    ],
    image: tripguide,
    source_code_link: 'https://github.com/',
  },
];

export {
  services, technologies, experiences, testimonials, projects,
};
