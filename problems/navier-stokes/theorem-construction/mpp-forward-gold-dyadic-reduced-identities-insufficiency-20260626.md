---
theorem_id: forward-gold-dyadic-reduced-identities-insufficiency-20260626
status: proof-audit-installed-reduced-identities-do-not-force-finite-full-action
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exhaustive-full-pls-clock-pivot-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-pls-finite-action-minimal-burst-attempt-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-logweighted-interface-escalation-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
---

# Dyadic Reduced-Identities Insufficiency

This note tests whether the currently installed reduced identities already
force finite full same-material action.  They do not.

The test is deliberately narrower than Navier--Stokes.  It keeps exactly the
reduced scalar structure that the current Gold surface has isolated after the
complete-frame, Hodge, subheat, and recirculation reductions.  The point is to
show that those reductions alone cannot imply

```math
\int_0^{T_*}d\Omega_N^{PLS,full}<\infty .
\tag{DRI.1}
```

Here the notation \(d\Omega_N^{PLS,full}\) is only the legacy symbol for the
full same-material participation-law-strain action.

## 1. Reduced action model

Let \(T_*=1\).  Choose disjoint intervals

```math
I_k=(1-2^{-k},\,1-2^{-k}+2^{-4k}),
\qquad
j_k=k .
\tag{DRI.2}
```

On \(I_k\), put one active shell energy

```math
e_{j_k}(t)=2^{-4k},
\tag{DRI.3}
```

and choose the material rate

```math
\Theta_{j_k}^{mat}(t)=2^{4k}.
\tag{DRI.4}
```

All other shells are zero.  For large \(k\),

```math
\Theta_{j_k}^{mat}(t)=2^{4k}>\delta 2^{2j_k},
\tag{DRI.5}
```

so every active interval is in the superheat branch.

The residence on each interval is

```math
\int_{I_k}
\Theta_{j_k}^{mat}(t)e_{j_k}(t)\,dt
=
\int_{I_k}1\,dt
=2^{-4k}.
\tag{DRI.6}
```

This version is finite, so it is not yet the countermodel.  To make unit
bursts while keeping the shell energy small, set instead

```math
\Theta_{j_k}^{mat}(t)=2^{8k}.
\tag{DRI.7}
```

Then

```math
\int_{I_k}
\Theta_{j_k}^{mat}(t)e_{j_k}(t)\,dt
=
2^{8k}2^{-4k}2^{-4k}=1.
\tag{DRI.8}
```

Thus the reduced full-action measure has infinite total mass:

```math
\sum_k
\int_{I_k}
\Theta_{j_k}^{mat}(t)e_{j_k}(t)\,dt
=\infty .
\tag{DRI.9}
```

At the same time the instantaneous \(L^2\)-type energy is small:

```math
\sum_j e_j(t)\le 2^{-4k}
\quad\text{on }I_k.
\tag{DRI.10}
```

The model therefore has the exact terminal shape that the Gold route has been
trying to exclude: small raw energy at each active shell, but order-one
scale-normalized material action on infinitely many terminal samples.

## 2. Compatibility with the reduced dyadic energy identity

Use the scalar shell identity

```math
{d\over dt}e_j+c\nu2^{2j}e_j=m_j+r_j .
\tag{DRI.11}
```

Inside each \(I_k\), take \(e_{j_k}\) constant and set

```math
m_{j_k}(t)=c\nu2^{2j_k}e_{j_k}
+\Theta_{j_k}^{mat}(t)e_{j_k}(t),
\qquad
r_{j_k}=0 .
\tag{DRI.12}
```

Smooth the endpoints of \(I_k\) with transition layers whose total contribution
is summable.  Then the reduced energy identity holds, the subheat branch is
empty, and there is no return/recirculation branch.  All positive action is
one-way superheat residence.

This proves that the energy identity plus high-shell viscous damping does not
force finite full action once the active material rate outruns heat damping.

## 3. Compatibility with complete-frame admission

On each active interval choose a trace-free symmetric matrix

```math
S_k=\operatorname{diag}(2^{8k},-2^{8k},0)
\tag{DRI.13}
```

in the retained complete frame \((p,\widehat\xi,n)\), with \(p\) in the
positive direction and \(\widehat\xi\) in the negative direction.  Then

```math
[p\cdot S_kp]_+
=
[-\widehat\xi\cdot S_k\widehat\xi]_+,
\qquad
p\cdot S_kp+\widehat\xi\cdot S_k\widehat\xi+n\cdot S_kn=0 .
\tag{DRI.14}
```

So the complete-frame trace-free payment identity is satisfied exactly.  The
positive primitive pump is admitted into transverse compression on the same
packet.  The transverse compression history is still infinite in total because
the model repeats unit superheat action on infinitely many terminal intervals.

This proves that complete-frame admission is not the missing finite-action
theorem.

## 4. Compatibility with finite log-power strain storages

Let

```math
L_k=\log{\Theta_{j_k}^{mat}\over\delta2^{2j_k}}
\simeq 6k\log2 .
\tag{DRI.15}
```

For any fixed \(p\ge0\),

```math
e_{j_k}L_k^p
=
2^{-4k}(6k\log2)^p
\to0 .
\tag{DRI.16}
```

Thus finite log-power storage can remain bounded or even vanish at the terminal
samples while the unweighted superheat action has one unit on every active
interval.  This is the same degree-shift obstruction recorded in the
log-weighted interface escalation audit, expressed as an explicit reduced
model.

Finite log-power strain storage is therefore not a hidden noncircular action
depletion invariant.

## 5. Consequence for the Gold proof

The reduced model is not claimed to be a Navier--Stokes solution.  Its role is
more precise: it proves that the currently installed reduced identities are
insufficient by themselves.

The missing theorem must use a genuinely Navier--Stokes structural constraint
that is absent from the reduced dyadic model.  In the language of the active
Gold surface, it must prove one of:

```math
\exists\,\mathcal B_N(t)\ge -C_N(u_0)
\quad\text{with}\quad
d\mathcal B_N+c_N\mathcal R_{sh,N}(t)\,dt
\le dR_N^{legal},
\tag{DRI.17}
```

or

```math
\int_0^{T_*}\mathcal R_{sh,N}(t)\,dt\le C_N(u_0).
\tag{DRI.18}
```

The structural input cannot be any of the following by itself:

- scalar dyadic energy plus heat damping;
- complete-frame trace-free admission;
- finite log-power top-strain storage;
- pressure/collar graph compatibility;
- subheat absorption;
- recirculation closure.

Those inputs all hold in the reduced model or are explicitly bypassed by the
one-way superheat construction.  The next proof attempt must therefore attack
the missing Navier--Stokes-only structure of the one-way superheat material
residence, not a scalar or orientation proxy.

## 6. Result

The finite full same-material action theorem remains open.  This note narrows
what a successful proof must add: a non-scalar Navier--Stokes structural
constraint on one-way superheat material residence, strong enough to rule out
the dyadic terminal unit-burst model after all already-installed sector
reductions have been applied.
