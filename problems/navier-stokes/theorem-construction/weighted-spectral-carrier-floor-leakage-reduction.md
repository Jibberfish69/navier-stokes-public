# Weighted Spectral Carrier-Floor-Leakage Reduction

## Purpose

This note records the honest `s=1` spectral carrier-floor-leakage surface now
visible on the classical Navier--Stokes lane.

It does **not** claim the full derivative-weighted closure theorem. What it
does prove is the exact reduction already supported by the current packet
stack:

- the strict low-mode packet,
- the threshold-local spill collar,
- and the genuine high-high packet

all align on one upgraded carrier surface, while the only genuinely open
analytic burden remains the lifted high-side packet on the exact geometry
`N+M<k<j-4`.

So this note is the weighted analogue of
`classical-spectral-leakage-absorption-proposition.md`,
but it stays honest about the surviving lifted packet.

## Weighted Tail State

Fix a dyadic threshold `K=2^N` and let `u^{(n)}` be the fixed classical
approximation family on the Euclidean theorem surface.

Define the derivative-weighted tail state and dissipation by

```math
T_1^{(n)}(K,t)
:=
\||\nabla|P_{\ge K}u^{(n)}(t)\|_{L_x^2}^2,
\qquad
Q_1^{(n)}(K,t)
:=
\||\nabla|^2P_{\ge K}u^{(n)}(t)\|_{L_x^2}^2.
\tag{1}
```

Equivalently, with the dyadic gradient-tail quantities

```math
E_N^{(n)}(t)
:=
\sum_{j\ge N}2^{2j}\|\Delta_j u^{(n)}(t)\|_{L_x^2}^2,
\qquad
D_N^{(n)}(t)
:=
\sum_{j\ge N}2^{4j}\|\Delta_j u^{(n)}(t)\|_{L_x^2}^2,
\tag{2}
```

Littlewood--Paley equivalence gives

```math
c_{LP}E_N^{(n)}(t)\le T_1^{(n)}(K,t)\le C_{LP}E_N^{(n)}(t),
\qquad
c_{LP}D_N^{(n)}(t)\le Q_1^{(n)}(K,t)\le C_{LP}D_N^{(n)}(t).
\tag{3}
```

## Honest Weighted Carrier

The current packet algebra does **not** support the old `\mathcal L_N` carrier
on the derivative-weighted surface.

What it does support is the upgraded coefficient

```math
\Lambda_N^{(n)}(t)
:=
1+\sum_{k\le N-4}2^{5k/2}\|\Delta_k u^{(n)}(t)\|_{L_x^2},
\tag{4}
```

the quadratic threshold-collar coefficient

```math
\Theta_N^{\sharp,(n)}(t)
:=
2^{3N}\sum_{m=N-M}^{N+M}\|\Delta_m u^{(n)}(t)\|_{L_x^2}^2,
\tag{5}
```

and therefore the minimal coherent weighted carrier

```math
\mathcal C_1^{\sharp,(n)}(K,t)
:=
\widetilde\Lambda_N^{\sharp,(n)}(t)
:=
\Lambda_N^{(n)}(t)+\Theta_N^{\sharp,(n)}(t).
\tag{6}
```

## Weighted Leakage Functional

For each dyadic shell write the `H^1`-energy identity

```math
\partial_t E_j^{(n)}(t)+\nu D_j^{(n)}(t)=\mathcal N_j^{(n)}(t),
\tag{7}
```

and define the derivative-weighted spectral leakage by

```math
\mathrm{Leakage}_1^{(n)}(K,t)
:=
\sum_{j\ge N}\big|\mathcal N_j^{(n)}(t)\big|.
\tag{8}
```

Split the shellwise nonlinear term into the current packet classes

```math
\mathcal N_j^{(n)}
=
\mathcal N_{j,\mathrm{strict}}^{(n)}
+
\mathcal N_{j,\mathrm{spill}}^{(n)}
+
\mathcal N_{j,\mathrm{lift}}^{(n)}
+
\mathcal N_{j,\mathrm{HH}}^{(n)}.
\tag{9}
```

