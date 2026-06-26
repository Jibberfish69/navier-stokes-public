---
theorem_id: forward-gold-weight-beating-tail-ns-structure-audit-20260626
status: proof-audit-installed-weight-beating-tail-is-the-current-nonproxy-gold-theorem
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-moment-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-goodlambda-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-frequency-transfer-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dyadic-reduced-identities-insufficiency-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-nongauge-material-time-profile-liouville-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-state-action-storage-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-clock-closure-complete-frame-hodge-assembly-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-hodge-referee-sufficiency-audit-20260626.md
---

# Weight-Beating Tail Navier-Stokes Structure Audit

The current object is finite full same-material action:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty .
\tag{WBT.1}
```

This note fixes the active Gold theorem after the deprecated clock wording is
removed.  The word "clock" below means only the parameterization of the same
nonnegative action measure; it is not a separate supplier.

## 1. Exact remaining action

After the installed pressure/Hodge, complete-frame, subheat, recirculation,
and terminal attachment reductions, the remaining one-way high-ratio part can
be written with

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over2^{2j}} .
\tag{WBT.2}
```

Here \(\Theta_j^{mat}\) is the graph-compatible same-material rate: strain,
metric/frame, Hodge/projector, collar, pressure/collar normal defect, viscous
tower service, and annular interface service after all sector reductions have
been applied.

The missing finite-action theorem is exactly

```math
\mathcal T_N
:=
\sum_j\int_{\{\rho_j>\delta\}}\rho_j\,d\mu_j
<\infty .
\tag{WBT.3}
```

Equivalently, for

```math
E_{j,\ell}
=
\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}),
\tag{WBT.4}
```

the theorem is

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
\tag{WBT.5}
```

The ordinary energy and viscous/tower estimates give only

```math
\sum_{\ell\ge0}\nu_\ell<\infty .
\tag{WBT.6}
```

So the live Gold theorem is a weight-beating tail law for the material-rate to
heat-rate ratio on the original transported smooth history.

## 2. Acceptance test for any proposed closure

A proposed Gold closure now has to prove one of these equivalent-strength
statements:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
\tag{WBT.7}
```

or a good-lambda tail recurrence

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
2\theta<1,
\qquad
\sum_{L\ge0}2^LB_L<\infty,
\tag{WBT.8}
```

where \(N_L=\sum_{\ell\ge L}\nu_\ell\), or a bounded-below same-material
storage

```math
d\mathscr A_N+c_Nd\Omega_N^{full}\le dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0),
\qquad
\int_0^{T_*}dR_N^{legal}<\infty .
\tag{WBT.9}
```

This is not an auxiliary proxy.  It is the current nonproxy form of the full
same-material action theorem.

## 3. What the current installed reductions already prove

The current reductions remove the following branches from the tail problem:

- smooth initial high-frequency entrance tails;
- subheat refill, where the material rate is below the heat rate;
- return and backscatter recirculation;
- pressure-only and collar-only readings, by projector-first Hodge and Schur
  graph splitting;
- primitive orientation gaps, by the retained complete frame and trace-free
  strain identity;
- center endpoint atoms, once the finite full action tail is supplied.

These are real reductions.  They do not prove `(WBT.7)`.

The complete-frame identity admits positive primitive action into transverse
wave-covector or collar-normal compression.  The selected top-strain logarithmic
storage pays the signed top-strain coordinate.  Combining those two facts does
not yield a weight-beating tail; substituting admission into the log-storage
identity raises the right-side interface to the log-weighted residence

```math
\sum_j\int e_j\lambda_{+,j}L_j\,dt,
\qquad
L_j=\left[\log{\lambda_{+,j}\over\delta2^{2j}}\right]_+ .
\tag{WBT.10}
```

That is stronger than the unweighted action `(WBT.3)` and is not supplied by
the current support surfaces.

## 4. What the reduced model proves

The dyadic reduced terminal burst model is not a Navier-Stokes solution.  Its
role is narrower: it shows that the installed reduced identities do not imply
finite full same-material action.

It can satisfy the scalar shell energy identity, high-shell viscous damping,
complete-frame trace-free admission, subheat exclusion, absence of recirculation,
and bounded finite log-power strain storages while keeping

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty .
\tag{WBT.11}
```

Therefore the missing step must use a Navier-Stokes structural constraint not
present in the reduced scalar/orientation/log-storage identities.

## 5. What local Navier-Stokes structure cannot supply

The local affine material packet

```math
u(x,t)=B(t)x,
\qquad
\operatorname{tr}B(t)=0,
\qquad
B(t)=B(t)^\top,
\tag{WBT.12}
```

with pressure

```math
p(x,t)=-{1\over2}x\cdot(\dot B+B^2)x
\tag{WBT.13}
```

is an exact local incompressible Navier-Stokes packet.  It can carry non-gauge
material strain action with zero local heat-time mass.  Periodic localization
with divergence-free collar matching keeps raw physical cost radius-weighted
while the normalized material action remains order one.

Thus the missing theorem cannot be a local material-jet rigidity statement or
a local finite-depth state storage.  It has to use the global original
transported history, its all-scale nonlocal coupling, or an equivalent
bounded-below action reservoir.

## 6. Current proof boundary

The active Gold proof is now reduced to one nonproxy theorem:

```math
\boxed{
\text{the original transported smooth Navier-Stokes history satisfies the
weight-beating tail law }(WBT.7).
}
\tag{WBT.14}
```

An equivalent acceptable closure is `(WBT.8)` or `(WBT.9)`.

Everything else currently installed is either a sector reduction, an admission
identity, a consumer bridge, or a failed direct attempt.  Those surfaces are
useful only insofar as they feed `(WBT.14)`.

Once `(WBT.14)` is proved, the downstream chain already installed applies:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty
\Longrightarrow
\text{no terminal atom}
\Longrightarrow
\sup_{t<T_*}\mathcal P_N^{mat}(t)<\infty
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\Longrightarrow
\text{restart past }T_* .
\tag{WBT.15}
```

This note does not close the MPP.  It prevents the current support package from
being mistaken for closure and pins the next proof attempt to the exact
Navier-Stokes structural tail law that remains.
