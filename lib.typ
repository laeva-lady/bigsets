// code based on SylvanFranklin's Tinyset lib : https://github.com/SylvanFranklin/tinyset
#let inv(expression) = { $(expression)^(-1)$ }
#let implies = $==>$
#let impl = $==>$
#let iff = $<==>$
#let qed = [#v(0.2em)#h(1fr)$square.big$]

// environments
#let ans(body) = { [#par(justify: true)[#body]] }
#let prf(body) = { ans[_Proof:_ #body #qed] }
#let qs(body) = {
  set enum(numbering: "(a)")
  body
}
#let pt(body) = {
  body
}

// my code

#let conf(doc) = [
  #set page(numbering: "1 | 1", number-align: center)
  #set text(lang: "fr", font: ("IosevkaTerm NFM", "Noto Sans CJK JP"))
  #set heading(numbering: "1.")
  #set par(justify: true)

  #set math.equation(numbering: "1.1")
  #set math.mat(delim: "[")
  #show math.equation: set text(font: "New Computer Modern Math")

  #show link: underline

  #doc
]

#let present_page(title: none, author_s: none, group: none, professeur_e: none,
  program: none, due: none) = [
  #align(center)[
    #align(horizon)[
      #if title != none [
        #text(18pt)[
          *#title*
        ] \ \ \ \ \
      ]
      #text(14pt)[
        #if author_s != none [
          Auteur.e.s:
          \
          #author_s
          \ \
        ]
        #if group != none [
          Groupe: #group
          \ \ \ \
        ]
        #if professeur_e != none [
          Professeur.e: #professeur_e
          \ \
        ]
        #if program != none [
          #program
        ]
      ]
    ]
    #align(bottom,
      text(14pt)[
        #if due != none [
          \ \ \
          Date due: #due
        ] \ \
        #datetime.today().display("[year]/[month]/[day]")
      ])
  ]
  #pagebreak()
  #outline()
  #pagebreak()
]

#let deg = [∘]

#let definition_box(title, content) = {
  block(
    stroke: 1pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
    [
      #text(weight: "bold")[#title]
      #v(8pt)
      #content
    ]
  )
}
#let question(title, question, content) = {
  [
    #linebreak()
    *#title*

    #question


    > #content
    #v(10pt)
    #line(length: 100%)
  ]
}


#let exemple(title, text, solution_title, solution) = {
  [
    #linebreak()
    *#title* #text
    #v(10pt)
    *#solution_title :* #solution
    #line(length: 100%)
  ]
}
