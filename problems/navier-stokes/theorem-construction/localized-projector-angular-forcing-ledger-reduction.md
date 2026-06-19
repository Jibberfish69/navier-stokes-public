# Localized Projector Angular-Forcing Ledger Reduction

## Status

Active theorem-facing sharpening note for the localized-projector exact-
potential subbranch.

Role: replace the coarser time-dependent linear `\beta_J` forcing convolution by
the exact angular-forcing density `\beta_J^2/g_J`, then globalize that density
through the existing weighted coverage packet.

## Audit Result

The note
[localized-projector-time-dependent-psj-plus-22-forcing-variant.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-time-dependent-psj-plus-22-forcing-variant.md)
was honest but still coarse. It read the forcing in `PSJ+.4` through the
corotational-drift majorant `\beta_J`.

But the localized misalignment variable is already the same projector-angle
defect as in Proposition `AS.5a`. So on the simple-top cone the exact forcing
enters as the quadratic density

```math
\frac{\beta_J(a,b,s)^2}{g_J(a,b,s)},
```

which is already the installed forcing ledger `D.7ie1`.

So the right local theorem is not

```math
\texttt{weighted }\beta_J\texttt{ forcing convolution},
```

but the sharper packet

```math
\boxed{
\texttt{weighted theorem-safe entrance}
+
\texttt{weighted angular-forcing density }\beta_J^2/g_J.
}
\tag{AFR.0}
```

## Local Packet Setup

Fix one localized packet point `(x,t)` and one backward window
`I_{x,t}=[t-\tau_{x,t},t]`. Keep the local packet data of Proposition `EP.10g`:

```math
\widetilde S_J(x,t)
:=
\int w_{J,x,t}(a,b)\,P_{ab}(t)\,d\mu_J^{pair}(a,b),
\qquad
m_J(x,t)
:=
\int w_{J,x,t}(a,b)\,d\mu_J^{pair}(a,b),
\tag{AFR.1}
```

with common local top projector `N_{x,t}(s)` and pairwise misalignment

```math
q_{ab}(s)
:=
d_{\mathrm{proj}}\!\bigl(P_{ab}(s),N_{x,t}(s)\bigr)^2.
\tag{AFR.2}
```

Assume on `I_{x,t}`:

1. the simple-top cone `q_{ab}(s)\le \tfrac12` for every active pair in the
   packet;
2. the gap floor

```math
g_J(a,b,s)\ge \gamma_\ast>0;
\tag{AFR.3}
```

3. one theorem-safe entrance bound

```math
q_{ab}(t-\tau_{x,t})\le q_\ast(x,t)\le \tfrac12.
\tag{AFR.4}
```

The installed sources for `(AFR.4)` remain the material-gap route `D.7ic` and
the auxiliary-projector route `D.7ig`.

## Proposition `AFR.A` (local angular-forcing version of `PSJ+.22`)

Under `(AFR.3)`-`(AFR.4)`, every active pair in the local packet satisfies

```math
\partial_s q_{ab}(s)
+
\frac{g_J(a,b,s)}{2}\,q_{ab}(s)
\le
\frac{\beta_J(a,b,s)^2}{g_J(a,b,s)}
\qquad\text{for a.e. }s\in I_{x,t},
\tag{AFR.5}
```

hence

```math
q_{ab}(t)
\le
e^{-\frac{\gamma_\ast}{2}\tau_{x,t}}\,q_{ab}(t-\tau_{x,t})
+
\int_{t-\tau_{x,t}}^{t}
e^{-\frac{\gamma_\ast}{2}(t-s)}
\frac{\beta_J(a,b,s)^2}{g_J(a,b,s)}
\,ds.
\tag{AFR.6}
```

Consequently the localized concentration quantity obeys

```math
\varepsilon_{J,\mathrm{sync}}^{loc}(x,t)
\le
e^{-\frac{\gamma_\ast}{2}\tau_{x,t}}\,q_\ast(x,t)
+
\frac{1}{m_J(x,t)}
\int
w_{J,x,t}(a,b)
\int_{t-\tau_{x,t}}^{t}
e^{-\frac{\gamma_\ast}{2}(t-s)}
\frac{\beta_J(a,b,s)^2}{g_J(a,b,s)}
\,ds\,
d\mu_J^{pair}(a,b).
\tag{AFR.7}
```

### Proof

In the transported local frame, `(AFR.2)` is the same angle defect as
`(AS.5a)`. The cone hypothesis gives exactly the admissibility condition
`\alpha_J\le \tfrac12` in `AS.5a`, so

```math
\partial_s q_{ab}
+
\frac{g_J}{2}\,q_{ab}
\le
\frac{\beta_J^2}{g_J}.
\tag{AFR.8}
```

