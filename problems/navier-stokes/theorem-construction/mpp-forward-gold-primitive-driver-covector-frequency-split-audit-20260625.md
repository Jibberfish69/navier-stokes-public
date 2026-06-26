---
theorem_id: forward-gold-primitive-driver-covector-frequency-split-audit-20260625
status: covector-frequency-shortcut-rejected; primitive-driver-reduced-to-same-carrier-positive-cone-sign-separation
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Audits the tempting post-Hodge closure of the primitive graph-compatible PLS
  driver by material covector/frequency growth.  The split is useful but not a
  proof of the finite full clock.  Along a material high-frequency covector,
  \(D_t\xi=-B^\top\xi\), so only the strain component changes frequency size,
  while rotation is gauge.  This pays the branch where positive primitive
  pump is tied to compressive covector growth or angular recirculation.  But
  the installed microlocal defect model already shows the shortcut is false in
  general: a divergence-free packet can have wave covector in one transverse
  direction, velocity polarization in an expanding direction, and positive
  selected strain activity without forcing the needed frequency-growth
  payment.  Therefore the remaining graph-compatible primitive driver is not
  closed by microlocal visibility or covector transport alone.  The exact
  remaining theorem is same-carrier positive-cone/sign-separation, equivalently
  a no-null/saturation theorem for the primitive PLS carrier after legal,
  recirculation, subheat, pressure/Hodge, collar, and retained-compactness
  branches have been paid.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projector-first-hodge-route-frontier-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-driver-post-tangent-normal-closure-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-positive-cone-transversality-source-mode-factorization-20260620.md
  - problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md
---

# Primitive Driver Covector Frequency Split Audit

Date: 2026-06-25

## 0. Object

After the projector-first Hodge route, pressure is not the live primitive
obstruction.  The remaining graph-compatible primitive PLS driver has the form

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_jw_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid}.
\tag{PCF.1}
```

Here `\mathcal M_{<j-C,N}` is the low material deformation coefficient of the
same transported packet: strain, material Stokes/projector motion,
coefficient/frame motion, transported collar motion, annular stress service,
and viscous graph service.

The question tested here is whether this remaining positive action is paid
directly by material covector/frequency growth.

## 1. Exact covector transport

For a high-frequency material covector `\xi(t)` transported by the flow,

```math
D_t\xi=-B^\top\xi,
\qquad
B=\nabla u=S+\Omega .
\tag{PCF.2}
```

Consequently

```math
D_t\log|\xi|
=
-\,\widehat\xi\cdot S\widehat\xi,
\qquad
\widehat\xi={\xi\over|\xi|}.
\tag{PCF.3}
```

The skew part `\Omega` rotates the covector and does not change its length.
Thus covector-frequency growth is strain-paid, not pressure-paid.

This gives a real paid branch.  If a positive primitive pump is tied to
covectors in a compressive strain direction, then `|\xi|` grows.  At shell
level that either enters high-shell viscosity/subheat absorption, top-strain
superheat storage, or the already installed angular/recirculation clock when
the covector has to keep rotating to maintain the favorable orientation.

## 2. The shortcut is false as a full closure

The above branch does not cover the whole primitive driver.  The installed
microlocal defect test gives the exact countergeometry.  Let

```math
S_0=\operatorname{diag}(2,-1,-1),
\qquad
\xi=e_2,
\qquad
p=e_1.
\tag{PCF.4}
```

Then

```math
\xi\cdot p=0,
\tag{PCF.5}
```

so the principal high-frequency packet is divergence-free, while

```math
\operatorname{tr}\left(S_0\,p\otimes p\right)=2>0.
\tag{PCF.6}
```

The packet has positive selected strain activity in the expanding velocity
polarization even though the wave covector is transverse to that polarization.
This is exactly the model recorded in
`mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md`.

Therefore the implication

```math
\text{positive primitive pump}
\Longrightarrow
\text{frequency-growth payment}
\tag{PCF.7}
```

is false without an additional same-carrier directional richness or
sign-separation theorem.

## 3. Correct split

For the primitive driver, the covector/frequency analysis supplies only the
following split:

```math
d\Omega_N^{PLS,primitive}
\le
d\Omega_N^{compressive\ covector}
+d\Omega_N^{angular/recirc}
+d\Omega_N^{positive\ cone/null}
+dR_N^{legal}.
\tag{PCF.8}
```

The first branch is paid by shell growth, viscosity, and top-strain/superheat
service.  The second branch is the already installed angular/recirculation
service.  The third branch is the real survivor: positive primitive activity
that remains divergence-free and same-carrier but is not seen by the paid
covector-growth orientation.

That survivor is not pressure/collar.  It is a same-carrier positive-cone
problem on the graph-compatible primitive PLS carrier.

## 4. Exact remaining theorem

The remaining theorem is the primitive-driver analogue of the installed
selected positive cone no-null/saturation surface:

```math
\boxed{
\text{PrimitivePLSPositiveConeNoNullReadout.A}
}
\tag{PCF.9}
```

One equivalent finite-form statement is:

```math
\inf
\left\{
\|L_N^{PLS}q\|_N:
q\in C_{N,PLS}^+,\ 
M_N^+(q)=1,\ 
\text{legal/recirc/subheat/Hodge/collar branches removed}
\right\}
>0.
\tag{PCF.10}
```

Another equivalent sufficient route is the finite sign-separation packet from
`selector-quadratic-sign-separation-packet.md`, but now applied to the actual
primitive PLS carrier, not to a detached microlocal readout:

```math
\text{finite eigen-cap occupancy / two-sided quadratic richness on the
primitive PLS carrier}
\Longrightarrow
\text{no positive-cone null}
\Longrightarrow
\int_0^{T_*}d\Omega_N^{PLS,primitive}<\infty .
\tag{PCF.11}
```

The current repo has the algebraic sign-separation packet and the source-mode
factorization.  It does not yet prove the occupancy/saturation hypothesis for
the graph-compatible primitive PLS carrier.

## 5. Result

The projector-first Hodge route remains accepted and closes the pressure sector.
The covector/frequency route pays the compressive-frequency and angular
recirculation branches.  It does not close the retained positive-cone branch,
because the divergence-free microlocal model `(PCF.4)`-`(PCF.6)` is a legal
countergeometry to the naive frequency-payment implication.

Thus the gold-only frontier is sharpened to:

```math
\boxed{
\text{prove same-carrier positive-cone sign-separation/saturation for the
graph-compatible primitive PLS carrier.}
}
\tag{PCF.12}
```

This is the exact primitive-driver version of the remaining finite full-clock
theorem.  It is not a pressure theorem, not an endpoint theorem, and not a
viscosity-only theorem.
