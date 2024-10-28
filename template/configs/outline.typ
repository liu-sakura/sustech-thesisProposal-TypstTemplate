#import "font.typ" as fonts

#let toc(
  toc-title: [Table of Content]
) = {
  set outline(
  fill: box(
    width: 1fr, 
    repeat(h(5pt) + "." + h(5pt))) + h(5pt)
  )

  show outline: it => {
    show heading: title => {
      set align(center)
      set text(
        font: fonts.HeiTi,
        size: fonts.leval1TitleSize,
      )
      title
      v(1em)
    }
    it
  }

  show outline.entry: it => {

    v(0.5em, weak: false)
    set text(
      font: fonts.SongTi,
      size: fonts.No4,
    )
    if(it.level == 1){
      set text(
        weight: 700,
      )
      it
    }else{
      it
    }
  }

  pagebreak()
  outline(
    title: [目#h(1em)录]
  )
}