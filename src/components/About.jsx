/* eslint-disable arrow-body-style */
/* eslint-disable react/jsx-no-useless-fragment */
import React from 'react';

import { Tilt } from 'react-tilt';

import { motion } from 'framer-motion';

import { services } from '../constants';

import { fadeIn, textVariant } from '../utils/motion';

import { SectionWrappingMechanism } from '../hoc';

const IndivServiceCard = ({ index, title, icon }) => {
  return (
    <Tilt className="xs:w-[250px] w-full">
      <motion.div
        variants={fadeIn('right', 'spring', 0.5 * index, 0.75)}
        className="w-full green-pink-gradient p-[1px] rounded-[20px] shadow-card"
      >
        <div
          options={{ max: 45, scale: 1, speed: 450 }}
          className=" bg-tertiary rounded-[20px] py-5 px-12 min-h-[280px] flex justify-evenly items-center flex-col"
        >
          <img src={icon} alt={title} className="w-16 h-16 object-contain" />
          {/* Add the text */}
          <h3 className=" text-white text-[20px] font-bold text-center">
            {title}
          </h3>
        </div>
      </motion.div>
    </Tilt>
  );
};

function About() {
  return (
    <>
      <motion.div variants={textVariant()}>
        <p className="sm:text-[18px] text-[14px] text-secondary uppercase tracking-wider">
          Introduction
        </p>
        <h2 className="text-white font-black md:text-[60px] sm:text-[50px] xs:text-[40px] text-[30px]">
          Overview.
        </h2>
      </motion.div>

      {/* Use the tbe predefined animation to add some animation to the text */}
      <motion.p
        variants={fadeIn('', '', 0.1, 1)}
        className=" mt-4 text-secondary text-[17px] max-w-3xl leading-[30px]"
      >
        Welcome to my corner of the internet! I&apos;m a driven computing
        student at the National University of Singapore, deeply immersed in the
        world of technology and innovation. Currently interning at an emerging
        startup, Transcelestial, I&apos;m honing my skills in software
        engineering, testing infrastructure, and full-stack app development.
        Join me on this journey as I navigate through the dynamic realm of tech
        and embrace new challenges and opportunities along the way.
      </motion.p>

      <div className=" mt-20 flex flex-wrap gap-10">
        {services.map((service, index) => (
          <IndivServiceCard
            key={service.title}
            index={index}
            title={service.title}
            icon={service.icon}
          />
        ))}
      </div>
    </>
  );
}

export default SectionWrappingMechanism(About, 'about', true);
