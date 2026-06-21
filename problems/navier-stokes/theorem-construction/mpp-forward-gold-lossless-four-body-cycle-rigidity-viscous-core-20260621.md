---
theorem_id: forward-gold-lossless-four-body-cycle-rigidity-viscous-core-20260621
status: conditional-viscous-core-lossless-rigidity-proved-same-carrier-viscous-production-not-installed
logical_landing_node: lossless_four_body_cycle_rigidity_viscous_core
edge_effect: "Proves the exact rigid core of LosslessFourBodyCycleRigidity.A. If a lossless same-carrier four-body cycle includes normalized viscous/parabolic drain on the selected carrier, if compactness retains the selected activity without selector or Body-III loss, and if the activity is Galilean/affine-pressure-gauge invariant rather than raw velocity mass, then zero loss forces the limiting packet to be a removable spatially constant/affine-pressure profile and the selected participation activity vanishes. Thus a nonzero lossless cycle can survive only by failing same-carrier normalized viscous inclusion, pressure/gauge retention, activity persistence, or geometry/tower recertification; those failures are exactly the named four-body defects. This proves the rigidity core but not the production theorem that every nonzero selected terminal pulse pays normalized viscous/parabolic drain on the same carrier."
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-four-body-terminal-atom-accounting-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-bodyiii-retained-participation-packet-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-bodyiv-canonical-geometry-packet-interface-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-bodyi-geometry-tower-recertification-interface-criterion-20260621.md
---

# Lossless Four-Body Cycle Rigidity: Viscous Core

Date: 2026-06-21

## 0. Aim

The lossless branch asks whether a nonzero selected terminal pulse can circulate
through all four bodies while every body records zero loss and zero defect.

This note proves the exact rigid core of that branch.

If the lossless cycle really contains the normalized viscous/parabolic drain on
the same selected carrier, then zero loss forces the limiting profile to be
spatially constant modulo the admissible pressure gauge.  Any selected activity
that vanishes on Galilean/affine-pressure profiles must therefore vanish.

The theorem is conditional because the current gold problem still has to
produce the same-carrier normalized drain from the selected terminal pulse.

## 1. Lossless same-carrier sequence

Work on one fixed normalized cylinder

```math
Q_1=(-1,0]\times B_1.
\tag{LCR.1}
```

Let \((V_n,Q_n)\) be a selected normalized Navier-Stokes packet in the
four-body loop.  Assume the lossless branch has removed selector,
compactness, geometry, and legal defects:

```math
K_{{\rm sel},n}\to0,
\qquad
K_{C,n}^+\to0,
\qquad
K_{G,n}^+\to0,
\qquad
R_{{\rm legal},n}\to0.
\tag{LCR.2}
```

Assume also that the normalized viscous/parabolic drain on this same carrier
vanishes:

```math
D^{\rm vis}_n
:=
\int_{-1}^{0}\int_{B_1}
|\nabla_y V_n|^2\,dy\,ds
\longrightarrow0.
\tag{LCR.3}
```

This is the decisive hypothesis.  The theorem below proves rigidity from
`(LCR.3)`.  It does not prove that every selected terminal pulse forces
`(LCR.3)` to appear in the four-body loss ledger.

## 2. Zero drain gives a Galilean quotient limit

For each \(s\), let

```math
\bar V_n(s)
:=
{1\over |B_1|}
\int_{B_1}V_n(s,y)\,dy.
\tag{LCR.4}
```

Poincare's inequality on \(B_1\) gives

```math
\int_{B_1}
|V_n(s,y)-\bar V_n(s)|^2\,dy
\le
C
\int_{B_1}
|\nabla_yV_n(s,y)|^2\,dy.
\tag{LCR.5}
```

Integrating in \(s\) and using `(LCR.3)`,

```math
\boxed{
V_n-\bar V_n(s)\to0
\quad\text{in }L^2((-1,0]\times B_1).
}
\tag{LCR.6}
```

Thus the velocity packet collapses in the local spatial-gradient quotient to a
spatially constant profile:

```math
V_\infty(s,y)=c(s).
\tag{LCR.7}
```

No spatial strain, vorticity, projected nonlinear source, positive
strain-carrier, or positive spatial-derivative carrier remains in this
quotient.  A time-dependent spatial constant \(c(s)\) is paired with affine
pressure gauge in the next step; it is not singular participation activity
unless the selected carrier charges that gauge, in which case the charge is a
pressure/gauge defect rather than rigidity.

## 3. Pressure becomes gauge-only

The pressure equation on the normalized packet is

```math
-\Delta_y Q_n
=
\partial_i(V_n)_j\,\partial_j(V_n)_i.
\tag{LCR.8}
```

By Cauchy-Schwarz and `(LCR.3)`,

```math
\left\|
\partial_i(V_n)_j\,\partial_j(V_n)_i
\right\|_{L^1(Q_1)}
\le
\|\nabla_yV_n\|_{L^2(Q_1)}^2
\longrightarrow0.
\tag{LCR.9}
```

Hence

