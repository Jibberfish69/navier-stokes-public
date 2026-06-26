---
theorem_id: forward-gold-full-pls-finite-action-minimal-burst-attempt-20260626
status: direct-attempt-reduces-to-one-way-superheat-depletion-invariant
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exhaustive-full-pls-clock-pivot-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-clock-closure-complete-frame-hodge-assembly-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-superheatresidencefrequencyhistorydirectaudit-a-globalsamepacketfullclockfromoriginaldata-a-20260625.md
---

# Full PLS Finite-Action Minimal-Burst Attempt

The live Gold object is the original smooth solution's single transported
material history.  Heat-scale packets are only bounded-overlap samples of that
history.  The remaining theorem is the finite total action estimate

```math
\int_0^{T_*}d\Omega_N^{PLS,full}<\infty ,
\tag{MBA.1}
```

not an external supplier statement.  The live theorem surface must say finite
action of the same participation-law-strain history, not a detached account
feeding a separate object.

## 1. Minimal-burst contradiction setup

Assume `(MBA.1)` fails.  Since \(d\Omega_N^{PLS,full}\) is a nonnegative
same-material action measure, choose first-hitting intervals \(I_k=[a_k,b_k]\)
on the same material history such that

```math
\int_{I_k}d\Omega_N^{PLS,full}=1,
\qquad
b_k=\inf\left\{t>a_k:
\int_{a_k}^{t}d\Omega_N^{PLS,full}=1
\right\}.
\tag{MBA.2}
```

Infinite total action gives infinitely many such unit-action bursts, after
discarding a finite initial segment and harmless legal tails.

The installed sector reductions are then applied to each \(I_k\):

- center endpoint projection is attached to transported annular stress-work;
- pressure and collar motion are read through the graph-compatible
  pressure/collar and material Hodge/projector packet;
- trace-free complete-frame accounting admits the primitive orientation gap
  into wave-covector compression or annular/collar-normal compression;
- subheat refill is absorbed by high-shell viscosity;
- return/oscillatory recirculation is finite;
- top-frequency regeneration is not free and is part of the same PLS action.

Thus a minimal unit burst cannot hide in a terminal center atom, pressure-only
lobe, viscosity-only drain, scalar endpoint pulse, finite jet, or arbitrary
frequency signal.  After the installed reductions, the remaining burst mass is
the one-way superheat material residence of the original material history.

## 2. Reduced burst density

The direct frequency-history audit leaves

```math
\mathcal R_{sh,N}(t)
=
\sum_j
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta 2^{2j}\}},
\tag{MBA.3}
```

where

```math
\Theta_j^{mat}
=
\Theta_j^{strain}
+\Theta_j^{press}
+\Theta_j^{coef}
+\Theta_j^{collar}.
\tag{MBA.4}
```

This is still the same pressure-viscosity-incompressibility-velocity /
strain transaction.  It is the superheat part of the full action, where the
material participation rate outruns heat damping at shell \(j\).  On this set
the dyadic energy identity gives only

```math
[m_j^{PLS}(t)]_+
\lesssim
\Theta_j^{mat}(t)e_j(t)+r_j^{legal}(t),
\tag{MBA.5}
```

which is the residence density itself.  Heat damping does not absorb `(MBA.3)`.

## 3. What a burst proof would need

A minimal-burst contradiction would close if there were a bounded-below
same-material depletion functional \(\mathcal B_N\) such that every unit burst
forces a fixed drop:

```math
d\mathcal B_N
+c_N\,\mathcal R_{sh,N}(t)\,dt
\le
dR_N^{legal},
\qquad
\mathcal B_N(t)\ge -C_N(u_0),
\qquad
\int_0^{T_*}dR_N^{legal}<\infty .
\tag{MBA.6}
```

Then summing `(MBA.6)` over the first-hitting intervals would give

```math
\sum_k c_N
\le
\mathcal B_N(0)-\inf_{t<T_*}\mathcal B_N(t)
+\int_0^{T_*}dR_N^{legal}
<\infty ,
\tag{MBA.7}
```

contradicting infinitely many unit-action bursts.

## 4. Installed storages do not yet supply the drop

The top-strain log storage is

```math
B_j=e_j
\left[\log{\lambda_+(S_{<j-C})\over\delta2^{2j}}\right]_+ .
\tag{MBA.8}
```

It satisfies the signed same-packet identity

```math
{d\over dt}B_j
+
e_j\lambda_+(S_{<j-C})
\mathbf 1_{\{\lambda_+(S_{<j-C})>\delta2^{2j}\}}
=
(m_j-d_j)L_j
+e_j{W_\lambda\over\lambda}.
\tag{MBA.9}
```

This identifies the correct same-packet channel for superheat residence, but
the right side is an exchange/loss component of the full material packet.  Its
positive part is not already bounded from original data.

The complete-frame trace-free identity gives

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+ .
\tag{MBA.10}
```

This proves orientation/admission: the primitive active direction must appear
as wave-covector compression or annular/collar-normal compression on the same
retained packet.  It does not by itself prove finite rectified variation of
those compression records.  Incompressibility gives the trace-free balance;
the missing estimate is the one-sided finite-action bound for the resulting
same-history compression action.

The weighted material-energy primitive has the same sign obstruction:

```math
{d\over dt}E_w+\nu D_w=m_w^{PLS}.
\tag{MBA.11}
```

Using \(-E_w\) pays one orientation, while the opposite orientation is the
recirculation side.  The installed recirculation packing closes the return
branch, but the one-way superheat branch remains exactly `(MBA.3)`.

## 5. Conclusion of this attempt

The minimal-burst method preserves the whole physical object and all installed
admission reductions.  It does not close the Gold theorem from the current
inputs.

It reduces the live theorem to the following precise invariant:

```math
\boxed{
\text{Find a bounded-below same-material depletion functional, or equivalent
direct no-free-upcrossing estimate, for }\mathcal R_{sh,N}.
}
\tag{MBA.12}
```

Equivalently, prove `(MBA.6)` or prove directly

```math
\int_0^{T_*}\mathcal R_{sh,N}(t)\,dt\le C_N(u_0).
\tag{MBA.13}
```

This is the remaining finite-action problem for the full same-material
participation-law-strain history.  It is not a source-reserve theorem, terminal
source theorem, pressure-only theorem, viscosity-only theorem, scalar endpoint
theorem, or finite-jet theorem.
