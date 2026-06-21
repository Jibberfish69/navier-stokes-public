---
theorem_id: forward-gold-enstrophy-stretching-source-square-production-direct-test-20260621
status: direct-test-complete-forward-gold-not-proved
logical_landing_node: same_carrier_source_square_production_wall
edge_effect: "Tests whether the native enstrophy/vortex-stretching identity produces the same-carrier source-square reserve. It does not. The enstrophy identity is a first-moment signed balance between vorticity stretching, enstrophy growth, and higher-gradient dissipation; the gold endpoint reserve is square-strength and unweighted on the selected positive carrier. A source-balanced heat-clock packet can keep shell/enstrophy storage small, match drain by positive stretching, and retain order-one normalized source-square. This returns to SourceSquareReserve.A plus carrier domination, selected critical-strain/CKN Carleson, strict no-waste, square-synchronous saturation/no-free Zeno, or exact profile production."
parents:
  - problems/navier-stokes/theorem-construction/mpp-enstrophy-production-throttle-forward-positive-direct-test-20260611.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-source-square-reserve-heat-scale-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-trilinear-same-carrier-reserve-direct-attempt-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-production-finality-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bkm-vorticity-clock-inversion-closeout-20260620.md
---

# MPP Forward-Gold Enstrophy Stretching Source-Square Production Direct Test

Date: 2026-06-21

## Status

Direct test complete.  The native enstrophy identity is the right place to see
vortex stretching, but it does not produce the same-carrier source-square
reserve.

The identity controls a signed first moment.  The gold endpoint obstruction is
a square-strength positive carrier on shrinking heat-scale windows.

## 1. Native enstrophy balance

For smooth unforced incompressible Navier--Stokes, let

```math
\omega=\nabla\times u,
\qquad
S={1\over2}(\nabla u+\nabla u^T).
\tag{ESS.1}
```

Then

```math
\partial_t\omega+u\cdot\nabla\omega
=
S\omega+\nu\Delta\omega,
\tag{ESS.2}
```

and

```math
{1\over2}{d\over dt}\|\omega(t)\|_2^2
+
\nu\|\nabla\omega(t)\|_2^2
=
\int S\omega\cdot\omega\,dx .
\tag{ESS.3}
```

This is the global signed stretching ledger.  Its positive part is the
classical analogue of the selected positive source carrier.

The exact integrated statement is

```math
\int_I\int S\omega\cdot\omega\,dxdt
=
{1\over2}\|\omega(t_1)\|_2^2
-
{1\over2}\|\omega(t_0)\|_2^2
+
\nu\int_I\|\nabla\omega(t)\|_2^2dt .
\tag{ESS.4}
```

This is a first-moment balance.  It does not contain

```math
\int_I
\left(
\int [S\omega\cdot\omega]_+\,dx
\right)^2dt .
\tag{ESS.5}
```

The missing square is not a cosmetic strengthening.  It is exactly the endpoint
anti-atom currency after heat-scale normalization.

## 2. The comparison wall is not square control

The standard estimate gives

```math
\left|\int S\omega\cdot\omega\,dx\right|
\le
C\|\nabla u\|_2^{3/2}\|\nabla\omega\|_2^{3/2}.
\tag{ESS.6}
```

Young's inequality yields

```math
{d\over dt}\|\nabla u(t)\|_2^2
+
\nu\|\nabla^2u(t)\|_2^2
\le
C\nu^{-3}\|\nabla u(t)\|_2^6 .
\tag{ESS.7}
```

This is the same comparison wall recorded in the enstrophy-production throttle
note.  It allows finite-time growth at the comparison-ODE level.  It also does
not imply any terminal square reserve for the positive stretching term.

To get square control from `(ESS.3)`, one would need a new estimate such as

```math
\int_I
\left(
\int [S\omega\cdot\omega]_+\,dx
\right)^2dt
\le
C\left(
\int_I\|\nabla\omega\|_2^2dt
+
\Delta\|\omega\|_2^2
+\mathrm{Legal}
\right),
\tag{ESS.8}
```

