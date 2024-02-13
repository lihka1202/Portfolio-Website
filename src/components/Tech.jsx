/* eslint-disable arrow-body-style */
import { motion } from 'framer-motion';
import { BallCanvas } from './canvas';

import { SectionWrappingMechanism } from '../hoc';

import { technologies } from '../constants';

import { textVariant } from '../utils/motion';

const Tech = () => {
  return (
    <>
      <motion.div variants={textVariant}>
        <p className="sm:text-[18px] text-[14px] text-secondary uppercase tracking-wider">
          Some technologies I&apos;ve worked with..
        </p>
        <h2 className="text-white font-black md:text-[60px] sm:text-[50px] xs:text-[40px] text-[30px]">
          Tech stack
        </h2>
      </motion.div>
      <div className="flex flex-row flex-wrap justify-center gap-10 mt-10">
        {technologies.map((tech) => (
          <div className=" w-28 h-28" key={tech.name}>
            <BallCanvas icon={tech.icon} />
          </div>
        ))}
      </div>
    </>
  );
};

export default SectionWrappingMechanism(Tech, '', true);
