import { motion } from 'framer-motion';

import styles from '../styles';

import { ComputersCanvas } from './canvas';

function Hero() {
  return (
    <section className="relative w-full h-screen mx-auto">
      <div
        className={`${styles.paddingX} absolute inset-0 top-[120px] max-w-7xl mx-auto flex flex-row items-start gap-5`}
      >
        <div className="flex flex-col justify-center items-center mt-5">
          {/* create the circle */}
          <div className="h-5 w-5 rounded-full bg-purple-500" />
          {/* create the line */}
          <div className="w-1 sm:h-80 h-40 violet-gradient" />
        </div>
        <div>
          {/* Place the name here */}
          <h1 className="font-black text-white lg:text-[80px] sm:text-[60px] xs:text-[50px] text-[40px] lg:leading-[98px] mt-2 text-white">
            Hey, I'm
            <span className="text-purple-500"> Akhil</span>
          </h1>

          {/* place the paragraph here */}
          <p className="text-[#dfd9ff] font-medium lg:text-[30px] sm:text-[26px] xs:text-[20px] text-[16px] lg:leading-[40px] mt-2 text-white">
            I'm a Student,{' '}
            <span className="text-red-500">a Software Engineer </span>
            and
            <span className="text-cyan-500"> an Innovator.</span>
          </p>
        </div>
      </div>

      <ComputersCanvas />

      {/* Develop the moving gif */}
      <div className=" absolute xs:bottom-10 bottom-32 w-full flex justify-center items-center">
        {/* anchor tag to scroll to the about section */}
        <a href="#about">
          <div className="w-[35px] h-[64px] rounded-3xl border-4 border-secondary flex justify-center items-start p-2">
            <motion.dev
              animate={{ y: [0, 24, 0] }}
              transition={{
                duration: 1.5,
                repeat: Infinity,
                repeatType: 'loop',
              }}
              className="w-3 h-3 rounded-full bg-secondary mb-1"
            />
          </div>
        </a>
      </div>
    </section>
  );
}

export default Hero;