Then

```math
\mathrm{Leakage}_1^{(n)}(K,t)
=
\mathcal N_{N,\mathrm{grad}}^{\mathrm{strict},(n)}(t)
+
\mathcal N_{N,\mathrm{grad}}^{\mathrm{spill},(n)}(t)
+
\mathfrak H_N^{\mathrm{grad,lift}}[u^{(n)}](t)
+
\mathcal N_{N,\mathrm{grad}}^{HH,(n)}(t),
\tag{10}
```

where the lifted packet is the exact open remainder created by
`(S_{j-4}-S_{N+M})u^{(n)}`.

## Proposition

Assume the currently installed packet estimates on the upgraded gradient
surface:

1. the strict low-mode estimate from
   `gradient-paraproduct-reduction-lemma.md`,
2. the threshold-local spill estimate from
   `gradient-spill-reduction-lemma.md`,
3. the genuine high-high absorption from
   `gradient-cubic-tail-absorption-lemma.md`.

Then for every `K=2^N` with `N` large enough and almost every `t`,

```math
\mathrm{Leakage}_1^{(n)}(K,t)
\le
C\,\mathcal C_1^{\sharp,(n)}(K,t)\,T_1^{(n)}(K,t)
+
\eta\nu\,Q_1^{(n)}(K,t)
+
\mathfrak H_N^{\mathrm{grad,lift}}[u^{(n)}](t)
+
C_*K^{-2\delta},
\tag{11}
```

uniformly in `n`.

Consequently,

```math
\int_0^T \mathrm{Leakage}_1^{(n)}(K,t)\,dt
\le
C\int_0^T \mathcal C_1^{\sharp,(n)}(K,t)\,T_1^{(n)}(K,t)\,dt
+
\eta\nu\int_0^T Q_1^{(n)}(K,t)\,dt
+
\int_0^T \mathfrak H_N^{\mathrm{grad,lift}}[u^{(n)}](t)\,dt
+
C_*K^{-2\delta}.
\tag{12}
```

## Proof

By the packet decomposition `(10)`,

```math
\mathrm{Leakage}_1^{(n)}
\le
\big|\mathcal N_{N,\mathrm{grad}}^{\mathrm{strict},(n)}\big|
+
\big|\mathcal N_{N,\mathrm{grad}}^{\mathrm{spill},(n)}\big|
+
\big|\mathfrak H_N^{\mathrm{grad,lift}}[u^{(n)}]\big|
+
\big|\mathcal N_{N,\mathrm{grad}}^{HH,(n)}\big|.
\tag{13}
```

The strict low-mode packet gives

```math
\big|\mathcal N_{N,\mathrm{grad}}^{\mathrm{strict},(n)}(t)\big|
\le
C\,\Lambda_N^{(n)}(t)\,E_N^{(n)}(t).
\tag{14}
```

The threshold-local spill packet gives

```math
\big|\mathcal N_{N,\mathrm{grad}}^{\mathrm{spill},(n)}(t)\big|
\le
C\,\Theta_N^{\sharp,(n)}(t)\,E_N^{(n)}(t)
+
\frac{\eta\nu}{2}D_N^{(n)}(t),
\tag{15}
```

after adjusting constants and the dissipation fraction.

The genuine high-high packet gives

```math
\big|\mathcal N_{N,\mathrm{grad}}^{HH,(n)}(t)\big|
\le
\frac{\eta\nu}{2}D_N^{(n)}(t)
+
C_*2^{-2\delta N}.
\tag{16}
```

Substituting `(14)`--`(16)` into `(13)` yields

```math
\mathrm{Leakage}_1^{(n)}(K,t)
\le
C\big(\Lambda_N^{(n)}(t)+\Theta_N^{\sharp,(n)}(t)\big)E_N^{(n)}(t)
+
\eta\nu D_N^{(n)}(t)
+
\mathfrak H_N^{\mathrm{grad,lift}}[u^{(n)}](t)
+
C_*2^{-2\delta N}.
\tag{17}
```

