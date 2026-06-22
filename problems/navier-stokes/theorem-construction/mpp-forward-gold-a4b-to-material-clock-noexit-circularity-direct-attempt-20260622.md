---
theorem_id: forward-gold-a4b-to-material-clock-noexit-circularity-direct-attempt-20260622
status: direct-attempt-fails-before-admission-circularity-exact
logical_landing_node: a4b_to_material_clock_noexit_circularity
edge_effect: >-
  Tests whether the already closed four-body activity can produce the material
  deformation/tower clock needed for terminal same-packet record survival. The
  attempt fails exactly before admission: A_4B is defined on the retained
  same-carrier four-body packet, while the material clock is what keeps that
  carrier and its coefficient tower retained. Dominating the L^1_t L^\infty
  deformation clock by A_4B requires bounded material geometry plus enough
  finite tower/Sobolev control on the same carrier, which is precisely the Part
  record being proved. Thus A_4B pays retained bad packets, but cannot
  noncircularly prove retention of the packet record.
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-participation-material-tower-noexit-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-initial-smooth-frequency-tail-to-material-record-direct-attempt-20260622.md
---

# \(A_{4B}\) To Material Clock No-Exit Circularity Direct Attempt

Date: 2026-06-22

## 0. Target

The remaining pure gold producer would be a bound of the form

```math
\int_0^{T_*}\mathcal K_N(t)\,dt
\le
C\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
+
C,
\tag{ACM.1}
```

where \(\mathcal K_N\) is the same-carrier material deformation/tower clock
that propagates

```math
\mathfrak P_N^{mat}(t).
\tag{ACM.2}
```

If `(ACM.1)` were available before endpoint admission, the finite four-body
reserve would prove terminal same-packet record survival.

## 1. What \(A_{4B}\) actually controls

The four-body reserve is an order-locked same-carrier statement:

```math
\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma<\infty.
\tag{ACM.3}
```

It is proved after the selected packet is carried by the four oriented bodies:
scale/tower, full participation, compactness, and geometry.

So \(A_{4B}\) is not a free global norm of the original solution.  It is the
activity of a retained pressure-viscosity-incompressibility-velocity packet on
one material carrier.

## 2. The clock requires stronger information

The geometric part of the clock contains

```math
\|\nabla u(t)\|_{L^\infty(X(A_\sharp,t))}.
\tag{ACM.4}
```

To dominate this by finite tower norms on the same carrier, one uses Sobolev
embedding in the material coordinate:

```math
\|\nabla u(t)\|_{L^\infty(X(A_\sharp,t))}
\le
C(F(t))
\sum_{|\alpha|\le s}
\|D_a^\alpha v(t)\|_{L^2(A_\sharp)},
\qquad s>5/2.
\tag{ACM.5}
```

The constant \(C(F(t))\) depends on bounded distortion of the material map.
Thus `(ACM.5)` already assumes the carrier geometry survives.

The tower terms on the right are also part of

```math
\mathfrak P_N^{mat}(t).
\tag{ACM.6}
```

Therefore the estimate needed to turn \(A_{4B}\) into the material clock already
uses the material record it is supposed to prove.

## 3. Critical strain activity is not enough

One may try to use a lower-order strain activity inside \(A_{4B}\), for example

```math
\int_{Q_1}|S(V)|^{5/2}\,dy\,ds.
\tag{ACM.7}
```

That quantity is scale-critical and useful for selected-packet payment, but it
does not control the deformation clock

```math
\int_{-1}^{0}\|\nabla_yV(s)\|_{L^\infty}\,ds.
\tag{ACM.8}
```

The missing upgrade is again a finite same-carrier tower or reverse-Hölder /
regularity self-improvement theorem on the full packet.  Without that upgrade,
critical integral strain can see activity while the \(L^\infty\) material clock
remains uncontrolled.

## 4. Exact result

The noncircular statement is:

```math
\boxed{
\text{record retained}
\Longrightarrow
A_{4B}\text{ pays retained bad packets.}
}
\tag{ACM.9}
```

The circular statement is:

```math
\boxed{
A_{4B}
\Longrightarrow
\text{record retained}.
}
\tag{ACM.10}
```

`(ACM.10)` is not proved by the current four-body reserve.  It would require a
new theorem:

```math
\boxed{
\texttt{FourBodyActivityControlsMaterialClockBeforeAdmission.A}
}
\tag{ACM.11}
```

whose content is exactly a same-carrier finite tower/regularity upgrade before
using \(A_{\rm native}\to A_{4B}\).  That theorem is not installed.

Thus the frontier remains:

```math
\boxed{
\begin{array}{ll}
\text{terminal material record retained}
&\Rightarrow
A_{4B}\text{ contradiction},\\[1mm]
\text{terminal material record lost}
&\Rightarrow
Pack_Q+\neg Part_{N,Q}.
\end{array}
}
\tag{ACM.12}
```

