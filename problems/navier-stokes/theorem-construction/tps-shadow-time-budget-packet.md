# TPS Shadow-Time Budget Packet

## Status

Primary weak-endpoint dynamic packet.

This note records the weakest currently honest theorem target suggested by the
selector and packet geometry: not uniform-in-time pair separation, but
vanishing shadow-time occupancy on asymptotically full active-pair mass.

Its role is to target the time-averaged overlap side of the dynamic gate
directly.

The canonical theorem-facing Navier--Stokes surfaces now place the live route on
the TPS strong/defect bridge with `SG.4` as the exact unresolved obstruction.
This packet is the weak TPS dynamic subroute only, and it remains subordinate to
the lane-wide unsafe-overclaim guard.

## Purpose

The stronger selector routes seek a pointwise-in-time transverse lower bound
that forces pairs to stay out of the shadow tube altogether. That is sufficient,
but it is stronger than the packet endpoint actually needs.

The weaker endpoint is:

```math
\boxed{
\text{good active pairs spend only }o(T_J)\text{ time in the }\sigma_J\text{-shadow tube.}
}
\tag{ST.0}
```

This does **not** by itself imply the existential bad-set statement
`\mu_j(E_J^{ns}(\sigma_J))/\mu_j(\mathcal C_j)\to 0`. But it is enough to force
vanishing time-averaged packet overlap, which is the right scale for
high-high packet remainders.

The formal coupling between this weak route and the stronger no-entry barrier
route is now recorded separately in
[tps-shadow-barrier-formal-closure-packet.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-shadow-barrier-formal-closure-packet.md):
the strong side gives no-entry on the barrier subfamily, while the weak side
records all remaining shadow episodes exactly through the averaged pair-time
ledger.

## Active-pair shadow occupancy

Let `\mathcal A_J^{act}` be the good active-pair domain, equipped with the
active-pair graph measure

```math
d\nu_J^{act}(a,b)
:=
\mathbf 1_{\{b\sim a\}}\,d\mu_j(a)\,d\#_{N(a)}(b).
\tag{ST.1}
```

For each time `t`, define the active-pair shadow slice

```math
\mathcal S_J(t,\sigma_J)
:=
\big\{
(a,b)\in \mathcal A_J^{act}:
|X(a,t)-X(b,t)|\le \sigma_J
\big\}.
\tag{ST.2}
```

The natural occupancy quantity is

```math
\mathfrak O_J(\sigma_J)
:=
\frac{1}{T_J\,\mu_j(\mathcal C_j)}
\int_0^{T_J}\nu_J^{act}\big(\mathcal S_J(t,\sigma_J)\big)\,dt.
\tag{ST.3}
```

This is the normalized pair-time spent in the shadow tube.

## Packet overlap packet

Define the normalized time-averaged active-pair overlap functional

```math
\overline{\Gamma}_J
:=
\frac{1}{T_J\,\mu_j(\mathcal C_j)}
\int_0^{T_J}
\int_{\mathcal A_J^{act}}
\big|
\langle U_j(t)\phi_a,U_j(t)\phi_b\rangle
\big|
\,d\nu_J^{act}(a,b)\,dt.
\tag{ST.4}
```

This is the correct overlap functional for a shadow-time budget theorem.

If one later wants to attach parabolic observability or unique-continuation
tools to this averaged overlap route, the canonical PDE object is now the
two-point pair defect `W_J` recorded in
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md).
The present note itself remains kinematic: it converts shadow occupancy into
overlap decay without using that defect PDE.

## Thresholded de-averaging

Define the selector-local shadow budget by

```math
\Theta_J(a)
:=
\frac{1}{T_J\,\max\{1,N(a)\}}
\sum_{b\sim a}
\int_0^{T_J}
\mathbf 1_{\{|X(a,t)-X(b,t)|\le \sigma_J\}}\,dt,
\tag{ST.4a}
```

where `N(a):=\#\{b:b\sim a\}` and `\Theta_J(a):=0` when `N(a)=0`.

Then

```math
\int_{\mathcal C_j}\Theta_J(a)\,d\mu_j(a)
\le
C_\Theta
\mathfrak O_J(\sigma_J)\,\mu_j(\mathcal C_j).
\tag{ST.4b}
```

Hence for every threshold `\varepsilon_J>0`,

```math
\mu_j\big(\{\Theta_J>\varepsilon_J\}\big)
\le
C\frac{\mathfrak O_J(\sigma_J)}{\varepsilon_J}\,\mu_j(\mathcal C_j).
\tag{ST.4c}
```

Choosing

```math
\varepsilon_J:=\mathfrak O_J(\sigma_J)^{1/2}
\tag{ST.4d}
```

