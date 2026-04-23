# Localized Projector Time-Dependent PSJ+.22 Forcing Variant

## Status

Active theorem-facing sharpening note for the localized-projector exact-
potential subbranch.

Role: replace the coarse uniform drift supplier in the weighted `PSJ+.22`
reduction by a time-dependent forcing profile closer to the installed
`\beta_J` ledger.

## Purpose

In
[localized-projector-weighted-psj-plus-22-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-weighted-psj-plus-22-suppliers.md),
the drift side of localized projector concentration was written using a uniform
window majorant `\kappa_J^{win}(x,t)`. That is honest but coarse.

The proof of `PSJ+.4` already gives a sharper pointwise ODE:

```math
\dot q_{ab}(s)
\le
-2\gamma\,q_{ab}(s)(1-q_{ab}(s))
+
F_{ab}(s),
\tag{TPF.1}
```

with `F_{ab}(s)` the actual drift/forcing profile. So the concentration budget
can be reduced to a weighted entrance term plus a weighted time-dependent
forcing convolution.

## Exact Variable-Forcing Packet

Fix one localized packet point `(x,t)` and one backward window
`[t-\tau_J(x,t),t]`. Assume:

1. the exact segment-transport subbranch of Proposition `PSJ+.5`;
2. a simple-top gap floor `\gamma_J^{win}(x,t)\ge \gamma_0>0`;
3. an entrance bound `q_{ab}(t-\tau_J)\le q_J^{ent}(x,t)\le \bar q<1`;
4. a measurable nonnegative forcing profile `F_J(x,t;s)` such that for every
   active pair in the packet,

```math
\dot q_{ab}(s)
\le
-2\gamma_0\,q_{ab}(s)(1-q_{ab}(s))
+
F_J(x,t;s)
\quad\text{for a.e. }s\in[t-\tau_J,t].
\tag{TPF.2}
```

Assume moreover the same barrier condition that keeps the cone invariant:

```math
F_J(x,t;s)\le F_{J,\ast}(x,t)
\quad\text{and}\quad
C_0F_{J,\ast}(x,t)\le \gamma_0\,\bar q(1-\bar q)
\quad\text{for a.e. }s.
\tag{TPF.3}
```

Define

```math
\Gamma_0:=\gamma_0(1-\bar q)>0.
\tag{TPF.4}
```

## Proposition `TPF.A` (time-dependent forcing version of PSJ+.22)

Under `(TPF.2)`-`(TPF.4)`,

```math
q_{ab}(t)
\le
e^{-2\Gamma_0\tau_J(x,t)}\,q_J^{ent}(x,t)
+
\int_{t-\tau_J(x,t)}^{t}
e^{-2\Gamma_0(t-s)}\,F_J(x,t;s)\,ds.
\tag{TPF.5}
```

Hence the localized concentration budget satisfies

```math
\varepsilon_J(x,t)
\le
e^{-2\Gamma_0\tau_J(x,t)}\,q_J^{ent}(x,t)
+
\int_{t-\tau_J(x,t)}^{t}
e^{-2\Gamma_0(t-s)}\,F_J(x,t;s)\,ds.
\tag{TPF.6}
```

### Proof

The barrier condition `(TPF.3)` is exactly the same first-hit contradiction used
in the proof of `PSJ+.4`, so `q_{ab}(s)\le \bar q` on the whole window.
Therefore `1-q_{ab}(s)\ge 1-\bar q`, and `(TPF.2)` yields

```math
\dot q_{ab}(s)\le -2\Gamma_0 q_{ab}(s)+F_J(x,t;s).
\tag{TPF.7}
```

Gronwall/Duhamel gives `(TPF.5)`. Averaging `(TPF.5)` over the localized packet
with nonnegative frozen weight and dividing by the local mass gives `(TPF.6)`.
∎

## Corollary `TPF.B` (weighted concentration from weighted entrance plus weighted forcing convolution)

If

```math
\int_I\!\!\int_{\Omega_J}
M_J(x,t)^2
e^{-2\Gamma_0\tau_J(x,t)}\,q_J^{ent}(x,t)\,dx\,dt
=
o_J(1),
\tag{TPF.8}
```

and

```math
\int_I\!\!\int_{\Omega_J}
M_J(x,t)^2
\int_{t-\tau_J(x,t)}^{t}
e^{-2\Gamma_0(t-s)}\,F_J(x,t;s)\,ds\,dx\,dt
=
o_J(1),
\tag{TPF.9}
```

then the weighted localized-projector concentration supplier `(LPMR.20)` holds.

## Corollary `TPF.C` (actual exact-potential forcing profile)

On the exact segment-transport simple-top packet from `PSJ+.5`, one may take

```math
F_J(x,t;s):=C\,\beta_J(x,t;s),
\tag{TPF.10}
```

because `(PSJ+.42)` gives

```math
\bigl\|
\partial_s N_{x,t}-[K_J^{seg},N_{x,t}]
\bigr\|_{\mathrm{op}}
\le 2\beta_J(x,t;s),
\tag{TPF.11}
```

and `(PSJ+.30)` was obtained by bounding the perturbation terms linearly in the
corotational drift. Therefore

```math
\varepsilon_J(x,t)
\le
e^{-2\Gamma_0\tau_J(x,t)}\,q_J^{ent}(x,t)
+
C\int_{t-\tau_J(x,t)}^{t}
e^{-2\Gamma_0(t-s)}\,\beta_J(x,t;s)\,ds.
\tag{TPF.12}
```

So the localized-projector drift side is reduced directly to a weighted
`\beta_J` convolution supplier.

## Interpretation

This note sharpens the frozen-packet localized-projector wall once more.

Instead of the coarser supplier

```math
\texttt{weighted corotational drift majorant},
\tag{TPF.13}
```

the local wall can now be written as

```math
\boxed{
\texttt{weighted theorem-safe entrance}
+
\texttt{weighted }\beta_J\texttt{ forcing convolution}.
}
\tag{TPF.14}
```

So on the frozen transported packet realization, the exact remaining local
burden is now the pair of suppliers:

1. one weighted entrance route from `D.7ic` or `D.7ig`;
2. one weighted `\beta_J` forcing-convolution route coming from `PSJ+.4`.

This remains a valid sufficient route, but it is no longer the sharpest one on
disk. The follow-on refinement
[localized-projector-angular-forcing-ledger-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-angular-forcing-ledger-reduction.md)
uses the exact cone inequality `AS.5a` to replace the linear `\beta_J`
convolution by the sharper pair-family forcing ledger `\int \beta_J^2/g_J`.
