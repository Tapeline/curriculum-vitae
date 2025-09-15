#let contacts = {
  set box(height: 11pt)
  set text(size: 11pt, weight: "light")

  let github_icon = box(image("assets/icons/square-github.svg"))
  let email_icon = box(image("assets/icons/square-envelope-solid.svg"))
  let separator = box(width: 5pt)

  align(center)[
    #block[
      #align(horizon)[
        #email_icon
        #box[#link("mailto:mail@tapeline.dev")[#"mail@tapeline.dev"]]
        #separator
        #github_icon
        #box[#link("https://github.com/Tapeline")[#"Tapeline"]]
        #separator
        #box[#link("https://habr.com/users/tapeline/")[#"Habr: tapeline"]]
      ]
    ]
  ]
}
