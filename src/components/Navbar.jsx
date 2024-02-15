/* eslint-disable jsx-a11y/no-noninteractive-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */
import React, { useEffect, useState } from 'react';

import { Link } from 'react-router-dom';

import styles from '../styles';

import { navLinks } from '../constants';
import { akhil, menu, close } from '../assets';

function Navbar() {
  const [active, setActive] = useState('');

  // Set it as false to ensure that this is not toggled at the start
  const [toggle, setToggle] = useState(false);
  return (
    <nav
      className={`${styles.paddingX} w-full flex items-center py-5 fixed top-0 z-20 bg-primary`}
    >
      <div className="w-full flex items-center max-w-7xl mx-auto justify-between">
        <Link
          className="flex items-center gap-2"
          to="/"
          onClick={() => {
            //! Keep track of location in the page
            setActive('');
            window.scrollTo(0, 0);
          }}
        >
          <img src={akhil} alt="logo" className=" h-11 w-11 object-contain" />
          <p className="text-white text-[18px] font-bold cursor-pointer">
            Akhil&apos;s Portfolio
            {/* <span className="sm:block hidden"> Portfolio</span> */}
          </p>
        </Link>
        {/* Added padding here */}
        <ul className="list-none hidden sm:flex flew-row gap-10 px-4">
          {navLinks.map((link) => (
            // Need to showcase when the link is currently active or not
            <li
              key={link.id}
              className={`${
                active === link.title ? 'text-white' : 'text-secondary'
              } hover:text-white text-[18px] font-medium cursor-pointer`}
              onClick={() => setActive(link.title)}
            >
              <a href={`#${link.id}`}>{link.title}</a>
            </li>
          ))}
        </ul>

        {/* deaing with the navbar when on smaller devices */}
        <div className="sm:hidden flex flex-1 justify-end items-center">
          <img
            src={toggle ? close : menu}
            alt="menu"
            className="w-[28px] h-[28px] object-contain cursor-pointer"
            // inverse the value of the toggle, to display
            onClick={() => setToggle(!toggle)}
          />

          {/* render the actual div for smaller devices */}
          <div
            className={`${
              !toggle ? 'hidden' : 'flex'
            } p-6 black-gradient absolute top-20 right-0 mx-4 my-2 min-w-[140px] z-10 rounded-xl`}
          >
            <ul className="list-none flex justify-end items-start flex-col gap-4">
              {navLinks.map((link) => (
                // Need to showcase when the link is currently active or not
                <li
                  key={link.id}
                  className={`${
                    active === link.title ? 'text-white' : 'text-secondary'
                  } font-poppins font-medium cursor-pointer text-[16px]`}
                  onClick={() => {
                    setToggle(!toggle);
                    setActive(link.title);
                  }}
                >
                  <a href={`#${link.id}`}>{link.title}</a>
                </li>
              ))}
            </ul>
          </div>
        </div>
      </div>
    </nav>
  );
}

export default Navbar;
