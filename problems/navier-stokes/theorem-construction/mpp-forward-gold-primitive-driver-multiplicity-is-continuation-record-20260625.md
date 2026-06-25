---
theorem_id: forward-gold-primitive-driver-multiplicity-is-continuation-record-20260625
status: exact-multiplicity-collapse-installed; no-reuse-birth-detour-demoted
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the remaining "one lower coefficient can feed many child shells"
  obstruction in the primitive graph-compatible free-material PLS driver.
  Orthogonality shows that many children do not create an independent counting
  or no-reuse problem: summing over the child shells gives the same
  continuation-depth weighted material response.  Thus birth-packing/no-reuse
  is not a separate frontier once recirculation, subheat, top-strain,
  coefficient-frame, base-collar, pressure/collar graph sectors, and legal
  exits are removed.  The live theorem remains the bounded-below entropy or
  no-self-birth coercivity for the primitive PLS driver itself.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mcp-primitivegraphdriver-pls-interface-direct-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-primitiveplsdriver-pointwise-contraction-ancestry-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-birthpackingmap-strict-ancestry-descent-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
---

# Primitive Driver Multiplicity Is Continuation Record

Date: 2026-06-25

## 0. Object

The live primitive driver is

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid}.
\tag{PMR.1}
```

Here \(H_{j,N}\) is the active child shell, and
\(\mathcal M_{<j-C,N}\) is the same-material low coefficient built from
strain, pressure Hessian through the strain equation, material coefficient
motion, Hodge/Stokes projection motion, and transported collar motion.

The apparent remaining birth-packing obstruction is that one lower material
coefficient can feed many high child shells at the same time.  This note tests
whether that is a separate counting problem.

## 1. Orthogonal child summation

Fix a time \(t\) and freeze the low coefficient \(\mathcal M_{<j-C,N}\).  On a
dyadic block,

```math
\left[
\left\langle H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+
\le
\|\mathcal M_{<j-C,N}\|_{L^\infty}
\|H_{j,N}\|_2^2 .
\tag{PMR.2}
```

Therefore for any fixed parent band \(k\) contributing to the low coefficient,

```math
\sum_{j>k+C}
w_j
\left[
\left\langle H_{j,N},
\mathcal M_{k,N}H_{j,N}
\right\rangle
\right]_+
\le
\|\mathcal M_{k,N}\|_{L^\infty}
\sum_{j>k+C}w_j\|H_{j,N}\|_2^2 .
\tag{PMR.3}
```

The sum over child shells is not a new multiplicity factor.  By Littlewood
orthogonality it is the high-tail part of the same weighted material record:

```math
\sum_{j>k+C}w_j\|H_{j,N}\|_2^2
\le
E_N^{mat}(t).
\tag{PMR.4}
```

Thus the "many children" response is exactly the continuation-depth material
energy seen by the primitive driver.

## 2. Why this does not produce a finite clock

Combining `(PMR.3)` and `(PMR.4)` gives

```math
\sum_{j>k+C}
w_j
\left[
\left\langle H_{j,N},
\mathcal M_{k,N}H_{j,N}
\right\rangle
\right]_+
\le
\|\mathcal M_{k,N}\|_{L^\infty}E_N^{mat}(t).
\tag{PMR.5}
```

This is the correct same-packet collapse of multiplicity, but it is not a
finite-action estimate from original data.  It is the usual continuation-form
inequality

```math
{d\over dt}E_N^{mat}(t)
\lesssim
\Theta_N^{mat}(t)E_N^{mat}(t)
\text{viscous/legal terms}.
\tag{PMR.6}
```

After dividing by \(1+E_N^{mat}\), `(PMR.6)` gives the installed material
record growth estimate

```math
d[\log(1+E_N^{mat})]_+
\lesssim
\Theta_N^{mat}(t)dt+dR_N^{legal}.
\tag{PMR.7}
```

It says that the low coefficient pays record growth.  It does not upper-bound
the low coefficient's positive action from the initial data.

## 3. Effect on the birth-packing route

The birth-packing/no-reuse wording was useful only while it was unclear whether
many child shells created a separate combinatorial leakage.  They do not.
Their total response is already the weighted material record `(PMR.4)`.

So the unresolved self branch is not:

```math
\text{one parent is reused too many times.}
\tag{PMR.8}
```

The actual self branch is:

```math
\text{the primitive material coefficient acts on the full continuation-depth
weighted response.}
\tag{PMR.9}
```

That is the same graph-compatible PLS driver, not a new no-reuse theorem.

## 4. Result

The exact frontier is unchanged but cleaner.  After the graph-driver split and
the multiplicity collapse, the remaining theorem is

```math
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{such that}\quad
d\mathscr A_N
+
c_Nd\Omega_N^{PLS,primitive}
\le
dR_N^{legal},
\tag{PMR.10}
```

or equivalently a strict no-self-birth/coercivity estimate for the primitive
same-material deformation coefficient acting on the continuation-depth
weighted response.

No separate birth-packing, no-reuse, pressure/collar, or child-counting theorem
remains after this collapse.
