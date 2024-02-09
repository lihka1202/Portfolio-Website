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

      <pointLight intensity={10} />
      {/* <spotLight
        position={[-20, 50, 10]}
        angle={1}
        penumbra={1}
        intensity={1}
        castShadow
        shadow-mapSize={1024}
      /> */}
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
  // const [isMobile, setisMobile] = useState(second);

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
