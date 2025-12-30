#set page(
  margin: 1cm,
  paper: "a4"
)
#set text(
  font: "New Computer Modern Sans",
  size: 10pt,
  lang: "en"
)

#let weblink(..args) = text(
  fill: blue,
  link(..args)
)

#let section-header(title) = {
  v(0.8em)
  text(weight: "bold", size: 14pt, title)
  v(-0.5em)
  line(length: 100%, stroke: 0.5pt + gray)
  v(0.5em)
}

#let cv-entry(title, org, date, details) = {
  grid(
    columns: (15%, 85%),
    gutter: 1em,
    text(style: "italic", fill: gray.darken(30%), date),
    stack(
      dir: ttb,
      spacing: 0.3em,
      text(weight: "bold", size: 11pt, title),
      v(0.5em),
      text(style: "italic", org),
      v(0.8em),
      details,
    )
  )
}

#let talk-entry(title, org, date, details) = {
  stack(
    dir: ttb,
    spacing: 0.3em,
    text(weight: "bold", size: 11pt, title),
    v(0.5em),
    text(style: "italic", org + [ -- ] + date),
    v(0.8em),
    details,
  )
}

#let project-entry(title, tech, desc, details) = {
  stack(
    dir: ttb,
    spacing: 0.3em,
    text(weight: "bold", size: 11pt, title) + " | " + text(style: "italic", tech),
    v(0.5em),
    text(style: "italic", desc),
    v(0.8em),
    details,
  )
}

// --- Header ---
#align(center)[
  #text(size: 24pt, weight: "bold")[Luis Wirth] \
  #v(0.5em)
  #text(size: 11pt)[
    *MSc Student in Computational Science and Engineering at ETH Zürich* \
    Specialized in Computational Physics, Numerical Analysis and High-Performance Computing
  ] \
  #v(0.5em)
  #weblink("mailto:luwirth@ethz.ch") |
  #weblink("lwirth.com") \
  #weblink("https://github.com/luiswirth")[GitHub] |
  #weblink("https://www.linkedin.com/in/luis-wirth-256618172/")[LinkedIn] |
  #weblink("https://www.youtube.com/@luiswirth")[YouTube]
]

// --- Education ---
#section-header("Education")

#cv-entry(
  [MSc ETH Computational Science and Engineering],
  [ETH Zürich -- Zürich, CH],
  [2025 -- (2027)],
  [
    //- *GPA:* ?/6.0
    //- *Major:* Computational Electromagnetics
    - *Key Coursework:*
      - AI in the Sciences and Engineering (PINNs, Neural Operators)
      - Advanced Numerical Methods for CSE (Boundary Element Method and Physics Gaussian Processes)
      - VLSI 1: HDL Based Design for FPGAs (SystemVerilog, Vivado)
      - VLSI 3: Full-Custom Digital Circuit Design (Schematic and Layout in Vivado)
      - Neuromorphic Engineering I
  ]
)

#cv-entry(
  [BSc ETH Computational Science and Engineering],
  [ETH Zürich -- Zürich, CH],
  [2021 -- 2025],
  [
    - *GPA:* 5.41/6.0
    - *Major:* Computational Physics
    - *Thesis:* Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes
    - *Key Coursework:*
      - High-Performance Computing (C++, MPI, OpenMP)
      - Numerical Methods for Partial Differential Equations (Finite Element Method)
      - Numerical Solution of Stochastic Ordinary Differential Equations (Itô calculus)
      - Computational Quantum Physics (Quantum multi-body problems)
      - Statistical Physics and Computer Simulation (Molecular Dynamics)
      //- Systems Programming and Computer Architecture
  ]
)

/*
#cv-entry(
  [Matura],
  [Gymnasium Oberwil -- Basel, CH],
  [2016 -- 2020],
  [
    - *Major:* Mathematics & Physics
    - *Thesis:* Machine Learning with TensorFlow: Developing a Convolutional Denoising Autoencoder
    - Gifted education program
  ]
)

#cv-entry(
  [Pre-College Study (Physics)],
  [Universität Basel -- Basel, CH],
  [2019],
  [
    - *Course*: Introduction to Physics I: Mechanics and Thermodynamics
    - *Grade*: 6.0/6.0
  ]
)
*/


#section-header("Professional Experience")

#cv-entry(
  [Teaching Assistant NumPDE],
  [ETH Zürich (Seminar for Applied Mathematics) -- Zürich, CH],
  [2024],
  [
    - TA for "Numerical Methods for Partial Differential Equations" (Prof. Ralf Hiptmair)
    - Instructed students in Weekly Tutorials on Mathematical Theory and C++ Implementation
  ]
)

