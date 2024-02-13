/* eslint-disable implicit-arrow-linebreak */
import { motion } from 'framer-motion';
import { staggerContainer } from '../utils/motion';

//! Used to use staggerContainer and animate the entrances
//! Used to also pad the components to the center
const SectionWrappingMechanism = (Component, idName, viewPortCalib) =>
  function HOCM() {
    return (
      <motion.section
        variants={staggerContainer()}
        initial="hidden"
        whileInView="show"
        viewport={{ once: true, amount: viewPortCalib ? 0.25 : 'some' }}
        className="sm:px-16 px-6 sm:py-16 py-10 max-w-7xl mx-auto relative z-0"
      >
        <span className="hash-span" id={idName}>
          &nbsp;
        </span>
        <Component />
      </motion.section>
    );
  };

export default SectionWrappingMechanism;
