#import "@preview/cetz:0.3.4"
#import "@preview/cetz-plot:0.1.1": plot
#import "@preview/quill:0.7.0": *
#import "@preview/ctheorems:1.1.3": *
#import "@preview/physica:0.9.5": *

= Introduction to Quantum Information Theory

#lorem(30)

== Bits versus Qubits

#lorem(100)

#lorem(100)

== Information Theory

#lorem(100)

#lorem(100)


== Quantum Computing

#lorem(100)

#lorem(100)

$
  op("I") = mat(1, 0; 0, 1) #h(4mm) op("X") = mat(0, 1; 1, 0) #h(4mm) op("Y") = mat(0, -i; i, 0) #h(4mm) op("Z") = mat(1, 0; 0, -1)
$


$
  alpha mat(1, 0; 0, 1) ket(1)
$


== Error Correction

#lorem(100)

#lorem(100) @shor1997faulttolerantquantumcomputation.


#figure(
cetz.canvas({
  cetz.draw.set-style(
    axes: (stroke: .5pt, tick: (stroke: .5pt)), legend: (stroke: .25pt))

  plot.plot(size: (12, 8),
    x-tick-step: 0.1,
    x-min: 0.0, x-max: 1.0,
    y-tick-step: 0.1, y-min: 0.0, y-max: 1.0,
    legend: (9.1, 1.7),
    {
      plot.add(x => 1 - calc.pow(1 - x, 9) - 9 * x * calc.pow(1-x, 8), domain: (0.0, 1.0), label: "Shor Code")
      plot.add(x => x, domain: (0.0, 1.0), label: "No code")
    })
}),
caption: [$op("P")("error") = 1 - op("P")("< 2") = 1 - (1-p)^9 + 9 p (1-p)^8$],
placement: none)



