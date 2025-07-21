#import "@preview/cetz:0.3.4"
#import "@preview/cetz-plot:0.1.1": plot
#import "@preview/quill:0.7.0": *
#import "@preview/ctheorems:1.1.3": *
#import "@preview/physica:0.9.5": *


= Foundations

#lorem(30)

== Qubits

Comparing Definitions of a Qubit

The term qubit, short for quantum bit, was coined by American physicist Benjamin Schumacher in 1995 @Schumacher1995quantumcoding.
A qubit is the basic unit of quantum information, analogous to the classical bit but governed by the principles of quantum mechanics.
Different sources define the term with varying emphasis depending on their field (physics, computing, engineering).


=== Core Definition

A qubit is a two-level quantum system, whose state is described by a unit vector in the complex Hilbert space $bb(C)^2$, typically expressed as a linear combination (superposition) of two orthogonal basis states:

$
ket(psi) = alpha ket(0) + beta ket(1) #h(4mm) text("with") alpha,  beta in bb(C), \ |alpha|^2 + |beta|^2 = 1
$

$ket(psi)$ is a qubit with basis vectors $ket(0)$ and $ket(1)$, $alpha$ and $beta$ are called the probability amplitudes of basis vector $ket(0)$ and $ket(1)$, respectively. The sum of the absolute squares of these probability amplitudes must equal 1, ensuring that the quantum state is normalized @nielsen2010QuantumComputationQuantum.

=== John Preskill @preskillNotes

A qubit is a quantum system whose state space is the two-dimensional complex Hilbert space:
$
bb(H)_2 = bb(C)^2
$

- Strong emphasis on Hilbert spaces, unitary operations, and quantum circuits.
- Discusses density matrices, entanglement, and tensor product structure.


=== Oxford Dictionary of Physics @PhysicsOxfordDictionary

A unit of quantum information equivalent to the quantum state of a two-level system, which can be in a superposition of the basis states.

The Oxford Dictionary of Physics provides a more accessible definition for general audiences.
It focuses on the concepts of superposition and measurement.


=== IBM Qiskit Textbook @qiskit2024

A qubit is a quantum version of the classical bit and is the basic unit of quantum information.
Unlike a bit, which can be either 0 or 1, a qubit can be in a superposition of both.

Qiskit has a practical focus on physical implementations.
It introduces the Bloch sphere parametrization:

$
ket(psi) = cos(theta / 2) ket(0) + e^(i phi) sin(theta / 2) ket(1)
$


=== Wikipedia @qubitWikipedia

In quantum computing, a qubit is the basic unit of quantum information -- the quantum version of the classical binary bit.

Wikipedia includes both mathematical and physical realization aspects in its definition.
It also covers the use of qubits in entanglement, quantum circuits, and decoherence.


=== MIT OpenCourseWare @mitQuantumComplexityTheory

A qubit is a two-level quantum system whose state is a linear combination of orthonormal basis vectors $ket(0)$ and $ket(1)$, forming a unit vector in $bb(C)^2$.

MIT OpenCourseWare teaches from the quantum algorithm perspective and makes strong use of Dirac notation, gates, and measurement postulates.


== Mathematical Summary

State space:

$
ket(psi) = alpha ket(0) +  beta ket(1) #h(8mm) alpha, beta in bb(C), |alpha|^2 + |beta|^2 = 1
$

Bloch sphere representation:

$
ket(psi) = cos(theta / 2) ket(0) + e^(i phi) sin(theta /2) ket(1)
$

where:
$
theta in [0, pi], phi ∈ [0, 2 pi)
$


== Physical Realizations
A qubit can be physically realized in various systems, each with its own advantages and challenges.
Some common physical realizations include:

- Spin-half particles (e.g. electron spin)
- Photon polarization
- Superconducting circuits
- Trapped ions
- Quantum dots


== Quantum States

#lorem(100)

#lorem(100)

== Unitary Operators