produces a refined good family `G'_J\subseteq \mathcal C_j` with vanishing
complement and

```math
\Theta_J(a)\le \mathfrak O_J(\sigma_J)^{1/2}
\qquad\text{for all }a\in G'_J.
\tag{ST.4e}
```

## Theorem TPS-shadow-time-budget

Assume there is a decomposition

```math
\mathcal A_J^{act}
=
\mathfrak B_J\cup\bigcup_{r\in\mathcal R_J}\mathfrak G_{J,r}
\tag{ST.5}
```

such that

```math
\frac{\nu_J^{act}(\mathfrak B_J)}{\mu_j(\mathcal C_j)}\to 0,
\tag{ST.6}
```

and for each good family `\mathfrak G_{J,r}` there exists a time budget
`\tau_J\ge 0` with

```math
\frac{\tau_J}{T_J}\to 0
\tag{ST.7}
```

so that every pair `(a,b)\in\mathfrak G_{J,r}` satisfies

```math
\Big|
\big\{
t\in[0,T_J]:
|X(a,t)-X(b,t)|\le \sigma_J
\big\}
\Big|
\le
\tau_J.
\tag{ST.8}
```

Assume also the packet-separation conversion law and packet overlap decay:
there exists `R_J\to\infty` and, outside the shadow tube,

```math
|X(a,t)-X(b,t)|>\sigma_J
\Longrightarrow
d_g(z_a(t),z_b(t))\ge R_J,
\tag{ST.9}
```

and

```math
\sup_{0\le t\le T_J}
\big|
\langle U_j(t)\phi_a,U_j(t)\phi_b\rangle
\big|
\le C_N R_J^{-N}
\qquad
\text{whenever }d_g(z_a(t),z_b(t))\ge R_J.
\tag{ST.10}
```

Then

```math
\mathfrak O_J(\sigma_J)\to 0
\tag{ST.11}
```

and

```math
\overline{\Gamma}_J\to 0.
\tag{ST.12}
```

### Proof

For the occupancy quantity, split the active-pair domain into the bad residue
`\mathfrak B_J` and the good families.

On the bad residue,

```math
\frac{1}{T_J\,\mu_j(\mathcal C_j)}
\int_0^{T_J}\nu_J^{act}\big(\mathcal S_J(t,\sigma_J)\cap \mathfrak B_J\big)\,dt
\le
\frac{\nu_J^{act}(\mathfrak B_J)}{\mu_j(\mathcal C_j)}
\to 0.
\tag{ST.13}
```

On each good family `\mathfrak G_{J,r}`, the shadow-time budget `(ST.8)` gives

```math
\int_0^{T_J}
\mathbf 1_{\{|X(a,t)-X(b,t)|\le \sigma_J\}}\,dt
\le \tau_J
\qquad
\text{for every }(a,b)\in\mathfrak G_{J,r}.
\tag{ST.14}
```

Integrating over `\mathfrak G_{J,r}` and summing in `r`,

```math
\frac{1}{T_J\,\mu_j(\mathcal C_j)}
\int_0^{T_J}
\nu_J^{act}\big(\mathcal S_J(t,\sigma_J)\cap \textstyle\bigcup_r\mathfrak G_{J,r}\big)\,dt
\le
\frac{\tau_J}{T_J}
\frac{\nu_J^{act}(\mathcal A_J^{act})}{\mu_j(\mathcal C_j)}.
\tag{ST.15}
```

The finite-valence selector graph gives
`\nu_J^{act}(\mathcal A_J^{act})/\mu_j(\mathcal C_j)\le M`, so `(ST.7)` yields
`(ST.11)`.

For the overlap functional, use the trivial bound by `1` on the shadow region
and `(ST.10)` on the nonshadow region:

```math
\big|
\langle U_j(t)\phi_a,U_j(t)\phi_b\rangle
\big|
\le
\mathbf 1_{\{|X(a,t)-X(b,t)|\le \sigma_J\}}
+
C_N R_J^{-N}.
\tag{ST.16}
```

Integrating `(ST.16)` over pair-time and normalizing gives

```math
\overline{\Gamma}_J
\le
\mathfrak O_J(\sigma_J)
+
C_N R_J^{-N}
\frac{\nu_J^{act}(\mathcal A_J^{act})}{\mu_j(\mathcal C_j)}.
\tag{ST.17}
```

By `(ST.11)`, `R_J\to\infty`, and finite valence, the right-hand side tends to
`0`. Hence `(ST.12)`.

### Corollary TPS-shadow-time-budget-stripwise-occupancy-ledger

