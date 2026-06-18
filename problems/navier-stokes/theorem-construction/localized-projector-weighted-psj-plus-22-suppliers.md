# Localized Projector Weighted PSJ+.22 Suppliers

## Status

Active theorem-facing supplier note for the localized-projector exact-potential
subbranch.

Role: reduce the weighted projector-concentration budget `(LPMR.20)` to the
installed strip-local window inputs isolated by `PSJ+.5`.

## Purpose

The weighted residual packet
in [localized-projector-moment-weighted-residual-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-weighted-residual-suppliers.md)
has one genuinely nonlinear slot:

```math
\int_I\!\!\int_{\Omega_J}
M_J(x,t)^2\,\varepsilon_J(x,t)\,dx\,dt
=
o_J(1).
\tag{LPMR.20}
```

On the exact-potential simple-top branch, this is already controlled by the
installed localized concentration theorem `PSJ+.22` once the strip-local window
packet of Proposition `PSJ+.5` is supplied. This note writes that reduction in
weighted form.

## Setup

Fix the transported strip `\Omega_J\times I` and keep the localized notation
of
[cycle-exact-projective-synchronization-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/cycle-exact-projective-synchronization-packet.md).

For almost every strip point `(x,t)`, assume one backward window
`[t-\tau_J(x,t),t]` on which Proposition `PSJ+.5` is verified with measurable
window data

```math
\gamma_J^{win}(x,t)>0,
\qquad
\kappa_J^{win}(x,t)\ge 0,
\qquad
q_J^{ent}(x,t)\in[0,1),
\tag{WPC.1}
```

so that on that window

```math
\eta=0,
\qquad
\gamma=\gamma_J^{win},
\qquad
\kappa=\kappa_J^{win},
\qquad
q_\ast=q_J^{ent}.
\tag{WPC.2}
```

Define

```math
\Gamma_J(x,t)
:=
\gamma_J^{win}(x,t)\bigl(1-q_J^{ent}(x,t)\bigr).
\tag{WPC.3}
```

The concentration quantity `\varepsilon_J(x,t)` is the localized average
projector misalignment from `(PSJ+.6)`.

## Proposition `WPC.A` (window suppliers imply the weighted PSJ+.22 budget)

Under `(WPC.1)`-`(WPC.3)`, the localized concentration bound satisfies

```math
\varepsilon_J(x,t)
\le
e^{-2\Gamma_J(x,t)\tau_J(x,t)}\,q_J^{ent}(x,t)
+
\frac{C\,\kappa_J^{win}(x,t)}{\Gamma_J(x,t)}
\quad\text{for a.e. }(x,t)\in\Omega_J\times I.
\tag{WPC.4}
```

Consequently, if the weighted entrance and drift budgets

```math
\int_I\!\!\int_{\Omega_J}
M_J(x,t)^2
e^{-2\Gamma_J(x,t)\tau_J(x,t)}\,q_J^{ent}(x,t)\,dx\,dt
=
o_J(1),
\tag{WPC.5}
```

and

```math
\int_I\!\!\int_{\Omega_J}
M_J(x,t)^2
\frac{\kappa_J^{win}(x,t)}{\Gamma_J(x,t)}\,dx\,dt
=
o_J(1),
\tag{WPC.6}
```

hold, then the weighted projector-concentration supplier `(LPMR.20)` follows.

### Proof

Proposition `PSJ+.5` upgrades the local window packet to Assumption `PSJ+.SST`
with `\eta=0`, `\gamma=\gamma_J^{win}`, `\kappa=\kappa_J^{win}`, and
`q_\ast=q_J^{ent}`. Substitute those data into `(PSJ+.22)` to obtain

```math
\varepsilon_J(x,t)
\le
e^{-2\Gamma_J\tau_J}\,q_J^{ent}
+
\frac{C\,\kappa_J^{win}}{2\Gamma_J}.
\tag{WPC.7}
```

Absorb the factor `1/2` into `C`. Multiplying `(WPC.4)` by `M_J^2` and
integrating over `\Omega_J\times I` gives `(LPMR.20)` from `(WPC.5)` and
`(WPC.6)`. ∎

## Corollary `WPC.B` (thresholded fixed-floor version)

Assume in addition that

```math
q_J^{ent}(x,t)\le \bar q<1,
\qquad
\gamma_J^{win}(x,t)\ge \gamma_0>0
\quad\text{for a.e. }(x,t).
\tag{WPC.8}
```

Then

```math
\Gamma_J(x,t)\ge \Gamma_0:=\gamma_0(1-\bar q)>0,
\tag{WPC.9}
```

and `(WPC.4)` becomes

```math
\varepsilon_J(x,t)
\le
e^{-2\Gamma_0\tau_J(x,t)}\,q_J^{ent}(x,t)
+
\frac{C}{\Gamma_0}\,\kappa_J^{win}(x,t).
\tag{WPC.10}
```

Hence `(LPMR.20)` follows from

```math
\int_I\!\!\int_{\Omega_J}
M_J^2 e^{-2\Gamma_0\tau_J}q_J^{ent}\,dx\,dt=o_J(1),
\tag{WPC.11}
```

and

```math
\int_I\!\!\int_{\Omega_J}
M_J^2\kappa_J^{win}\,dx\,dt=o_J(1).
\tag{WPC.12}
```

### Proof

`(WPC.9)` is the product of `(WPC.3)` and `(WPC.8)`. Substituting the floor
`{\Gamma_J\ge\Gamma_0}` into `(WPC.4)` gives `(WPC.12)`. ∎

