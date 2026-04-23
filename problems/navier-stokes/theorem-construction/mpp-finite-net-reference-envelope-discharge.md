# MPP Finite-Net Reference-Envelope Discharge

## Status

Candidate theorem-facing discharge note.

Role: corrected common-object discharge surface for the Eulerian reference
envelope side of the standalone class-membership branch.

This note sits underneath
`mpp-local-eulerian-reference-envelope-lemma.md`
and uses the common packet-collar envelope from
`mpp-packet-collar-next-rung-control.md`
to discharge the packetized Eulerian reference envelope from a finite family of
fixed-increment packets.

The exact interval-propagation queue beneath this note is now isolated in
`mpp-fixed-family-and-collar-interval-propagation.md`.

## Purpose

The exact burden here is:

```math
\boxed{
\text{discharge }\widehat{\mathcal E}^{Eul,ref}_{N,\rho,\psi}(t)
\text{ by a finite interval-uniform reference net plus the common collar envelope.}
}
\tag{FN.0}
```

This note corrects the moving-net issue: the finite net used here is fixed on
the whole interval `I`, so the fixed-increment packet law may be applied
without introducing extra time-derivative terms for the increments.

## Setup

Retain the scale-window Eulerian reference radius from `(LE.5)`:

```math
\Lambda_{\rho,\psi}^{ref}(t)
:=
\sup_{\eta\in\mathcal R_{\rho}^{ref}(t;\psi)}
|\eta|.
\tag{FN.1}
```

Define the interval-uniform reference radius

```math
\Lambda_{\rho,\psi}^{ref}(I)
:=
\sup_{t\in I}\Lambda_{\rho,\psi}^{ref}(t),
\tag{FN.2}
```

and the corresponding fixed interval reference ball

```math
\mathbb B_{\rho,\psi}^{ref}(I)
:=
\big\{
\eta\in\mathbf R^3:|\eta|\le \Lambda_{\rho,\psi}^{ref}(I)
\big\}.
\tag{FN.3}
```

Choose a finite `\varepsilon`-net of that fixed ball:

```math
\Xi_{\rho,\psi}^{\varepsilon}(I)
:=
\big\{\eta^\ell\big\}_{\ell=1}^{M_\varepsilon}
\subset \mathbb B_{\rho,\psi}^{ref}(I),
\tag{FN.4}
```

with

```math
\forall \eta\in \mathbb B_{\rho,\psi}^{ref}(I)
\quad
\exists \eta^\ell\in \Xi_{\rho,\psi}^{\varepsilon}(I)
\text{ such that }
|\eta-\eta^\ell|\le \varepsilon.
\tag{FN.5}
```