```math
\Delta_y Q_n\to0
\quad\text{in distributions on }Q_1.
\tag{LCR.10}
```

Every retained pressure limit is therefore harmonic in space.  The affine part
of a harmonic pressure can balance the acceleration of the spatially constant
velocity \(c(s)\).  This is pressure gauge, not singular participation.

The exact requirement on the selected activity is therefore:

```math
\boxed{
A_{\rm sel}\text{ must annihilate spatially constant velocity profiles with
harmonic/affine pressure gauge.}
}
\tag{LCR.11}
```

This is already the intended definition of \(A_{\rm sel}\) in the four-body
program: it is selected singular participation activity, not raw local velocity
mass or raw pressure flux.

## 4. Activity persistence forces contradiction

Assume, toward a lossless nonzero cycle, that the selected activity remains
positive:

```math
A_{\rm sel}(V_n,Q_n)\ge\eta>0.
\tag{LCR.12}
```

The \(Q\to C\) retained-packet criterion and Body-III selected-carrier
persistence say that, under `(LCR.2)`, a positive selected carrier cannot
disappear in compactness:

```math
A_{\rm ret}(V_\infty,Q_\infty)\ge\eta_*(\eta)>0.
\tag{LCR.13}
```

But `(LCR.6)` through `(LCR.10)` say that the retained lossless limit is a
spatially constant velocity with harmonic/affine pressure gauge.  By
`(LCR.11)`,

```math
A_{\rm ret}(V_\infty,Q_\infty)=0.
\tag{LCR.14}
```

This contradicts `(LCR.13)`.

Therefore:

```math
\boxed{
\text{lossless same-carrier cycle}
+
\text{same-carrier normalized viscous drain}
\Longrightarrow
A_{\rm sel}=0.
}
\tag{LCR.15}
```

This is the rigid core of the lossless-cycle alternative.

## 5. Exact remaining escape routes

A nonzero selected lossless cycle can avoid `(LCR.15)` only by failing one of
the hypotheses used above.

First, the normalized viscous/parabolic drain may fail to sit on the same
selected carrier:

```math
D_n^{\rm vis}\not\to0
\quad\text{on the selected carrier,}
\tag{LCR.16}
```

or, more precisely, the four-body loop may fail to prove that nonzero selected
activity must register in \(D_n^{\rm vis}\).

Second, selected activity may fail to persist through compactness.  That is
already charged by

```math
K_{\rm sel}+K_C^+ + R_{\rm legal}.
\tag{LCR.17}
```

Third, pressure may leave a non-gauge harmonic/trace residue on the selected
carrier.  That is not rigidity; it is a pressure/gauge carrier defect, charged
to \(K_C^+\), \(K_G^+\), or \(R_{\rm legal}\).

Fourth, the material geometry or tower return may fail to carry the same packet
back into Body I.  That is exactly the \(C\to G\) or \(G\to S\) defect:

```math
K_{\rm geom,map}^+
+
K_{\rm geom,gauge}^+
+
K_{\rm geom,coef}^+
+
K_{\rm ell}^+
+
K_{\rm coef}^+
+
K_{\rm comm}^+
+
K_{\rm transport}^+.
\tag{LCR.18}
```

So the lossless branch no longer hides a broad mysterious rigidity problem.
Its rigid core is proved once the same-carrier viscous drain and the
Galilean/affine-gauge annihilation of \(A_{\rm sel}\) are installed.

## 6. Four-body consequence

The full-loop theorem can now be stated more sharply.

The positive lossless cycle

```math
A_{\rm sel}\ge\eta>0,
\qquad
D_{4B}=0,
\qquad
K_{\rm sel}=K_C^+=K_G^+=R_{\rm legal}=0
\tag{LCR.19}
```

is impossible if \(D_{4B}\) contains the same-carrier normalized viscous drain
`(LCR.3)` and \(A_{\rm sel}\) annihilates the Galilean/affine-pressure gauge
class.

Therefore the actual remaining production target is:

```math
\boxed{
A_{\rm sel}>0
\Longrightarrow
\text{positive same-carrier normalized parabolic drain}
\ \text{or one of the named four-body defects.}
}
\tag{LCR.20}
```

Equivalently, the missing theorem is no longer a vague ancient-profile
Liouville theorem.  It is a same-carrier drain-production theorem:

```math
\boxed{
\text{selected terminal participation cannot avoid the normalized viscous /
variable-coefficient parabolic drain while all four interface defects vanish.}
}
\tag{LCR.21}
```

## 7. Current state

This note proves the conditional rigid core:

```math
\boxed{
D^{\rm vis}_{\rm same-carrier}=0
\Longrightarrow
\text{Galilean/affine-gauge removable profile}
\Longrightarrow
A_{\rm sel}=0.
}
\tag{LCR.22}
```

It does not prove the production theorem that puts the selected terminal pulse
into \(D^{\rm vis}_{\rm same-carrier}\) or into the variable-coefficient
parabolic drain in the first place.

The frontier after this note is exactly `(LCR.20)` / `(LCR.21)`.
