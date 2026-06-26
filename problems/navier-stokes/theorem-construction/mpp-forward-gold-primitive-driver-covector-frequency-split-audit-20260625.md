---
theorem_id: forward-gold-primitive-driver-covector-frequency-split-audit-20260625
status: single-covector-shortcut-rejected; superseded-by-complete-frame-tracefree-payment
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Audits the tempting post-Hodge closure of the primitive graph-compatible PLS
  driver by a single material covector/frequency growth.  That one-covector
  split is useful but incomplete.  Along a material high-frequency covector,
  \(D_t\xi=-B^\top\xi\), so only the strain component changes frequency size,
  while rotation is gauge.  This pays the branch where positive primitive pump
  is tied to compressive covector growth or angular recirculation.  The audit
  leaves out the packet-normal/collar direction of a retained point-scale
  material packet.  The later complete-frame note restores that third
  direction and proves the trace-free payment identity
  \([p\cdot Sp]_+\le[-\widehat\xi\cdot S\widehat\xi]_+
  +[-n\cdot Sn]_+\).  Thus this note remains the single-covector warning, and
  is superseded as a closure surface by the complete-frame trace-free primitive
  PLS payment note.
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
service.  In the single-covector model only, the third branch appears as a
survivor: positive primitive activity that remains divergence-free and
same-carrier but is not seen by the paid wave-covector orientation.

The complete-frame correction in Section 6 removes that apparent survivor by
restoring the packet-normal/collar direction.

## 4. Single-covector remaining theorem before supersession

Before restoring the packet-normal direction, the apparent remaining theorem is
the primitive-driver analogue of the installed selected positive cone
no-null/saturation surface:

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

This is the correct diagnosis for the incomplete `(p,\widehat\xi)` reading.
It is not the final complete-frame diagnosis.

## 5. Result

The projector-first Hodge route remains accepted and closes the pressure
sector.  The single-covector frequency route pays the compressive-frequency and
angular recirculation branches.  By itself it does not close the retained
positive-cone branch, because it ignores the packet-normal/collar direction.

Thus the single-covector audit sharpened the missing object to:

```math
\boxed{
\text{prove same-carrier positive-cone sign-separation/saturation for the
graph-compatible primitive PLS carrier.}
}
\tag{PCF.12}
```

Section 6 supersedes this as the final primitive-driver obstruction by adding
the complete frame.

## 6. Supersession by complete-frame payment

This note tested only the pair `(p,\widehat\xi)`.  The retained point-scale
packet also carries the collar/envelope normal

```math
n=p\times\widehat\xi .
\tag{PCF.13}
```

The complete-frame note
`mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md`
restores that missing direction.  Since

```math
p\cdot Sp+\widehat\xi\cdot S\widehat\xi+n\cdot Sn=0,
\tag{PCF.14}
```

it proves

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+ .
\tag{PCF.15}
```

So the single-covector objection is not a full PLS obstruction.  The complete
frame pays the principal primitive positive pump through either wave-covector
compression or annular/collar-normal compression on the same material packet.