Using `g_J\ge \gamma_\ast` on `I_{x,t}`, Gronwall/Duhamel yields `(AFR.6)`.
Average `(AFR.6)` against the nonnegative local weights
`w_{J,x,t}(a,b)/m_J(x,t)` and use the entrance bound `(AFR.4)` to obtain
`(AFR.7)`. ∎

## Proposition `AFR.B` (coverage globalizes the local angular-forcing packet)

Let `\{\Lambda_\ell\}_\ell` be a countable local synchronization family as in
Proposition `EP.10l`, with local weights `w_\ell(a,b,t)`, masses `m_\ell>0`,
windows `I_\ell=[t-\tau_\ell,t]`, and uniform gap floor

```math
g_J(a,b,s)\ge \gamma_\ast>0
\qquad\text{on every }\Lambda_\ell.
\tag{AFR.9}
```

Define the local forcing contribution

```math
\varepsilon_{\ell}^{force}
:=
\frac{1}{m_\ell}
\int
w_\ell(a,b,t)
\int_{t-\tau_\ell}^{t}
e^{-\frac{\gamma_\ast}{2}(t-s)}
\frac{\beta_J(a,b,s)^2}{g_J(a,b,s)}
\,ds\,
d\mu_J^{pair}(a,b)\,dt.
\tag{AFR.10}
```

Assume the same upper coverage bound as `EP.10l2`:

```math
\sum_\ell w_\ell(a,b,t)\le N_{\mathrm{cov}}
\qquad\text{for a.e. }(a,b,t).
\tag{AFR.11}
```

Then

```math
\sum_\ell m_\ell\,\varepsilon_{\ell}^{force}
\le
\frac{2N_{\mathrm{cov}}}{\gamma_\ast}
\int_I\int_{\mathcal J}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,d\mu_J^{pair}(a,b)\,dt.
\tag{AFR.12}
```

### Proof

Multiply `(AFR.10)` by `m_\ell` and sum in `\ell`:

```math
\sum_\ell m_\ell\varepsilon_\ell^{force}
=
\sum_\ell
\int
w_\ell(a,b,t)
\int_{t-\tau_\ell}^{t}
e^{-\frac{\gamma_\ast}{2}(t-s)}
\frac{\beta_J(a,b,s)^2}{g_J(a,b,s)}
\,ds\,
d\mu_J^{pair}(a,b)\,dt.
\tag{AFR.13}
```

Apply Tonelli and then the upper coverage bound `(AFR.11)`:

```math
\sum_\ell m_\ell\varepsilon_\ell^{force}
\le
\int_{\mathcal J}\int_I
\Bigl(
\int_s^\infty
\sum_\ell w_\ell(a,b,t)\,
e^{-\frac{\gamma_\ast}{2}(t-s)}
\,dt
\Bigr)
\frac{\beta_J(a,b,s)^2}{g_J(a,b,s)}
\,ds\,d\mu_J^{pair}(a,b).
\tag{AFR.14}
```

The kernel mass is

```math
\int_s^\infty e^{-\frac{\gamma_\ast}{2}(t-s)}\,dt
=
\frac{2}{\gamma_\ast},
\tag{AFR.15}
```

so `(AFR.12)` follows. ∎

## Corollary `AFR.C` (adiabatic forcing specialization)

If the adiabatic hypotheses of Corollary `AS.6` hold on every local window, then
`(AS.6c)` gives

```math
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\le
2\frac{|K_J^{seg}(a,b,t)n_J(a,b,t)|^2}{g_J(a,b,t)}
+
2\frac{\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2}{g_J(a,b,t)^3}.
\tag{AFR.16}
```

Hence `(AFR.12)` sharpens to

```math
\sum_\ell m_\ell\,\varepsilon_{\ell}^{force}
\le
\frac{4N_{\mathrm{cov}}}{\gamma_\ast}
\int_I\int_{\mathcal J}
\frac{|K_J^{seg}(a,b,t)n_J(a,b,t)|^2}{g_J(a,b,t)}
+
\frac{\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2}{g_J(a,b,t)^3}
\,d\mu_J^{pair}(a,b)\,dt.
\tag{AFR.17}
```

So the adiabatic localized forcing side closes against the installed ledger
`D.7ie3`.

## Corollary `AFR.D` (entrance density plus angular-forcing ledger globalize the localized packet)

Keep the local synchronization family `\{\Lambda_\ell\}_\ell` of `EP.10l`, and
assume the local projector error is written in the sharper form

```math
\varepsilon_\ell
\le
e^{-\frac{\gamma_\ast}{2}\tau_\ell}\,q_\ell
+
\varepsilon_\ell^{force},
\tag{AFR.17a}
```

with `\varepsilon_\ell^{force}` from `(AFR.10)`.

Assume there is a nonnegative entrance density `\mathfrak q_J(a,b,t)` such that

