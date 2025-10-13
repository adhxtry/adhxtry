/**
 * Copyright (c) 2025 Adheesh Trivedi — Licensed under CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/)
 */


// Custom CV configuration & reusable helpers
// Centralizes helper functions and data lists for interests & other
// lightweight configurable elements to keep `cv.typ` clean.

// Separator used between inline interest items
#let compact-list-sep = " • "

// Join an array of strings into a single interest line
#let compact-list-line = (items) => items.join(compact-list-sep)

#let latex = {
    set text(font: "New Computer Modern")
    box(width: 2.55em, {
      [L]
      place(top, dx: 0.3em, text(size: 0.7em)[A])
      place(top, dx: 0.7em)[T]
      place(top, dx: 1.26em, dy: 0.22em)[E]
      place(top, dx: 1.8em)[X]
    })
}