#lorem(100)

#lorem(100)


== Quantum Circuits 

#figure(rect(
quantum-circuit(
lstick($alpha ket(0) + beta ket(1)$), ctrl(3), ctrl(6), $op("H")$,                               ctrl(1), ctrl(2), 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), targ() , 1      , 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), 1      , targ() , 1        , 1, [\ ],
lstick($ket(0)$)                    , targ() , 1      , $op("H")$,                               ctrl(1), ctrl(2), 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), targ() , 1      , $op("Z")$, 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), 1      , targ() , 1        , 1, [\ ],
lstick($ket(0)$)                    , 1      , targ() , $op("H")$,                               ctrl(1), ctrl(2), 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), targ() , 1      , 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), 1      , targ() , 1        , 1,     )
), placement: none, caption: [Phase flip error.])

This circuit is indistinguishable to the following one, based on the identity above.
Note that $op("Z") ket(0) = ket(0)$.

#figure(rect(
quantum-circuit(
lstick($alpha ket(0) + beta ket(1)$), ctrl(3), ctrl(6), $op("H")$, 1        , 1,                               ctrl(1), ctrl(2), 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), targ() , 1      , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), 1      , targ() , 1, [\ ],
lstick($ket(0)$)                    , targ() , 1      , $op("H")$, $op("Z")$, 1,                               ctrl(1), ctrl(2), 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), targ() , 1      , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), 1      , targ() , 1, [\ ],
lstick($ket(0)$)                    , 1      , targ() , $op("H")$, 1        , 1,                               ctrl(1), ctrl(2), 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), targ() , 1      , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), 1      , targ() , 1,     )
), placement: none, caption: [Phase flip error equivalence.])


#figure(rect(inset: 4mm,
  grid(
    columns: 3, rows: 5, align: center + horizon,
    column-gutter: 10mm, row-gutter: (8mm, 8mm, 0mm),
    quantum-circuit(
    1, $op("Z")$, ctrl(1), 1, [\ ],
    1, 1        , targ() , 1,    ),
    $equiv$,
    quantum-circuit(
    1, ctrl(1), $op("Z")$, 1, [\ ],
    1, targ() , 1        , 1,    ),
    quantum-circuit(
    1, $op("Z")$, ctrl(1), 1, [\ ],
    1, $op("Z")$, targ() , 1,    ),
    $equiv$,
    quantum-circuit(
    1, ctrl(1), 1        , 1, [\ ],
    1, targ() , $op("Z")$, 1,    ),
    quantum-circuit(
    1, 1        , ctrl(1), 1, [\ ],
    1, $op("Z")$, targ() , 1,    ),
    $equiv$,
    quantum-circuit(
    1, ctrl(1), $op("Z")$, 1, [\ ],
    1, targ() , $op("Z")$, 1,    ),
  )
), placement: none, caption: [Relationship between $op("Z")$ and $op("CX")$ gates.])

== Quantum State Measurement

#lorem(200)

#lorem(200)

#lorem(200)

#lorem(200)


#set math.mat(delim: "[")

== Density Matrices

A density matrix is a way to describe the state of a quantum system. especially when we do not have complete information about it.

-- If a quantum system is in a pure state (like a single known wavefunction, e.g., $ket(psi) = alpha ket(0) + beta ket(1)$), we can describe it with that wavefunction alone.

-- But often, a system might be in a mixed state, which means it's in one of several possible states, each with a certain probability.


=== Pure States

A pure state is a quantum state that is described by a single state vector $ket(psi)$ in Hilbert space. It contains complete information about the system and exhibits quantum coherence.


Let $ket(psi)$ be represented by the following vector.

$
ket(psi) &= alpha ket(0) + beta ket(1) \
ket(psi) &= mat(alpha; beta) #h(4mm) text("with") alpha,  beta in bb(C)\ &=> |alpha|^2 + |beta|^2 = 1 
         
$

