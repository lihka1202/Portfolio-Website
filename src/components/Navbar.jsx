import React, { useEffect, useState } from 'react';

import { Link } from 'react-router-dom';

import styles from '../styles';

import { navLinks } from '../constants';
import { akhil, menu, close } from '../assets';

function Navbar() {
  const [active, setActive] = useState('');
  return (
    <nav className={`${styles.paddingX} w-full flex items-center py-5 fixed top-0 z-20 bg-primary`}>
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
            Akhils
            <span className="sm:block hidden"> Portfolio</span>
          </p>
        </Link>
        <ul className="list-none hidden sm:flex flew-row gap-10">
          {navLinks.map((link) => (
            <li>
              <a href={`#${link.id}`}>{link.title}</a>
            </li>
          ))}
        </ul>
      </div>
    </nav>
  );
}

export default Navbar;
