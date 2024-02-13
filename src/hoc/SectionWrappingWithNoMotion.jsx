/* eslint-disable implicit-arrow-linebreak */
import { motion } from 'framer-motion';
import { fadeIn, staggerContainer } from '../utils/motion';
//! Used to use staggerContainer and animate the entrances
//! Used to also pad the components to the center
// const SectionWrappingMechanismNoMotion = (Component, idName) =>
//   function HOCM() {
//     return (
//       <section className="sm:px-16 px-6 sm:py-16 py-10 max-w-7xl mx-auto relative z-0">
//         <span className="hash-span" id={idName}>
//           &nbsp;
//         </span>
//         <Component />
//       </section>
//     );
//   };

const SectionWrappingMechanismNoMotion = (
  Component,
  idName,
  RequireConverter,
) =>
  function HOCM() {
    return (
      <motion.section
        variants={staggerContainer()}
        initial={RequireConverter ? 'hidden' : ''}
        whileInView="show"
        viewport={{ once: true, amount: 0.25 }}
        className="sm:px-16 px-6 sm:py-16 py-10 max-w-7xl mx-auto relative z-0"
      >
        <span className="hash-span" id={idName}>
          &nbsp;
        </span>
        <Component />
      </motion.section>
    );
  };

export default SectionWrappingMechanismNoMotion;
