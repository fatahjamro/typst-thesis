#import "template.typ": thesis

#show: thesis.with(
  title: "Investigation of the Efficacy of Using the Typst Typesetting System for Academic Writing",
  author: "Lowly Worm",
  degree: "Doctor of Philosophy",
  institution: "Atlantic Technological University",
  logo: "images/atu-logo.jpg",
  department: "Faculty of Engineering and Computing",
  date: datetime(year: 2026, month: 5, day: 1),
  abstract: [
    This thesis explores a lot of different areas. It is very exciting. So wow!
  ],
  acknowledgments: [
    I would like to thank everyone for their support.
  ],
)

#include "chapters/01-introduction.typ"
#include "chapters/02-foundations.typ"
#include "chapters/03-lit-review.typ"
#bibliography("bibliography.bib", style: "apa")