In a pure state, the system is not in a probabilistic mix of states. It is in exact quantum state  (even if that state is a superposition).

A pure state is represented by a density matrix of the form:

$ rho &= ket(psi) bra(psi) \
      &= mat(alpha; beta) mat(alpha^*, beta^*) \
      & = mat(alpha alpha^*, alpha beta^*; beta^* alpha, beta beta^*) $

==== Examples

$
  rho_0 = ket(0) bra(0)
        = mat(1; 0) mat(1, 0)
        = mat(1, 0; 0, 0)
$


$
  rho_1 = ket(1) bra(1)
        = mat(0; 1) mat(0, 1)
        = mat(0, 0; 0, 1)
$

$
  rho_+ = ket(+) bra(+)
        = 1 / 2 mat(1; 1) mat(1, 1)
        = 1 / 2 mat(1, 1; 1, 1)
$

$
  rho_- = ket(-) bra(-)
        = 1 / 2 mat(1; -1) mat(1, -1)
        = 1 / 2 mat(1,-1; -1, 1)
$

=== Conditions

==== Trace Equal to One

$
  rho_- = 1 / 2 mat(1,-1; -1, 1) \
  => Tr(rho_-) = 1 / 2 (1 + 1) = 1
$

==== Non-Negative Eigenvalues

$
  det(A - lambda I) = 0
$

$
  rho_- = 1 / 2 mat(1,-1; -1, 1) \
  => rho_- - lambda I = 1 / 2 mat(1,-1; -1, 1) - lambda mat(1, 0; 0, 1) \
   => rho_- - lambda I = 1 / 2 mat(1- lambda,-1; -1, 1 - lambda) \
  => det(rho_- - lambda I) = 1 / 2 (1 - lambda)(1 - lambda) - 1 / 4 \
$

$
  det(rho_- - lambda I) = 0 \
  => 1 / 2 (1 - lambda)(1 - lambda) - 1 / 4 = 0\
  => (1 - lambda)(1 - lambda) - 1 / 2 = 0 \
  => (1 - lambda)(1 - lambda) = 1 / 2 \
  => 1 - lambda = plus.minus sqrt(1 / 2) \
  => lambda = 1 - plus.minus sqrt(1 / 2) \
  => lambda >= 0
$


=== Mixed States

== Definition
A mixed state is a quantum state that represents a statistical mixture of different pure states. It is described using a density matrix rather than a state vector.

$
  rho = sum_i p_i ket(psi_i) bra(psi_i)  #h(4mm) text("with") sum_i p_i = 1, 0<= p_i <= 1
$ 

A mixed state reflects incomplete knowledge about the quantum system. For example, if there's a 50% chance the qubit is in $ket(0)$ and 50% chance in $ket(1)$, this is called a mixed state. 

Note: Mixed state is not a superposition.

For example, if we have two pure states $ket(psi_1)$ and $ket(psi_2)$ with probabilities $p_1$ and $p_2$, the mixed state density matrix is given by:
$
  rho = p_1 ket(psi_1) bra(psi_1) + p_2 ket(psi_2) bra(psi_2) #h(4mm) text("where") p_1 + p_2 = 1.
$ 

=== Example 1
Probability $p_1$ of getting $ket(0)$ state is $p_1 = 2/8$, and probability $p_2$ of getting state $ket(1)$ is $6/8$.

$
  rho &= p_1 ket(0) bra(0) + p_2 ket(1) bra(1) \
      &= 2 / 8 mat(1; 0) mat(1, 0) + 6 / 8 mat(0; 1) mat(0, 1) \
      &= 2 / 8 mat(1, 0; 0, 0) + 6 / 8 mat(0, 0; 0, 1) \
      &= mat(2 / 8, 0; 0, 6 / 8)
  
$

=== Example 2
proability $p_1$ of getting $ket(0)$ state is $p_1 = 1/10$, probability $p_2$ of getting state $ket(1)$ is $3/10$, and probability $p_3$ of getting state $ket(+)$ is $6/10$.

