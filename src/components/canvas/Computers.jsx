/* eslint-disable arrow-body-style */
// Utilizing the R3F
import { Suspense, useEffect, useState } from 'react';

import { Canvas } from '@react-three/fiber';

// Allows us to import models using useGLTF
import { OrbitControls, Preload, meshBounds, useGLTF } from '@react-three/drei';

import CanvasLoader from '../Loader';

const Computers = () => {
  const computer = useGLTF('./desktop_pc/scene.gltf');
  return (
    <mesh>
      <hemisphereLight intensity={4} groundColor="black" />

      {/* Add the pintlight to help */}

      <pointLight intensity={3} />
      <primitive
        object={computer.scene}
        scale={0.75}
        position={[0, -3.25, -1.5]}
        rotation={[-0.01, -0.2, -0.1]}
      />
    </mesh>
    // But this is not enough, add this to the canvas to see it
  );
};

const ComputersCanvas = () => {
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
          maxPolarAngle={Math.PI / 2}
          minPolarAngle={Math.PI / 2}
        />
        <Computers />
      </Suspense>
      <Preload all />
    </Canvas>
  );
};

export default ComputersCanvas;
