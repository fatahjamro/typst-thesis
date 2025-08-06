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

$ket(psi)$ is a qubit with basis vectors $ket(0)$ and $ket(1)$, $alpha$ and $beta$ are called the probability amplitudes of basis vector $ket(0)$ and $ket(1)$, respectively. The sum of the absolute squares of these probability amplitudes must equal 1, ensuring that the quantum state is normalized@nielsen2010QuantumComputationQuantum, @preskillNotes

Qiskit has a practical focus on physical implementations.
It introduces the Bloch sphere parametrization @qiskit2024 :

$
ket(psi) = cos(theta / 2) ket(0) + e^(i phi) sin(theta / 2) ket(1)
$

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


== Density Matrix Formalism

The density matrix formalism provides a way to represent quantum states using matrices instead of state vectors. This is especially useful when dealing with statistical mixtures of states or systems where full knowledge of the quantum state is not available @Fano1957DescriptionDensityMatrix.

For a *pure state* represented by a ket vector $ket(psi)$, the corresponding density matrix is defined as:

$ rho = ket(psi) bra(psi) $

This expression is the *outer product* of the state vector with its conjugate transpose (bra). It encapsulates all the measurable properties of the quantum system in matrix form.

In contrast, a *mixed state*—a statistical ensemble of pure states—is described by a weighted sum of such outer products:

$ rho = sum_i p_i ket(psi_i)bra(psi_i) $

where $p_i$ are classical probabilities associated with each pure state $ket(psi)$, and $ sum_i p_i = 1$.

This formalism is essential for describing open quantum systems, decoherence, and systems with classical uncertainty over quantum states.

== Definition (Density Matrix):

A density matrix is a mathematical representation of a quantum state that can describe both pure and mixed states. It is a positive semi-definite operator on a Hilbert space, which allows for the calculation of expectation values and probabilities in quantum mechanics.

=== Figure  here:

=== Conditions

1. Unit Trace: The trace of the density matrix must equal 1, i.e., $Tr(rho) = 1$.
2. Positive semi-definite: The density matrix must be positive semi-definite, meaning all its eigenvalues are non-negative.

=== Example

For a qubit in state:

$ ket(psi) = alpha ket(0) + beta ket(1) $

the density matrix is:

$ rho = mat(
  [abs(alpha)^2, alpha * bar(beta)],
  [bar(alpha) * beta, abs(beta)^2]
) $


// == Density Matrices

// A density matrix is a way to describe the state of a quantum system, especially when we do not have complete information about it.

// -- If a quantum system is in a pure state (like a single known wave-function, e.g., $ket(psi) = alpha ket(0) + beta ket(1)$), we can describe it with that wave-function alone.

// -- But often, a system might be in a mixed state, which means it's in one of several possible states, each with a certain probability.


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
probability $p_1$ of getting $ket(0)$ state is $p_1 = 1/10$, probability $p_2$ of getting state $ket(1)$ is $3/10$, and probability $p_3$ of getting state $ket(+)$ is $6/10$.

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

The density matrix method provides a single way to describe both pure and mixed states. It is very useful for studying quantum systems that interact with their environment, lose coherence, or are used in quantum technologies.

== Unitary Operators

A *unitary operator* is an operator $U$ on a Hilbert space $H$ such that it is a bounded linear operator $(U: H -> H)$ and its inverse is equal to its adjoint:  

$ U^(-1) = U^dagger   #h(4mm) text("also written as")  U^* $

A unitary operator satisfies the following property:  

$ 
U U^dagger = U^dagger U = I 
$

where $I$ is the identity operator $(I: H -> H)$.  

- The condition $U^dagger U = I$ defines an *isometry*.  
- The condition $U U^dagger = I$ defines a *co-isometry*.  

Thus, a unitary operator is a bounded linear operator that is both an isometry and a co-isometry @halmos2012hilbertspaceproblem.  

A unitary operator $U$ is *surjective* and preserves the inner product of the Hilbert space $H$. For all vectors $A$ and $B$ in $H$:  

$ braket(U A, U B)_H = braket(A, B)_H $

=== Product of Unitary Operators

The product of two unitary operators is also unitary.  

