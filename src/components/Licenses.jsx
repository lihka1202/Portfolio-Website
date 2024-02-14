/* eslint-disable jsx-a11y/no-static-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */
/* eslint-disable react/jsx-no-useless-fragment */
import { Tilt } from 'react-tilt';

import { motion } from 'framer-motion';
import { link } from '../assets';

import { SectionWrappingMechanism } from '../hoc';

import { certifications } from '../constants';

import { fadeIn, textVariant } from '../utils/motion';

const IndivCertificationCard = ({
  index,
  name,
  description,
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
            className=" bg-green-400 w-10 h-10 rounded-full flex justify-center items-center cursor-pointer shadow z-10"
          >
            <img src={link} alt="link" className="w-1/2 h-1/2 object-contain" />
          </div>
        </div>
      </div>
      {/* Certfication text */}
      <div className="mt-5">
        <h3 className=" text-white font-bold text-[24px]">{name}</h3>
        <p className=" mt-2 text-secondary text-[14px]">{description}</p>
      </div>
    </Tilt>
  </motion.div>
);

const Licenses = () => (
  <>
    <motion.div variants={textVariant}>
      <p className="sm:text-[18px] text-[14px] text-secondary uppercase tracking-wider">
        Some of my certifications..
      </p>
      <h2 className="text-white font-black md:text-[60px] sm:text-[50px] xs:text-[40px] text-[30px]">
        Certifications.
      </h2>
    </motion.div>
    <div className="w-full flex">
      <motion.p
        variants={fadeIn('', '', 0.1, 1)}
        className="mt-3 text-secondary text-[17px] max-w-3xl leading-[30px]"
      >
        Welcome to my certification page, where knowledge meets validation.
        Here, I proudly showcase the culmination of my dedication and expertise,
        certified by reputable institutions. Explore the credentials that affirm
        my proficiency and commitment to continuous learning in the
        ever-evolving landscape of technology.
      </motion.p>
    </div>

    {/* Wrapper for the project cards */}
    <div className="mt-20 flex flex-wrap gap-7">
      {certifications.map((certificate, index) => (
        <IndivCertificationCard
          key={`certificate-${index}`}
          index={index}
          {...certificate}
        />
      ))}
    </div>
  </>
);

export default SectionWrappingMechanism(Licenses, '', false);