Under the hypotheses `(ST.5)`-`(ST.8)`, the normalized occupancy itself admits
the exact stripwise bound

```math
T_J\,\mu_j(\mathcal C_j)\,\mathfrak O_J(\sigma_J)
\le
T_J\,\nu_J^{act}(\mathfrak B_J)
+
\tau_J\,\nu_J^{act}(\mathcal A_J^{act}).
\tag{ST.12a}
```

Consequently, if a route-local strip budget `\mathcal B_J^{occ}(I)\ge 0`
satisfies

```math
T_J\,\nu_J^{act}(\mathfrak B_J)
+
\tau_J\,\nu_J^{act}(\mathcal A_J^{act})
\le
C_{\mathrm{occ}}\,
\mathcal B_J^{occ}(I),
\tag{ST.12b}
```

then the active-pair shadow occupancy is controlled by the same budget:

```math
T_J\,\mu_j(\mathcal C_j)\,\mathfrak O_J(\sigma_J)
\le
C_{\mathrm{occ}}\,
\mathcal B_J^{occ}(I).
\tag{ST.12c}
```

So the weak endpoint packet does not only give the asymptotic statement
`\mathfrak O_J(\sigma_J)\to 0`; it also gives an exact finite-strip ledger once
the bad-residue mass and the per-pair shadow-time cost are priced.

**Proof.**
Add `(ST.13)` and `(ST.15)`, then multiply by `T_J\,\mu_j(\mathcal C_j)`. This
gives `(ST.12a)`. Statement `(ST.12c)` is the direct substitution of
`(ST.12b)` into `(ST.12a)`. ∎

## Scale-local packet-decay realization

The abstract step `(ST.9)`-`(ST.10)` closes on the live shell schedule once the
packet metric is tied explicitly to physical separation.

### Proposition TPS-shadow-to-overlap-scale

Assume there is a frequency-collar remainder `\mathrm{collar}^{freq}_J\ge 0`
and a packet-overlap remainder `\mathrm{collar}_J\ge 0` such that on the good
active-pair domain

```math
d_g(z_a(t),z_b(t))
\ge
c_g\,2^{J/2}|X(a,t)-X(b,t)|
-\mathrm{collar}^{freq}_J,
\tag{ST.17a}
```

and

```math
\big|
\langle U_J(t)\phi_a,U_J(t)\phi_b\rangle
\big|
\le
C_N\big(1+d_g(z_a(t),z_b(t))\big)^{-N}
+
\mathrm{collar}_J
\qquad (N\ge 1).
\tag{ST.17b}
```

Assume further that

```math
2^{J/2}\sigma_J\to\infty,
\qquad
\mathrm{collar}^{freq}_J=o(2^{J/2}\sigma_J),
\qquad
\mathrm{collar}_J\to 0.
\tag{ST.17c}
```

Then outside the shadow tube `|X(a,t)-X(b,t)|\le \sigma_J`,

```math
\big|
\langle U_J(t)\phi_a,U_J(t)\phi_b\rangle
\big|
\le
C_N
\big(1+2^{J/2}\sigma_J\big)^{-N}
+
\mathrm{collar}_J.
\tag{ST.17d}
```

Consequently,

```math
\overline{\Gamma}_J
\le
C_\Gamma
\mathfrak O_J(\sigma_J)
+
\big(1+2^{J/2}\sigma_J\big)^{-N}
+
\mathrm{collar}_J.
\tag{ST.17e}
```

In particular, if `\mathfrak O_J(\sigma_J)\to 0`, then `(ST.17c)` implies
`\overline{\Gamma}_J\to 0`.

### Proof

If `|X(a,t)-X(b,t)|>\sigma_J`, then `(ST.17a)` and `(ST.17c)` give
`d_g(z_a(t),z_b(t))\ge c_g2^{J/2}\sigma_J`, so `(ST.17b)` yields `(ST.17d)`.
Inside the shadow tube use the trivial bound by `1`. Averaging over pair-time
gives `(ST.17e)`.

## Coarse-flow / HFG specialization

The hybrid branch from
[tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md)
and
[tps-coarse-flow-pair-gap-theorem-candidate.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-coarse-flow-pair-gap-theorem-candidate.md)
fits this packet naturally.

Define the coarse shadow occupancy by

```math
\mathfrak O_J^{coarse}(\rho)
:=
\frac{1}{T_J\,\mu_j(\mathcal C_j)}
\int_0^{T_J}
\nu_J^{act}\big(
\{(a,b):|X_{\le J}(a,t)-X_{\le J}(b,t)|\le \rho\}
\big)\,dt.
\tag{ST.18A}
```

