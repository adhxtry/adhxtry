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
  link("https://github.com/adhxtry/")[#fontawesome.fa-github() adhxtry],
  link("https://linkedin.com/in/AdhTri001/")[#fontawesome.fa-linkedin() AdhTri001],
  link("https://adhxtry.github.io/portfolio/")[#fontawesome.fa-link() adhxtry.github.io],
)

#let location = [4#super("th") year, BS Computer Science & Engineering, IISER Bhopal, India]

// Resume configuration
#let theme = rgb("#26428b")
#let font = "Calibri"
#let fontSize = 11.5pt
#let lang = "en"
#let latest-version-url = "https://adhxtry.github.io/adhxtry/cv_adheesh.pdf"
#let margin = (
  top: 3em,
  bottom: 4em,
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
  latest-version-url: latest-version-url,
  margin: margin,
)

#import "meta/config.typ": compact-list-line, latex

// Important people mentioned in the CV
#import "meta/people.typ": *

#show "Dr. Prafullkumar Tale": dr_prafull
#show "Dr. Arpit Sharma": dr_arpits
#show "Prof. Varadharajan Srinivasan": prof_vardha

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
    [Algorithms (A)],
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
  links: (
    (fontawesome.fa-dropbox(), "https://www.dropbox.com/scl/fi/sryhu6iqr1htdpbcw8hb9/Robust_Coloring.pdf?rlkey=ndy34qaxtrfn9zpv5tzynt7yd&st=f418jyvl&dl=0"),
  ),
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
  links: (
    (fontawesome.fa-github(), "https://github.com/GALTOSM/"),
  ),
  details: [
    - The Model Checking ecosystem remains fragmented, with various tools and frameworks lacking
      seamless interoperability specifically between action based and state based model checking.
    - Developing high-performance converters between action-labeled models (#link("https://cadp.inria.fr/")[CADP])
      and (#link("https://www.mcrl2.org/")[mCRL2]) and state-labeled models
      (#link("https://www.prismmodelchecker.org/")[PRISM]) / (#link("https://www.stormchecker.org/")[Storm])
      to enable cross-ecosystem model checking.
    - Emphasis on parser design, memory-efficient graph transformations, semantic preservation,
      and inter-operability testing.
  ],
)

#exp(
  title: "On the feasibility of parameterized algorithms for VC Dimensions",
  organization: "Mentor: Dr. Prafullkumar Tale",
  date: "May 2025 – July 2025",
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/tree-decomposition"),
  ),
  details: [
    - #smallcaps[VC Dimension] of a classification model is related to how complicated it can be,
      specifically in terms of the model's capacity to fit various datasets.
      Precisely, model's ability to generalize to unseen data.
    - Tested efficient algorithms for computing the #smallcaps[Graph VC Dimension].
    - Assessed and compared the parameterized algorithm with current state-of-the-art for #smallcaps[Graph VC Dimension] for real world networks.
  ],
)

#exp(
  title: "Reading Project on Graph Theory",
  organization: "Mentor: Dr. Prafullkumar Tale",
  date: "Jan 2024 – Apr 2024",
  links: (
    (fontawesome.fa-book(), "https://books.google.co.in/books/about/A_First_Look_at_Graph_Theory.html?id=vLRNRebXuKYC"),
  ),
  details: [
    - Studied #emph[A First Look at Graph Theory] (Clark & Holton) with problem solving.
    - Reinforced concepts: Graphs & their types, connectivity, traversals, matching problem,
      planarity.
  ],
)


= Technical Projects



#exp(
  title: "Extensively Customizable Exam Scheduler using Graph Coloring",
  date: "Oct 2025 – Nov 2025",
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/nifty-network-analysis"),
    (fontawesome.fa-file-alt(), "https://www.dropbox.com/scl/fi/ce0myxe9vjwig55hgjws4/main.pdf?rlkey=zp2yls1yb8cix0rfwd1t2w0cc&st=seglxg08&dl=0")
  ),
  details: [
    - Analyzed relationships among major Nifty companies and summarized insights in an interactive dashboard and formal report.
    - Delivered clear visual findings on market structure, influential firms, and cluster patterns for course project.
  ],
)

