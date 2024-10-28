#import "font.typ" as fonts

// 大标题属性
#let bigTitleSize = 24pt
#let bigTitleAlign = center
#let bigTitleIndent = 0pt
#let bigTitleSpace = (before: 0pt, after: 0pt)
#let bigTitleLineSpace = 1
// 开题报告标题属性
#let thesisTitleSize = 18pt
#let thesisTitleAlign = justify
#let thesisTitleIndent = 0pt
#let thesisTitleSpace = (before: 0pt, after: 0pt)
#let thesisTitleLineSpace = 1
// 其余内容属性
#let otherSize = 16pt
#let otherAlign = justify
#let otherIndent = 2.22cm
#let otherSpace = (before: 0pt, after: 0pt)
#let otherLineSpace = 1.75

#let bigTitle(
  content,
  font,
  size: bigTitleSize,
  align: bigTitleAlign,
  indent: bigTitleIndent,
  line: bigTitleLineSpace,
  space: bigTitleSpace
) = {
  paragraph(
    content: content,
    font: font,
    size: size,
    align: align,
    indent: indent,
    line: line,
    space: space
  )
}

#let thesisTitle(
  content,
  font,
  size: thesisTitleSize,
  align: thesisTitleAlign,
  indent: thesisTitleIndent,
  line: thesisTitleLineSpace,
  space: thesisTitleSpace
) = {
  paragraph(
    content: content,
    font: font,
    size: size,
    align: align,
    indent: indent,
    line: line,
    space: space
  )
}

#let other(
  content,
  font,
  size: otherSize,
  align: otherAlign,
  indent: otherIndent,
  line: otherLineSpace,
  space: otherSpace
) = {
  paragraph(
    content: content,
    font: font,
    size: size,
    align: align,
    indent: indent,
    line: line,
    space: space
  )
}

#let longline(
  length,
  title,
  content,
  font,
  size: otherSize,
  align: otherAlign,
  indent: otherIndent,
  line: otherLineSpace,
  space: otherSpace
) = {
  paragraph(
    font: font,
    size: size,
    align: align,
    indent: indent,
    line: line,
    space: space
  )[
    text(
      title
    ),
    box(
      width: length
      stroke: (botton: 1pt)
    )[
      underline(
        content: content
      )
    ]
  ]
}

#let cover(
  title: [],
  department: [],
  major: [],
  advisor: [],
  author: [],
  studentID: [],
  date: [],
) = {
  bigTitle(
    content: text("南方科技大学", bold),
    font: fonts.KaiTi
  )
  paragraph(
    size: 18pt,
    align: center,
    indent: 0pt,
    line: 1,
    space: (before: 0pt, after: 0pt)
  )
  bigTitle(
    content: text("硕士学位论文开题报告", bold),
    font: fonts.SongTi
  )
  paragraph(
    size: 18pt,
    align: justify,
    indent: 0pt,
    line: 1,
    space: (before: 0pt, after: 0pt)
  )
  thesisTitle(
    content: 
      text(bold)[
        题#h(1em)目
      ] + text(title),
    font: fonts.SongTi
  )
  paragraph(
    size: 16pt,
    align: justify,
    indent: 0pt,
    line: 1,
    space: (before: 12pt, after: 0pt)
  )
  longline(
    length: 25em,
    title:
      text(bold)[
        院#h(5em)（系）
      ],
    content: text(department, bold),
    font: fonts.SongTi,
    space: (before: 12pt, after: 0pt)
  )
  longline(
    length: 25em,
    title:
      text(bold)[
        学#h(8em)科
      ],
    content: text(department, bold),
    font: fonts.SongTi
  )
  longline(
    length: 25em,
    title:
      text(bold)[
        导#h(8em)师
      ],
    content: text(advisor, bold),
    font: fonts.SongTi
  )
  longline(
    length: 25em,
    title:
      text(bold)[
        研#h(3em)究#h(3em)生
      ],
    content: text(author, bold),
    font: fonts.SongTi
  )
  longline(
    length: 25em,
    title:
      text(bold)[
        学#h(8em)号
      ],
    content: text(studentID, bold),
    font: fonts.SongTi
  )
  longline(
    length: 25em,
    title:
      text(bold)[
        开题报告日期
      ],
    content: text(date, bold),
    font: fonts.SongTi
  )
  paragraph(
    size: 16pt,
    align: justify,
    indent: 0pt,
    line: 1.25,
    space: (before: 0pt, after: 0pt)
  )
  paragraph(
    size: 16pt,
    align: justify,
    indent: 0pt,
    line: 1.25,
    space: (before: 0pt, after: 0pt)
  )
  paragraph(
    size: 16pt,
    align: justify,
    indent: 0pt,
    line: 1.25,
    space: (before: 0pt, after: 0pt)
  )
  paragraph(
    size: 16pt,
    align: justify,
    indent: 0pt,
    line: 1.25,
    space: (before: 0pt, after: 0pt)
  )
  paragraph(
    size: 16pt,
    align: justify,
    indent: 0pt,
    line: 1.25,
    space: (before: 0pt, after: 0pt)
  )
  paragraph(
    size: 16pt,
    align: justify,
    indent: 0pt,
    line: 1.25,
    space: (before: 0pt, after: 0pt)
  )
  paragraph(
    size: 16pt,
    font: fonts.SongTi,
    align: center,
    indent: 1.13cm,
    line: 1,
    space: (before: 0pt, after: 0pt)
  )[
    text("研究生院制", bold)
  ]
}