#cv-entry(
  [R&D Software Engineer],
  [University of Basel (Dept. of Biomedical Engineering) -- Basel, CH],
  [June -- December 2020],
  [
    - MIRACLE project (Minimally Invasive Robot-Assisted Computer-guided LaserosteotomE)
    - Development on SpectoVR, a Virtual Reality Surgical Planning Tool
    - High-Performance Multi-Volume Rendering using Raymarching Compute Shaders (GPU)
    - Visualization of PET/CT scans
  ]
)

#cv-entry(
  [Software Engineer Intern],
  [Adobe -- San Francisco, USA],
  [July -- August 2019],
  [
    - Member of the "Screens" team for Adobe Experience Manager
    - Contributed to Enterprise-Scale Digital Signage Software
    - Content Targeting using Machine Learning with TensorFlow
  ]
)

#cv-entry(
  [Computational Physicist Intern],
  [University of Basel (Dept. of Physics) -- Basel, CH],
  [July 2018],
  [
    - Applied Machine Learning to Problem in Computational Chemistry
    - Predicted the Energy of Various Configurations of the Water Molecule
    - Custom Neural Network Implementation in C++/Eigen with Backpropagation
    - "Extraordinary performance for a high school student" - Prof. Stefan Goedecker
  ]
)

#section-header("Publications & Talks")

#talk-entry(
  [BSc Thesis: Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes],
  [ETH Zürich],
  [May 2025],
  [
    - Supervisor: Prof. Dr. Ralf Hiptmair
    - Topics: PDEs, FEM, Differential Geometry, Differential Forms, de Rham Cohomology
    - Paper: #weblink("https://arxiv.org/abs/2506.02429")[arXiv]
    - Presentation: #weblink("https://youtu.be/A4px5jTXcOM")[YouTube]
  ]
)

#talk-entry(
  [Seminar Talk: Lean 4 and the Curry-Howard Isomorphism],
  [ETH Zürich (ZUCCMAP)],
  [November 2024],
  [
    - Topics: Functional Programming, Type Theory, Propositions-as-Types and Formal Verification\
    - Recording: #weblink("https://youtu.be/Sy_4z751YWI")[YouTube] 
  ]
)


#section-header("Technical Projects & Open-Source")

#project-entry(
  [Formoniq],
  [Rust, FEEC, Differential Geometry],
  [Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes],
  [
    - Support for Arbitrary Dimensional Manifolds with Non-Trivial Topology
    - Any Rank Differential Forms
    - Solves Hodge-Laplace Source and Eigenvalue Problems
    - Repository: #weblink("https://github.com/luiswirth/formoniq")[GitHub]
  ]
)

#project-entry(
  [Carveout],
  [Rust, Rendering, WebGPU, WebAssembly],
  [High-performance Digital Pen Note-Taking Application],
  [
    - Custom Rendering with WebGPU for Cross-Platform Hardware Acceleration
    - Custom egui-winit-wgpu Integration and OSS Contributions
    - WASM / WebAssembly App
    - Repository: #weblink("https://github.com/luiswirth/carveout")[GitHub]
  ]
)

#project-entry(
  [UTTT],
  [Rust, Async, Tokio, Networking, Type-Level Abstraction],
  [Implementation of Ultimate Tic-Tac-Toe],
  [
    - Arbitrarily Deep Board Nesting, thanks to Generic Programming
    - A Networked Server-Client Multiplayer Game
    - Async Rust and Tokio for Concurrent Client Handling
    - Serde for Serialization
    - Repository: #weblink("https://github.com/luiswirth/uttt")[GitHub]
  ]
)

#project-entry(
  [arcus],
  [Rust, Embedded Programming, RTIC, Microcontroller],
  [Smart LED strip with interactive animations],
  [
    - Embedded Rust based on Real-Time Interrupt-driven Concurrency (RTIC)
    - Raspberry Pi Pico RP2040 Microcontroller
    - Programmable IO State Machine for Neopixel WS2812 LEDs using PIO Assembly
    - Controller Support for UART, Bluetooth and Infrared Remote
    - Fixed-point Arithmetic
    - Repository: #weblink("https://github.com/luiswirth/arcus")[GitHub]
  ]
)

#project-entry(
  [lwirth-lib],
  [C++, Rendering, Vulkan API, Neural Networks],
  [General Purpose Library and Graphics Engine in C++17],
  [
    - Vulkan Rendering Engine
    - Neural Network Implementation using Eigen
    - Dynamic Array, Pool and Stack Allocators
    - Custom Templated Linear Algebra module
    - Repository: #weblink("https://github.com/luiswirth/lwirth-lib")[GitHub]
  ],
)

//#project-entry(
//  "Dotnix",
//  "NixOS, Flakes",
//  [Personal NixOS system configuration],
//  [
//    - Reproducible development environments using Nix ecosystem
//    - Repository: #weblink("https://github.com/luiswirth/dotnix")[GitHub]
//  ]
//)