```math
m_\ell q_\ell
\le
\int
w_\ell(a,b,t)\,\mathfrak q_J(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt.
\tag{AFR.17b}
```

Then

```math
\sum_\ell m_\ell\varepsilon_\ell
\le
N_{\mathrm{cov}}
\int_I\int_{\mathcal J}\mathfrak q_J(a,b,t)\,d\mu_J^{pair}(a,b)\,dt
+
\frac{2N_{\mathrm{cov}}}{\gamma_\ast}
\int_I\int_{\mathcal J}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,d\mu_J^{pair}(a,b)\,dt.
\tag{AFR.17c}
```

Consequently, if

```math
\int_I\int_{\mathcal J}\mathfrak q_J(a,b,t)\,d\mu_J^{pair}(a,b)\,dt
+
\int_I\int_{\mathcal J}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{AFR.17d}
```

then the weighted coverage theorem `EP.10l` globalizes the localized projector
packet into the synchronization channel required downstream.

### Proof

Multiply `(AFR.17a)` by `m_\ell` and sum in `\ell`. The entrance term is
handled by `(AFR.17b)` and the upper coverage bound exactly as in `EP.10m`; the
forcing term is handled by Proposition `AFR.B`. This yields `(AFR.17c)`. Then
`EP.10l` gives the global synchronization channel once `(AFR.17d)` is imposed.
∎

## Corollary `AFR.E` (material-gap entrance realization)

Assume the local entrance bound `q_\ell` is supplied by Corollary `D.7ic`, so on
each local window `\Lambda_\ell`

```math
q_\ell
\le
2e^{-2G_J^{mat}(a,b,t_\ell;t_-)}
\frac{1-c_{J,0}(a,b,t_\ell;t_-)^2}{c_{J,0}(a,b,t_\ell;t_-)^2}
+
2\delta_J^{car}(a,b,t_\ell;t_-).
\tag{AFR.17e}
```

Suppose there is a nonnegative measurable envelope `\mathfrak q_J^{mat}` on
`\mathcal J\times I` such that

```math
q_\ell
\le
\frac{1}{m_\ell}
\int
w_\ell(a,b,t)\,\mathfrak q_J^{mat}(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt,
\tag{AFR.17f}
```

with

```math
\mathfrak q_J^{mat}(a,b,t)
:=
2e^{-2G_J^{mat}(a,b,t;t_-)}
\frac{1-c_{J,0}(a,b,t;t_-)^2}{c_{J,0}(a,b,t;t_-)^2}
+
2\delta_J^{car}(a,b,t;t_-)
\tag{AFR.17g}
```

whenever the predecessor-time arguments are defined on the chosen local family.

Then `AFR.D` applies with `\mathfrak q_J=\mathfrak q_J^{mat}`. Consequently the
localized-projector synchronization channel follows once

```math
\int_I\int_{\mathcal J}
\mathfrak q_J^{mat}(a,b,t)\,d\mu_J^{pair}(a,b)\,dt
+
\int_I\int_{\mathcal J}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{AFR.17h}
```

So on the material-gap entrance route, the remaining localization/globalization
wall is exactly one entrance envelope `\mathfrak q_J^{mat}`, the pair-family
forcing ledger `D.7ie1`, and the coverage packet.

## Corollary `AFR.F` (auxiliary-projector entrance realization)

Assume instead the local entrance bound `q_\ell` is supplied by Corollary
`D.7ig`, so on each local window `\Lambda_\ell`

```math
q_\ell
\le
2\widetilde\alpha_J^{aux}(a,b,t_\ell;I_\ell)
+
\eta_J^{aux}(a,b;I_\ell).
\tag{AFR.17i}
```

Suppose there is a nonnegative measurable envelope `\mathfrak q_J^{aux}` on
`\mathcal J\times I` such that

```math
q_\ell
\le
\frac{1}{m_\ell}
\int
w_\ell(a,b,t)\,\mathfrak q_J^{aux}(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt,
\tag{AFR.17j}
```

with

```math
\mathfrak q_J^{aux}(a,b,t)
:=
2\widetilde\alpha_J^{aux}(a,b,t)
+
\eta_J^{aux}(a,b,t),
\tag{AFR.17k}
```

where, in the Cauchy-Green specialization,

```math
\eta_J^{aux}(a,b,t)
=
\frac{2|m_J^{CG}(a,b,t)|^2}{\operatorname{gap}_J^{CG}(a,b,t)^2}.
\tag{AFR.17l}
```

Then `AFR.D` applies with `\mathfrak q_J=\mathfrak q_J^{aux}`. Consequently the
localized-projector synchronization channel follows once

```math
\int_I\int_{\mathcal J}
\mathfrak q_J^{aux}(a,b,t)\,d\mu_J^{pair}(a,b)\,dt
+
\int_I\int_{\mathcal J}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{AFR.17m}
```

