---
theorem_id: forward-gold-endpoint-ui-production-clause-recheck-20260620
status: direct-clause-a-recheck-complete-not-proved
logical_landing_node: endpoint_ui_production_clause
edge_effect: "Rechecks Clause A of the unweighted same-carrier reserve production obligation. Endpoint uniform integrability is exactly terminal strip tightness of the actual selected positive native carrier. Current finite L1 visibility, BV/Helly compactness, Weierstrass approximation, local energy finite measure, pressure ellipticity, fixed-test trace continuity, physical participation, and signed cancellation do not produce the endpoint modulus on shrinking heat-scale packets."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-same-carrier-reserve-production-obligation-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-endpoint-uniform-integrability-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-tail-ui-production-normal-form-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-cumulative-source-curve-compactness-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-source-curve-pass-or-partfield-exit-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-cm-service-certification-recheck-20260620.md
downstream_consequence: "Clause A remains a same-carrier tail uniform-integrability theorem. Its failure is consumed by CM only after same-witness admission and uniform service certification; before admission it remains the forward-gold terminal time-face atom."
---

# MPP Forward-Gold Endpoint UI Production Clause Recheck

Date: 2026-06-20

## Status

Direct Clause A recheck complete.  `SelectedCarrierEndpointUI.A` is not proved
from current inputs.

This note pins the endpoint clause from
`mpp-forward-gold-unweighted-same-carrier-reserve-production-obligation-20260620.md`.
It is the terminal time-face atom clause on the actual selected positive native
carrier.

## 1. Clause A target

For a selected terminal heat-scale packet with radius \(r_m\), define

```math
a_m(s)
=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle
S_{<j_m}^{loc}w_{j_m},w_{j_m}
\right\rangle
\right]_+
(T_m+r_m^2s,x)\,dx,
\qquad -1\le s\le0.
\tag{EUI.1}
```

The endpoint production clause is

```math
\boxed{
\lim_{\theta\downarrow0}
\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=0.
}
\tag{EUI.2}
```

This is endpoint uniform integrability of the actual selected carrier.

## 2. Paid consumer

The consumer implication is paid:

```math
\boxed{
\text{SelectedCarrierEndpointUI.A}
\Longrightarrow
\text{TerminalMovingPacketTraceModulus.A}.
}
\tag{EUI.3}
```

Equivalently, if a same-carrier square density \(G_m\) satisfies

```math
a_m(s)\le C_{\rm car}G_m(s)+\ell_m(s),
\qquad
\sup_m\int_{-1}^{0}G_m(s)^2ds<\infty,
\tag{EUI.4}
```

and the legal residue \(\ell_m\) has its own endpoint strip modulus, then
Cauchy--Schwarz gives `(EUI.2)`.

## 3. Finite mass and curve compactness do not prove it

Current visibility gives only

```math
\sup_m\int_{-1}^{0}a_m(s)\,ds<\infty.
\tag{EUI.5}
```

The endpoint pulse

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]},
\qquad
\tau_m\downarrow0,
\tag{EUI.6}
```

satisfies `(EUI.5)` with mass one and violates `(EUI.2)`:

```math
\lim_{\theta\downarrow0}
\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=1.
\tag{EUI.7}
```

The cumulative curves

```math
A_m(\theta)
=
\int_{-\theta}^{0}a_m(s)\,ds
\tag{EUI.8}
```

have bounded variation under `(EUI.5)`, so Helly compactness can produce a
monotone limit.  It does not prevent a jump at \(\theta=0\).  Weierstrass
approximation of individual curves also does not supply a uniform endpoint
modulus; the slopes may grow without bound.

## 4. Same-carrier tail UI is the exact production form

The shortest equivalent production form is same-carrier tail uniform
integrability:

```math
\boxed{
\lim_{K\to\infty}
\sup_m
\int_{\{s:a_m(s)>K\}}a_m(s)\,ds
=0.
}
\tag{EUI.9}
```

For any \(K>0\),

```math
\int_{-\theta}^{0}a_m(s)\,ds
\le
K\theta
+
\int_{\{s:a_m(s)>K\}}a_m(s)\,ds.
\tag{EUI.10}
```

Thus `(EUI.9)` implies `(EUI.2)`.  Conversely, the pulse `(EUI.6)` is exactly a
tail-UI failure:

```math
\lim_{K\to\infty}
\sup_m
\int_{\{a_m>K\}}a_m(s)\,ds
=1.
\tag{EUI.11}
```

## 5. Current Navier--Stokes ledgers do not produce the tail theorem

Local energy gives a finite measure; finite measures can have endpoint atoms.

Pressure is spatially elliptic at each time:

```math
-\Delta p=\partial_i\partial_j(u_i u_j).
\tag{EUI.12}
```

It does not spread terminal support in time.  A separated time factor in \(u\)
creates the corresponding separated time factor in the nonlinear pressure.

Physical participation is discounted at heat scale.  For a normalized packet,
physical local energy, dissipation, local-energy defect, and stress-work carry
positive powers of \(r_m\), while `(EUI.2)` is unweighted in normalized time.
Thus a dyadic Zeno stack can have finite physical cost and retain order-one
normalized endpoint mass.

Signed trilinear cancellation pays retained finite partners, legal exits, and
finite donor chains.  After positive-part selection, the remaining infinite
terminal donor chain is exactly the endpoint atom unless a no-free Zeno theorem
or same-carrier no-waste/source-square theorem is supplied.

## 6. Noncircular suppliers

Clause A can be paid by any one of these same-carrier production mechanisms:

```math
\boxed{
\sup_m\int_{-1}^{0}a_m(s)^pds<\infty,\qquad p>1,
}
\tag{EUI.13}
```

```math
\boxed{
\text{same-carrier Orlicz / de la Vallee-Poussin tail control,}
}
\tag{EUI.14}
```

```math
\boxed{
\text{SourceSquareReserve.A plus SelectedSourceSquareCarrierDomination.A,}
}
\tag{EUI.15}
```

```math
\boxed{
\text{selected critical-strain carrier UI / normalized CKN strip tightness,}
}
\tag{EUI.16}
```

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A on an unweighted action carrier,}
}
\tag{EUI.17}
```

or

```math
\boxed{
\text{TerminalSignedSaturation.A plus NoFreeTerminalZenoDonorChain.A.}
}
\tag{EUI.18}
```

Current inputs do not prove any item in `(EUI.13)`--`(EUI.18)` on the actual
selected carrier `(EUI.1)`.

## 7. CM boundary

Failure of `(EUI.2)` gives a nonzero terminal atom in the selected source
curve.  After same-witness CM admission and uniform service certification, that
atom is consumed by the Part/Field route: the service faces require a
uniform participation/readout/field modulus that the atom violates.

Before same-witness admission, the endpoint atom is not a forward-gold
contradiction.  It is the exact obstruction Clause A is trying to exclude.

## Verdict

`SelectedCarrierEndpointUI.A` remains open as a forward-gold production clause.

The checked obstruction is exact:

```math
\boxed{
\text{finite normalized }L_s^1\text{ source visibility permits a terminal
time-face atom on the selected carrier.}
}
\tag{EUI.19}
```

The theorem needed is a same-carrier tail uniform-integrability theorem, or one
of its concrete suppliers `(EUI.13)`--`(EUI.18)`.  Without it, the endpoint atom
is consumed only by CM after same-witness admission, not by the forward-gold
route itself.
