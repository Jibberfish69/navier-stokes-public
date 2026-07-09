---
theorem_id: forward-gold-native-current-fixed-annulus-passage-reduction-20260709
created: 2026-07-09
problem: navier-stokes
route: forward-gold / signed critical height / native increment current / record passage
status: proved-canonical-event-scaling-l3-passage-and-channel-domination-reduction; proposed-fourbody-currency-inheritance-refuted
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-height-native-increment-current-fixed-face-certificate-20260709.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-target1-exact-channel-flux-identity-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-channel-cell-bv-tightness-proof-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-perron-circulation-fourbody-coercivity-20260707.md
completion_truth: >-
  This note proves that the exact critical native current lives on a canonical
  pre-readout event space, is invariant as a spacetime measure under the
  Navier-Stokes critical rescaling, passes strongly under local L3 convergence
  on a fixed increment annulus, and retains the universal affine
  Vieillefosse-service floor there. It also gives the exact linear-slot channel
  partition and the measure inequality saying that the positive part of the
  total current is bounded by the sum of positive channel parts. Consequently
  record selection, scaling, and fixed-annulus compactness do not create a new
  ownership wall for this current. The proposed inheritance of an existing
  four-body bound is refuted: the native positive current is the production
  that raises the critical height, and domination by a finite original-data
  four-body measure is exactly the still-open positive-selection storage
  theorem. The channel partition does not prove that theorem.
---

# Native-current fixed-annulus passage

## 1. Canonical pre-readout event measure

For a smooth preterminal solution define, on

```math
\mathcal E
=
(0,T)\times\mathbb R_x^3\times
(\mathbb R_h^3\setminus\{0\}),
\tag{NCP.1}
```

the signed current

```math
d\nu_u(t,x,h)
=
-c_\Lambda
\frac{|\delta_hu(t,x)|^2
(\delta_hu(t,x)\cdot h)}{|h|^6}
\,dt\,dx\,dh.
\tag{NCP.2}
```

On every event compact

```math
K
=
I\times B_R\times
\{h:a\le|h|\le b\},
\qquad
0<a<b<\infty,
\tag{NCP.3}
```

`nu_u` is a finite signed Radon measure for `u in L^3` on the enlarged
space-time cylinder. It exists before any record interval, packet, sign, or
channel is selected. Its Hahn--Jordan packet

```math
\nu_u=\nu_u^+-\nu_u^-
\tag{NCP.4}
```

is therefore canonical on `E`. Restricting to a later measurable record event
commutes with this decomposition:

```math
(\nu_u\!\restriction E)^\pm
=
\nu_u^\pm\!\restriction E.
\tag{NCP.5}
```

Thus future record selection does not manufacture the positive carrier or lose
its negative partner; both are restrictions of one preexisting signed current.

## 2. Critical scaling is exact on the event space

For a center `(t_0,x_0)` and scale `r>0`, set

```math
u^{(r)}(s,y)
=
r\,u(t_0+r^2s,x_0+ry).
\tag{NCP.6}
```

Under

```math
(t,x,h)
=
(t_0+r^2s,x_0+ry,r\eta),
\tag{NCP.7}
```

the current density gains the factor `r^8`, while
`dt dx dh=r^8 ds dy d eta`. Hence

```math
d\nu_{u^{(r)}}(s,y,\eta)
=
d\nu_u(t,x,h)
\tag{NCP.8}
```

under the event-space bijection. The positive and negative parts commute with
this bijective pushforward. The current is therefore exactly scale native in
the full spacetime sense required by a normalized record passage.

## 3. Strong local L3 passage on a fixed annulus

Let `u_n -> u` strongly in `L^3(I x B_{R+b})`. Translation and Fubini give

```math
\delta_hu_n
\longrightarrow
\delta_hu
\quad\text{strongly in }
L^3(I\times B_R\times\{a\le|h|\le b\}).
\tag{NCP.9}
```

On the fixed annulus the kernel is bounded, and the cubic map satisfies

```math
\big||z|^2(z\cdot h)-|w|^2(w\cdot h)\big|
\le
C_b(|z|^2+|w|^2)|z-w|.
\tag{NCP.10}
```

Therefore

```math
\|\nu_{u_n}-\nu_u\|_{\mathcal M(K)}
\longrightarrow0,
\qquad
\|\nu_{u_n}^+-\nu_u^+\|_{\mathcal M(K)}
\longrightarrow0.
\tag{NCP.11}
```

The second convergence follows because positive-part projection is
one-Lipschitz for scalar densities. Thus no weak-limit sign loss occurs on a
fixed event annulus once the velocity passage is strong in local `L^3`.

## 4. Positive affine service survives on a fixed annulus

Suppose `u(y)=Ay+beta` on `B_{R+b}`, with `A=S+W`, `tr S=0`. On
`h=r theta`, the radial Jacobian cancels the `r^(-2)` native density, giving

