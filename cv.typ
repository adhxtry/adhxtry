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

#let location = [MTech Artificial Intelligence '28, IISc]

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
  date: [ 2022 -- 2026 ],
  location: "Bhopal, India",
  degrees: (
    ("B.S.", "Computer Science & Engineering"),
  ),
  gpa: [9.34/10 (3.74/4)/* #footnote("Ongoing", numbering: "*")<ongoing> */],
  courses: (
    [Discrete Mathematics],
    [Probability & Statistics],
    [Complex Variables],
    [Group Theory],
    [Real Analysis],
    [Linear Algebra],
    [Multivariable Calculus],
    [Applied Optimization],
    [Theory of Computation],
    [Signals & Systems],
    [Machine Learning],
    [Computer Vision],
    [Artificial Intelligence],
    [Database Systems],
    [Introduction to C Programming],
    [Data Structures & Algorithms],
    [Algorithms (Advanced)],
    [Software Modelling & Verification],
    [Modern Cryptography],
    [Information Theory & Coding],
    [Computer Organization],
    [Network Sciences],
    [Operating Systems],
    [Computer Networks],
    [Advanced Programming],
    [Compiler Design],
  ),
)

#edu(
  institution: "Indian Institute of Science",
  date: [ 2026 -- 2028 ],
  location: "Bangalore, India",
  degrees: (
    ("M.Tech.", "Artificial Intelligence"),
  ),
  gpa: [_dnf_ #footnote("Ongoing", numbering: "*")<ongoing>]
)

= Technical Projects

#exp(
  title: "Nifty Network Analysis & Visualization Dashboard",
  date: [ Oct 2025 -- Nov 2025 ],
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
  date: [ Oct 2024 -- Jan 2025 ],
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/unisched"),
  ),
  details: [
    - Developed an engine that assigns exams to time slots & halls minimizing same-day
      conflicts ($<=$24h).
    - Uses graph coloring and randomized optimization heuristics for reaching close
      to optimal scheduling.
    - Supports multi-hall allocation when enrollment exceeds single capacity.
  ],
)

#exp(
  title: "Texture Classification & Face Clustering for Image Search",
  date: [ Sep 2024 -- Nov 2024 ],
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/nomadium"),
  ),
  details: [
    - Addresses the common challenge of navigating through a large collection of images,
    - Enables the user to efficiently filter and search for images by face or texture.
    - Implemented batching to control GPU memory and multiple texture descriptors for
      retrieval precision.
  ],
)

#exp(
  title: "GUI Developer Intern",
  organization: "Mentor: Prof. Varadharajan Srinivasan",
  date: [ Feb 2024 -- Aug 2024 ],
  location: "AITG Labs",
  links: (
    (fontawesome.fa-github(), "https://github.com/aitgcodes/litesoph"),
    (fontawesome.fa-link(), "https://aitgcodes.github.io/litesoph-website/"),
  ),
  details: [
    - Led integration of DFT engines (#link("https://octopus-code.org/")[Octopus],
      #link("https://gpaw.readthedocs.io/")[GPAW], #link("https://www.nwchem-sw.org/")[NWChem])
      within a Python toolkit for photo-induced phenomena simulations.
    - Automated submission workflows and job orchestration on HPC clusters.
  ],
)

#exp(
  title: "Context aware Bag-of-Words Chatbot",
  date: [ Oct 2021 -- Dec 2021 ],
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/tensorBot"),
  ),
  details: [
    - Built a context-aware chatbot supporting tasks like to-do lists, word definitions,
      note taking, make jokes and time queries across timezones.
    - Trained a sequential neural network in TensorFlow on a custom dataset tailored to
      project requirements.
  ],
)

#exp(
  title: "General Purpose Discord Bot",
  date: [ Mar 2021 ],
  links: (
    (fontawesome.fa-github(), "https://github.com/adhxtry/UFO-BOT"),
  ),
  details: [
    - Python project that utilized PostgreSQL to implement feature-rich Discord bot.
  ],
)

= Research Projects