Writing `\mathfrak O_J^{act}(\sigma_J):=\mathfrak O_J(\sigma_J)`, the exact
pair-level tube enlargement is

```math
|X(a,t)-X(b,t)|\le \sigma_J
\Longrightarrow
|X_{\le J}(a,t)-X_{\le J}(b,t)|
\le
\sigma_J+2\delta_J(t).
\tag{ST.18B}
```

Hence

```math
\mathfrak O_J^{act}(\sigma_J)
\le
\mathfrak O_J^{coarse}
\big(\sigma_J+2\|\delta_J\|_{L_t^\infty}\big).
\tag{ST.18C}
```

So the bridge closes once

```math
\|\delta_J\|_{L_t^\infty}=o(\sigma_J).
\tag{ST.18D}
```

## Limitation

Small shadow-time occupancy does **not** by itself imply

```math
\frac{\mu_j(E_J^{ns}(\sigma_J))}{\mu_j(\mathcal C_j)}\to 0.
\tag{ST.20}
```

Every pair could enter the shadow tube briefly while still satisfying
`(ST.8)`. So the occupancy route should be treated as a direct path to
time-averaged overlap collapse, not as a shortcut to the existential bad-set
theorem unless an extra one-shot / no-return hypothesis is added.

## Meaning

This packet makes the strategic improvement precise:

```math
\boxed{
\text{the primary weak endpoint is vanishing shadow-time occupancy, not full uniform nonshadowing.}
}
\tag{ST.21}
```

That is the weakest dynamic theorem currently visible that still acts directly
on the packet overlap side.

## Corrected coarse-flow theorem

The naive theorem sketch

```math
\dot\Phi_J\ge \lambda_J\Phi_J-\epsilon_J
\quad\text{on }\{\Phi_J\le 2\sigma_J\}
```

is not strong enough by itself to force a shadow-time budget for the true flow.
There are three gaps:

1. near `\Phi_J=0` it does not force positive escape speed;
2. it does not control how many times a pair can re-enter the shadow tube;
3. small shadow-time occupancy does not by itself imply the existential bad-set
   theorem `E_J^{ns}`.

The corrected theorem is the following.

### Theorem TPS-coarse-shadow-time-budget-legacy

Let

```math
\Phi_J(t;a,b):=|X_{\le J}(a,t)-X_{\le J}(b,t)|
\tag{CS.1}
```

be the coarse-flow pair gap on the good active-pair domain.

Assume:

1. **scale-local coarse repulsion**

```math
\dot\Phi_J(t;a,b)
\ge
c_0\lambda_J\sigma_J-\epsilon_J
\qquad
\text{whenever }\Phi_J(t;a,b)\le 2\widetilde\sigma_J,
\tag{CS.2}
```

for some `c_0>0`, where

```math
\widetilde\sigma_J:=\sigma_J+2\sup_{0\le t\le T_J}\delta_J(t);
\tag{CS.3}
```

2. **small repulsion error**

```math
\frac{\epsilon_J}{\lambda_J\sigma_J}\to 0;
\tag{CS.4}
```

3. **controlled re-entry count**

```math
\text{each good active pair }(a,b)\text{ has at most }N_J
\text{ connected shadow entries into }\{\Phi_J\le 2\widetilde\sigma_J\},
\tag{CS.5}
```

with

```math
\frac{N_J}{\lambda_J T_J}\to 0;
\tag{CS.6}
```

4. **actual/coarse deviation**

```math
\sup_{0\le t\le T_J}\delta_J(t)=o(\sigma_J).
\tag{CS.7}
```

Then every good active pair obeys the actual-flow shadow-time bound

```math
\Big|
\big\{
t\in[0,T_J]:
|X(a,t)-X(b,t)|\le \sigma_J
\big\}
\Big|
\le
\tau_J,
\qquad
\tau_J\le C_\tau \frac{N_J}{\lambda_J},
\tag{CS.8}
```

and therefore

```math
\mathfrak O_J(\sigma_J)\to 0.
\tag{CS.9}
```

If the packet-separation conversion law and packet overlap decay `(ST.9)`-`(ST.10)`
hold, then

```math
\overline{\Gamma}_J\to 0.
\tag{CS.10}
```

### Proof

If `|X(a,t)-X(b,t)|\le \sigma_J`, then by the deviation estimate,

```math
\Phi_J(t;a,b)\le \widetilde\sigma_J.
\tag{CS.11}
```

So actual shadowing sits inside the coarse shadow region.

