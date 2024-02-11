/**
 * Contains all the constants that would be used
 */

import {
  mobile,
  backend,
  creator,
  web,
  javascript,
  typescript,
  html,
  css,
  reactjs,
  redux,
  tailwind,
  nodejs,
  mongodb,
  git,
  figma,
  docker,
  meta,
  starbucks,
  tesla,
  shopify,
  carrent,
  jobit,
  tripguide,
  threejs,
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
    name: 'CSS 3',
    icon: css,
  },
  {
    name: 'JavaScript',
    icon: javascript,
  },
  {
    name: 'TypeScript',
    icon: typescript,
  },
  {
    name: 'React JS',
    icon: reactjs,
  },
  {
    name: 'Redux Toolkit',
    icon: redux,
  },
  {
    name: 'Tailwind CSS',
    icon: tailwind,
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
    name: 'git',
    icon: git,
  },
  {
    name: 'figma',
    icon: figma,
  },
  {
    name: 'docker',
    icon: docker,
  },
];

const experiences = [
  {
    title: 'Project Director',
    company_name: 'National University of Singapore',
    icon: starbucks,
    iconBg: '#383E56',
    date: 'August 2021 - July 2022',
    points: [
      'Worked to organize an orientation camp for the freshman matriculating into either Electrical Engineering or Computer Engineering.',
      'Liaised with NUS staff, external sponsors and caterers to organize a physical camp of three days.',
      'Created and vetted the proposed event flow with the camp advisor, proposed backups and wet weather alternatives.',
      'The camp was attended by 116 students, and we incurred an injury rate of 0%.',
    ],
  },
  {
    title: 'Teaching Assistant (TA) ',
    company_name: 'National University of Singapore',
    icon: tesla,
    iconBg: '#E6DEDD',
    date: 'July 2022 - December 2022',
    points: [
      'Conducted weekly lab sessions for 15 students and grade their assignments.',
      'Introduced students to concepts ranging from variables and arrays to recursion with backtracking, trivial graph searching algorithms, greedy algorithms and basic dynamic programming.',
    ],
  },
  {
    title: 'Software Engineering Intern',
    company_name: 'FollowTrade',
    icon: shopify,
    iconBg: '#383E56',
    date: 'Dec 2022 - March 2023',
    points: [
      'FollowTrade is a fintech start up which aims on introducing the tenants of social trading to Singapore.',
      'Worked on developing and integrating a broker agnostic platform with an existing broker.',
      'Skillset gained: REST APIs, REACT.js, Spring Boot, Java, Django, Boot',
    ],
  },
  {
    title: 'Software Engineering Intern',
    company_name: 'FruitSpec',
    icon: meta,
    iconBg: '#E6DEDD',
    date: 'July 2023 - Dec 2023',
    points: [
      'Interned at an emerging startup in Israel under the NOC initiative.',
      'Created services to transform navigational data into geoJSON objects, enabling the accurate representation of spatial structures on maps.',
      'Conducted performance analysis, identified choke points and improved performance by 30%.',
      'Developed services to analyze navigational data, producing files capable of plotting routes on maps and relevant traversal speeds.',
      'Built automated micro-service triggers which responded to data inputs from edge devices.',
      'Built a simulator system capable of conducting end to end backend pipeline testing.',
    ],
  },
  {
    title: 'Volunteer Software Engineer',
    company_name: 'Better.sg',
    icon: meta,
    iconBg: '#E6DEDD',
    date: 'Dec 2023 - Present',
    points: [
      'Working on the SayLah app, which is expected to be used by nearly 8000 users.',
      'The app is meant to enable non-verbal users to communicate their feelings.',
      'Tech Stack : Angular + GoLang + Prisma(ORM) + Vercel(Deployment)',
    ],
  },
  {
    title: 'Software Engineering Intern',
    company_name: 'Transcelestial',
    icon: meta,
    iconBg: '#E6DEDD',
    date: 'January 2024 - Present',
    points: [
      'Currently engaged in the refactoring of the logging system codebase, transitioning from Rust to Go for improved efficiency and scalability.',
      'Addressing challenges related to querying specific CRUD operations within the API, streamlining processes for enhanced functionality.',
      "Contributing to the project's robustness by diligently writing tests using Playwright, ensuring comprehensive end-to-end testing and reinforcing code reliability.",
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

export { services, technologies, experiences, testimonials, projects };
