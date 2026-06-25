---
theorem_id: superheat-residence-frequency-history-direct-audit-20260625
status: direct-audit-installed; subheat-and-recirculation-closed; one-way-superheat-residence-remains
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Audits the t=0 to T* frequency-history argument against the current
  same-material PLS clock. Smooth initial data, heat damping, and full
  participation-law refill do close the subheat and oscillatory/return
  branches. They do not by themselves prove finite one-way superheat material
  residence. The remaining theorem is precisely finite residence of the
  original transported material history on the set where the material
  participation rate beats heat damping.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-subheat-absorption-superheat-record-dichotomy-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-coercivity-split-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-plsrecirculationpackingclosure-a-globalsamepacketfullclockfromoriginaldata-a-c3a73fe8f5.md
  - problems/navier-stokes/theorem-construction/mcp-materialellipticgraphdriversignedreduction-a-globalsamepacketfullclockfromoriginaldata-a-fe3cacea22.md
---

# Superheat Residence Frequency-History Direct Audit

Date: 2026-06-25

## 0. Object

The object is the original smooth solution's transported material history, not
a free signal.  In a material chart,

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\qquad
A=(D_aX)^{-1},
\qquad
G=AA^\top .
\tag{SHFA.1}
```

The full material rate is

```math
\Theta_j^{mat}
=
\Theta_j^{strain}
+\Theta_j^{press}
+\Theta_j^{coef}
+\Theta_j^{collar},
\tag{SHFA.2}
```

and the remaining same-history residence is

```math
\mathcal R_{sh,N}(t)
=
\sum_j
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta 2^{2j}\}} .
\tag{SHFA.3}
```

This is the same pressure-viscosity-incompressibility-velocity/strain
participation packet.  It is not a viscosity-only, pressure-only, endpoint-only,
or arbitrary-frequency model.

## 1. What the frequency-history argument proves

Smooth initial data gives finite high-frequency tails at every fixed
continuation depth:

```math
\sum_j 2^{2Nj}e_j(0)<\infty .
\tag{SHFA.4}
```

The material dyadic energy identity has the form

```math
{d\over dt}e_j(t)+c\nu 2^{2j}e_j(t)
=
m_j^{PLS}(t)+r_j^{legal}(t),
\tag{SHFA.5}
```

where \(m_j^{PLS}\) is the full participation-law-strain service of the same
packet.

Duhamel gives

```math
e_j(t)
\le
e^{-c\nu2^{2j}t}e_j(0)
+
\int_0^t e^{-c\nu2^{2j}(t-s)}
\left([m_j^{PLS}(s)]_+ + r_j^{legal}(s)\right)\,ds .
\tag{SHFA.6}
```

Thus the initial high-frequency tail decays faster at higher shells.  Any
later high shell must be supplied by the nonlinear PLS service \(m_j^{PLS}\);
there is no external refill source.

On the subheat set

```math
\Theta_j^{mat}(t)\le \delta 2^{2j},
\tag{SHFA.7}
```

the installed moving-pump estimate gives

```math
[m_j^{PLS}(t)]_+
\le
{1\over2}c\nu2^{2j}e_j(t)+r_j^{legal}(t),
\tag{SHFA.8}
```

after choosing the threshold constant.  Hence the frequency-history argument
does close the part where heat damping dominates the material participation
rate.

The installed recirculation closure also removes the return/backscatter branch:

```math
\operatorname{Var}^+_{\mathrm{return}}(m^{PLS})<\infty .
\tag{SHFA.9}
```

So repeated oscillatory exchange, top-shell regeneration by return cycles, and
subheat refill are not live frontier cases.

## 2. The part not discharged by frequency damping

The remaining set is exactly

```math
\Theta_j^{mat}(t)>\delta2^{2j}.
\tag{SHFA.10}
```

On this set, the material participation rate is faster than the heat damping
rate at shell \(j\).  The same calculation that proves `(SHFA.8)` now gives
only

```math
[m_j^{PLS}(t)]_+
\lesssim
\Theta_j^{mat}(t)e_j(t)+r_j^{legal}(t),
\tag{SHFA.11}
```

which is the residence density `(SHFA.3)` itself.  Heat damping no longer
absorbs it.  Smooth initial data no longer pays it, because `(SHFA.6)` says
only that any later high-shell mass must come through \(m_j^{PLS}\); it does
not bound the positive one-way amount of that same service.

Therefore the frequency-history argument proves this exact reduction:

```math
\text{initial tail + heat damping + PLS refill}
\Longrightarrow
\text{subheat and return branches finite,}
\tag{SHFA.12}
```

and leaves the one-way superheat residence:

```math
\boxed{
\int_0^{T_*}\mathcal R_{sh,N}(t)\,dt<\infty .
}
\tag{SHFA.13}
```

## 3. Why this is the continuation-strength line

The installed fixed-\(H^s\) equivalence gives

```math
\int_0^{T_*}\mathcal R_{sh,N}(t)\,dt<\infty
\Longrightarrow
\sup_{t<T_*}E_N^{mat}(t)<\infty
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\quad(s>5/2).
\tag{SHFA.14}
```

Conversely, bounded continuation-depth material record controls the same
annular density, hence gives finite residence after a finite depth shift.
Thus `(SHFA.13)` is not a smaller endpoint theorem or a new auxiliary clock. It
is the gold route's continuation-strength estimate.

## 4. Consequence

The physical frequency picture removes the fake arbitrary-signal model.  It
does not prove finite one-way superheat residence by itself.

The remaining nonconditional gold theorem is:

```math
\boxed{
\texttt{SuperHeatMaterialResidenceFromOriginalSmoothData.A}
}
\tag{SHFA.15}
```

with statement `(SHFA.13)`, or an equivalent bounded-below same-material
storage whose drop pays `(SHFA.3)`.

Any later proof step must act on `(SHFA.13)` directly.  A proof that only
repeats initial high-frequency summability, subheat damping, recirculation
packing, pressure/collar graph compatibility, or center-to-annulus attachment
does not close the remaining MPP-facing estimate.
