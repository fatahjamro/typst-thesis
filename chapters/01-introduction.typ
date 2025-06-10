#import "@preview/cetz:0.3.4"
#import "@preview/cetz-plot:0.1.1": plot
#import "@preview/quill:0.7.0": *
#import "@preview/ctheorems:1.1.3": *
#import "@preview/physica:0.9.5": *



= Introduction to Quantum Information Theory

Current era is referred to as the second quantum revolution. It has become possible due to the advancement in the field of quantum information science. Second quantum revolution is promising to develop next generation technologies that will be way better that the transistor technologies that we have due to the first quantum revolution.  Quantum computing stands at the forefront of a second quantum technological revolution @deutsch2020HarnessingPowerSecond.

The interplay between quantum mechanics and information science has the potential to transcend the limitations of classical computation.
The past decade has seen extraordinary progress in the development in this area @zhao2024UnravelingQuantumComputing.

The promise of large-scale, useful quantum computers has not yet been realized.
However, many algorithms have been developed.
Physical quantum bits (or qubits), the fundamental physical components of quantum computers, are fragile and easily affected by the smallest of noise, leading to decoherence problems in the quantum computation process @yang2023SurveyImportantIssues.

A key result by Peter Shor demonstrated that decoherence of qubits can be minimized using quantum error correction techniques.
This result has led to the development of various quantum error correction schemes @cheng2023NoisyIntermediateScale.

Quantum error correcting codes are analogous to classical error correcting codes.
Given the rich history of classical error correcting codes, much inspiration has been drawn from those in the development of quantum error correcting codes.

The idea of exploiting quantum mechanics for computation was first given serious consideration in the 1980s.
Feynman discussed simulating quantum mechanics with a computer, naturally leading to the converse question @feynman1982SimulatingPhysicsComputers  @benioff1980ComputerAsPhysical. In the analysis since then, it has been suggested that quantum computers, using specially designed algorithms, may be able to solve some problems that are intractable with classical computers.

The advancement of these algorithms depends critically on the underlying mathematical frameworks that govern quantum systems@upadhyay2022ArchitecturesQuantumInformation.
At the heart of this capability are the quantum principles such as superposition and quantum entanglement@divincenzo1995TwoBitGates @nielsen2010QuantumComputationQuantum.

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
