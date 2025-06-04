#import "@preview/cetz:0.3.4"
#import "@preview/cetz-plot:0.1.1": plot
#import "@preview/quill:0.7.0": *
#import "@preview/ctheorems:1.1.3": *
#import "@preview/physica:0.9.5": *


#show: thmrules.with(qed-symbol: $square$)
#let theorem = thmbox("theorem", "Theorem")
#let proof = thmproof("proof", "Proof")


= Quantum Error Correction

#lorem(200)

== Classical Repetition Codes

#lorem(200)

#lorem(300)

#lorem(300)

#lorem(300)

== No Cloning Theorem

#theorem("No Cloning")[
There is no unitary operator $U$ and quantum state $ket(psi)$ such that for any quantum state $ket(phi)$:
$
U ket(psi) = ket(psi) times.circle ket(psi)
$]
#proof[
  Proof goes here.
]


== Stabilizer Codes

#lorem(300)

#lorem(300)

#lorem(300)

== Surface Codes

#lorem(300)

#lorem(300)

#lorem(300)
