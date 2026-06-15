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
    columns: (10%, auto),
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

#let pr-sym = [\*]
#let pr = [#super[#pr-sym]]

// --- Header ---
#align(center)[
  #text(size: 24pt, weight: "bold")[Luis Wirth] \
  #text(size: 11pt)[
    *MSc Student in Computational Science and Engineering at ETH Zürich* \
  ]
  #v(0.2em)
  #weblink("https://lwirth.com")[lwirth.com] |
  #weblink("mailto:luwirth@ethz.ch") \
  #weblink("https://lwirth.com/linkedin")[LinkedIn] |
  #weblink("https://lwirth.com/github")[GitHub] |
  #weblink("https://lwirth.com/youtube")[YouTube]
]

#v(-0.7cm)

// --- Education ---
#section-header("Education")

#cv-entry(
  [MSc ETH Computational Science and Engineering],
  [ETH Zürich -- Zürich, CH],
  [2025 -- (2027)],
  [
    - *GPA:* 5.64/6.0
    - *Field of specialization:* Computational Electromagnetics
    - *Focus:* Physics-Informed Machine Learning
    - *Semester Project*: BEM Benchmark for Ehrenpreis–Palamodov Gaussian Processes for Maxwell's Equations
    - *Key Coursework:*
      // always adjust to specific application
      - Computational and Statistical Aspects of Diffusion Models#pr (Stochastic Calculus, Time-Reversal, Score/Flow Matching)
      - AI in the Sciences and Engineering (PINNs, Graph Neural Operators, Physics Foundation Models)
      - CSCS Summer School#pr (HPC, CUDA, MPI)
      - Advanced Numerical Methods for CSE (Boundary Element Method, Hybrid Modeling for PDEs, GPs)
      - Electromagnetics and Differential Forms#pr (Differentiable Manifolds, De Rham Complex, DF Discretization)
      - Semiconductor Devices: Quantum Transport at the Nanoscale#pr (Transistor-Level Simulation, NEGF)
      - Neuromorphic Engineering I (CMOS Device Physics, Subthreshold CMOS, Analog VLSI)
      - VLSI 1: HDL Based Design for FPGAs (RTL, SystemVerilog, Xilinx Vivado)
      - VLSI 2: From Netlist to Complete System on Chip#pr (Full-Custom HFT ASIC Project)
      - VLSI 3: Full-Custom Digital Circuit Design (Transistor-Level CMOS, Standard-Cell Design, Cadence Virtuoso)

    #text(size: 7pt, fill: gray.darken(20%), style: "italic")[#pr-sym currently enrolled]
  ]
)

#cv-entry(
  [BSc ETH Computational Science and Engineering],
  [ETH Zürich -- Zürich, CH],
  [2021 -- 2025],
  [
    - *GPA:* 5.41/6.0
    - *Field of specialization:* Computational Physics
    - *Focus:* Finite Element Exterior Calculus
    - *Thesis:* Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes
    - *Key Coursework:*
      // always adjust to specific application
      - Numerical Methods for Partial Differential Equations (Finite Element Method, Conservation Laws)
      - Numerical Solution of Stochastic Ordinary Differential Equations (Itô calculus, Euler–Maruyama)
      - Computational Quantum Physics (Multi-Body Problems, Tensor Network States)
      - Statistical Physics and Computer Simulation (Molecular Dynamics, Thermodynamics)
      - High-Performance Computing (Distributed Computing, MPI, OpenMP)
      - Systems Programming and Computer Architecture (C, x86-64 Assembly, Virtual Memory, Caching)
      - Information Theory (Shannon Entropy, Mutual Information, Coding, Typical Sequences)
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


#v(-0.3cm)

#section-header("Professional Experience")

#cv-entry(
  [Teaching Assistant NumPDE],
  [ETH Zürich (Seminar for Applied Mathematics) -- Zürich, CH],
  [2024\ February -- June],
  [
    - TA for "Numerical Methods for Partial Differential Equations" (Prof. R. Hiptmair)
    - Instructed students in weekly tutorials on mathematical theory and C++ implementation
  ]
)

#cv-entry(
  [R&D Software Engineer],
  [University of Basel (Dept. of Biomedical Engineering) -- Basel, CH],
  [2020\ June -- December],
  [
    - Joined the MIRACLE project (Minimally Invasive Robot-Assisted Computer-guided Laserosteotome)
    - Developed SpectoVR, a virtual reality surgical planning tool
    - Implemented real-time multi-volume raymarching with distance-field 
      empty-space skipping for CT/MRI scans
    - Added PET-CT scan visualization support
  ]
)

#cv-entry(
  [Software Engineer Intern],
  [Adobe -- San Francisco, USA],
  [2019\ July -- August],
  [
    - Joined the Adobe Experience Manager Screens team
    - Built a content targeting prototype using TensorFlow for personalized
      digital signage delivery
  ]
)

