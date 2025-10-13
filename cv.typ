/**
 * Copyright (c) 2025 Adheesh Trivedi — Licensed under CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/)
 */


#import "clickworthy-resume/lib.typ": *
#import "@preview/fontawesome:0.6.0"

// Personal Information
#let name = "Adheesh Trivedi"
#let email = "adheeshtrivedi@gmail.com"
#let contacts = (
  link("mailto:" + email)[#fontawesome.fa-envelope() #email],
  link("https://github.com/AdhTri001")[#fontawesome.fa-github() AdhTri001],
  link("https://linkedin.com/in/AdhTri001")[#fontawesome.fa-linkedin() AdhTri001],
  link("https://adhtri001.github.io")[#fontawesome.fa-link() adhtri001.github.io],
)

#let location = [4#super("th") year, BS Computer Science & Engineering, IISER Bhopal, India]

// Resume configuration
#let theme = rgb("#26428b")
#let font = "New Computer Modern"
#let fontSize = 11pt
#let lang = "en"
#let margin = (
  top: 3em,
  bottom: 6em,
  left: 4em,
  right: 4em,
)

// Ensure A4 page size
#set page(width: 210mm, height: 297mm)

#show: resume.with(
  author: name,
  location: location,
  contacts: contacts,
  theme-color: theme,
  font: font,
  font-size: fontSize,
  lang: lang,
  margin: margin,
)

#import "config.typ": compact-list-line, latex

// = Academic Interests

// #interest-line((
//   "Algorithms",
//   "Graph Theory",
//   "Complexity Theory",
//   "Model Checking & Formal Verification",
//   "Parsing & Domain-Specific Languages",
//   "Low Level Programming",
//   "Machine Learning"
// ))

= Education

#edu(
  institution: "IISER Bhopal",
  date: "2022 – 2026",
  location: "Bhopal, India",
  degrees: (
    ("B.S.", "Computer Science & Engineering"),
  ),
  gpa: [9.08 #footnote("Ongoing", numbering: "*")<ongoing>/10 (3.63/4)],
  extra: compact-list-line((
    "O (Outstanding): 10/10",
    "A: 10/10",
    "B+: 9/10",
    "B: 8/10",
  )),
  courses: (
    [Multivariable Calculus (B+)],
    [Discrete Mathematics (A)],
    [Probability & Statistics (A)],
    [Complex Variables (A)],
    [Real Analysis (B+)],
    [Applied Optimization (B+)],
    [Introduction to C Programming (A)],
    [Data Structures & Algorithms (B+)],
    [Signals & Systems (A)],
    [Theory of Computation (A)],
    [Principles of Model Checking (A)],
    [Fundamentals of Database Systems (O)],
    [Machine Learning (B+)],
    [Computer Vision (B)],
    [Artificial Intelligence (B+)],
    [Group Theory @ongoing],
    [Modern Cryptography @ongoing],
    [Information Theory & Coding @ongoing],
    [Computer Organization @ongoing],
  ),
)

= Research Projects

#exp(
  title: "On Robust Coloring of Graphs and ETH",
  organization: "Mentor: Dr. Prafullkumar Tale",
  date: "July 2025 – Present",
  details: [
    - Studing a relaxation of proper coloring in which edges with same color are associated
      with some cost.
    - Studied the #smallcaps[Exponential Time Hypothesis], and ETH-Preserving reductions.
    - Investigated treewidth; applied tree decompositions to dynamic programming on hard problems.
  ],
)

#exp(
  title: "Scientific Tool for Bridging Model Checking Ecosystems",
  organization: "Mentor: Dr. Arpit Sharma, PhD. Shonak Shaha",
  date: "Dec 2024 – Present",
  details: [
    - The Model Checking ecosystem remains fragmented, with various tools and frameworks lacking
      seamless interoperability specifically between action based and state based model checking.
    - Developing high-performance converters between action-labeled models (#link("https://cadp.inria.fr/")[CADP])
      and (#link("https://www.mcrl2.org/")[mCRL2]) and state-labeled models
      (#link("https://www.prismmodelchecker.org/")[PRISM]) / (#link("https://www.stormchecker.org/")[Storm])
      to enable cross-ecosystem model checking.
    - Emphasis on parser design, memory-efficient graph transformations, semantic preservation,
      and inter-operability testing..
  ],
)

#exp(
  title: "On the feasibility of parameterized algorithms for VC Dimensions",
  organization: "Mentor: Dr. Prafullkumar Tale",
  date: "May 2025 – July 2025",
  details: [
    - #smallcaps[VC Dimension] of a classification model is related to how complicated it can be,
      specifically in terms of the model's capacity to fit various datasets.
      Precisely, model's ability to generalize to unseen data.
    - Tested efficient algorithms for computing the #smallcaps[Graph VC Dimension].
    - Assessed and compared the parameterized algorithms for #smallcaps[Graph VC Dimension].
  ],
)

#exp(
  title: "Reading Project on Graph Theory",
  organization: "Mentor: Dr. Prafullkumar Tale",
  date: "Jan 2024 – Apr 2024",
  details: [
    - Studied #emph[A First Look at Graph Theory] (Clark & Holton) with problem solving.
    - Reinforced concepts: Graphs & their types, connectivity, traversals, matching problem,
      planarity.
  ],
)


