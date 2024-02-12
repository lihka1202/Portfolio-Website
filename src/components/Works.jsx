/* eslint-disable react/jsx-no-useless-fragment */
import { Tilt } from 'react-tilt';

import { motion } from 'framer-motion';

import { github } from '../assets';

import { SectionWrappingMechanism } from '../hoc';

import { projects } from '../constants';

import { fadeIn, textVariant } from '../utils/motion';

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
  </>
);

export default SectionWrappingMechanism(Works, '');
