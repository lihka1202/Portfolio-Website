/* eslint-disable arrow-body-style */
// Utilizing the R3F
import { Clock } from 'three';
import {
  Suspense, useEffect, useState, useRef,
} from 'react';

import { Canvas, useFrame } from '@react-three/fiber';

// Allows us to import models using useGLTF
import {
  OrbitControls, Preload, meshBounds, useGLTF,
} from '@react-three/drei';

import CanvasLoader from '../Loader';

const Computers = ({ isMobile }) => {
  const computer = useGLTF('./desktop_pc/scene.gltf');

  return (
    <mesh>
      <hemisphereLight intensity={4} groundColor="black" />
      {/* Add the pintlight to help */}
      <pointLight intensity={10} />

      {' '}
      {/* Wrap the model in a group */}
      <primitive
        object={computer.scene}
        scale={isMobile ? 0.7 : 0.75}
        position={isMobile ? [0, -3, -2.2] : [0, -3.25, -1.5]}
        rotation={[-0.01, -0.2, -0.1]}
      />
    </mesh>
    // But this is not enough, add this to the canvas to see it
  );
};

const ComputersCanvas = () => {
  //! Make sure that this state is not applied by default
  const [isMobile, setisMobile] = useState(false);

  useEffect(() => {
    //! Add a listener for the screen size
    const mediaQuery = window.matchMedia('(max-width: 500px)');

    //! Set this query depending on whether the query matches
    setisMobile(mediaQuery.matches);

    //! A callback to handle the media query
    const handleMediaQueryChange = (event) => {
      setisMobile(event.matches);
    };

    //! Add the callback as an event listener
    mediaQuery.addEventListener('change', handleMediaQueryChange);

    //! Remove the listener when the componenet is unmounted
    return () => {
      mediaQuery.removeEventListener('change', handleMediaQueryChange);
    };
  }, []);

  return (
    <Canvas
      frameloop="demand"
      shadows
      camera={{ position: [20, 3, 5], fov: 25 }}
      // gl needs preserveDrawingBuffer to render the model nicely
      gl={{ preserveDrawingBuffer: true }}
    >
      {/* Helps with a loader while the model loads */}
      <Suspense fallback={<CanvasLoader />}>
        {/* Enabled orbit controlls around the model */}
        <OrbitControls
          enableZoom={false}
          // Disable y axis motion
          maxPolarAngle={Math.PI}
          minPolarAngle={Math.PI / 4}
        />
        <Computers />
      </Suspense>
      <Preload all />
    </Canvas>
  );
};

export default ComputersCanvas;