So on the auxiliary-projector route, the remaining localization/globalization
wall is exactly one entrance envelope `\mathfrak q_J^{aux}`, the pair-family
forcing ledger `D.7ie1`, and the coverage packet.

## Corollary `AFR.G` (maximal-envelope promotion collapses the entrance-density side)

Let `\{\Lambda_\ell\}_\ell` be the local synchronization family from `EP.10l`,
and let `X_\ell\ge 0` be one explicit local entrance scalar on each window,
either

```math
X_\ell=q_\ell^{mat}
\qquad\text{or}\qquad
X_\ell=q_\ell^{aux}.
\tag{AFR.17n}
```

Define the local-family maximal envelope

```math
\mathcal M_{\Lambda}X(a,b,t)
:=
\sup_{\ell:\,(a,b,t)\in\Lambda_\ell} X_\ell.
\tag{AFR.17o}
```

Then every local window automatically satisfies

```math
X_\ell
\le
\frac1{m_\ell}
\int
w_\ell(a,b,t)\,\mathcal M_{\Lambda}X(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt.
\tag{AFR.17p}
```

So `AFR.D` applies with

```math
\mathfrak q_J:=\mathcal M_{\Lambda}X.
\tag{AFR.17q}
```

Consequently the localized-projector synchronization channel follows once

```math
\int_I\int_{\mathcal J}
\mathcal M_{\Lambda}X(a,b,t)\,d\mu_J^{pair}(a,b)\,dt
+
\int_I\int_{\mathcal J}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{AFR.17r}
```

or the corresponding adiabatic variant with `D.7ie3`.

### Proof

By definition of `(AFR.17o)`, one has `\mathcal M_{\Lambda}X\ge X_\ell`
pointwise on `\Lambda_\ell`. Averaging against the nonnegative local weights
`w_\ell/m_\ell` yields `(AFR.17p)`. Then substitute `(AFR.17q)` into `AFR.D`.
∎

## Interpretation

This note sharpens the localized-projector exact-potential route once more.

The local forcing side no longer needs the coarser linear packet

```math
\texttt{weighted }\beta_J\texttt{ forcing convolution}.
\tag{AFR.18}
```

The honest sharper forcing side is now the already-installed exact-potential
ledger

```math
\boxed{
\texttt{pair-family angular forcing }\int \beta_J^2/g_J
\quad\text{or, on the adiabatic subbranch,}\quad
\texttt{D.7ie3}.
}
\tag{AFR.19}
```

So on the frozen transported packet realization, the exact local/projector wall
is now:

```math
\boxed{
\texttt{theorem-safe entrance}
+
\texttt{pair-family angular forcing ledger}
+
\texttt{the }AFR.G\texttt{ maximal-envelope globalization theorem}
\texttt{ for }q_\ell^{mat}\texttt{ or }q_\ell^{aux}.
}
\tag{AFR.20}
```

Equivalently, the localized-projector branch has reached the point where its
remaining forcing debt is no longer a new local theorem. It is the already
recognized pair-family forcing budget from `D.7ie1` together with the explicit
maximal-envelope globalization theorem that transports local window estimates
into the global synchronization channel. The remaining explicit entrance
suppliers are still exactly the two
installed routes `D.7ic` and `D.7ig`, now written as the concrete globalization
envelopes `\mathfrak q_J^{mat}` and `\mathfrak q_J^{aux}` above. After the
maximal-envelope promotion `AFR.G`, the remaining globalization wall is even
sharper:

```math
\boxed{
\texttt{one maximal-envelope theorem for }q_\ell^{mat}\text{ or }q_\ell^{aux}
+
\texttt{the installed pair-family forcing ledger }D.7ie1
}
\tag{AFR.21}
```

with `D.7ie3` on the adiabatic subbranch. The final globalization/gluing split
is written explicitly in
[localized-projector-overlap-mismatch-globalization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-overlap-mismatch-globalization.md),
which adds the remaining overlap-surrogate theorem for the local PSD sections.
That overlap theorem is then reduced one further honest step in
[localized-projector-kernel-mismatch-implies-overlap-surrogate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-kernel-mismatch-implies-overlap-surrogate.md):
the gluing debt becomes one normalized kernel-mismatch theorem for the local
packet densities, or on the exact `PSJ+.1` realization one weighted
localizer-overlap theorem. That exact `PSJ+.1` case is then reduced once more
in
[localized-projector-localizer-modulus-overlap-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-localizer-modulus-overlap-reduction.md)
to one localizer-modulus theorem, and under a Lipschitz localizer design to one
weighted center-spacing theorem on overlaps. The stronger canonical-center
redesign note
[canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md)
removes pairwise overlap mismatch, but only after the atlas-admissibility
theorem isolated in
[canonical-center-atlas-admissibility-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-atlas-admissibility-reduction.md).
