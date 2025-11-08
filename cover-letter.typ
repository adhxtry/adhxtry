/**
 * Copyright (c) 2025 Adheesh Trivedi — Licensed under CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/)
 */


#import "clickworthy-resume/lib.typ": *
#import "@preview/fontawesome:0.6.0"

// Personal Information
#let name = "Adheesh Trivedi"
#let email = "adheeshtrivedi@gmail.com"
#let github = "github.com/adhxtry"
#let linkedin = "linkedin.com/in/AdhTri001"
#let contacts = (
  link("mailto:" + email)[#fontawesome.fa-envelope() #email],
  link("https://github.com/adhxtry/")[#fontawesome.fa-github() adhxtry],
  link("https://linkedin.com/in/AdhTri001/")[#fontawesome.fa-linkedin() AdhTri001],
  link("https://adhxtry.github.io/portfolio/")[#fontawesome.fa-link() adhxtry.github.io],
)

// Addressee Information
#let addressee-institution = "4th Year CS Major"
#let addressee-address = "IISER"
#let addressee-city = "Bhopal"
#let addressee-state = "MP"
#let addressee-country = "India"
#let addressee-zip = "462066"

// Resume configuration
#let date = datetime.today().display()
#let font = "Calibri"
#let fontSize = 11pt
#let lang = "en"
#let margin = (
  top: 1cm,
  bottom: 1cm,
  left: 1cm,
  right: 1cm,
)

// Cover letter Header and configuration
#show: cover-letter.with(
  author: name,
  contacts: contacts,
  date: date,
  addressee-institution: addressee-institution,
  addressee-address: addressee-address,
  addressee-city: addressee-city,
  addressee-state: addressee-state,
  addressee-country: addressee-country,
  addressee-zip: addressee-zip,
  font: font,
  font-size: fontSize,
  lang: lang,
  margin: margin,
)

// Body of the cover letter
`Introduction`
#lorem(100)

`Acads`
#lorem(100)

`Interests`
#lorem(100)

`Experience`
#lorem(100)

`Why this program`
#lorem(75)

`Conclude`
#lorem(50)