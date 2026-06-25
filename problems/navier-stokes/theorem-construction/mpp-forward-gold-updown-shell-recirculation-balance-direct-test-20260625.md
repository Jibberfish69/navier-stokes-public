---
theorem_id: forward-gold-updown-shell-recirculation-balance-direct-test-20260625
status: exact-updown-recirculation-balance-installed; remaining-positive-clock-is-same-fluid-backscatter-chatter
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Sharpens the no-free-upward-transfer target after the signed shell reservoir
  identity. For each active high shell, positive same-material pump input is
  exactly stored shell growth plus viscous residence plus same-fluid downward
  transfer. Therefore infinite positive pump with finite storage and finite
  viscous residence is possible only as infinite up/down recirculation of the
  same shell energy. This eliminates the vague reservoir language: the live
  producer is a no-infinite-backscatter-chatter theorem for the full
  pressure-viscosity-incompressibility-velocity material packet. Any proof must
  charge that chatter by viscosity at high shell, by pressure-strain/coefficient
  variation, or by a bounded-below material storage; shell energy and signed
  transfer alone do not.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shell-transfer-reservoir-identity-and-rectified-recirculation-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-weighted-material-energy-identity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-net-payback-vs-total-annular-action-closure-20260625.md
---

# Up-Down Shell Recirculation Balance Direct Test

Date: 2026-06-25

## 0. Object

The object is one original smooth material history.  The shell-transfer
identity already proved that upward feed is attached to the same fluid.  This
note asks what remains if the positive upward feed is still not integrable.

The exact answer is: repeated up/down recirculation of the same shell energy.

## 1. One active shell balance

Let \(e_j(t)\) be the material energy in one active shell, with the continuation
weight already included if desired:

```math
e_j(t)
:=
{1\over2}w_j\|v_j(t)\|_{L^2_a}^2 .
\tag{UDR.1}
```

The material shell equation gives a signed balance of the form

```math
{d\over dt}e_j(t)+d_j(t)
=
m_j(t),
\tag{UDR.2}
```

where \(d_j(t)\ge0\) is the same-shell viscous residence/loss and \(m_j(t)\) is
the signed pressure-incompressibility-coefficient-viscosity interface input
for that shell.

Split the signed input into positive and negative parts:

```math
p_j(t)=[m_j(t)]_+,
\qquad
n_j(t)=[-m_j(t)]_+.
\tag{UDR.3}
```

Then `(UDR.2)` is exactly

```math
{d\over dt}e_j(t)+d_j(t)
=
p_j(t)-n_j(t).
\tag{UDR.4}
```

Integrating on any interval \(I=(a,b)\) gives

```math
\int_I p_j(t)\,dt
=
e_j(b)-e_j(a)
+
\int_I d_j(t)\,dt
+
\int_I n_j(t)\,dt .
\tag{UDR.5}
```

This is the precise up/down bookkeeping.  Positive shell feed is not free:
it is stored, dissipated, or returned through the negative part of the same
interface.

## 2. What viscosity pays

For a fixed material chart with retained ellipticity,

```math
d_j(t)
\ge
c\nu\,2^{2j}e_j(t)
\tag{UDR.6}
```

up to the already-counted coefficient/collar commutators of the same packet.
Thus any feed that stays in shell \(j\) for positive heat-scale residence pays
viscous loss.

The only way to have large positive input without large stored energy or
viscous residence is for the input to be returned quickly:

```math
\int_I p_j\gg 1,
\qquad
\sup_I e_j<\infty,
\qquad
\int_I d_j<\infty
\quad\Longrightarrow\quad
\int_I n_j\gg 1.
\tag{UDR.7}
```

So the remaining case is not a missing source.  It is same-fluid backscatter:
energy is pushed upward and then pushed downward again through the same
pressure-strain interface.

## 3. Summing active shells

Let \(J(t)\) be a terminal active shell range and define

```math
P_J(I)=\int_I\sum_{j\in J(t)}p_j(t)\,dt,
\qquad
N_J(I)=\int_I\sum_{j\in J(t)}n_j(t)\,dt.
\tag{UDR.8}
```

Summing `(UDR.5)` gives

```math
P_J(I)
=
\Delta_I E_J
+
D_J(I)
+
N_J(I)
+
R_J^{switch}(I),
\tag{UDR.9}
```

where \(R_J^{switch}\) is only the cost of changing the active shell selector.
For a transported same-material selector, this switching term is a collar/frame
term and belongs to the same pressure-viscosity-incompressibility-velocity
packet.

Thus finite storage and finite viscous residence reduce the problem to

```math
P_J(I)<\infty
\quad\text{unless}\quad
N_J(I)=\infty
\text{ or }R_J^{switch}(I)=\infty .
\tag{UDR.10}
```

In plain terms: infinite positive upward feed must be matched by infinite
downward return or infinite selector/material-frame motion.

## 4. The exact remaining physical theorem

The no-free-upward-transfer theorem is now exactly a no-infinite-recirculation
theorem:

```math
\boxed{
\int_0^{T_*}\sum_j [m_j(t)]_+\,dt<\infty .
}
\tag{UDR.11}
```

By `(UDR.5)`, this follows once the same material packet proves

```math
\int_0^{T_*}\sum_j [-m_j(t)]_+\,dt<\infty
\tag{UDR.12}
```

or, equivalently, once every repeated up/down sign change of \(m_j\) is charged
to one of:

```math
\text{high-shell viscous residence,}
\tag{UDR.13}
```

```math
\text{pressure-strain/coefficient variation,}
\tag{UDR.14}
```

```math
\text{transported collar/frame variation,}
\tag{UDR.15}
```

or

```math
\text{a bounded-below same-material storage drop.}
\tag{UDR.16}
```

This is not a new detached obstruction.  It is the same annular payback story
written without losing the net-versus-total distinction.  If the spike keeps
being fed at the active shell while storage and viscous residence stay finite,
the surrounding fluid must be sending the same energy back down through the
same pressure-strain interface.  The unfinished producer is the exact theorem
that such infinite up/down backscatter chatter has finite total action in the
original smooth material history.

## 5. Consequence

The route is now narrower than "prove a clock."  It is:

```math
\boxed{
\text{prove finite rectified variation of the same-shell interface }
m_j(t)
\text{ along the original material history.}
}
\tag{UDR.17}
```

The signed shell reservoir and viscous residence law already prove attachment.
They reduce the unsolved part to total up/down recirculation of the moving
pressure-strain interface.  Any future estimate that does not control
`(UDR.17)` is only a diagnostic coordinate, not the gold-route producer.
