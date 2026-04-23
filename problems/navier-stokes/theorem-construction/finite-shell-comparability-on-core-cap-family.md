# Finite Shell Comparability On Core-Cap Family

## Status

Active theorem-facing upstream debt note.

Role: isolate the finite shell-comparability theorem that supplies the
shell-leakage side of the constructive balanced-frame route on the same
core-cap family.

## Purpose

Discharge the shell packet:

```math
\boxed{
\text{finite shell comparability}
\Longrightarrow
\text{shell leakage packet on the same core-cap family.}
}
\tag{FSCC.0}
```

This is the exact shell-side theorem named throughout the constructive
`PTC-Shape` route.

## Exact Setup

Keep the shell caps `(QSP.10zzba)` from
[selector-quadratic-sign-separation-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md)
and define the normalized spherical shell masses

```math
s_{\pm,r}^{shell}
:=
\sigma_{N_a}\bigl(\widehat C_{\pm,r}\setminus \widetilde C_{\pm,r}\bigr).
\tag{FSCC.0a}
```

Let `\delta_{J,r}^\pm(a)` denote the corresponding shell-mass observables on
the active family.

## Exact Target

### Theorem FSCC.A (finite shell comparability implies the shell-leakage packet)

Assume there exists an error sequence `\varepsilon_J^{shell}\to 0` such that
for every `r=1,\dots,R`,

```math
\int_{G_J}
\Bigl|
\delta_{J,r}^\pm(a)-s_{\pm,r}^{shell}
\Bigr|\,d\mu_j(a)
\le
\varepsilon_J^{shell},
\tag{FSCC.1}
```

and assume the shell family is chosen so that

```math
\max_{r,\pm} s_{\pm,r}^{shell}\le \varsigma_J,
\qquad
\varsigma_J\to 0.
\tag{FSCC.2}
```

Then the shell-leakage input holds with

```math
\eta_J^{shell}
:=
\varepsilon_J^{shell}
+
\varsigma_J\,\mu_j(G_J).
\tag{FSCC.3}
```

Equivalently,

```math
\text{finite shell comparability}
\Longrightarrow
\texttt{ShellLeak},
\tag{FSCC.4}
```

where `\texttt{ShellLeak}` denotes the shell-leakage packet `(QSP.10zzbg)`.

So the smooth graph-fiber route reduces the shell side further to one finite
shell-comparability theorem on the same core-cap family.

## Proof

By the triangle inequality,

```math
\int_{G_J}\delta_{J,r}^\pm(a)\,d\mu_j(a)
\le
\int_{G_J}\Bigl|\delta_{J,r}^\pm(a)-s_{\pm,r}^{shell}\Bigr|\,d\mu_j(a)
+
s_{\pm,r}^{shell}\mu_j(G_J).
\tag{FSCC.5}
```

Applying `(FSCC.1)` and `(FSCC.2)` gives

```math
\int_{G_J}\delta_{J,r}^\pm(a)\,d\mu_j(a)
\le
\varepsilon_J^{shell}+\varsigma_J\,\mu_j(G_J)
=
\eta_J^{shell},
\tag{FSCC.6}
```

which is exactly the shell-leakage packet. ∎

## Interpretation

This note isolates the shell-side burden that repeatedly survives on the
constructive `PTC-Shape` branch after the selector and graph-mass reductions
have already been performed.

In particular, the constructive shape route can be read as carrying two
different kinds of remaining work:

```math
\text{selector-side sign/refinement packet}
\quad+\quad
\text{finite shell comparability}.
\tag{FSCC.7}
```

This note is the exact theorem-facing surface for the second half.

## Downstream Use

This note feeds the constructive shape route at several points, including the
unified shell-bump branch:

```math
\text{finite positive reference shell-bump packet}
\;+\;
\text{finite shell comparability}
\Longrightarrow
\text{balanced-frame shape descendants.}
\tag{FSCC.8}
```

It is also one of the explicit packets still paired with the selector-side
primitive in
[ptc-shape-normalization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md)
and
[exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md).
