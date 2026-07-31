\version "2.25.26"

\header {
  title = "Duet in C Major"
  subtitle = "for Soprano Recorder and Cello"
  composer = "ChatGPT"
  tagline = ""
}

\paper {
  indent = 0
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4 = 84
}

recorder = \relative c'' {
  \global

  c4 d e g |
  a4 g e d |
  e4 f g2 |
  g4 e d c |
  e4 g a g |
  f4 e d c |
  d4 e f g |
  e2 c2 |
  g'4 a g e |
  f4 g a g |
  e4 d c d |
  e2 g2 |
  a4 g f e |
  d4 c d e |
  f4 g e d |
  c1 |
  e4 f g a |
  g4 e d c |
  d4 e c2 |
  c1 \bar "|."
}

cello = \relative c {
  \global
  \clef bass

  c2 g2 |
  c4 d e g |
  c,2 c'2 |
  g2 c2 |
  e2 g,2 |
  f4 e d c |
  g2 d'2 |
  c1 |
  c4 e g e |
  f2 g2 |
  e4 d c g |
  c2 g2 |
  a4 c d e |
  g,2 c2 |
  f4 g e d |
  c1 |
  c2 e2 |
  g,4 d' c2 |
  g2 c2 |
  c1 \bar "|."
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Recorder"
      midiInstrument = "recorder"
    } {
      \recorder
    }

    \new Staff \with {
      instrumentName = "Cello"
      midiInstrument = "cello"
    } {
      \cello
    }
  >>

  \layout { }

  \midi { }
}