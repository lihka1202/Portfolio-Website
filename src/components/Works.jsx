/* eslint-disable jsx-a11y/no-static-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */
/* eslint-disable react/jsx-no-useless-fragment */
import { useEffect, useState } from 'react';

import { Tilt } from 'react-tilt';

import { motion } from 'framer-motion';
import { github } from '../assets';

import { SectionWrappingMechanism } from '../hoc';

import { projects } from '../constants';

import { fadeIn, textVariant } from '../utils/motion';

const IndivProjectCard = ({
  index,
  name,
  description,
  tags,
  image,
  source_code_link,
}) => (
  <motion.div variants={fadeIn('up', 'spring', index * 0.5, 0.75)}>
    <Tilt
      options={{ max: 45, scale: 1, speed: 450 }}
      className="bg-tertiary p-5 rounded-2xl sm:w-[360px] w-full"
    >
      {/* Div to place the image */}
      <div className="relative w-full h-[230px]">
        <img
          src={image}
          alt={name}
          className="w-full h-full object-cover rounded-2xl"
        />

        {/* Place the github icon */}
        <div className="absolute inset-0 flex justify-end m-3 card-img_hover">
          <div
            onClick={() => window.open(source_code_link, '_blank')}
            className=" black-gradient w-10 h-10 rounded-full flex justify-center items-center cursor-pointer"
          >
            <img
              src={github}
              alt="github"
              className="w-1/2 h-1/2 object-contain"
            />
          </div>
        </div>
      </div>
      {/* Project text */}
      <div className="mt-5">
        <h3 className=" text-white font-bold text-[24px]">{name}</h3>
        <p className=" mt-2 text-secondary text-[14px]">{description}</p>
      </div>

      {/* hashtag div */}
      <div className="mt-4 flex flex-wrap gap-2">
        {tags.map((tag) => (
          <p className={`text-[14px] ${tag.color}`} key={tag.name}>
            #{tag.name}
          </p>
        ))}
      </div>
    </Tilt>
  </motion.div>
);

const Works = () => (
  <>
    <motion.div variants={textVariant}>
      <p className="sm:text-[18px] text-[14px] text-secondary uppercase tracking-wider">
        Some of my finest works..
      </p>
      <h2 className="text-white font-black md:text-[60px] sm:text-[50px] xs:text-[40px] text-[30px]">
        Projects.
      </h2>
    </motion.div>
    <div className="w-full flex">
      <motion.p
        variants={fadeIn('', '', 0.1, 1)}
        className="mt-3 text-secondary text-[17px] max-w-3xl leading-[30px]"
      >
        Welcome to my Projects Showcase! Here you&apos;ll find a curated
        collection of my latest ventures, where I bring ideas to life through
        coding and innovation. Dive in to explore my diverse range of projects,
        from web applications to machine learning experiments. Each project
        represents a unique challenge I&apos;ve tackled, showcasing my technical
        skills and creative problem-solving abilities. I&apos;ve also placed
        github repository links where applicable, so that you can go check the
        code that runs each of these projects out!
      </motion.p>
    </div>

    {/* Wrapper for the project cards */}
    <div className="mt-20 flex flex-wrap gap-7">
      {projects.map((project, index) => (
        <IndivProjectCard key={`project-${index}`} index={index} {...project} />
      ))}
    </div>
  </>
);

// function Works() {
//   return (
//     <motion.section
//       variants={staggerContainer()}
//       initial="hidden"
//       whileInView="show"
//       viewport={{ once: true, amount: 'some' }}
//       className="sm:px-16 px-6 sm:py-16 py-10 max-w-7xl mx-auto relative z-0"
//     >
//       <span className="hash-span">&nbsp;</span>
//       <WorksCard />
//     </motion.section>
//   );
// }

export default SectionWrappingMechanism(Works, '', false);