= Technical Projects

#exp(
  title: "Extensively Customizable Exam Scheduler (Graph Coloring)",
  organization: "Vivek Kumar, Rahul Jana, Ayushman Shaha, Dr. Prafullkumar Tale",
  date: "Oct 2024 – Jan 2025",
  details: [
    - Discovered that exam schedules for 14,000+ students and course registrations were being created manually,
      requiring significant effort.
    - Developed an engine that assigns exams to time slots & halls minimizing same-day conflicts ($<=$24h) using
      graph coloring + randomized optimization heuristics.
    - Supports multi-hall allocation when enrollment exceeds single capacity; leverages NetworkX for constraint modeling.
  ],
)

#exp(
  title: "Texture Classification & Face Clustering for Image Search",
  date: "Sep 2024 – Nov 2024",
  details: [
    - The project aims to address the common challenge of navigating through directories containing a large
      collection of images, enabling users to efficiently filter and search for images.
    - Pipeline: MTCNN detection → InceptionResNetV1 embeddings → cosine similarity for face grouping.
    - Implemented batching to control GPU memory; evaluated multiple texture descriptors for retrieval precision.
  ],
)

#exp(
  title: "Bag-of-Words Chatbot (Context-Aware)",
  date: "Oct 2021 – Dec 2021",
  details: [
    - Built a context-aware chatbot supporting tasks like to-do lists, word definitions, note taking,
      and time queries across timezones.
    - Trained a sequential neural network in TensorFlow on a custom dataset tailored to project requirements.
  ],
)

#exp(
  title: "General Purpose Discord Bot",
  date: "Mar 2021",
  details: [
    - Implemented modules for moderation, games, music playback, jokes & meme generation.
    - The project was written in Python and utilized PostgreSQL database to store every configuration for the bot,
      which was server and user specific. The bot was designed to be scalable.
  ],
)

#exp(
  title: "GUI Developer Intern (Litesoph, AITG)",
  organization: "Mentor: Prof. Varadharajan Srinivasan",
  date: "Feb 2024 – Aug 2024",
  details: [
    - Led integration of scientific engines (#link("https://octopus-code.org/")[Octopus],
      #link("https://gpaw.readthedocs.io/")[GPAW], #link("https://www.nwchem-sw.org/")[NWChem])
      within a Python toolkit for photo-induced phenomena simulations.
    - Automated submission workflows and job orchestration on national HPC clusters (PARAM-Ganga / PARAM-Kamrupa).
  ],
)


= Leadership & Service

#exp(
  title: "Coordinator – Coding Club",
  organization: "IISER Bhopal",
  date: "May 2024 – May 2025",
  details: [
    - The club aims to foster competitive programming skills and algorithmic thinking among students.
    - It organizes onsite competitive programming contests; facilitates open discussions & tutorials.
    - I actively mentor junior members and led workshops on advanced topics.
  ],
)

#exp(
  title: "Hackathon Organizer – Armacode 0",
  organization: "IISER Bhopal × IIIT Bhopal",
  date: "Jan 2024 – Apr 2024",
  details: [
    - Prepared questions for online round with over 500 applicants.
    - Co-organized a 35-hour national hackathon; collaborated with faculty and industry experts on
      problem design and judging of 12 onsite teams.
  ],
)


= Additional Interests

#compact-list-line((
  "Music (Guitar)",
  "Competitive Programming",
  "Speed Typing",
  "Mathematical Visualization (Desmos)",
))

// Publications section can be added if bibliography entries are available.


// END

#v(1fr, weak: true)

#align(right)[
  #text(
    size: 9pt,
    stroke: .01pt,
    emph[For latest version, visit: #link("https://adhtri001.github.io/AdhTri001/cv_adheesh.pdf")[adhtri001.github.io]]
  )
]