Fix one good active pair and one connected component `I` of the set
`\{t:\Phi_J(t;a,b)\le 2\widetilde\sigma_J\}`. By continuity there is an entry
time `t_I\in\overline I` with `\Phi_J(t_I;a,b)\le \widetilde\sigma_J`. On `I`,
for large `J`, `(CS.2)`-`(CS.4)` give

```math
\dot\Phi_J(t;a,b)\ge \tfrac12 c_0\lambda_J\sigma_J.
\tag{CS.12}
```

Hence the time needed to cross the interval
`[\widetilde\sigma_J,2\widetilde\sigma_J]` is at most

```math
|I|
\le
\frac{2\widetilde\sigma_J-\widetilde\sigma_J}{\tfrac12 c_0\lambda_J\sigma_J}
\le
C_I
\frac{1}{\lambda_J},
\tag{CS.13}
```

because `\widetilde\sigma_J/\sigma_J\to 1` by `(CS.7)`.

There are at most `N_J` such components by `(CS.5)`, so

```math
\Big|
\big\{
t:\Phi_J(t;a,b)\le \widetilde\sigma_J
\big\}
\Big|
\le
C_T
\frac{N_J}{\lambda_J}.
\tag{CS.14}
```

By `(CS.11)`, the actual shadow-time is bounded by the left-hand side of
`(CS.14)`, which gives `(CS.8)`. Then `(CS.9)` follows from the finite-valence
normalization exactly as in `(ST.15)`, and `(CS.10)` follows from `(ST.17)`.

## Interpretation

This is the first mathematically honest coarse-flow closure theorem suggested by
the selector route:

```math
\boxed{
\text{scale-local coarse repulsion}
+
\text{controlled re-entry count}
+
\delta_J=o(\sigma_J)
\Longrightarrow
\text{vanishing shadow-time occupancy.}
}
\tag{CS.15}
```

It is now superseded by the corrected averaged closure below, where the
re-entry count is replaced by a coarea-in-time strip estimate and the dynamic
contract is moved onto the averaged ledger.

So the exact open burden at the weak endpoint is no longer “prove full
nonshadowing.” It is:

```math
\boxed{
\text{prove a coarse strip-speed lower bound and the averaged packet-decay ledger on good active pairs.}
}
\tag{CS.16}
```

### Theorem TPS-coarse-shadow-time-budget

Let

```math
\Phi_J(t;a,b):=|X_{\le J}(a,t)-X_{\le J}(b,t)|
\tag{CS.17}
```

be the coarse-flow pair gap on the good active-pair domain, and set

```math
\widetilde\sigma_J:=\sigma_J+2\|\delta_J\|_{L_t^\infty}.
\tag{CS.18}
```

Assume `\Phi_J(\cdot;a,b)` is absolutely continuous and there exists a
coarse-scale escape rate `c_J>0` such that

```math
\dot\Phi_J(t;a,b)\ge c_J
\qquad
\text{whenever }\Phi_J(t;a,b)\le 2\widetilde\sigma_J.
\tag{CS.19}
```

Then every good active pair obeys the coarse shadow-time bound

```math
\Big|
\big\{
t\in[0,T_J]:
\Phi_J(t;a,b)\le 2\widetilde\sigma_J
\big\}
\Big|
\le
\frac{2\widetilde\sigma_J}{c_J}.
\tag{CS.20}
```

Consequently, by `(ST.18B)`,

```math
\Big|
\big\{
t\in[0,T_J]:
|X(a,t)-X(b,t)|\le \sigma_J
\big\}
\Big|
\le
\frac{2\widetilde\sigma_J}{c_J}.
\tag{CS.21}
```

In particular, if

```math
\frac{\widetilde\sigma_J}{c_J\,T_J}\to 0,
\tag{CS.22}
```

then

```math
\mathfrak O_J(\sigma_J)\to 0.
\tag{CS.23}
```

If moreover the scale-local packet-decay assumptions `(ST.17a)`-`(ST.17c)`
hold, then

```math
\overline{\Gamma}_J\to 0.
\tag{CS.24}
```

### Proof

Fix one good active pair. On the set `\{\Phi_J\le 2\widetilde\sigma_J\}`, the
lower bound `(CS.19)` makes `\Phi_J` strictly increasing. Therefore the
one-dimensional coarea estimate for absolutely continuous functions gives

```math
\int_{\{\Phi_J\le 2\widetilde\sigma_J\}}\dot\Phi_J(t;a,b)\,dt
\le
2\widetilde\sigma_J.
\tag{CS.25}
```

Using `(CS.19)` on the same set,

```math
c_J
\Big|
\big\{
t:\Phi_J(t;a,b)\le 2\widetilde\sigma_J
\big\}
\Big|
\le
2\widetilde\sigma_J,
\tag{CS.26}
```

