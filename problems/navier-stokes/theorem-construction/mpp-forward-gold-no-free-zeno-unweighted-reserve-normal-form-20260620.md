# No-Free Zeno And Unweighted Reserve Normal Form

Date: 2026-06-20

## Status

Normal-form reduction complete.  This note does not prove the forward-gold
anti-atom theorem.  It identifies the exact relation between
`NoFreeTerminalZenoDonorChain.A`, endpoint uniform integrability, and
`UnweightedTerminalCriticalActionReserve.A`.

On the reduced donor-graph branch, no-free terminal Zeno is the endpoint
uniform-integrability theorem for the selected positive carrier produced by the
donor chain.  The global unweighted terminal critical-action reserve is a
stronger theorem that would kill this branch, but the donor-chain label itself
does not supply the global reserve.

## 1. Reduced donor-chain branch

Work after the finite signed pieces have been paid:

```math
\text{retained signed partners}
+
\text{legal exits}
+
\text{finite donor trees}
+
\text{entrance leaves}.
\tag{NZR.1}
```

The remaining branch is a same-fluid terminal chain

```math
P_0\leftarrow P_1\leftarrow P_2\leftarrow\cdots,
\qquad
r_m\downarrow0,
\qquad
t_m\uparrow T^\ast,
\tag{NZR.2}
```

with selected positive source mass on the heat-scale normalized packet.  Write
the normalized positive source marginal as

```math
a_m(s)
:=
\mu_m^{src,+}(B_1\times ds),
\qquad
-1\le s\le0.
\tag{NZR.3}
```

Normalize the retained branch by

```math
\int_{-1}^{0}a_m(s)\,ds\ge c_0>0.
\tag{NZR.4}
```

The first-pulse/no-parent reduction gives no selected source on fixed
preterminal strips:

```math
\lim_{m\to\infty}
\int_{-1}^{-a}a_m(s)\,ds
=0
\qquad
\text{for every }a>0.
\tag{NZR.5}
```

Thus any retained source mass in `(NZR.4)` is forced into the terminal face
\(s=0\) unless a negative-time source branch is visible.

## 2. Cumulative curve form

Define the terminal cumulative curve

```math
M_m(\theta)
:=
\int_{-\theta}^{0}a_m(s)\,ds,
\qquad
0\le\theta\le1.
\tag{NZR.6}
```

Endpoint uniform integrability on this selected carrier is

```math
\boxed{
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
M_m(\theta)
=0.
}
\tag{NZR.7}
```

Failure of `(NZR.7)` gives a subsequence and \(c_1>0\) with

```math
M_m(\theta_m)\ge c_1,
\qquad
\theta_m\downarrow0.
\tag{NZR.8}
```

Using `(NZR.5)`, this is exactly weak-star concentration on the terminal time
face:

```math
a_m(s)\,ds
\stackrel{*}{\rightharpoonup}
a_\ast\,\delta_{0}
\quad\text{with }a_\ast\ge c_1.
\tag{NZR.9}
```

The scalar endpoint layer is

```math
a_m(s)
=
\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{NZR.10}
```

It satisfies `(NZR.4)` and `(NZR.5)` and violates `(NZR.7)`.

## 3. Branch-local equivalence

On the reduced donor-chain branch, the no-free theorem is precisely:

```math
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}
\equiv
\text{endpoint UI `(NZR.7)' for the donor-produced selected carrier.}
}
\tag{NZR.11}
```

The forward direction is immediate: endpoint UI forbids positive source mass
from being carried only by terminal subwindows \([-\theta_m,0]\) with
\(\theta_m\downarrow0\).

The reverse direction is branch-local.  After `(NZR.1)`, every selected positive
source edge either has a retained signed partner, pays legal cost, terminates in
a finite donor tree, reaches an entrance leaf, or enters the infinite terminal
Zeno chain.  Once the first four cases are removed, failure of endpoint UI is
exactly the fifth case.

Thus the donor-chain theorem is not a new analytic supplier.  It is the
donor-graph form of the same terminal time-face atom.

## 4. Relation to the unweighted reserve

The unweighted terminal critical-action reserve is stronger.  In normalized
heat variables it asks for terminal tail depletion of an action \(A_m\), for
example

```math
A_m
=
\int_{-1}^{0}\int_{B_R}
\left(
|v_m|^3+|q_m|^{3/2}+|S(v_m)|^{5/2}
\right)\,dy\,ds,
\tag{NZR.12}
```

or an equivalent selected positive carrier action.  Its tail form is

```math
\lim_{N\to\infty}
\sum_{m:\ r_m\le2^{-N}} A_m
=0.
\tag{NZR.13}
```

When the selected source mass is dominated by the chosen action density, and
each retained donor-chain pulse has a lower action quantum

```math
A_m\ge c_A>0,
\tag{NZR.14}
```

then `(NZR.13)` forbids an infinite terminal donor chain.  Hence

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
+
\text{same-carrier source/action domination}
\Longrightarrow
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{NZR.15}
```

The converse is not a global theorem.  Branch-local no-free Zeno only rules out
the endpoint atom produced by the reduced donor chain.  It does not by itself
prove the full unweighted action Carleson reserve over every selected terminal
packet family.

## 5. Why physical ledgers still miss the branch

The physical material ledger controls radius-weighted quantities.  For a heat
packet of radius \(r_m\),

```math
W_m^{phys}=r_mW_m^{ren},
\qquad
D_m^{phys}=r_mD_m^{ren},
\qquad
E_m^{phys}=r_mE_m^{ren}.
\tag{NZR.16}
```

Thus a Zeno schedule with

```math
r_m=2^{-m},
\qquad
W_m^{ren}=1
\tag{NZR.17}
```

has

```math
\sum_m r_mW_m^{ren}<\infty
\tag{NZR.18}
```

while

```math
\sum_m W_m^{ren}=\infty.
\tag{NZR.19}
```

This is the same gap as the endpoint layer `(NZR.10)`: finite physical or
\(L^1_s\) mass does not imply terminal uniform integrability.

## 6. Exact remaining suppliers

After this normal form, every forward-gold closure of the donor-chain branch
must prove one of the following on the actual selected carrier:

```math
\boxed{
\begin{gathered}
\text{SelectedCarrierEndpointUI.A},\\
\text{TerminalMovingPacketTraceModulus.A},\\
\text{TerminalSourceReverseHolder.A or another super-}L^1\text{ source law},\\
\text{SourceSquareReserve.A plus selected source/action domination},\\
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{or rigid Zeno production plus source-residue Liouville.}
\end{gathered}
}
\tag{NZR.20}
```

Finite donor accounting, lobe readout enrichment, signed endpoint coherence,
and material participation visibility are already represented in `(NZR.1)` and
`(NZR.16)`.  They do not remove the endpoint atom without one of `(NZR.20)`.

## Verdict

`NoFreeTerminalZenoDonorChain.A` is the branch-local endpoint UI theorem for
the donor-produced selected positive carrier.  It is killed by the global
unweighted reserve after same-carrier domination, and it is produced by failure
of endpoint UI after finite donor/legal alternatives are removed.

The forward-gold proof has no remaining smaller donor-graph target at this
resolution.  New gold progress must prove an endpoint modulus, a same-carrier
source-square or no-waste reserve, or rigid Zeno source-residue evacuation.
