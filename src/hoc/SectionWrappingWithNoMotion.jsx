/* eslint-disable implicit-arrow-linebreak */
import { useState, useEffect } from 'react';
import { motion } from 'framer-motion';
import { staggerContainer } from '../utils/motion';

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

const SectionWrappingMechanismNoMotion = (Component, idName) =>
  function HOCM() {
    //! Make sure that this state is not applied by default
    const [isMobile, setIsMobile] = useState(false);

    useEffect(() => {
      const handleResize = () => {
        setIsMobile(window.innerWidth < 1268);
        console.log(window.innerWidth);
        console.log(isMobile);
      };

      handleResize(); // Initial check

      window.addEventListener('resize', handleResize);

      return () => {
        window.removeEventListener('resize', handleResize);
      };
    }, []);

    useEffect(() => {
      // Logic that depends on isMobile state
      console.log('isMobile:', isMobile);
    }, [isMobile]); // This effect only runs when isMobile changes

    console.log(initialAnimation);
    return (
      <motion.section
        variants={staggerContainer()}
        initial={initialAnimation}
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
