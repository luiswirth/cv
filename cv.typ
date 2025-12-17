#set page(
  margin: 1cm,
  paper: "a4"
)
#set text(
  font: "New Computer Modern Sans",
  size: 10pt,
  lang: "en"
)

#let section-header(title) = {
  v(1em)
  text(weight: "bold", size: 14pt, title)
  line(length: 100%, stroke: 0.5pt + gray)
  v(0.5em)
}

#let weblink(..args) = text(
  fill: blue,
  link(..args)
)


// --- Header ---
#align(center)[
  #text(size: 24pt, weight: "bold")[Luis Wirth] \
  #v(0.5em)
  #text(size: 11pt)[
    MSc Student in Computational Science and Engineering at ETH Zürich \
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

#let cv-entry(date, title, org, location, details) = {
  grid(
    columns: (15%, 85%),
    gutter: 1em,
    text(style: "italic", fill: gray.darken(30%), date),
    stack(
      dir: ttb,
      spacing: 0.3em,
      text(weight: "bold", size: 11pt, title),
      v(0.5em),
      text(style: "italic", org + if location != "" { [ -- ] + location } else { "" }),
      v(0.8em),
      details,
    )
  )
}

#cv-entry(
  [2025 -- (2027)],
  [MSc ETH Computational Science and Engineering],
  [ETH Zürich],
  [Zürich, CH],
  [
    //- *GPA:* ?/6.0
    //- *Major:* Computational Physics
    //- *Minor:* Computational Electromagnetism
    - *Key Coursework:*
      - VLSI 1: HDL Based Design for FPGAs (SystemVerilog, Vivado)
      - VLSI 3: Full-Custom Digital Circuit Design (Schematic and Layout in Vivado)
      - Neuromorphic Engineering I
      - Advanced Numerical Methods for CSE (Boundary Element Method and Hybrid Modeling)
      - AI in the Sciences and Engineering (PINNs, Neural Operators)
  ]
)

#cv-entry(
  [2021 -- 2025],
  [BSc ETH Computational Science and Engineering],
  [ETH Zürich],
  [Zürich, CH],
  [
    - *GPA:* 5.41/6.0
    - *Major:* Computational Physics
    - *Thesis:* Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes
    - *Key Coursework:*
      - Numerical Methods for Partial Differential Equations (Finite Element Method)
      - Numerical Solution of Stochastic Ordinary Differential Equations (Itô calculus)
      - Computational Quantum Physics (Quantum multi-body problems)
      - Statistical Physics and Computer Simulation (Molecular Dynamics)
      - High-Performance Computing (`C++`, MPI, OpenMP)
      //- Systems Programming and Computer Architecture
  ]
)

/*
#cv-entry(
  [2016 -- 2020],
  [Matura],
  [Gymnasium Oberwil],
  [Basel, CH],
  [
    - *Major:* Mathematics & Physics
    - *Thesis:* Machine Learning with TensorFlow: Developing a Convolutional Denoising Autoencoder
    - Gifted education program
  ]
)

#cv-entry(
  [2019],
  [Pre-College Study (Physics)],
  [Universität Basel],
  [Basel, CH],
  [
    - *Course*: Introduction to Physics I: Mechanics and Thermodynamics
    - *Grade*: 6.0/6.0
  ]
)
*/


#section-header("Professional Experience")

#cv-entry(
  [2024],
  [Teaching Assistant NumPDE],
  [ETH Zürich (Seminar for Applied Mathematics)],
  [Zürich, CH],
  [
    - TA for "Numerical Methods for Partial Differential Equations" (Prof. Ralf Hiptmair)
    - Instructed students in weekly tutorials on mathematical theory and `C++` implementation
  ]
)

#cv-entry(
  [June -- December 2020],
  [R&D Software Engineer],
  [University of Basel (Dept. of Biomedical Engineering)],
  [Basel, CH],
  [
    - MIRACLE project (Minimally Invasive Robot-Assisted Computer-guided LaserosteotomE)
    - Development on SpectoVR, a Virtual Reality surgical planning tool
    - Implemented high-performance Multi-Volume Rendering using raymarching compute shaders
    - Visualization of PET/CT scans
  ]
)