Using `(3)` and `(6)`,

```math
C_{LP}^{-1}T_1^{(n)}(K,t)\le E_N^{(n)}(t)\le c_{LP}^{-1}T_1^{(n)}(K,t),
\qquad
C_{LP}^{-1}Q_1^{(n)}(K,t)\le D_N^{(n)}(t)\le c_{LP}^{-1}Q_1^{(n)}(K,t),
\qquad
\Lambda_N^{(n)}+\Theta_N^{\sharp,(n)}=\mathcal C_1^{\sharp,(n)}.
\tag{18}
```

After changing constants, `(17)` becomes `(11)`.
Integrating in time gives `(12)`.

## Corollary: exact remaining weighted theorem content

The derivative-weighted spectral carrier-floor-leakage theorem therefore
reduces exactly to the lifted high-side packet.

If one proves the integrated lifted estimate

```math
\int_0^T \mathfrak H_N^{\mathrm{grad,lift}}[u^{(n)}](t)\,dt
\le
\varepsilon\nu\int_0^T Q_1^{(n)}(K,t)\,dt
+
C_*K^{-2\delta},
\tag{19}
```

then `(12)` upgrades to the full weighted spectral leakage estimate

```math
\int_0^T \mathrm{Leakage}_1^{(n)}(K,t)\,dt
\le
C\int_0^T \mathcal C_1^{\sharp,(n)}(K,t)\,T_1^{(n)}(K,t)\,dt
+
\eta'\nu\int_0^T Q_1^{(n)}(K,t)\,dt
+
C_*K^{-2\delta}.
\tag{20}
```

The exact closure surface for `(19)` is now recorded in
[lifted-packet-three-piece-closure-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-packet-three-piece-closure-program.md):

```math
\mathfrak H_N^{\mathrm{grad,lift}}
\Longrightarrow
\mathfrak B_N^{upper}
+
\Pi_N^{mov\text{-}spill,L}
+
\Pi_N^{mid,far,L},
\tag{19a}
```

with

```math
\text{(SS)}
\Longrightarrow
\text{(UB)}+\text{(MS)},
\qquad
\text{(LPAS)}
\Longrightarrow
\text{(CTS)}
\Longrightarrow
\text{(FC)}.
\tag{19b}
```

So the current theorem-primary `s=1` burden is not the strict low packet, not
the spill collar, and not the genuine high-high packet. It is the lifted packet
alone, in exactly that three-piece form.

## Relation To The Recorded Upstream Routes

The weighted lifted packet is not supposed to be closed by pretending the old
`\mathcal L_N` surface still survives.

The current conservative sufficient routes are the coupled lifted-band targets
already recorded upstream, for example

```math
\int_0^T
\sum_{k>N+M}
2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}\,
\mathcal D_k^\uparrow(t)\,dt
\le
C_*2^{-2\delta N},
\tag{21}
```

or the stronger upper-tail square theorem

```math
\int_0^T
\sum_{k>N+M}
2^k\big(\mathcal D_k^\uparrow(t)\big)^2\,dt
\le
C_*2^{-2\delta N}.
\tag{22}
```

Those are the recorded sufficient ways to turn `(19)` into a theorem, without
overclaiming a return to the old `\mathcal L_N` carrier.

## Honest Boundary

This note does **not** prove the full derivative-weighted carrier-floor-leakage
theorem.

What it proves is the exact upgraded reduction:

- `s=1` already has an honest carrier surface
  `\widetilde\Lambda_N^\sharp=\Lambda_N+\Theta_N^\sharp`;
- the strict low, spill, and genuine high-high packets already align on that
  surface;
- the only genuinely open weighted analytic burden is the lifted packet on the
  exact geometry `N+M<k<j-4`.

Returning from `\widetilde\Lambda_N^\sharp` to the old `\mathcal L_N` surface
would require a new low-mode strain suppression theorem, not just further
repackaging of the existing shell algebra.