#exp(
  title: "Practical study on embeddings between KS and LTS",
  organization: "Mentor: Dr. Arpit Sharma, PhD. Shonak Saha",
  date: [ Dec 2025 -- Apr 2026 ],
  links: (
    (fontawesome.fa-dropbox(), "https://www.dropbox.com/scl/fi/gi8ph0m3fbm3bztdnmmvw/bs-project.pdf?rlkey=kx55612n6a3dmze9xjnx5uvcs&st=mvkn174b&dl=0"),
    (fontawesome.fa-github(), "https://github.com/adhxtry/bs-project/")
  ),
  details: [
    - Built a Python framework for model checking of explicit
      #smallcaps[Labelled Transition Systems] models
    - Supported multiple backends (NuSMV, Spin, Storm) by embedding into
      #smallcaps[Kripke Structures].
    - Benchmarked and studied the feasibility of explicit model checking in embedded models.
  ]
)

#exp(
  title: "On Robust Coloring of Graphs and ETH",
  organization: "Mentor: Dr. Prafullkumar Tale",
  date: [ July 2025 -- Jan 2026 ],
  links: (
    (fontawesome.fa-dropbox(), "https://www.dropbox.com/scl/fi/sryhu6iqr1htdpbcw8hb9/Robust_Coloring.pdf?rlkey=ndy34qaxtrfn9zpv5tzynt7yd&st=f418jyvl&dl=0"),
  ),
  details: [
    - Studied a relaxation of proper coloring in which edges with same color are associated
      with some cost.
    - Studied the #smallcaps[Exponential Time Hypothesis], and ETH-Preserving reductions.
    - Investigated treewidth; applied tree decompositions to dynamic programming on hard problems.
  ]
)

#exp(
  title: "Reading Project on Graph Theory",
  organization: "Mentor: Dr. Prafullkumar Tale",
  date: [ Jan 2024 -- Apr 2024 ],
  links: (
    (fontawesome.fa-book(), "https://books.google.co.in/books/about/A_First_Look_at_Graph_Theory.html?id=vLRNRebXuKYC"),
  ),
  details: [
    - Studied #emph[A First Look at Graph Theory] (Clark & Holton) with problem solving.
    - Reinforced concepts: Graphs & their types, connectivity, traversals, matching problem,
      planarity.
  ],
)

= Skills

#compact-list-line(
  (
    "Python",
    "C++ (CMake, GoogleTest)",
    "Git & GitHub",
    latex,
    "typst",
    "Linux Shell",
    "CI/CD",
    "React",
    "Rust"
  )
)

= Talks & Teaching

#exp(
  title: "Teaching Assistant - Theory of Computation",
  organization: "Instructed by Dr. Arpit Sharma",
  date: [ Aug 2025 -- Dec 2025 ],
)

#exp(
  title: "Fast Matrix Multiplication Algorithms",
  organization: "Math Club @ IISER Bhopal",
  date: [ 1 Sept 2023 ],
  links: (
    (fontawesome.fa-person-chalkboard(), "https://github.com/adhxtry/iiserbCodeCollective/tree/main/1_StrassenMultiplication"),
  )
)

= Academic Achievements

- Secured *rank 29* (99.96 %ile) in GATE Data Science & Artificial Intelligence 2026
- Secured *rank 147* (99.93 %ile) in GATE Computer Science 2026
- Scored *92%* in 10th board (ICSE) and *91.2%* in 12th board (CBSE)


= Leadership & Engagement

#exp(
  title: "Club Coordinator",
  organization: "Coding club @ IISER Bhopal",
  date: [ May 2024 -- May 2025 ],
  // details: [
  //   - The club aims to foster competitive programming skills and algorithmic thinking among students.
  //   - It organizes onsite competitive programming contests; facilitates open discussions & tutorials.
  //   - I actively mentor junior members and led workshops on advanced topics.
  // ],
)

#exp(
  title: "Hackathon Organizer -- Armacode 0",
  organization: "IISER Bhopal x IIIT Bhopal",
  date: [ Jan 2024 -- Apr 2024 ],
  // details: [
  //   - Prepared questions for online round with over 500 applicants.
  //   - Co-organized a 35-hour national hackathon; collaborated with faculty and industry experts on
  //     problem design and judging of 12 onsite teams.
  // ],
)


= Co-curricular

#compact-list-line((
  "Music (Guitar)",
  "Competitive Programming",
  "Speed Typing",
))

// Publications section can be added if bibliography entries are available.
// Hopefully soon :/
