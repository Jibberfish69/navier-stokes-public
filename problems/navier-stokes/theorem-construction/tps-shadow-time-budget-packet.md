# TPS Shadow-Time Budget Packet

## Status

Primary weak-endpoint dynamic packet.

This note records the weakest currently honest theorem target suggested by the
selector and packet geometry: not uniform-in-time pair separation, but
vanishing shadow-time occupancy on asymptotically full active-pair mass.

Its role is to target the time-averaged overlap side of the dynamic gate
directly.

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
\lesssim_N R_J^{-N}
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

## Coarse-flow / HFG specialization

The hybrid branch from
[tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md)
and
[tps-coarse-flow-pair-gap-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-coarse-flow-pair-gap-theorem-candidate.md)
fits this packet naturally.

If the coarse flow `X_{\le J}` obeys a pair-gap growth law strong enough to
imply a coarse shadow-time budget

```math
\Big|
\big\{
t:|X_{\le J}(a,t)-X_{\le J}(b,t)|\le 2\sigma_J
\big\}
\Big|
\le
\tau_J,
\tag{ST.18}
```

and if

```math
\sup_{0\le t\le T_J}\delta_J(t)=o(\sigma_J),
\tag{ST.19}
```

then the full flow inherits `(ST.8)` after enlarging constants. So the hybrid
coarse-flow route can target the occupancy packet directly.

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

### Theorem TPS-coarse-shadow-time-budget

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
\tau_J\lesssim \frac{N_J}{\lambda_J},
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
\lesssim
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
\lesssim
\frac{N_J}{\lambda_J}.
\tag{CS.14}
```

By `(CS.11)`, the actual shadow-time is bounded by the left-hand side of
`(CS.14)`, which gives `(CS.8)`. Then `(CS.9)` follows from the finite-valence
normalization exactly as in `(ST.15)`, and `(CS.10)` follows from `(ST.17)`.

## Interpretation

This is the mathematically honest coarse-flow closure theorem suggested by the
selector route:

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

So the exact open burden at the weak endpoint is no longer “prove full
nonshadowing.” It is:

```math
\boxed{
\text{prove a coarse repulsion law and a non-self-looping / bounded-entry theorem on good active pairs.}
}
\tag{CS.16}
```