## Corollary `WPC.C` (material-gap entrance route)

Assume the entrance budget is supplied by Corollary `D.7ic`, so that

```math
q_J^{ent}(x,t)
\le
2e^{-2G_J^{mat}(x,t)}
\frac{1-c_{J,0}(x,t)^2}{c_{J,0}(x,t)^2}
+
2\delta_J^{car}(x,t),
\tag{WPC.13}
```

where the shorthand suppresses the predecessor-time arguments from `(D.7ic)`.

Then `(LPMR.20)` follows once

```math
\int_I\!\!\int_{\Omega_J}
M_J^2 e^{-2\Gamma_J\tau_J}
\Bigl[
e^{-2G_J^{mat}}
\frac{1-c_{J,0}^2}{c_{J,0}^2}
+
\delta_J^{car}
\Bigr]\,dx\,dt
=
o_J(1),
\tag{WPC.14}
```

and `(WPC.6)` hold.

### Proof

Insert `(WPC.13)` into `(WPC.5)` and absorb the factor `2` into the implicit
constant. Then apply `WPC.A`. ∎

## Corollary `WPC.D` (auxiliary-projector restart route)

Assume the entrance budget is supplied by Corollary `D.7ig3`, so that

```math
q_J^{ent}(x,t)
\le
2\widetilde\alpha_J^{aux}(x,t)+\eta_J^{aux}(x,t).
\tag{WPC.15}
```

Then `(LPMR.20)` follows once

```math
\int_I\!\!\int_{\Omega_J}
M_J^2 e^{-2\Gamma_J\tau_J}
\bigl(
\widetilde\alpha_J^{aux}
+
\eta_J^{aux}
\bigr)\,dx\,dt
=
o_J(1),
\tag{WPC.16}
```

and `(WPC.6)` hold.

In the Cauchy-Green specialization of `(D.7ig6)`,

```math
\eta_J^{aux}(x,t)
=
\frac{2|m_J^{CG}(x,t)|^2}{\operatorname{gap}_J^{CG}(x,t)^2},
\tag{WPC.17}
```

so the auxiliary entrance route reduces to one weighted auxiliary-projector
restart budget together with the same weighted drift supplier.

### Proof

Insert `(WPC.15)` into `(WPC.5)` and apply `WPC.A`. The specialization
`(WPC.17)` is exactly the Cauchy-Green case recorded in `(D.7ig6)`. ∎

## Corollary `WPC.E` (explicit corotational-drift realization)

Assume the window majorant `\kappa_J^{win}(x,t)` is chosen so that on the
backward window `[t-\tau_J(x,t),t]`,

```math
2\Bigl(
|K_J^{seg}(x,t;s)n_J(x,t;s)|
+
\frac{\|\partial_s A_J^{seg}(x,t;s)\|_{\mathrm{op}}}{g_J(x,t;s)}
\Bigr)
\le
\kappa_J^{win}(x,t)
\quad\text{for a.e. }s.
\tag{WPC.18}
```

Then `\kappa_J^{win}` is exactly an admissible drift supplier for `WPC.A`,
because `(WPC.18)` is the installed `PSJ+.35` packet rewritten as a measurable
windowwise majorant.

Under the fixed-floor hypotheses `(WPC.8)`, the weighted concentration budget
`(LPMR.20)` therefore follows from either entrance route `WPC.C` or `WPC.D`
together with the single weighted drift budget

```math
\int_I\!\!\int_{\Omega_J}
M_J(x,t)^2\kappa_J^{win}(x,t)\,dx\,dt
=
o_J(1).
\tag{WPC.19}
```

## Interpretation

The weighted projector-concentration slot `(LPMR.20)` is no longer an abstract
nonlinear wall. On the exact-potential localized-projector route it has been
reduced to

```math
\boxed{
\texttt{weighted theorem-safe entrance supplier}
+
\texttt{weighted corotational drift supplier}.
}
\tag{WPC.20}
```

Using the installed entrance packets, the entrance side is already split into
the two named variants

```math
\boxed{\texttt{material-gap entrance supplier }D.7ic}
\quad\text{or}\quad
\boxed{\texttt{auxiliary-projector entrance supplier }D.7ig}.
\tag{WPC.21}
```

So the honest localized-projector route now reads:

```math
\texttt{Weighted coefficient drift}
+
\texttt{Weighted pair-projector error}
+
\texttt{Weighted localization tail}
+
\texttt{Weighted entrance}
+
\texttt{Weighted corotational drift}
\Longrightarrow
\texttt{LPMR.22}.
\tag{WPC.22}
```

Feeding `(LPMR.22)` into `(LPMC.26)` and then into the already installed exact-
potential projector chain recovers the downstream splice
`SSC => D.7mr2 => RPC.3 => SG.4B`.

The drift side in `(WPC.22)` is still slightly coarse. The sharper follow-on
reduction in
[localized-projector-time-dependent-psj-plus-22-forcing-variant.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-time-dependent-psj-plus-22-forcing-variant.md)
replaces the uniform drift majorant by the actual weighted `\beta_J`
forcing-convolution supplier from the `PSJ+.4` proof itself. The sharper
angular-forcing refinement in
[localized-projector-angular-forcing-ledger-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-angular-forcing-ledger-reduction.md)
then shows that even this linear `\beta_J` convolution is not the honest final
forcing wall: on the simple-top cone it collapses to the already-installed
pair-family forcing ledger `D.7ie1`, or to the adiabatic ledger `D.7ie3`, with
weighted coverage/globalization carrying the local windows to the global
synchronization channel.