#exp(
  title: "Extensively Customizable Exam Scheduler using Graph Coloring",
  organization: "Vivek Kumar, Rahul Jana, Ayushman Shaha, Dr. Prafullkumar Tale",
  date: "Oct 2024 – Jan 2025",
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/exam_scheduler"),
  ),
  details: [
    - Discovered that exam schedules for 2,000+ students in my college
      were being created manually, requiring significant effort.
    - Developed an engine that assigns exams to time slots & halls
      minimizing same-day conflicts ($<=$24h) using
      graph coloring + randomized optimization heuristics.
    - Supports multi-hall allocation when enrollment exceeds single capacity;
      leverages NetworkX for constraint modeling.
  ],
)

#exp(
  title: "Texture Classification & Face Clustering for Image Search",
  date: "Sep 2024 – Nov 2024",
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/nomadium"),
  ),
  details: [
    - The project aims to address the common challenge of navigating through directories containing a large
      collection of images, enabling users to efficiently filter and search for images.
    - Pipeline: MTCNN detection → InceptionResNetV1 embeddings → cosine similarity for face grouping.
    - Implemented batching to control GPU memory and multiple texture descriptors for retrieval precision.
  ],
)

#exp(
  title: "GUI Developer Intern",
  organization: "Mentor: Prof. Varadharajan Srinivasan",
  date: "Feb 2024 – Aug 2024",
  location: "AITG Labs",
  links: (
    (fontawesome.fa-github(), "https://github.com/aitgcodes/litesoph"),
    (fontawesome.fa-link(), "https://aitgcodes.github.io/litesoph-website/"),
  ),
  details: [
    - Led integration of scientific engines (#link("https://octopus-code.org/")[Octopus],
      #link("https://gpaw.readthedocs.io/")[GPAW], #link("https://www.nwchem-sw.org/")[NWChem])
      within a Python toolkit for photo-induced phenomena simulations.
    - Automated submission workflows and job orchestration on national HPC clusters (PARAM-Ganga / PARAM-Kamrupa).
  ],
)

#exp(
  title: "Context aware Bag-of-Words Chatbot",
  date: "Oct 2021 – Dec 2021",
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/tensorBot"),
  ),
  details: [
    - Built a context-aware chatbot supporting tasks like to-do lists, word definitions, note taking,
      and time queries across timezones.
    - Trained a sequential neural network in TensorFlow on a custom dataset tailored to project requirements.
  ],
)

#exp(
  title: "General Purpose Discord Bot",
  date: "Mar 2021",
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/UFO-BOT"),
  ),
  details: [
    - Python project that utilized PostrgreSQL to implement feature reach Discord bot.
  ],
)


= Talks & Teaching

#exp(
  title: "Teaching Assistant - Theory of Computation",
  organization: "Instructed by Dr. Arpit Sharma",
  date: "Aug 2025 – Dec 2025",
)

#exp(
  title: "Fast Matrix Multiplication Algorithms",
  organization: "Math Club @ IISER Bhopal",
  date: "1 Sept 2023",
  links: (
    (fontawesome.fa-file-text(), "https://github.com/adhxtry/iiserbCodeCollective/tree/main/1_StrassenMultiplication"),
  ),
  details: [
  - Delivered a talk on Strassen's algorithm and its implications on computational complexity.
])


= Leadership & Engagement

#exp(
  title: "Club Coordinator",
  organization: "Coding club @ IISER Bhopal",
  date: "May 2024 – May 2025",
  // details: [
  //   - The club aims to foster competitive programming skills and algorithmic thinking among students.
  //   - It organizes onsite competitive programming contests; facilitates open discussions & tutorials.
  //   - I actively mentor junior members and led workshops on advanced topics.
  // ],
)

#exp(
  title: "Hackathon Organizer – Armacode 0",
  organization: "IISER Bhopal × IIIT Bhopal",
  date: "Jan 2024 – Apr 2024",
  // details: [
  //   - Prepared questions for online round with over 500 applicants.
  //   - Co-organized a 35-hour national hackathon; collaborated with faculty and industry experts on
  //     problem design and judging of 12 onsite teams.
  // ],
)


= Additional Interests

#compact-list-line((
  "Music (Guitar)",
  "Competitive Programming",
  "Speed Typing",
  "Mathematical Visualization (Desmos, Manim)",
))

// Publications section can be added if bibliography entries are available.
// Hopefully soon :/