which is `(CS.20)`. The exact tube enlargement `(ST.18B)` yields `(CS.21)`.
Averaging `(CS.21)` over the active-pair domain and dividing by
`T_J\,\mu_j(\mathcal C_j)` gives `(CS.23)` under `(CS.22)`. Then `(CS.24)`
follows from `(ST.17e)`.

### Corollary TPS-coarse-shadow-time-budget-rate

Assume there is a scale-local repulsion law

```math
\dot\Phi_J(t;a,b)\ge c_0\lambda_J\sigma_J-\epsilon_J
\qquad
\text{whenever }\Phi_J(t;a,b)\le 2\widetilde\sigma_J,
\tag{CS.27}
```

with `c_0>0`,

```math
\frac{\epsilon_J}{\lambda_J\sigma_J}\to 0,
\qquad
\|\delta_J\|_{L_t^\infty}=o(\sigma_J),
\qquad
\lambda_J T_J\to\infty.
\tag{CS.28}
```

Then for large `J`, one may take `c_J=\tfrac12 c_0\lambda_J\sigma_J`, so

```math
\mathfrak O_J(\sigma_J)\to 0.
\tag{CS.29}
```

If also `(ST.17a)`-`(ST.17c)` hold, then `\overline{\Gamma}_J\to 0`.

### Lemma TPS-fresh-return-decomposition

Let `M_J(t)` be the coarse operator-norm bound from the coarse-flow note. For
each `(a,b)` in an angular good-pair family `G_J^{\angle}`, assume there is a
measurable decomposition

```math
[0,T_J]=\mathcal T_{ab}^{fresh}\cup\mathcal T_{ab}^{ret},
\qquad
\mathcal T_{ab}^{fresh}\cap\mathcal T_{ab}^{ret}=\varnothing.
\tag{CS.29a}
```

Assume the total segmentwise coercivity defect satisfies

```math
\mathrm{angdef}_{ab}^{tot}(t)
\le
\mathrm{angdef}_{ab}(t)+M_J(t)\mathbf 1_{\mathcal T_{ab}^{ret}}(t)
\tag{CS.29b}
```

for a.e. `t`, and define

```math
A_J(t)
:=
\sup_{(a,b)\in G_J^{\angle}}
\int_0^t \mathrm{angdef}_{ab}(s)\,ds,
\tag{CS.29c}
```

```math
R_J(t)
:=
\sup_{(a,b)\in G_J^{\angle}}
\int_{\mathcal T_{ab}^{ret}\cap[0,t]} M_J(s)\,ds.
\tag{CS.29d}
```

Then

```math
\sup_{(a,b)\in G_J^{\angle}}
\int_0^t \mathrm{angdef}_{ab}^{tot}(s)\,ds
\le
A_J(t)+R_J(t)
\qquad (0\le t\le T_J).
\tag{CS.29e}
```

If, in addition, the return times admit the coarse occupancy estimate

```math
|\mathcal T_{ab}^{ret}\cap[0,t]|
\le
\tau_J(t)
\qquad
\text{for every }(a,b)\in G_J^{\angle},
\tag{CS.29f}
```

then

```math
R_J(t)
\le
\tau_J(t)\sup_{0\le s\le t}M_J(s).
\tag{CS.29g}
```

This is the exact recurrence ledger used by the coarse `\lambda_{2,J}^{+}`
route: return episodes are priced only through their weighted time occupancy.

**Proof.**
For each pair `(a,b)\in G_J^{\angle}`, integrate `(CS.29b)` on `[0,t]` to get

```math
\int_0^t \mathrm{angdef}_{ab}^{tot}(s)\,ds
\le
\int_0^t \mathrm{angdef}_{ab}(s)\,ds
+
\int_{\mathcal T_{ab}^{ret}\cap[0,t]} M_J(s)\,ds.
```

Taking the supremum over `G_J^{\angle}` gives `(CS.29e)` by the definitions
`(CS.29c)`-`(CS.29d)`. If `(CS.29f)` also holds, then

```math
\int_{\mathcal T_{ab}^{ret}\cap[0,t]} M_J(s)\,ds
\le
|\mathcal T_{ab}^{ret}\cap[0,t]|
\sup_{0\le s\le t}M_J(s)
\le
\tau_J(t)\sup_{0\le s\le t}M_J(s),
```

and taking the supremum over pairs yields `(CS.29g)`. ∎

### Lemma TPS-pair-direction-drift-bound

Let

```math
r_{ab}(t):=X_{\le J}(a,t)-X_{\le J}(b,t),
\qquad
e_{ab}(t):=\frac{r_{ab}(t)}{|r_{ab}(t)|},
```

