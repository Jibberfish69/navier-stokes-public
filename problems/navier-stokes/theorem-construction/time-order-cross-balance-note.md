# Time-Order Cross-Balance Note

## Purpose

This note records the brute-force time-derivative reading of classical
Navier-Stokes in the exact form the lane needs:

```math
\boxed{
\text{the differentiated time tower is not a monotone same-derivative-order ladder;}
}
```

```math
\boxed{
\text{it is an infinite cross-order balance whose mixed terms are the live spread mechanism.}
}
```

The point is to stop treating the differentiated transport terms as generic
"nonlinear junk" and instead expose their exact order-convolution structure.

## Notation

Write

```math
V_n := \partial_t^n u,
\qquad
P_n := \partial_t^n p.
\tag{1}
```

Then the differentiated time hierarchy is

```math
V_{n+1}
+
\sum_{k=0}^{n}\binom{n}{k}\,(V_k\cdot\nabla)V_{n-k}
+
\nabla P_n
=
\nu\Delta V_n.
\tag{2}
```

This is just the `n`-th time derivative of

```math
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u.
```

## What the order relation really is

Equation `(2)` shows the exact cross-order pattern:

1. the next time level is `V_{n+1}`;
2. viscosity acts on the previous time level `V_n`;
3. pressure also sits at level `n`;
4. the transport term does not stay at one level at all: it expands across
   every split `0\le k\le n`.

So the time tower is not:

```math
\text{level }n \to \text{level }n+1
\text{ by one isolated forcing law.}
```

It is:

```math
\boxed{
\text{level }n+1
\text{ is balanced against level }n
\text{ plus the full binomial spread of all lower splits.}
}
```

## Exact L^2 energy identity at level n

Each `V_k` remains divergence-free:

```math
\nabla\cdot V_k = \partial_t^k(\nabla\cdot u)=0.
\tag{3}
```

Take the `L_x^2` inner product of `(2)` with `V_n`.
Then:

1. the pressure term vanishes:

```math
\langle \nabla P_n,V_n\rangle_{L^2}=0;
\tag{4}
```

2. the `k=0` transport term vanishes:

```math
\langle (u\cdot\nabla)V_n,V_n\rangle_{L^2}=0;
\tag{5}
```

3. the viscous term gives dissipation:

```math
\langle \nu\Delta V_n,V_n\rangle_{L^2}
=
-\nu\|\nabla V_n\|_{L^2}^2.
\tag{6}
```

So the exact level-`n` time-energy law is

```math
\frac12\frac{d}{dt}\|V_n\|_{L^2}^2
+
\nu\|\nabla V_n\|_{L^2}^2
=
-\sum_{k=1}^{n}\binom{n}{k}\,
\langle (V_k\cdot\nabla)V_{n-k},V_n\rangle_{L^2}.
\tag{7}
```

This is the cleanest brute-force form of the time-order recursion.

## First four levels

### Level n = 0

```math
\frac12\frac{d}{dt}\|u\|_{L^2}^2
+
\nu\|\nabla u\|_{L^2}^2
=
0.
\tag{8}
```

At the base level, transport and pressure cancel completely.
Only viscosity remains.

### Level n = 1

```math
\frac12\frac{d}{dt}\|u_t\|_{L^2}^2
+
\nu\|\nabla u_t\|_{L^2}^2
=
-\langle (u_t\cdot\nabla)u,u_t\rangle_{L^2}.
\tag{9}
```

Again the transport of `u_t` by `u` cancels exactly.
The only live term is the mixed cross-order interaction:
`u_t` acting against the base spatial gradient of `u`.

### Level n = 2

```math
\frac12\frac{d}{dt}\|u_{tt}\|_{L^2}^2
+
\nu\|\nabla u_{tt}\|_{L^2}^2
=
-2\langle (u_t\cdot\nabla)u_t,u_{tt}\rangle_{L^2}
-\langle (u_{tt}\cdot\nabla)u,u_{tt}\rangle_{L^2}.
\tag{10}
```

Now the live burden is already spread:

- a same-middle interaction `u_t` with `u_t`,
- plus the endpoint interaction `u_{tt}` against the base profile `u`.

### Level n = 3

```math
\frac12\frac{d}{dt}\|u_{ttt}\|_{L^2}^2
+
\nu\|\nabla u_{ttt}\|_{L^2}^2
=
-3\langle (u_t\cdot\nabla)u_{tt},u_{ttt}\rangle_{L^2}
-3\langle (u_{tt}\cdot\nabla)u_t,u_{ttt}\rangle_{L^2}
-\langle (u_{ttt}\cdot\nabla)u,u_{ttt}\rangle_{L^2}.
\tag{11}
```

The pattern is unmistakable:
the live terms are not monotone same-derivative-order source terms.
They are a binomial spread over all lower splits.

## What this proves structurally

Formula `(7)` shows three exact facts.

### Fact 1: pressure is not the live source in the L^2 tower

Pressure is present in the differentiated equation, but in the `L^2` energy
balance it drops out exactly because of incompressibility.

So pressure is a constraint carrier, not the live same-derivative-order forcing term in
the energy recursion.

### Fact 2: the base transport term also drops out

The naive "runaway" picture

```math
(u\cdot\nabla)V_n
```

does not survive the `L^2` energy identity.
It cancels exactly.

So the dangerous mechanism is not monotone transport by the base flow.

### Fact 3: the entire live burden is the mixed-term spread

What remains is the off-diagonal binomial sum

```math
\sum_{k=1}^{n}\binom{n}{k}\,
\langle (V_k\cdot\nabla)V_{n-k},V_n\rangle.
\tag{12}
```

This is the exact sense in which the differentiated tower is governed by
cross-order interactions, not by a simple upward runaway.

## Order-convolution interpretation

The sum in `(12)` is a binomial convolution.
Define the exponential generating functions

```math
\mathcal V(z):=\sum_{n\ge0}\frac{z^n}{n!}V_n,
\qquad
\mathcal P(z):=\sum_{n\ge0}\frac{z^n}{n!}P_n.
\tag{13}
```

Then multiplying `(2)` by `z^n/n!` and summing over `n` gives

```math
\partial_t \mathcal V
+
(\mathcal V\cdot\nabla)\mathcal V
+
\nabla \mathcal P
=
\nu\Delta \mathcal V.
\tag{14}
```

So the entire infinite differentiated tower closes back to the same Navier--
Stokes form on the jet generating field.

This is the sharpest demonstration that the mixed terms are not accidental.
They are exactly the terms needed for the infinite tower to close.

Without the full binomial spread, the generating law `(14)` would fail.

## Exact lane meaning

The live mathematical burden is therefore not:

```math
\text{does one derivative level dominate the next by itself?}
```

It is:

```math
\boxed{
\text{does the infinite cross-order convolution law admit a global tame recursion?}
}
```

Equivalently:

```math
\boxed{
\text{can the mixed-term spread across the full time-order tower prevent monotone runaway and allow the viscous term to dominate globally?}
}
```

That is the brute-force time-order version of the route.

The next refinement of this same route is recorded in
`jet-substitution-and-exponential-closure-note.md`, where the lower-order
identities are recursively substituted back into the higher mixed terms and
the unresolved remainder is named explicitly as the defect.