#cv-entry(
  [July -- August 2019],
  [Software Engineer Intern],
  [Adobe],
  [San Francisco, USA],
  [
    - Member of the "Screens" team for Adobe Experience Manager
    - Contributed to enterprise-scale digital signage software
    - Content Targeting using Machine Learning with TensorFlow
  ]
)

#cv-entry(
  [July 2018],
  [Computational Physicist Intern],
  [University of Basel (Dept. of Physics)],
  [Basel, CH],
  [
    - Applied Machine Learning to problem in computational chemistry
    - Predicted the energy of various configurations of the water molecule
    - Custom Neural Network Implementation in `C++`/Eigen with backpropagation
    - "Extraordinary performance for a high school student" - Prof. Stefan Goedecker
  ]
)

#section-header("Publications & Talks")

- *BSc Thesis: Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes* (ETH Zürich, May 1, 2025)
  - Supervisor: Prof. Dr. Ralf Hiptmair
  - Topics: PDEs, FEM, Differential Geometry, Differential Forms, de Rham Cohomology
  - Paper: #weblink("https://arxiv.org/abs/2506.02429")[arXiv]
  - Presentation: #weblink("https://youtu.be/A4px5jTXcOM")[YouTube]

- *ZUCCMAP Seminar: Lean 4 and the Curry-Howard Isomorphism*\
  - Topics: Functional Programming, Type Theory, propositions-as-types, formal verification and interactive theorem proving \
  - Recording: #weblink("https://youtu.be/Sy_4z751YWI")[YouTube] 

#section-header("Technical Projects & Open-Source")

#let project-entry(name, tech, desc) = {
  stack(
    dir: ttb,
    spacing: 0.3em,
    text(weight: "bold", name) + " | " + text(style: "italic", tech),
    desc
  )
  v(0.6em)
}

#project-entry(
  [Formoniq],
  [Rust, FEEC, Differential Geometry],
  [
    Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes
    - Support for arbitrary dimensional manifolds with arbitrary topology
    - Any rank differential forms
    - Solves Hodge-Laplace source and eigenvalue problems
    - Repository: #weblink("https://github.com/luiswirth/formoniq")[GitHub]
  ]
)

#project-entry(
  [Carveout],
  [Rust, WGPU, WebAssembly],
  [
    High-performance digital pen note-taking application
    - Custom rendering with `wgpu` (WebGPU) for cross-platform hardware acceleration
    - Custom egui-winit-wgpu integration and OSS contributions
    - WASM web app
    - Repository: #weblink("https://github.com/luiswirth/carveout")[GitHub]
  ]
)

#project-entry(
  [UTTT],
  [Rust, Async, Tokio, Networking, Type-Level Abstraction],
  [
    Implementation of Ultimate Tic-Tac-Toe
    - Arbitrarily deep board nesting, thanks to generic programming
    - A networked server-client multiplayer game
    - Async Rust and Tokio for concurrent client handling
    - Serde for Serialization
    - Repository: #weblink("https://github.com/luiswirth/uttt")[GitHub]
  ]
)

#project-entry(
  [arcus],
  [Rust, Embedded Programming, RTIC, Microcontroller],
  [
    Smart LED strip with interactive animations
    - Embedded Rust based on Real-Time Interrupt-driven Concurrency (RTIC)
    - Raspberry Pi Pico RP2040 microcontroller
    - Programmable IO State Machine for Neopixel WS2812 LEDs using PIO assembly
    - Controller support for UART, Bluetooth and Infrared remote
    - Fixed-point arithmetic
    - Repository: #weblink("https://github.com/luiswirth/arcus")[GitHub]
  ]
)

#project-entry(
  [lwirth-lib],
  [`C++`, Game Engine, Graphics, Vulkan API, Neural Networks],
  [
    General Purpose Library and Graphics Engine in `C++17`
    - Vulkan rendering engine
    - Neural Network Implementation using Eigen
    - Dynamic array, pool and stack allocators
    - Custom templated Linear Algebra module
    - Repository: #weblink("https://github.com/luiswirth/lwirth-lib")[GitHub]
  ],
)


#project-entry(
  "Dotnix",
  "NixOS, Flakes",
  [
    Personal NixOS system configuration
    - Reproducible development environments using Nix ecosystem
    - Repository: #weblink("https://github.com/luiswirth/dotnix")[GitHub]
  ]
)