#cv-entry(
  [Computational Physicist Intern],
  [University of Basel (Dept. of Physics) -- Basel, CH],
  [2018\ July],
  [
    - Implemented a custom neural network with backpropagation in C++/Eigen
    - Trained the model to predict the potential energies of the water 
      molecule from atomic configurations
  ]
)

#pagebreak(weak: true)

#section-header("Publications & Talks")


#talk-entry(
  [Semester Project: BEM Benchmark for Ehrenpreis–Palamodov Gaussian Processes for Maxwell's Equations],
  [ETH Zürich],
  [in progress],
  [
    - Supervisor: Prof. Dr.-Ing. Stefan Kurz
    - Topics: Maxwell's Equations, Boundary Element Method, AI4science, Gaussian Processes, Exterior Calculus
  ]
)

#talk-entry(
  [BSc Thesis: Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes],
  [ETH Zürich],
  [May 2025],
  [
    - _"The best BSc thesis I have seen in years"_ --- Prof. R. Hiptmair
    - Topics: PDEs, FEM, Differential Geometry, Exterior Calculus, de Rham Cohomology, Regge Calculus
    - Paper: #weblink("https://arxiv.org/abs/2506.02429")[arXiv:2506.02429]
    - Presentation: #weblink("https://youtu.be/A4px5jTXcOM")[YouTube]
  ]
)

#talk-entry(
  [Seminar Talk: Lean 4 and the Curry-Howard Isomorphism],
  [ETH Zürich (ZUCCMAP)],
  [November 2024],
  [
    - Topics: Functional Programming, Type Theory, Propositions-as-Types and Formal Verification
    - Recording: #weblink("https://youtu.be/Sy_4z751YWI")[YouTube]
  ]
)


#section-header("Technical Projects & Open-Source")

#project-entry(
  [Formoniq],
  [Rust, FEEC, Differential Geometry],
  [Rust Implementation of Finite Element Exterior Calculus on Coordinate-Free Simplicial Complexes],
  [
    - Solves Hodge-Laplace source and eigenvalue problems
    - Support for arbitrary dimensional manifolds with non-trivial topology
    - Support for arbitrary rank differential forms
    - Sophisticated data structures for simplicial mesh and exterior algebra using multi-indices
    - \~6k LOC of Rust, PETSc/SLEPc solver backend
    - Repository: #weblink("https://github.com/luiswirth/formoniq")[GitHub]
  ]
)

#project-entry(
  [Carveout],
  [Rust, Rendering, WebGPU, WebAssembly],
  [High-Performance Digital Pen Note-Taking Application],
  [
    - Nonlinear undo-tree data structure to preserve full editing history across branches
    - Rendering with WebGPU for cross-platform hardware acceleration
    - WebAssembly app with custom egui-winit-wgpu integration
    - Repository: #weblink("https://github.com/luiswirth/carveout")[GitHub]
  ]
)

#project-entry(
  [Arcus],
  [Rust, Embedded Programming, RTIC, Microcontroller],
  [Smart LED Strip with Interactive Animations],
  [
    - Embedded Rust based on real-time interrupt-driven concurrency (RTIC)
    - Raspberry Pi Pico RP2040 microcontroller
    - Programmable IO state machine driver for WS2812 LEDs using PIO assembly
    - Controller support for UART, bluetooth and infrared remote
    - Repository: #weblink("https://github.com/luiswirth/arcus")[GitHub]
  ]
)

#project-entry(
  [UTTT],
  [Rust, Networking, Type-Level Abstraction],
  [Implementation of Ultimate Tic-Tac-Toe],
  [
    - Networked multiplayer server using standard TCP stream handling
    - Recursive game state abstraction allowing arbitrarily deep board nestings
    - egui for rendering and Serde for serialization
    - Repository: #weblink("https://github.com/luiswirth/uttt")[GitHub]
  ]
)

//#project-entry(
//  [lwirth-lib],
//  [C++, Rendering, Vulkan API, Neural Networks],
//  [General-Purpose Library and Graphics Engine in C++17],
//  [
//    - Vulkan rendering engine
//    - Neural network implementation using Eigen
//    - Dynamic array, pool and stack allocators
//    - Custom templated linear algebra module
//    - Repository: #weblink("https://github.com/luiswirth/lwirth-lib")[GitHub]
//  ],
//)

#section-header("Skills")

*Technical:*
- Languages: C++, Rust, Python, Lean4, Julia, SystemVerilog
- HPC: MPI, OpenMP, PETSc
- ML Frameworks: PyTorch, JAX
- Graphics / GPU: Vulkan, WebGPU, Compute Shaders
- EDA / Hardware: Cadence Virtuoso, Xilinx Vivado
- Tooling: Linux, Nix, Git, Typst, LaTeX

*Spoken Languages:* German (native), English (C2), French (B1), Spanish (A2)