If $U$ and $V$ are unitary operators, then their product $U V$ satisfies:  

$
U U^dagger = U^dagger U = I \
V V^dagger = V^dagger V = I
$

Then,  

$
(U V)(U V)^dagger = (U V)(V^dagger U^dagger) = I \
(U V)^dagger (U V) = (V^dagger U^dagger)(U V) = I
$

Hence, the product $U V$ is also unitary.  

=== Summary

Unitary operators are isomorphisms of Hilbert space because they preserve the fundamental structure of the space, including lengths, angles, and inner products.

== Unitary Error Bases (UEB)

Unitary error bases, also known as unitary operator bases, are a fundamental concept in quantum information theory.  
They are constructed from unitary operators, which form the building blocks for describing errors in quantum systems.  
A complete set of unitary operators can represent any possible error in a quantum information system.  
Unitary error bases were introduced in the mid-1990s and have significant applications in the construction of quantum error correcting codes @knill1996NonBinaryUnitary, @knill1996GroupRepresentationsError.

=== Unitary Operators and Errors

In quantum mechanics, a unitary operator is a special type of linear transformation that:

- Preserves the norm (length) of a quantum state  
- Is reversible, meaning it has an inverse equal to its adjoint  

Because of these properties, unitary operators are ideal for representing errors in quantum computations.  
Errors can be understood as transformations applied to a quantum state that may change its encoded information.


=== Definition: Unitary Error Basis

A unitary error basis @klappenecker2003UnitaryErrorBases is a set of unitary matrices that forms an orthonormal basis for representing errors on an $n$-dimensional quantum system.  

- *Orthonormality:*  
  A set $U$ of $n^2$ unitary $n times n$ matrices is a unitary error basis if and only if it is orthonormal with respect to the inner product:  

  $
   bra(A)ket(B)_H = frac(Tr(A^dagger B), n) 
   $

  where:  
  - `Tr(M)` is the trace of matrix $M$  
  - $A^dagger$ is the conjugate transpose of $A$  
  - The factor $1/n$ ensures the inner product is normalized

- *Completeness:*  
  The set $U$ is complete if any arbitrary error on an $n$-dimensional quantum state can be expressed as a linear combination of the elements of $U$.


=== Example: Pauli Matrices

The Pauli matrices form a $d^2$ order unitary error basis for $d = 2$ and can be generalized to higher-dimensional systems@klappenecker2003UnitaryErrorBases.

$ 
  sigma_I = mat(1, 0; 0, 1), #h(4mm)
  sigma_x = mat(0, 1; 1, 0), #h(4mm)
  sigma_y = mat(0, -i; i, 0), #h(4mm)
  sigma_z = mat(1, 0; 0, -1) #h(4mm)
$

== Mutually Unbiased Bases (MUBs)
The idea of mutually unbiased bases was posed by Schwinger in 1960, his work was focused on a more general mathematical framework @schwinger1960UnitaryOperatorBases. 
The specific application of mutually unbiased basis in quantum mechanics 
was given by Ivanovic in 1981, particularly in the context of quantum state determination 
@ivanovic1981geometricaldescriptionquantal.

=== Definition (Mutually Unbiased Bases)
Wootters in 1986 defined as Two orthonormal bases $U$ and $V$ in space $C^n$ are mutually unbiased if and only if the square of the absolute value of the inner product between any vector $u$ from $U$ and any vector $v$ from $V$ is uniformly distributed, mathematically expressed as:
$ 
|braket(u,v)|^2 = 1/n #h(4mm) #h(4mm) forall #h(4mm) u in U, #h(4mm) v in V
$

Mutually Unbiased Bases (MUB) are fundamental constructs in quantum mechanics and quantum information theory, embedding the complementary concept of quantum formalism @paterek2010ConnectionMutuallyUnbiased.  
These bases, when used in pairs, are characterized by the property that knowledge of a quantum state in one basis provides no information about its state in the other basis, ensuring maximal statistical independence of measurements @ivanovic1997unbiasedprojectorbasis.  
Transition probability from any state of the first basis to any state of the second basis is independent of the two chosen states @song2020ConstructionMutuallyUnbiased.

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