and assume `r_{ab}(t)\neq 0` on an interval `I`. Then for a.e. `t\in I`,

```math
\partial_t e_{ab}(t)
=
\big(I-e_{ab}(t)\otimes e_{ab}(t)\big)
\Big(
\int_0^1
\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)\,d\theta
\Big)e_{ab}(t),
\tag{CS.29h}
```

hence

```math
|\partial_t e_{ab}(t)|
\le
2\|\nabla u_{\le J}(t)\|_{L^\infty_x}.
\tag{CS.29i}
```

**Proof.**
Differentiate `r_{ab}(t)=X_{\le J}(a,t)-X_{\le J}(b,t)` to obtain

```math
\partial_t r_{ab}(t)
=
u_{\le J}(X_{\le J}(a,t),t)-u_{\le J}(X_{\le J}(b,t),t)
=
\Big(
\int_0^1
\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)\,d\theta
\Big)r_{ab}(t),
```

by the fundamental theorem of calculus along the transported segment. Writing
`r_{ab}=|r_{ab}|e_{ab}` and differentiating,

```math
\partial_t e_{ab}
=
|r_{ab}|^{-1}
\big(I-e_{ab}\otimes e_{ab}\big)\partial_t r_{ab},
```

which is exactly `(CS.29h)`. Since
`\|I-e_{ab}\otimes e_{ab}\|_{\mathrm{op}}\le 1` and
`\|\int_0^1 \nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)\,d\theta\|_{\mathrm{op}}
\le \|\nabla u_{\le J}(t)\|_{L^\infty_x}`, one gets `(CS.29i)` after absorbing
the fixed dimensional constants into `2`. ∎

**Remark.**
The drift bound `(CS.29i)` alone does **not** imply the return-time occupancy
estimate `(CS.29f)`. To control the measure of return times one still needs
either a direct shadow-time hypothesis or a one-sided angle-dynamics theorem.
The present route therefore treats `(CS.29f)` as an independent quantitative
input rather than deriving it from bare angular drift.

## Corrected Averaged Weak-Endpoint Closure

The genuinely honest weak endpoint does not close the old pointwise coefficient
`\beta_J(\eta)`. It closes an averaged boundary-transfer ledger instead.

### Proposition TPS-coarea-time. Coarea-In-Time Shadow Budget

Let

```math
\Phi_J(t;a,b):=|X_{\le J}(a,t)-X_{\le J}(b,t)|
\tag{CA.1}
```

on the good active-pair domain. Assume `t\mapsto \Phi_J(t;a,b)` is absolutely
continuous and that there exists a tube speed `c_J>0` such that

```math
\dot\Phi_J(t;a,b)\ge c_J
\qquad
\text{whenever }\Phi_J(t;a,b)\le 2\sigma_J.
\tag{CA.2}
```

Then

```math
\Big|
\big\{
t\in[0,T_J]:
\Phi_J(t;a,b)\le 2\sigma_J
\big\}
\Big|
\le
\frac{2\sigma_J}{c_J}.
\tag{CA.3}
```

**Proof.**
Let

```math
E_{ab}:=\big\{t\in[0,T_J]:\Phi_J(t;a,b)\le 2\sigma_J\big\}.
```

Because `t\mapsto \Phi_J(t;a,b)` is absolutely continuous and `(CA.2)` gives
`\dot\Phi_J(t;a,b)\ge c_J>0` throughout `E_{ab}`, the restriction of `\Phi_J`
to `E_{ab}` is strictly increasing. Moreover,
`\Phi_J(E_{ab})\subseteq [0,2\sigma_J]`, so the one-dimensional area formula
gives

```math
c_J |E_{ab}|
\le
\int_{E_{ab}} \dot\Phi_J(t;a,b)\,dt
\le
\big|\Phi_J(E_{ab})\big|
\le
2\sigma_J.
```

Dividing by `c_J` yields `(CA.3)`. So no one-pass or no-reentry hypothesis is
needed on the weak endpoint route. ∎

### Proposition TPS-shadow-transfer. Pair-Level Tube Enlargement

Let

```math
\delta_J^{pair}(t;a,b)
:=
\big|
\big(X(a,t)-X(b,t)\big)
-\big(X_{\le J}(a,t)-X_{\le J}(b,t)\big)
\big|.
\tag{CA.4}
```

If

```math
|X(a,t)-X(b,t)|\le \sigma_J,
\tag{CA.5}
```

then

```math
|X_{\le J}(a,t)-X_{\le J}(b,t)|
\le
\sigma_J+\delta_J^{pair}(t;a,b)
\le
\sigma_J+2\sup_{0\le s\le T_J}\delta_J(s),
\tag{CA.6}
```

