---
theorem_id: forward-gold-superheat-ratio-tail-frequency-transfer-test-20260626
status: direct-test-installed-frequency-transfer-does-not-beat-ratio-tail-without-new-one-way-coherence
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-initial-frequency-data-to-material-clock-pressure-test-20260624.md
  - problems/navier-stokes/theorem-construction/mcp-superheatresidencefrequencyhistorydirectaudit-a-globalsamepacketfullclockfromoriginaldata-a-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-energy-enstrophy-pressure-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-moment-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-goodlambda-test-20260626.md
---

# Superheat Ratio-Tail Frequency-Transfer Test

This note checks the last natural frequency-history escape hatch.

The object is still one original smooth solution and its transported material
history.  Heat-scale windows are only samples of that history.  The legacy
symbol \(d\Omega_N^{PLS,full}\) means the full same-material
pressure--viscosity--incompressibility--velocity action measure.

## 1. Known frequency input

Smooth initial data gives a summable high-frequency entrance tail at every
fixed continuation depth:

```math
\sum_j2^{2Nj}e_j(0)<\infty .
\tag{FTT.1}
```

For a material dyadic shell, the same-packet energy identity has the form

```math
{d\over dt}e_j(t)+c\nu2^{2j}e_j(t)
=
m_j(t)+r_j^{legal}(t),
\tag{FTT.2}
```

where \(m_j\) is the signed participation-law--strain shell service on the
same transported packet.  Duhamel gives

```math
e_j(t)\le e^{-c\nu2^{2j}t}e_j(0)
+
\int_0^t e^{-c\nu2^{2j}(t-s)}
\left([m_j(s)]_+ + r_j^{legal}(s)\right)\,ds .
\tag{FTT.3}
```

This proves the useful physical fact: high frequencies decay faster unless the
same solution refills them through the coupled participation-law--strain
service.

## 2. Subheat refill is already paid

Let

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over2^{2j}} .
\tag{FTT.4}
```

On the subheat branch \(\rho_j\le\delta\), the service rate is below the heat
rate, and the installed moving-pump estimate gives

```math
[m_j(t)]_+\le {1\over2}c\nu2^{2j}e_j(t)+r_j^{legal}(t).
\tag{FTT.5}
```

So the heat penalty really does close this branch.  It also closes the return
or recirculation branch after the installed same-material recirculation
packing theorem.

## 3. High-ratio transfer cancels the heat penalty

The remaining branch is

```math
\rho_j(t)>\delta .
\tag{FTT.6}
```

On this branch the same calculation only gives

```math
[m_j(t)]_+
\lesssim
\Theta_j^{mat}(t)e_j(t)+r_j^{legal}(t)
=
\rho_j(t)\,d\mu_j(t)/dt+r_j^{legal}(t).
\tag{FTT.7}
```

Thus the nonlinear refill is exactly the first ratio moment that the finite
same-material action theorem needs:

```math
\sum_j\int_{\{\rho_j>\delta\}}\rho_j\,d\mu_j<\infty .
\tag{FTT.8}
```

Duhamel does not improve this estimate.  For any measurable high-ratio set
\(E\),

```math
\int_E2^{2j}e_j(t)\,dt
\le
C\int_E2^{2j}e^{-c\nu2^{2j}t}e_j(0)\,dt
+
C\int_0^{T_*}([m_j(s)]_+ + r_j^{legal}(s))\,ds .
\tag{FTT.9}
```

The first term is the entrance tail and is summable.  The second term is the
same positive one-way service.  On the high-ratio branch, replacing
\([m_j]_+\) by `(FTT.7)` returns `(FTT.8)` itself.  The heat factor has already
been spent; it does not beat the ratio tail.

## 4. Tail consequence

For the ratio bands

```math
E_{j,\ell}=\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}),
\tag{FTT.10}
```

raw dissipation gives only

```math
\sum_{\ell\ge0}\nu_\ell<\infty .
\tag{FTT.11}
```

Finite same-material action requires

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
\tag{FTT.12}
```

Smooth initial tail and faster heat decay contribute only to the summable
entrance part of \(\nu_\ell\).  They do not force the weight-beating tail
`(FTT.12)` for later one-way high-ratio transfer.

Equivalently, the required good-lambda recurrence remains

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
2\theta<1,
\qquad
\sum_L2^LB_L<\infty,
\tag{FTT.13}
```

with \(B_L\) made only of entrance tail, legal residual, subheat absorption,
and already-closed return/recirculation.  The one-way high-ratio transfer is
not allowed to sit inside \(B_L\), because that would reinsert the quantity
being proved finite.

## 5. Result

The frequency-controlled picture is installed as a branch split, not as the
missing finite-action proof.

It proves:

```math
\text{smooth entrance tail}
+\text{faster heat damping}
+\text{return packing}
\Longrightarrow
\text{entrance, subheat, and recirculation branches are finite.}
\tag{FTT.14}
```

It leaves exactly:

```math
\boxed{
\sum_j\int_{\{\rho_j>\delta\}}\rho_j\,d\mu_j<\infty
}
\tag{FTT.15}
```

for one-way high-ratio same-material transfer.

So the remaining Gold theorem is not another initial-frequency estimate.  It
is a Navier--Stokes structural no-free-upward-transfer law for the original
transported material history: high-ratio one-way transfer must have a
weight-beating tail, or must be paid by a bounded-below same-material action
storage.  Without that, the finite full same-material action estimate is not
proved.
