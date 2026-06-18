# Sterile Ontic-To-NS Theorem Map

## Status

This is a sterile theorem map, not a proof packet.
Its job is to translate the ontic defect-transport story into the exact theorem
objects already carried by the Navier-Stokes lane.

It does not add a new route. It only names how the existing D.1--D.5 objects
should read when the ontic story is stripped down to theorem language.

For the strongest current theorem-form derivation built on top of this map, see
`theorem-construction/ontic-projected-flow-exact-lift-package.md`.

## Ontic split

Use the transported defect as the abstract source object:

```text
Def(X) = Def_exact + Def_pers + Def_res.
```

Read this only as theorem-facing shorthand for:

- `Def_exact`: exact / pressure-like ordering correction,
- `Def_pers`: persistent carrier / holonomy class,
- `Def_res`: residual tail / absorbable remainder.

For the projected split, write

```text
\mathbb Q_D := Id - \mathbb P_D.
```

## Sterile correspondence table

| Ontic term | Sterile theorem object | Lane use |
| --- | --- | --- |
| transported defect | `\mathbb P_D Def_pi(X)` / `\Omega_D(X)` | source for the projected flow |
| exact channel | `\mathbb Q_D Def_pi(X)` / pressure-like branch | D.2 exact-term orthogonality and D.3 pressure descent |
| persistent channel | `K_D`, `\mathbb H_D \mathbb P_D Def_pi(X)`, `[\Theta(X)]` | D.1 sector preservation, D.2 coherent term, D.4 continuation |
| residual channel | `R_pi(X)`, `K_D^\perp` | D.2 absorption, D.4 tail control |
| scale barrier | no new coherent holonomy outside the carrier sector | D.1 spectral closure and D.2 leakage control |
| monotone functional | `\mathcal E_D(X)` and the named `Q(t)` bridge | same-surface accounting and final warrant input |
| non-Sobolev compactness | carrier localization / no hidden reservoir | D.1 closure and D.3 descent |
| curvature regularity | curvature insertion satisfies the carrier commutator bound | D.2 commutator bound and D.3 shadow kill |
| Hodge lifting | `\mathbb P_D`, `\delta_D`, `K_D`, `[\Theta]` | D.1 domain, D.3 readout, D.4 continuation |

## D-route reading

The ontic story becomes theorem-useful only after it is rewritten as the
projected NC-flow route:

```text
\partial_t X + \mathcal L_D(X) = 0,
```

with

```text
\mathcal L_D(X)
=
\mathbb P_{D,\omega}\big(\delta_\omega X + N_D(X) - \nu \Delta_{D,\omega} X\big),
```

and energy

```text
\mathcal E_D(X)
=
\|\Delta_{D,\omega}^{1/2}X\|^2 + \|\Omega_D(X)\|^2.
```

The sterile map says:

1. D.1 is the projected sector and closed-graph domain statement.
2. D.2 is the coercive estimate that keeps the residual tail absorbable.
3. D.3 is the commutative shadow descent from the persistent carrier split.
4. D.4 is the continuation step that lifts bounded NC control to classical control.
5. `Theorem 2.1` is the same-surface closure carrier that packages those four
   steps into the classical route theorem.

## Shadow and curvature

The exact shadow input is read through the renormalized curvature remainder:

```text
\mathcal C(\iota_X\Omega_{D_\Theta}^{\mathrm{nc}}(X))=0.
```

This is not a new theorem family. It is the sterile form of the statement that
the pure noncommutative phase-defect sector is shadow-invisible, while the
carrier sector survives as the classical readout.

## What this file is for

Use this map when a working note or Marvin feed speaks in ontic language.
Translate that language into the theorem objects above before it enters D.1,
D.2, D.3, D.4, or the final closure carrier.

Do not treat the ontic narrative as proof authority by itself.

## Local Source Anchors

- `theorem-construction/d1-projected-nc-flow-well-posedness.md`
- `theorem-construction/d2-global-coercive-energy-estimate.md`
- `theorem-construction/d3-commutative-shadow-theorem.md`
- `theorem-construction/d4-shadow-continuation-theorem.md`
- `theorem-construction/classical-closure-warrant-carrier.md`
- `theorem-construction/curvature-to-euclidean-pullback-target.md`
