/*
Core formatting for the cover letter template document type. Establishes general document-wide formatting, and creates the header for the cover letter.

Inspired by the template from the following guide:
https://career.engin.umich.edu/sample-cover-letter/
*/

#let cover-letter(
  author: "",
  contacts: (),
  date: datetime.today().display(),
  addressee-institution: "",
  addressee-address: "",
  addressee-city: "",
  addressee-state: "",
  addressee-country: "",
  addressee-zip: "",
  font: "New Computer Modern",
  font-size: 11pt,
  lang: "en",
  margin: (
    top: 1cm,
    bottom: 1cm,
    left: 1cm,
    right: 1cm,
  ),
  body,
) = {

  show raw: it => {
    set text(font: font, weight: 800)
    [[#smallcaps(it)]]
    h(0.5em)
  }

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    font: font,
    size: font-size,
    lang: lang,
    ligatures: false,  // Disable ligatures for better compatibility and readability
  )

  set page(
    margin: margin,
  )

  show link: set text(
    fill: rgb("#0645AD")
  )

  align(center)[
    // Author
    #block(text(weight: 700, 2.5em, [#smallcaps(author)]))

    // Contact Information
    #pad(
      top: -0.5em,
      contacts.join("  |  ")
    )
  ]

  pad(
    top: 1em,
    bottom: 0.5em,
    grid(
      columns: (1fr, 1fr),

      // Addressee Information
      align(left)[
        #strong(addressee-institution) \
        #addressee-address \
        #{addressee-city + ", " + addressee-state + " " + addressee-zip} \
        #addressee-country
      ],

      // Date
      align(right)[
        #strong()[#date]
      ]
    )
  )

  // Main body.
  set par(
    justify: true,
  )

  body

  // Signature
  text(
    font: font,
    size: font-size,
    lang: lang,
  )[
    #"" \ \
    #"Sincerely," \
    #strong[#author]
  ]
}