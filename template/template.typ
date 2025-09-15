// original
// https://github.com/bamboovir/typst-resume-template

// const color
#let color_darknight = rgb("#131A28")
#let color_darkgray = rgb("333333")

// layout utility
#let justify_align(left_body, right_body) = {
  block[
    #left_body
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let resume(author: (:), body) = {
  set document(
    author: author.firstname + " " + author.lastname, 
    title: "resume",
  )
  
  set text(
    font: ("Roboto"),
    lang: "en",
    size: 12pt,
    fill: color_darknight,
    fallback: false
  )

  set page(
    paper: "a4",
    margin: (left: .6in, right: .6in, top: .6in, bottom: .6in),
    footer: [],
    footer-descent: 0pt,
  )
  
  // set paragraph spacing
  show par: set block(above: 0.75em, below: 0.75em)
  set par(justify: true)

  set heading(
    numbering: none,
    outlined: false,
  )
  
  let name = {
    align(center)[
      #pad(bottom: 5pt)[
        #block[
          #set text(size: 25pt, style: "normal", font: "Roboto Serif")
          #text(weight: "bold")[#author.firstname]
          #text(weight: "light")[#author.lastname]
        ]
      ]
    ]
  }

  let positions = {
    set text(
      size: 9pt,
      weight: "regular",
      ligatures: false,
    )
    align(center)[
      #smallcaps[
        #author.positions.join(
          text[#" "#sym.dot.c#" "]
        )
      ]
    ]
  }

  name
  positions
  body
}

// general style
#let resume_section(title) = {
  set text(
    size: 16pt,
    weight: "thin",
    stretch: 75%
  )
  align(left)[
    #smallcaps[#title]
    #box(width: 1fr, line(length: 100%))
  ]
}

#let resume_item(body) = {
  set text(size: 10pt, style: "normal", weight: "light")
  set par(leading: 0.65em)
  body
}

#let resume_time(body) = {
  set text(size: 9pt, weight: "light", style: "normal")
  body
}

#let resume_degree(body) = {
  set text(size: 10pt, weight: "regular")
  smallcaps[#body]
}

#let resume_organization(body) = {
  set text(size: 12pt, style: "normal", weight: "bold")
  body
}

#let resume_location(body) = {
  set text(size: 12pt, style: "normal", weight: "light")
  body
}

#let resume_position(body) = {
  set text(size: 9pt, weight: "regular", ligatures: false,)
  smallcaps[#body]
}

#let resume_category(body) = {
  set text(size: 11pt, weight: "bold")
  body
}

#let resume_gpa(numerator, denominator) = {
  set text(size: 12pt, style: "normal", weight: "light")
  text[Cumulative GPA: #box[#strong[#numerator] / #denominator]]
}

// sections specific components
#let education_item(organization, degree, gpa, time_frame) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)

  pad[
    #justify_align[
      #resume_organization[#organization]
    ][
      #gpa
    ]
    #justify_align[
      #resume_degree[#degree]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let work_experience_item_header(
  company,
  location,
  position,
  time_frame
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)

  pad[
    #justify_align[
      #resume_organization[#company]
    ][
      #resume_location[#location]
    ]
    #justify_align[
      #resume_position[#position]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let personal_project_item_header(
  name,
  stack,
  start_time,
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  
  pad[
    #justify_align[
      #resume_organization[#name]
    ][
      #resume_location[#start_time]
    ]
    #resume_position[#stack]
  ]
}

#let skill_item(category, items) = {
  set block(below: 0.65em)
  set pad(top: 5pt)
  
  pad[
    #grid(
      columns: (20fr, 80fr),
      gutter: 10pt,
      align(right)[
        #resume_category[#category]
      ],
      align(left)[
        #set text(size: 11pt, style: "normal", weight: "light")
        #items.join(", ")
      ],
    )
  ]
}