or a same-carrier localized version.  `(ESS.8)` is not a consequence of
`(ESS.3)`.  It is a new source-square theorem.

## 3. Source-balanced heat-clock normal form

Let \(r=\lambda^{-1}\) and \(I_\lambda=(T-\lambda^{-2},T]\).  A selected
heat-clock packet can have positive source density

```math
F_\lambda(t)
=
\lambda^{1/2}\varphi\!\left(\lambda^2(T-t)\right),
\qquad
\varphi\in C_c^\infty(0,1),
\qquad
\varphi\ge0.
\tag{ESS.9}
```

Then

```math
\int_{I_\lambda}F_\lambda(t)\,dt
=
\lambda^{-3/2}\int_0^1\varphi(\sigma)\,d\sigma
\longrightarrow0,
\tag{ESS.10}
```

while

```math
\int_{I_\lambda}\lambda F_\lambda(t)^2\,dt
=
\int_0^1\varphi(\sigma)^2\,d\sigma .
\tag{ESS.11}
```

The enstrophy identity can be source-balanced on this interval: the positive
stretching feed can match the heat-clock drain while the stored shell/enstrophy
mass remains small.  In scalar form,

```math
Y_\lambda'(t)+D_\lambda(t)=F_\lambda(t),
\qquad
D_\lambda(t)=F_\lambda(t),
\qquad
Y_\lambda'(t)=0.
\tag{ESS.12}
```

Thus no endpoint growth of the stored quantity is needed.  The first-moment
ledger records the source and drain; the square reserve remains order one.

This scalar normal form is not asserted to be a Navier--Stokes solution.  It is
the exact balance pattern that any proof from `(ESS.3)` alone must rule out,
and `(ESS.3)` alone does not rule it out.

## 4. Same-carrier localized form

The packet source in the forward-gold route is not the global scalar
\(\int S\omega\cdot\omega\).  It is a selected localized positive carrier,
for example

```math
\Phi_j^+(t)
=
\int
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+dx .
\tag{ESS.13}
```

The already recorded aligned-strain heat-clock normal form gives

```math
\int_{I_j}\Phi_j^+(t)\,dt\to0,
\tag{ESS.14}
```

but

```math
\int_{I_j}r_j^{-1}\left(\Phi_j^+(t)\right)^2dt
\ge c_0>0 .
\tag{ESS.15}
```

The trace-free negative eigendirections are present in \(S_{<j}^{loc}\), but
the selected carrier keeps the expanding direction after localization,
projection, packet selection, and positive-part extraction.  Global signed
enstrophy balance therefore does not identify or dominate `(ESS.13)` unless a
selected saturation/identity theorem is added.

## 5. What would make the enstrophy route work

The enstrophy/stretching route would become a forward-gold supplier only after
one of the following genuinely square-strength clauses is proved on the actual
selected carrier:

```math
\boxed{
\text{SourceSquareReserve.A plus SelectedSourceSquareCarrierDomination.A,}
}
\tag{ESS.16}
```

```math
\boxed{
\text{SelectedCriticalStrainCarleson.A or normalized CKN Carleson with
terminal-tail depletion,}
}
\tag{ESS.17}
```

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A carrying critical-action size,}
}
\tag{ESS.18}
```

or

```math
\boxed{
\text{square-synchronous selected signed saturation plus NoFreeTerminalZenoDonorChain.A.}
}
\tag{ESS.19}
```

Without one of these clauses, the enstrophy identity remains a visibility and
continuation-clock ledger, not a no-jump production theorem.

## Verdict

The enstrophy/vortex-stretching identity does not close the gold terminal
time-face obstruction.

```math
\boxed{
\text{native stretching first-moment balance}
\not\Longrightarrow
\text{same-carrier source-square reserve}.
}
\tag{ESS.20}
```

The remaining forward-gold burden is still square-strength control on the
actual selected positive carrier, or exact endpoint/profile production strong
enough to remove the same heat-scale pulse.
