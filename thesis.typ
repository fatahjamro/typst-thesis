#import "template.typ": thesis

#show: thesis.with(
  title: "Quantum Latin Square Codes",
  author: "Abdul Fatah",
  degree: "Doctor of Philosophy",
  institution: "Atlantic Technological University",
  logo: "images/atu-logo.jpg",
  department: "Faculty of Engineering and Computing",
  date: datetime(year: 2026, month: 7, day: 1),
  abstract: [
    We investigate the use of quantum Latin squares in construction of quantum error-correcting codes. Quantum Latin squares are a generalization of classical Latin squares, where the entries are quantum states rather than classical symbols. We explore the properties of these squares and their applications in quantum error correction, particularly in the context of Shor's code and other quantum error-correcting codes.
  ],
  acknowledgments: [
    I would like to thank everyone for their support.
  ],
)

#include "chapters/01-introduction.typ"
#include "chapters/02-foundations.typ"
#include "chapters/03-quantum-error-correction.typ"
#include "chapters/04-quantum-latin-squares.typ"
#include "chapters/05-qls-codes.typ"
#include "chapters/06-conclusion.typ"

#bibliography("bibliography.bib")