```math
\nu_u^+(I\times B_R\times\{a\le|h|\le b\})
=
c_\Lambda |I|\,|B_R|\,(b-a)\,\mathcal B(A),
\tag{NCP.12}
```

where

```math
\mathcal B(A)
=
\int_{S^2}
[-|A\theta|^2(\theta\cdot A\theta)]_+\,d\theta.
\tag{NCP.13}
```

The universal affine floor from `(NIC.26)` yields

```math
\boxed{
\nu_u^+(K)
\ge
c_\Lambda |I|\,|B_R|\,(b-a)
\frac{8\pi}{15}
[-\operatorname{tr}(S^3)]_+ .
}
\tag{NCP.14}
```

By `(NCP.11)`, the same strict lower bound, up to an arbitrarily small error,
holds for every normalized sequence converging strongly in local `L^3` to this
affine tangent. The proof does not send `h` to zero and does not require a
localization shell at infinity.

## 5. Exact linear-slot channel partition

Let `{P_c}` be the gated Littlewood--Paley/helical resolution used for the
increment-cubic channel current. Define on a fixed event compact

```math
d\nu_{u,c}
=
-c_\Lambda
\frac{|\delta_hu|^2
(\delta_h(P_cu)\cdot h)}{|h|^6}
\,dt\,dx\,dh.
\tag{NCP.15}
```

The channel appears in the single linear slot. Hence, in the tested `L^3`
topology already used for the Duchon--Robert partition,

```math
\nu_u
=
\sum_c\nu_{u,c}.
\tag{NCP.16}
```

For every finite channel set `F`, the scalar Hahn inequality gives

```math
\left(\sum_{c\in F}\nu_{u,c}\right)^+
\le
\sum_{c\in F}\nu_{u,c}^+.
\tag{NCP.17}
```

The fixed-readout `L^3` tail passage then yields

```math
\boxed{
\nu_u^+
\le
\sum_c\nu_{u,c}^+
}
\tag{NCP.18}
```

on fixed event compacts, interpreted through the prelimit finite-readout
measures. Thus channelization cannot cancel or hide the positive native current;
the sum of positive channel carriers dominates it.

## 6. The proposed currency inheritance is the Gold theorem

The retained Perron/four-body note has only the conditional interface form

```math
dA_{4B}
\ge
c_A\sum_c\nu_{u,c}^+
\tag{NCP.19}
```

once the relevant positive channels have already been admitted as retained
four-body activity on the same record edge. It does not identify the native
critical-production channels with that activity and it does not prove a finite
original-data bound for their positive selections.

For the native current, raw ownership and the three-measure packet are no longer
separate hypotheses: `(NCP.1)`--`(NCP.5)` provide one global pre-readout event
space and its positive carrier, negative partner, and signed current. The exact
remaining theorem is therefore

```math
\texttt{NativeCriticalChannelToFourBodyCurrency.A:}
\qquad
dA_{4B}^{\rm retained}
\ge
c_A\sum_c\nu_{u,c}^+
\tag{NCP.20}
```

with the same normalized record restriction and with the weighted all-scale
tail assigned once. If `(NCP.20)` fails, the first failing line must be one of:

1. the native channel is not a channel counted by `dA_4B`;
2. the record restriction drops the canonical event coordinate;
3. the scale integral leaves the fixed normalized annulus;
4. strong local `L^3` or positive service fails in the normalized limit;
5. the original-data four-body storage is not finite.

This is not a technical final interface. It contains the missing Gold theorem.
Indeed, on pairwise disjoint critical-height record upcrossings `W_j`, the exact
height equation and `(NCP.2)` give

```math
H_{\rm crit}(b_j)-H_{\rm crit}(a_j)
+\nu\int_{W_j}\|\Lambda^{3/2}u\|_2^2\,dt
=
\nu_u(W_j\times\mathbb R_x^3\times(\mathbb R_h^3\setminus\{0\}))
\le
\nu_u^+(W_j\times\mathbb R_x^3\times(\mathbb R_h^3\setminus\{0\})).
\tag{NCP.21}
```

Consequently, `(NCP.20)` plus

```math
A_{4B}^{\rm retained}((0,T))\le C(u_0)<\infty
\tag{NCP.22}
```

would bound the sum of all record increments and exclude unbounded critical
height. That is precisely
`RecordNativeWorkMenuPositiveSelectionStorage.A`, not a consequence of the
linear-slot partition or the conditional Perron theorem. Defining `A_4B` to be
the right side of `(NCP.20)` makes domination tautological and leaves
`(NCP.22)` completely open.

The first exact failure is therefore the combined currency/storage line: no
proved field monovariant or dissipative identity dominates the positive native
production measure. The fixed-annulus identities remain valid strict
reductions, but no wall is deleted and Gold is not closed.
