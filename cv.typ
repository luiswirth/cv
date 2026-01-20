#set page(
  margin: 1cm,
  paper: "a4"
)
#set text(
  font: "New Computer Modern Sans",
  size: 9pt,
  lang: "en"
)

#let fgcolor = black
#let bgcolor = white

#set text(fill: fgcolor)
#set page(fill: bgcolor)

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
    columns: (15%, auto),
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
    Specialized in Computational Physics, High-Performance Computing and Hardware Systems
  ] \
  #v(0.5em)
  #weblink("mailto:luwirth@ethz.ch") |
  #weblink("http://lwirth.com")[lwirth.com] \
  #weblink("https://www.linkedin.com/in/luis-wirth-256618172/")[LinkedIn] |
  #weblink("https://github.com/luiswirth")[GitHub] |
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
      - AI in the Sciences and Engineering (PINNs, Neural Operators, Diffusion Models, Physics Foundation Models)
      - Advanced Numerical Methods for CSE (Boundary Element Method, Gaussian Processes for PDEs)
      - VLSI 1: HDL Based Design for FPGAs (RTL, SystemVerilog, Xilinx Vivado)
      - VLSI 3: Full-Custom Digital Circuit Design (Transistor-Level CMOS, Standard-Cell Design, Cadence Virtuoso)
      - Neuromorphic Engineering I (CMOS Device Physics, Subthreshold CMOS, Analog VLSI)
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
      - High-Performance Computing (Distributed Computing, MPI, OpenMP)
      - Numerical Methods for Partial Differential Equations (Finite Element Method, Functional Analysis)
      - Numerical Solution of Stochastic Ordinary Differential Equations (Itô calculus, Euler–Maruyama)
      - Computational Quantum Physics (Multi-Body Problems, Tensor Network States)
      - Statistical Physics and Computer Simulation (Molecular Dynamics, Thermodynamics)
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
  [2024\ February -- June],
  [
    - TA for "Numerical Methods for Partial Differential Equations" (Prof. R. Hiptmair)
    - Instructed Students in Weekly Tutorials on Mathematical Theory and C++ Implementation
  ]
)

#cv-entry(
  [R&D Software Engineer],
  [University of Basel (Dept. of Biomedical Engineering) -- Basel, CH],
  [2020\ June -- December],
  [
    - MIRACLE project (Minimally Invasive Robot-Assisted Computer-guided LaserosteotomE)
    - Contributed to the Development of SpectoVR, a Virtual Reality Surgical Planning Tool
    - High-Performance Multi-Volume Rendering using Raymarching Compute Shaders (GPU)
    - Visualization of PET/CT scans
  ]
)

#cv-entry(
  [Software Engineer Intern],
  [Adobe -- San Francisco, USA],
  [2019\ July -- August],
  [
    - Member of the Screens Team for Adobe Experience Manager
    - Contributed to Enterprise-Scale Digital Signage Software
    - Content Targeting using Machine Learning with TensorFlow
  ]
)

#cv-entry(
  [Computational Physicist Intern],
  [University of Basel (Dept. of Physics) -- Basel, CH],
  [2018\ July -- July],
  [
    - Applied Machine Learning Techniques to a Problem in Computational Chemistry
    - Predicted the Energy of Various Configurations of the Water Molecule
    - Custom Neural Network Backpropagation Implementation in C++/Eigen
    - _"Extraordinary performance for a high school student"_ - Prof. S. Goedecker
  ]
)

#pagebreak(weak: true)

#section-header("Publications & Talks")

#talk-entry(
  [BSc Thesis: Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes],
  [ETH Zürich],
  [May 2025],
  [
    - _"The best BSc thesis I have seen in years"_ - Prof. R. Hiptmair
    - Topics: PDEs, FEM, Differential Geometry, de Rham Cohomology, Regge Calculus
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
    - Solves Hodge-Laplace Source and Eigenvalue Problems
    - Support for Arbitrary Dimensional Manifolds with Non-Trivial Topology
    - Support for Arbitrary Rank Differential Forms
    - Sophisticated Data Structures for Mesh and Exterior Algebra using Multi-Indices
    - Repository: #weblink("https://github.com/luiswirth/formoniq")[GitHub]
  ]
)

#project-entry(
  [Carveout],
  [Rust, Rendering, WebGPU, WebAssembly],
  [High-Performance Digital Pen Note-Taking Application],
  [
    - Nonlinear Undo-Tree Data Structure to Preserve Full Editing History Across Branches
    - Rendering with WebGPU for Cross-Platform Hardware Acceleration
    - WebAssembly App with Custom egui-winit-wgpu Integration
    - Repository: #weblink("https://github.com/luiswirth/carveout")[GitHub]
  ]
)

#project-entry(
  [Arcus],
  [Rust, Embedded Programming, RTIC, Microcontroller],
  [Smart LED Strip with Interactive Animations],
  [
    - Embedded Rust based on Real-Time Interrupt-Driven Concurrency (RTIC)
    - Raspberry Pi Pico RP2040 Microcontroller
    - Programmable IO State Machine Driver for WS2812 LEDs using PIO Assembly
    - Controller Support for UART, Bluetooth and Infrared Remote
    - Repository: #weblink("https://github.com/luiswirth/arcus")[GitHub]
  ]
)

#project-entry(
  [UTTT],
  [Rust, Networking, Type-Level Abstraction],
  [Implementation of Ultimate Tic-Tac-Toe],
  [
    - Networked Multiplayer Server using standard TCP Stream Handling
    - Recursive Game State Abstraction allowing Arbitrarily Deep Board Nestings
    - egui for Rendering and Serde for Serialization
    - Repository: #weblink("https://github.com/luiswirth/uttt")[GitHub]
  ]
)

#project-entry(
  [lwirth-lib],
  [C++, Rendering, Vulkan API, Neural Networks],
  [General-Purpose Library and Graphics Engine in C++17],
  [
    - Vulkan Rendering Engine
    - Neural Network Implementation using Eigen
    - Dynamic Array, Pool and Stack Allocators
    - Custom Templated Linear Algebra module
    - Repository: #weblink("https://github.com/luiswirth/lwirth-lib")[GitHub]
  ],
)

#section-header("Skills")

- Languages: C++, Rust, Python, Lean4, SystemVerilog, WGSL, GLSL
- HPC: MPI, OpenMP, PETSc
- ML Frameworks: PyTorch, JAX
- Graphics / GPU: Vulkan, WebGPU, Compute Shaders
- EDA / Hardware: Cadence Virtuoso, Xilinx Vivado
- Tooling: Linux, Nix, Git, Typst, LaTeX


