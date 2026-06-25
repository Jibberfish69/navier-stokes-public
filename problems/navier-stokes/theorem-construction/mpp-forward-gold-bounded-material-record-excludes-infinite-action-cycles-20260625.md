---
theorem_id: forward-gold-bounded-material-record-excludes-infinite-action-cycles-20260625
status: proof-installed-bounded-record-excludes-infinite-positive-action-cycles; global-record-growth-still-open
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Proves the zero-record-growth part of the positive material action cycle
  problem. On the original smooth transported material history, if the
  continuation-depth material record remains bounded, then the full annular
  pressure-stress-velocity action density is pointwise bounded and infinitely
  many unit positive action cycles cannot accumulate before a finite T*. Hence
  any failure of the global full material clock is not a bounded-record
  oscillatory annular cycling problem; it must appear as positive growth of the
  same material record itself. This preserves the physical ontology and removes
  the fake arbitrary cycle obstruction without claiming the MPP is closed.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-material-action-cycle-direct-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-material-record-definition-for-fixed-hs-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-clock-to-fixed-hs-continuation-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mcp-global-full-clock-stress-time-spatial-reduction-20260625.md
---

# Bounded Material Record Excludes Infinite Positive Action Cycles

Date: 2026-06-25

## 0. Correction of the cycle statement

The exact statement is not that one positive same-material annular action cycle
is impossible.  A smooth annulus can carry stress/strain inward and outward
with nonzero rectified action.

The exact statement is:

```math
\boxed{
\text{Infinitely many unit positive same-material action cycles cannot
accumulate before }T_*\text{ while the continuation-depth material record
stays bounded.}
}
\tag{BMR.1}
```

Thus the zero-record-growth branch of `PAC.12` is closed.  Any remaining
infinite-clock failure must be positive growth of the same material record.

## 1. Same material record controls the full annular density