$
  rho &= p_1 ket(0) bra(0) + p_2 ket(1) bra(1) + p_3 ket(+) bra(+) \
      &= 1 / 10 mat(1; 0) mat(1, 0) + 3 / 10 mat(0; 1) mat(0, 1) + 6 / 10 (1 / 2 mat(1; 1) mat(1, 1)) \
     & = 1 / 10 mat(1, 0; 0, 0) + 3 / 10 mat(0, 0; 0, 1) + 3 / 10 mat(1, 1; 1, 1) \
      &= mat(4 / 10, 3 / 10; 3 / 10, 7 / 10)
$

=== Maximally Mixed State

== Definition 
A maximally mixed state is a special type of mixed quantum state in which all possible pure states occur with equal probability.
$
  p_1 = p_2 = ... = p_n = 1/n
$

The maximally mixed state represents a state of complete uncertainty about the qubit. It means there is no preference for the system to be in any particular state with higher probability than other states of the quantum system because each state is in equal probability.

For example if a quantum system has equal probabilities of being in states $ket(0)$, $ket(1)$, $ket(+)$, and $ket(-)$, the density matrix for this maximally mixed state is given by:

$
  rho &= 0.25 ket(0), 0.25 ket(1), 0.25 ket(+), 0.25 ket(-)\
      &= 0.25 (ket(0) bra(0) + ket(1) bra(1) + ket(+) bra(+) + ket(-) bra(-))\
      &= 0.25 (mat(1, 0; 0, 0) + mat(0, 0; 0, 1) + 1 / 2 mat(1, 1; 1, 1) + 1 / 2 mat(1,-1; -1, 1)) \
      &= 0.25 (mat(1, 0; 0, 0) + mat(0, 0; 0, 1) + mat(1 / 2, 1 / 2; 1 / 2, 1 / 2) + mat(1 / 2,-1 / 2; -1 / 2, 1 / 2)) \
      &= 0.25 (mat(1 + 1 / 2, 1 / 2; 1 / 2, 1 + 1 / 2)) \
      &= 0.25 mat(3 / 2, 1 / 2; 1 / 2, 3 / 2) \
      &= mat(3 / 8, 1 / 8; 1 / 8, 3 / 8)  
$





== Density Matrix Formalism

The density matrix formalism provides a way to represent quantum states using matrices instead of state vectors. This is especially useful when dealing with statistical mixtures of states or systems where full knowledge of the quantum state is not available.

For a *pure state* represented by a ket vector $ket(psi)$, the corresponding density matrix is defined as:

$ rho = ket(psi) bra(psi) $

This expression is the *outer product* of the state vector with its conjugate transpose (bra). It encapsulates all the measurable properties of the quantum system in matrix form.

In contrast, a *mixed state*—a statistical ensemble of pure states—is described by a weighted sum of such outer products:

$ rho = sum_i p_i ket(psi)bra(psi) $

where $p_i$ are classical probabilities associated with each pure state $ket(psi)$, and $ sum_i p_i = 1$.

This formalism is essential for describing open quantum systems, decoherence, and systems with classical uncertainty over quantum states.

== Definition (Density Matrix):

A density matrix is a mathematical representation of a quantum state that can describe both pure and mixed states. It is a positive semi-definite operator on a Hilbert space, which allows for the calculation of expectation values and probabilities in quantum mechanics.

=== Figure  here:

=== Conditions

1. Unit Trace: The trace of the density matrix must equal 1, i.e., $Tr(rho) = 1$.
2. Positive semi-definite: The density matrix must be positive semi-definite, meaning all its eigenvalues are non-negative.


#lorem(100)


== Quantum Channels

#lorem(100)

#lorem(100)

#lorem(100)

#lorem(100)


== Quantum Measurement


#lorem(200)

#lorem(200)

#lorem(200)

#lorem(200)
