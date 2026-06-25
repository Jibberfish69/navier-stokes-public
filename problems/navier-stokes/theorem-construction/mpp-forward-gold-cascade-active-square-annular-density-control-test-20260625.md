---
theorem_id: forward-gold-cascade-active-square-annular-density-control-test-20260625
status: installed-cascade-and-active-square-do-not-control-full-annular-density
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Checks the installed scheduled cascade and active-square surfaces against the
  actual gauge-reduced annular density on the transported material annulus. The
  installed PST.A theorem controls scheduled fixed-threshold high-frequency
  velocity tails, not the all-active-shell pressure-stress/cubic collar density.
  The installed active-square surfaces control residual/source-square proxy
  bills or land failures in pass-or-exit grammar; they do not identify the
  pressure-time elliptic service and cubic annular collar action with a proved
  same-material full-clock estimate. Thus both families remain support only.
  The full pressure-viscosity-incompressibility-velocity material clock remains
  the active frontier.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scheduled-cascade-to-full-annular-density-bridge-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-periodic-shell-tail-suppression-from-repaired-gradient-commutator-pst-a-2f97954c82.md
  - problems/navier-stokes/theorem-construction/mpp-active-square-obstruction-pass-or-pack-exit-20260611.md
  - problems/navier-stokes/theorem-construction/mpp-activesquare-carleson-direct-collapse-note.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-annular-density-prelimit-left-clock-circularity-test-20260625.md
---

# Cascade Active-Square Annular Density Control Test

Date: 2026-06-25

## 0. Result

The installed cascade and active-square surfaces do not control the full
annular pressure-time/cubic-gradient density on the same transported annulus.

They are real support for narrower readings of the same material history.  They
are not the missing full-clock producer.

The target density is

```math
\begin{aligned}
\mathcal S_\phi^\sharp
:={}&
|\nabla\cdot T^\sharp|\,|T^\sharp|\,|\nabla\phi|
+
|U|\,|\nabla(-\Delta)^{-1}\mathcal E_P|\,|\nabla\phi|\\
&+
|\nabla\cdot T^\sharp|\,|U|\,|\nabla^2\phi|
+
|\nabla\cdot T^\sharp|\,|\nabla U|\,|\nabla\phi|\\
&+
|U|\,|\nabla U|^2|\nabla\phi|
+
|U|\,|T^\sharp|\,|\nabla U|\,|\nabla\phi|.
\end{aligned}
\tag{CAS.1}
```

Here

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
\nabla\cdot U=0.
\tag{CAS.2}
```

The desired estimate is

```math
\int_0^{T_*}
\sum_j2^{\gamma j}
\|\Delta_j\mathcal S_\phi^\sharp(t)\|_{L^1_x}\,dt<\infty .
\tag{CAS.3}
```

## 1. Scheduled cascade does not imply the target

The installed periodic shell-tail theorem `PST.A`, under `Sched.A+`, proves
that for a selected threshold `N`,

```math
\sup_{t\in I}E_N(t)+\int_I D_N(t)\,dt\le \rho,
\tag{CAS.4}
```

where

```math
E_N(t)=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_N(t)=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_2^2.
\tag{CAS.5}
```

This is fixed-threshold velocity-tail suppression.  It does not include the
pressure-time elliptic service

```math
|U|\,|\nabla(-\Delta)^{-1}\mathcal E_P|\,|\nabla\phi|,
\tag{CAS.6}
```

or the active collar cubic term

```math
|U|\,|\nabla U|^2|\nabla\phi|.
\tag{CAS.7}
```

A direct implication would need

```math
\sum_j2^{\gamma j}\|\Delta_j\mathcal S_\phi^\sharp\|_{L^1}
\le
C\left(
\text{scheduled cascade density}
+
\text{strict same-packet loss}
+
\text{summable legal density}
\right).
\tag{CAS.8}
```

The installed `PST.A` statement does not contain `(CAS.8)`.  Its inputs are
velocity-tail energy, velocity-tail dissipation, finite low-mode coefficients,
commutator bounds, and a scheduler compatibility condition.  Those inputs do
not control the all-active-shell pressure-stress density `(CAS.1)`.

So `PST.A` can help only after `(CAS.8)` has already decomposed the full
annular density into high-tail pieces plus paid same-packet terms.  It is not
that decomposition.

## 2. Active-square surfaces do not imply the target

The installed active-square family is centered on source-square quantities such
as

```math
\int_I
\sum_{j\ge N}
\left(\sum_{k\le j-C_1}E_k(t)\right)
2^{-j}D_j(t)^2\,dt.
\tag{CAS.9}
```

The repo already records that raw LPAS is false and that the usable form is a
residual/source-balanced active-square or pass-or-exit object.

The target `(CAS.3)` is different.  It asks for the transported annular density
built from pressure-time service, material acceleration, stress, strain, and
collar motion.  The pressure-time source contains

```math
\mathcal E_P
=
\partial^2T^\sharp\,\partial U
+
(\partial U)^3
+
\partial U\,\partial^2P
+
\Delta U\,\nabla P
\tag{CAS.10}
```

schematically, through

```math
D_tP=(-\Delta)^{-1}\mathcal E_P.
\tag{CAS.11}
```

No installed active-square theorem identifies `(CAS.10)` on the transported
annular collar with the source-square bill `(CAS.9)`.

The cubic collar term also shows the mismatch.  A typical shell-local piece of

```math
\int |U|\,|\nabla U|^2|\nabla\phi|
\tag{CAS.12}
```

is a pressure-strain/material-action density.  The active-square bill is a
shell-dissipation square.  Passing from `(CAS.12)` to `(CAS.9)` requires a
same-packet amplitude/source bridge.  The installed active-square notes record
that this bridge is not proved from original smooth data; it reduces to
source-square, amplitude-gain, or source-pulse exclusion.

Therefore the active-square family is not an installed proof of `(CAS.3)`.

## 3. What these surfaces still contribute

The cascade theorem contributes to high-frequency velocity-tail pieces after
the full density has been decomposed on the same packet.

The active-square surfaces contribute a known language for source-balanced
terminal pulses and shell-square bills after the annular density has been
identified with that source-square object.

Neither contribution is the full pressure-viscosity-incompressibility-velocity
annular action estimate itself.

## 4. Exact conclusion

The checked implications are:

```math
\texttt{PST.A}
\not\Longrightarrow
\int_0^{T_*}\sum_j2^{\gamma j}\|\Delta_j\mathcal S_\phi^\sharp\|_{L^1}\,dt<\infty,
\tag{CAS.13}
```

and

```math
\text{installed active-square/pass-or-exit surfaces}
\not\Longrightarrow
\int_0^{T_*}\sum_j2^{\gamma j}\|\Delta_j\mathcal S_\phi^\sharp\|_{L^1}\,dt<\infty.
\tag{CAS.14}
```

The remaining theorem is unchanged and exact:

```math
\boxed{
\int_0^{T_*}d\Omega_N^{full}<\infty
}
\tag{CAS.15}
```

on the original transported material history, with the full clock containing
pressure-time elliptic service, cubic annular collar action, material metric
service, viscous/tower service, and the transported pressure-viscosity-
incompressibility-velocity packet.

This is the point where the gold route is currently honest: the physical object
is fixed, the fake independent packet and free time-signal pictures are gone,
and no installed cascade or active-square theorem has yet supplied the finite
positive full material clock.