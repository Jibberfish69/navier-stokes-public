---
theorem_id: forward-gold-complete-frame-transverse-compression-ode-obstruction-20260626
status: direct-test-installed-complete-frame-payment-does-not-produce-finite-total-action
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-clock-closure-complete-frame-hodge-assembly-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-payment-vs-full-clock-producer-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-superheat-circularity-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-one-way-transfer-minimal-bad-tail-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-nongauge-material-time-profile-liouville-test-20260626.md
---

# Complete-Frame Transverse Compression ODE Obstruction

The complete-frame identity is the right local participation statement.  It
says that a positive retained velocity-polarization pump cannot be a free
positive direction.  On a retained frame

```math
(p,\widehat \xi,n),
\qquad n=p\times\widehat\xi,
```

trace-free strain gives

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+ .
\tag{CTO.1}
```

Thus the positive pump is carried by wave-covector compression or
annular/collar-normal compression.  This closes the orientation/admission gap.

It does not prove finite total action.  The obstruction is visible in the
one-shell material ODE that represents the high-ratio branch.

## 1. One-shell model after complete-frame payment

Let \(e(t)\) be the selected shell energy and \(k(t)\) the paying transverse
frequency or collar-normal scale.  The complete-frame payment gives, at the
principal level,

```math
\lambda(t):=[p\cdot Sp]_+
\le C\,\kappa(t),
\qquad
\kappa(t):={d\over dt}\log k(t).
\tag{CTO.2}
```

The shell energy balance has the form

```math
{d\over dt}e(t)
=
\lambda(t)e(t)-\nu k(t)^2e(t)+r(t),
\tag{CTO.3}
```

where \(r\) denotes lower-order/legal or already paid terms.  The target
positive action is

```math
\int \lambda(t)e(t)\,dt .
\tag{CTO.4}
```

The subheat branch is paid by viscosity when \(\lambda\lesssim \nu k^2\).
The live branch is the high-ratio case

```math
\lambda(t)\gg \nu k(t)^2.
\tag{CTO.5}
```

Then heat damping is too weak to absorb the pump at that instant, and
`(CTO.2)` only says the pump is accompanied by transverse compression.

## 2. Why transverse compression is not a finite-action reserve

Ignore \(r\) and take the high-ratio limiting model

```math
e'=\lambda e,
\qquad
k'=\kappa k,
\qquad
\lambda=C\kappa .
\tag{CTO.6}
```

Then

```math
e(t)=e(0)\left({k(t)\over k(0)}\right)^C .
\tag{CTO.7}
```

The action satisfies

```math
\int \lambda e\,dt
=
C\int e\,{dk\over k}
=
e(0)\left[
\left({k(t)\over k(0)}\right)^C-1
\right].
\tag{CTO.8}
```

So identifying the paying transverse compression does not bound the action.
The action can grow with the compressed frequency/collar scale.  A storage such
as \(e k^{-a}\) can be made bounded and decreasing for suitable \(a\), but it
pays only a \(k^{-a}\)-weighted action:

```math
{d\over dt}(e k^{-a})
\gtrsim
-\,\lambda e k^{-a},
\tag{CTO.9}
```

not the unweighted quantity `(CTO.4)`.  To pay `(CTO.4)` itself, the primitive
must carry the growing factor \(k^a\) or the accumulated logarithmic
compression.  That is exactly what loses the lower bound on a long high-ratio
history.

Thus complete-frame payment is a same-packet admission theorem, not a finite
total-action theorem.

## 3. Compatibility with the full Navier--Stokes packet

This obstruction is not a fake scalar refill model.  The local affine strain
normal form realizes it inside the coupled pressure--viscosity--
incompressibility--velocity law.  Let

```math
u(x,t)=B(t)x,
\qquad
\operatorname{tr}B(t)=0,
\qquad
B(t)=B(t)^T,
\tag{CTO.10}
```

and set

```math
p(x,t)
=
-{1\over2}x\cdot(\dot B+B^2)x .
\tag{CTO.11}
```

Then

```math
\partial_tu+(u\cdot\nabla)u+\nabla p-\nu\Delta u=0,
\qquad
\nabla\cdot u=0.
\tag{CTO.12}
```

So pressure and incompressibility do not forbid a material-time strain profile
whose raw heat dissipation is absent at the affine core.  Periodic
localization and collar matching reintroduce physical cost, but at heat scale
the installed localized-affine audits keep the same scaling:

```math
\text{raw physical cost}=O(r),
\qquad
\text{normalized material action}=O(1).
\tag{CTO.13}
```

Therefore a terminal sequence can have summable raw physical cost while
retaining order-one normalized action samples unless an additional
same-material weight-beating or bounded-below action law is proved.

## 4. Result

The complete-frame route correctly restores the missing transverse direction:

```math
\text{positive primitive pump}
\longrightarrow
\text{same-packet transverse compression}.
\tag{CTO.14}
```

The remaining finite-action statement is still:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
\tag{CTO.15}
```

or equivalently a bounded-below same-material storage

```math
d\mathscr A_N+c\,d\Omega_N^{full}\le dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0).
\tag{CTO.16}
```

This note blocks the invalid inference

```math
\text{complete-frame transverse payment}
\Longrightarrow
\text{finite total same-material action}.
\tag{CTO.17}
```

The payment direction has been identified.  The unweighted total of that
payment remains the Gold-route hard edge.