Let the common packet-collar envelope be the object from
`mpp-packet-collar-next-rung-control.md`:

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
\tag{FN.6}
```

for some fixed collar thickness `\delta>0`.

## Exact Claim

### Lemma FN.A (finite-net interpolation on the interval reference ball)

For every time `t\in I`, packet label `a`, and increment
`\eta\in\mathbb B_{\rho,\psi}^{ref}(I)`, choose `\eta^\ell` from `(FN.5)`. Then

```math
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(X(a,t),t)
-
\delta_{\eta^\ell}U_k(X(a,t),t)
\big|^2
\le
\varepsilon^2\,\mathfrak C_{N+1,\rho,\psi}^{\delta}(t).
\tag{FN.7}
```

### Proof

By the fundamental-theorem-of-calculus increment-stability identity `(IC.6)`,
for each rung `k`,

```math
\big|
\delta_\eta U_k(X(a,t),t)
-
\delta_{\eta^\ell}U_k(X(a,t),t)
\big|
\le
\varepsilon
\int_0^1
\big|
U_{k+1}(X(a,t)+\eta^\ell+\theta(\eta-\eta^\ell),t)
\big|\,d\theta.
\tag{FN.8}
```

Because both `\eta` and `\eta^\ell` lie in the fixed ball
`\mathbb B_{\rho,\psi}^{ref}(I)`, every interpolation point
`X(a,t)+\eta^\ell+\theta(\eta-\eta^\ell)` lies in the reference part of the
common packet collar. So the integrand is bounded by the collar envelope
`\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)^{1/2}`. Squaring, summing with the
weights `\lambda_k`, and using Jensen in `\theta` gives `(FN.7)`. ∎

### Theorem FN.B (finite-net discharge of the Eulerian reference envelope)

For every `t\in I`,

```math
\widehat{\mathcal E}^{Eul,ref}_{N,\rho,\psi}(t)
\le
2\sum_{\ell=1}^{M_\varepsilon}E_N(\eta^\ell,t;\psi)
+
2\,\varepsilon^2
\Big(
\int \psi(a)^2\,da
\Big)
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t).
\tag{FN.9}
```

### Proof

Fix `a` and take the supremum over `\eta\in\mathbb B_{\rho,\psi}^{ref}(I)`.
Using `(FN.7)` and `(u+v)^2\le 2u^2+2v^2`,

```math
\sup_{\eta\in\mathbb B_{\rho,\psi}^{ref}(I)}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(X(a,t),t)
\big|^2
\le
2\max_{1\le \ell\le M_\varepsilon}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_{\eta^\ell}U_k(X(a,t),t)
\big|^2
+
2\,\varepsilon^2\,\mathfrak C_{N+1,\rho,\psi}^{\delta}(t).
\tag{FN.10}
```

Integrate against `\psi(a)^2\,da`. The maximum over the finite set is bounded
by the sum, and `(EC.3)` identifies each integral with
`E_N(\eta^\ell,t;\psi)`. This gives `(FN.9)`. ∎

## Exact Discharge Interface

### Candidate Theorem FN.C (interval discharge of `\widehat{\mathcal E}^{Eul,ref}`)

Assume on `I`:

```math
\sup_{t\in I}\sum_{\ell=1}^{M_\varepsilon}E_N(\eta^\ell,t;\psi)<\infty,
\tag{FN.11}
```

and

```math
\sup_{t\in I}\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)<\infty.
\tag{FN.12}
```

Then

```math
\sup_{t\in I}\widehat{\mathcal E}^{Eul,ref}_{N,\rho,\psi}(t)<\infty.
\tag{FN.13}
```

This is the corrected common-object discharge for the Eulerian reference side.

## Interpretation

The discharge route is now exact:

```math
\text{fixed interval net of Eulerian increments}
\Longrightarrow
\sum_{\ell=1}^{M_\varepsilon}E_N(\eta^\ell,t;\psi),
\tag{FN.14}
```

```math
\text{common packet-collar next-rung control}
\Longrightarrow
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t),
\tag{FN.15}
```

and `(FN.9)` then yields the Eulerian reference envelope.

## Boundary

This note does **not** yet prove:

1. uniform-in-time finiteness of `\Lambda_{\rho,\psi}^{ref}(I)` from the
   packet distortion ledger;
2. the interval propagation theorem for the fixed finite packet family
   `\sum_{\ell=1}^{M_\varepsilon}E_N(\eta^\ell,t;\psi)`, now isolated in
   `mpp-fixed-family-and-collar-interval-propagation.md`;
3. the paired collar-Sobolev interval propagation step feeding
   `\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)`, also isolated in
   `mpp-fixed-family-and-collar-interval-propagation.md`;
4. the weighted-segment side of the common discharge route.

It isolates only the corrected finite-net discharge of the Eulerian reference
envelope.

## Source Surfaces

Primary source surfaces for this note:

1. `problems/navier-stokes/theorem-construction/mpp-local-eulerian-reference-envelope-lemma.md`
2. `problems/navier-stokes/theorem-construction/mpp-packet-collar-next-rung-control.md`
3. `problems/navier-stokes/theorem-construction/mpp-increment-stability-and-transported-packet-comparison.md`
4. `problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md`
5. `problems/navier-stokes/theorem-construction/mpp-fixed-family-and-collar-interval-propagation.md`