where `\delta_J(s)` is the pointwise actual/coarse flow deviation from `(CF.9)`.

Consequently, the coarse occupancy at enlarged radius controls the actual
occupancy:

```math
\mathfrak O_J^{act}(\sigma_J)
\le
\mathfrak O_J^{coarse}\!\Big(
\sigma_J+2\|\delta_J\|_{L_t^\infty}
\Big).
\tag{CA.7}
```

Thus the bridge closes once

```math
\|\delta_J\|_{L_t^\infty}=o(\sigma_J).
\tag{CA.8}
```

### Proposition TPS-occupancy-overlap. Occupancy Plus Packet Scale Implies `\overline{\Gamma}_J\to 0`

Assume the packet metric satisfies

```math
d_g(z_a(t),z_b(t))
\ge
c_g\,2^{J/2}|X(a,t)-X(b,t)|-\mathrm{collar}_J
\tag{CA.9}
```

outside the frequency collar remainder, with

```math
2^{J/2}\sigma_J\to\infty,
\qquad
\mathrm{collar}_J\to 0.
\tag{CA.10}
```

Assume also packet overlap decay away from the shadow tube:

```math
|X(a,t)-X(b,t)|>\sigma_J
\Longrightarrow
\big|
\langle U_J(t)\phi_a,U_J(t)\phi_b\rangle
\big|
\le
C_N
\big(1+2^{J/2}\sigma_J\big)^{-N}
+\mathrm{collar}_J.
\tag{CA.11}
```

Then

```math
\overline{\Gamma}_J
\le
C_\Gamma
\mathfrak O_J(\sigma_J)
+
\big(1+2^{J/2}\sigma_J\big)^{-N}
+
\mathrm{collar}_J.
\tag{CA.12}
```

Hence

```math
\mathfrak O_J(\sigma_J)\to 0
\Longrightarrow
\overline{\Gamma}_J\to 0.
\tag{CA.13}
```

This is the exact occupancy-to-overlap step on the weak endpoint route.

### Corollary TPS-thresholded-good-set. Fubini-Markov De-Averaging

Define the vertex occupancy functional

```math
\Theta_J(a)
:=
\frac1{T_J\,\#N(a)}
\sum_{b\sim a}
\int_0^{T_J}
\mathbf 1_{\{|X(a,t)-X(b,t)|\le \sigma_J\}}\,dt.
\tag{CA.14}
```

Then

```math
\int \Theta_J(a)\,d\mu_j(a)
\le
C_\Theta
\mathfrak O_J(\sigma_J)\,\mu_j(\mathcal C_j).
\tag{CA.15}
```

For any threshold `\varepsilon_J>0`,

```math
\mu_j\big(\{\Theta_J>\varepsilon_J\}\big)
\le
\frac{C\,\mathfrak O_J(\sigma_J)}{\varepsilon_J}\,
\mu_j(\mathcal C_j).
\tag{CA.16}
```

Choosing

```math
\varepsilon_J:=\mathfrak O_J(\sigma_J)^{1/2}
\tag{CA.17}
```

produces a refined good family `G'_J\subseteq G_J` with vanishing complement and

```math
\Theta_J(a)\le \mathfrak O_J(\sigma_J)^{1/2}
\qquad\text{for }a\in G'_J.
\tag{CA.18}
```

So the weak route de-averages only to a thresholded good family, not to the
full existential bad-set theorem.

### Corollary TPS-averaged-dynamic-contract. Honest Weak Dynamic Gate

Define the averaged overlap coefficient

```math
\overline{\beta}_J(\eta)
:=
\eta(1+C_B)+C_\eta C_C\,\overline{\Gamma}_J,
\tag{CA.19}
```

and the averaged boundary-transfer packet

```math
\overline{\mathcal T}^{bdry}_{\ge J}
:=
\frac1{T_J}
\int_0^{T_J}\mathcal T^{bdry}_{\ge J}(t)\,dt.
\tag{CA.20}
```

If the boundary-transfer estimate is organized on the averaged ledger as

```math
\big|\overline{\mathcal T}^{bdry}_{\ge J}\big|
\le
\overline{\beta}_J(\eta)
\sum_{j\ge J}w_{j-J}\kappa_j\mathcal E_j
+
C_\eta o_J(1),
\tag{CA.21}
```

then `(CA.13)` yields

```math
\overline{\beta}_J(\eta)<1
\qquad\text{for all large }J.
\tag{CA.22}
```

This is the honest weak-endpoint replacement for the old pointwise dynamic gate
`\beta_J(\eta)<1`.
