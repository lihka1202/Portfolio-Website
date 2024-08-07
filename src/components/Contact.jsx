import { useState, useRef } from 'react';

import { motion } from 'framer-motion';

import emailjs from '@emailjs/browser';

import { SectionWrappingMechanism } from '../hoc';

import { EarthCanvas } from './canvas';
import { slideIn } from '../utils/motion';

function Contact() {
  const formRef = useRef();

  const [form, setForm] = useState({
    name: '',
    email: '',
    message: '',
  });
  const [loading, setLoading] = useState(false);

  //Template ID : template_1t1lrqf
  //Service ID : service_n086sql
  //Public Key : 7gYOEKEcd2eVo-uaf

  const handleChange = (e) => {
    const { name, value } = e.target;
    setForm({ ...form, [name]: value });
  };

  const handleSubmit = (e) => {
    //! Avoid browser refresh
    e.preventDefault();
    setLoading(true);

    emailjs
      .send(
        'service_n086sql',
        'template_1t1lrqf',
        {
          from_name: form.name,
          to_name: 'Akhil',
          from_email: form.email,
          to_email: 'mnakhilwork@gmail.com',
          message: form.message,
        },
        '7gYOEKEcd2eVo-uaf',
      )
      .then(() => {
        setLoading(false);
        alert('I will get back to you soon!');
      });

    setForm(
      {
        name: '',
        email: '',
        message: '',
      },
      (error) => {
        console.log(error);
        alert(
          'something went wrong, please contact me at mnakhilwork@gmail.com',
        );
      },
    );
  };
  return (
    <div className="xl:mt-12 xl:flex-row flex-col-reverse flex gap-10 overflow-hidden">
      <motion.div
        variants={slideIn('left', 'tween', 0.2, 1)}
        className="flex-[0.75] bg-black-100 p-8 rounded-2xl"
      >
        <p className="sm:text-[18px] text-[14px] text-secondary uppercase tracking-wider">
          Get in Touch!
        </p>
        <h3 className="text-white font-black md:text-[60px] sm:text-[50px] xs:text-[40px] text-[30px]">
          Contact!
        </h3>

        {/* place the form here */}
        <form
          ref={formRef}
          onSubmit={handleSubmit}
          className="mt-12 flex flex-col gap-8"
        >
          <label className="flex flex-col">
            <span className="text-white font-medium mb-4">Your Name</span>
            <input
              type="text"
              name="name"
              value={form.name}
              onChange={handleChange}
              placeholder="What is your name"
              className=" bg-tertiary py-4 px-6 placeholder:text-secondary text-white rounded-lg outline-none border-none font-medium"
            />
          </label>
          <label className="flex flex-col">
            <span className="text-white font-medium mb-4">Your email</span>
            <input
              type="email"
              name="email"
              value={form.email}
              onChange={handleChange}
              placeholder="What is your email"
              className=" bg-tertiary py-4 px-6 placeholder:text-secondary text-white rounded-lg outline-none border-none font-medium"
            />
          </label>
          <label className="flex flex-col">
            <span className="text-white font-medium mb-4">Your message</span>
            <textarea
              rows={7}
              name="message"
              value={form.message}
              onChange={handleChange}
              placeholder="Your message!"
              className=" bg-tertiary py-4 px-6 placeholder:text-secondary text-white rounded-lg outline-none border-none font-medium"
            />
          </label>
          <button
            type="submit"
            className=" bg-tertiary py-3 px-8 outline-none w-fit text-white font-bold shadow-md shadow-primary rounded-xl"
          >
            {loading ? 'Sending' : 'Send'}
          </button>
        </form>
      </motion.div>

      {/* floating earth */}
      <motion.div
        variants={slideIn('right', 'tween', 0.2, 1)}
        className="xl:flex-1 xl:h-auto md:h-[550px] h-[350px]"
      >
        <EarthCanvas />
      </motion.div>
    </div>
  );
}

export default SectionWrappingMechanism(Contact, 'contact', true);