Work on the original transported material history.  Let

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\qquad
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^T.
\tag{BMR.2}
```

Let \(\mathcal P_N^{mat}\) be the continuation-depth material record from
`MaterialRecordDefinitionForFixedHsReadout.A`.  Choose the depth \(N=N_s\)
large enough that Sobolev embedding on the material chart controls the
coefficient, velocity, pressure, and collar derivatives appearing in the
stress-time spatial density.  Concretely, after increasing the fixed finite
continuation depth by the finite number of derivatives required by the density
in `(BMR.4)`, the record controls

```math
\|U\|_{W^{2,\infty}(\operatorname{collar}\phi)}
+
\|T^\sharp\|_{W^{1,\infty}(\operatorname{collar}\phi)}
+
\|\nabla\cdot T^\sharp\|_{L^\infty(\operatorname{collar}\phi)}
+
\|\nabla(-\Delta)^{-1}\mathcal E_P\|_{L^\infty(\operatorname{collar}\phi)}
+
\|\phi\|_{C^2}
\le
C_N(\mathcal P_N^{mat}).
\tag{BMR.3}
```

This is not a new detached estimate.  The terms in `(BMR.3)` are exactly the
same pressure-viscosity-incompressibility-velocity packet: velocity, stress,
pressure elliptic service, transported collar, and material coefficients.

The stress-time spatial reduction gives the full annular action density
representative

```math
\begin{aligned}
\mathcal S_\phi^\sharp
:={}&
|\nabla\cdot T^\sharp|\,|T^\sharp|\,|\nabla\phi|
+
|U|\,|\nabla(-\Delta)^{-1}\mathcal E_P|\,|\nabla\phi|\\
&+
|\nabla\cdot T^\sharp|\,|U|\,|\nabla^2\phi|
+
|\nabla\cdot T^\sharp|\,|\nabla U|\,|\nabla\phi|\\
&+
|U|\,|\nabla U|^2|\nabla\phi|
+
|U|\,|T^\sharp|\,|\nabla U|\,|\nabla\phi|.
\end{aligned}
\tag{BMR.4}
```

By `(BMR.3)`, if

```math
\sup_{t\in I}\mathcal P_N^{mat}(t)\le K,
\tag{BMR.5}
```

then

```math
\mathcal A_N^\sharp(t)
:=
\int_{\operatorname{collar}\phi(t)}\mathcal S_\phi^\sharp(t,x)\,dx
\le
C_N(K)
\tag{BMR.6}
```

for every \(t\in I\), with the collar volume and transported collar geometry
controlled by the same record.

## 2. Unit cycles require definite time under bounded record

Let \(I_j=[a_j,b_j]\subset[0,T_*)\) be disjoint or bounded-overlap intervals
on the same transported material history, and suppose each interval carries one
unit of positive annular action:

```math
\int_{I_j}\mathcal A_N^\sharp(t)\,dt\ge \eta>0.
\tag{BMR.7}
```

If `(BMR.5)` holds on the union of these intervals, then `(BMR.6)` gives

```math
|I_j|
\ge
{\eta\over C_N(K)}.
\tag{BMR.8}
```

For a finite terminal time \(T_*\), a bounded-overlap family therefore satisfies

```math
\sum_j 1
\le
{K_{ov}C_N(K)T_*\over \eta}.
\tag{BMR.9}
```

So infinitely many unit positive action cycles cannot accumulate before
\(T_*\) while the same material record is bounded.

## 3. Consequence for the full clock

The full material clock has the form

```math
d\Omega_N^{full}
=
\mathcal A_N^\sharp(t)\,dt
+
C_{\log}\,d[\log(1+\mathcal P_N^{mat})]_+
+d\Omega_N^{legal}.
\tag{BMR.10}
```

Assume the legal part is in the already-installed legal normal form.  Then, on
any finite terminal interval,

```math
\int d[\log(1+\mathcal P_N^{mat})]_+<\infty
\quad\Longrightarrow\quad
\sup_t\mathcal P_N^{mat}(t)<\infty.
\tag{BMR.11}
```

By `(BMR.6)`, this implies

```math
\int_0^{T_*}\mathcal A_N^\sharp(t)\,dt<\infty.
\tag{BMR.12}
```

Hence, modulo legal residuals already required to be summable,

```math
\int_0^{T_*}d\Omega_N^{full}=\infty
\quad\Longrightarrow\quad
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+=\infty.
\tag{BMR.13}
```

This is the exact improvement over the previous cycle formulation.  The
remaining hard branch is material-record positive growth itself, not bounded
record oscillatory annular cycling.

## 4. Relation to the pay-it-back-later identity

The transported stress identity

```math
{d\over dt}M_\phi(t)+D_\phi(t)=-F_\phi(t)
\tag{BMR.14}
```

still attaches the center pulse to the same outer annular history.  The new
point is that once the material record is bounded, the attached annular history
has bounded action density.  Infinite terminal cycling would require infinitely
many intervals of a fixed minimum length, which cannot fit into finite time.

Thus the physical pay-it-back-later picture eliminates the fake endpoint atom
and the fake arbitrary oscillation model together.  What remains is the same
material record becoming unbounded, which is exactly the continuation-facing
quantity.

## 5. Result

The zero-record-growth branch of the no-free-positive-material-action-cycle
problem is proved:

```math
\boxed{
\sup_{t<T_*}\mathcal P_N^{mat}(t)<\infty
\Longrightarrow
\int_0^{T_*}\mathcal A_N^\sharp(t)\,dt<\infty.
}
\tag{BMR.15}
```

Therefore the global clock failure has only one remaining same-object form:

```math
\boxed{
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+=\infty.
}
\tag{BMR.16}
```

This note does not close the MPP by itself.  It removes bounded-record positive
action cycling from the live obstruction and reduces the remaining gold edge to
proving finite positive variation of the continuation-depth material record on
the original pressure-viscosity-incompressibility-velocity history.