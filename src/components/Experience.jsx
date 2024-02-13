/* eslint-disable react/no-array-index-key */
/* eslint-disable react/jsx-wrap-multilines */
/* eslint-disable arrow-body-style */
/* eslint-disable react/jsx-no-useless-fragment */
import {
  VerticalTimeline,
  VerticalTimelineElement,
} from 'react-vertical-timeline-component';

import { motion } from 'framer-motion';

import 'react-vertical-timeline-component/style.min.css';

import { experiences } from '../constants';

import { SectionWrappingMechanism } from '../hoc';

import { textVariant } from '../utils/motion';

//! Exp Card

const IndivExperienceCard = ({ experience }) => {
  return (
    <VerticalTimelineElement
      contentStyle={{
        background: '#1d1836',
        color: '#fff',
      }}
      contentArrowStyle={{ borderRight: '7px solid  #232631' }}
      date={experience.date}
      iconStyle={{ background: experience.iconBg }}
      icon={
        <div className="flex justify-center items-center w-full h-full">
          <img
            src={experience.icon}
            alt={experience.company_name}
            className="w-[60%] h-[60%] object-contain"
          />
        </div>
      }
    >
      <div>
        <h3 className="text-white text-[24px] font-bold">{experience.title}</h3>
        <p
          className="text-secondary font-semibold text-[16px]"
          style={{ margin: 0 }}
        >
          {experience.company_name}
        </p>

        {/* Add the points here */}
        {/* trackign wider helps with letter spacing
        space-y-2 makes sure theres more distance between each point of the list */}
        <ul className=" mt-5 list-disc ml-5 space-y-2">
          {experience.points.map((point, index) => (
            <li
              className="text-white-100 text-[14px] pl-1 tracking-wider"
              key={`experience-point-${index}`}
            >
              {point}
            </li>
          ))}
        </ul>
        {/* Add the cards with skillsets here */}
        <div className="w-[72px] h-[24px] bg-black rounded-2xl mt-5"></div>
      </div>
    </VerticalTimelineElement>
  );
};

function Experience() {
  return (
    //! Fragments are more efficient ways of adding elements to the DOM
    <>
      <motion.div variants={textVariant}>
        <p className="sm:text-[18px] text-[14px] text-secondary uppercase tracking-wider">
          Some companies I have worked for..
        </p>
        <h2 className="text-white font-black md:text-[60px] sm:text-[50px] xs:text-[40px] text-[30px]">
          Experience
        </h2>
      </motion.div>

      {/* Vertical Timeline */}
      <div className=" mt-20 flex flex-col">
        <VerticalTimeline>
          {experiences.map((experience, index) => (
            <IndivExperienceCard key={index} experience={experience} />
          ))}
        </VerticalTimeline>
      </div>
    </>
  );
}

//! Follow the Navbar for the IdName to make sure routerdom can pick up the right place to point to
export default SectionWrappingMechanism(Experience, 'work');
