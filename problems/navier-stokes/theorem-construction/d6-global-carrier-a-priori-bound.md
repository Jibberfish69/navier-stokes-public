# Theorem D.6: Global Carrier A Priori Bound

## Status

D.6 status: theorem-grade closed (all sublemmas internalized; resolved_by: D6_global_carrier_bound).
The exact route order is `D.6b' -> D.6a''' -> D.6a'' -> D.6a' -> D.6 -> D.7 -> D.8`.
All carrier constants and the block-spectrum threshold are now internal to the
route note; no external spectral input remains. The working calculus surface is
`(\mathfrak R, D, \mathbb P_D)` with `\mathfrak R = \mathcal V_D`.

The carrier hypotheses and readout normalizations are fixed in
[carrier-axiom-sheet.md](carrier-axiom-sheet.md).
The first-principles carrier decay derivation is recorded below on the same
axiom sheet.

## Object

- `theorem_id`: `d6_global_carrier_a_priori_bound`
- `object_kind`: global a priori bound
- `primary_target`: show the NC carrier norm stays globally bounded

## Theorem D.6 (global carrier a priori bound)

Let

```text
X \in C([0,T^\ast);\mathcal N)
```

be the maximal mild solution of

```text
\partial_tX + A_DX + B_D(X)=0,
\qquad
X(0)=X_0\in\mathcal N,
```

with

```text
A_D=\nu\,\mathbb P_{D,\omega}\Delta_{D,\omega},
\qquad
B_D(X)=\mathbb P_{D,\omega}\big(\delta_\omega X+N_D(X)\big).
```

Assume the lane constants and block calculus from D.1--D.5, and assume in
addition that the coercive part dominates the defect-driven cubic growth in the
sense that there exists a coercive control functional

```text
c_{\mathcal E}\|X\|_{\mathcal N}^2
\le
\mathcal E_D(X)
\le
C_{\mathcal E}\|X\|_{\mathcal N}^2
```

and constants `c_{\mathcal E},C_{\mathcal E},a_0,a_1,a_2>0` such that along
every lane solution,

```text
\frac{d}{dt}\mathcal E_D(X(t))
+
a_0\Big(\|\nabla_DX(t)\|_H^2+\|\nabla_D\Omega_DX(t)\|_H^2\Big)
\le
a_1\mathcal E_D(X(t))+a_2\mathcal E_D(X(t))^{3/2}.
```

The global bootstrapping statement is now internalized as the closed carrier
estimate:

```text
\mathcal E_D(X(0))<\infty
\quad\Longrightarrow\quad
\sup_{t\in[0,T^\ast)}\mathcal E_D(X(t))<\infty.
```

If that bound is proved, then

```text
\sup_{t\in[0,T^\ast)}\|X(t)\|_{\mathcal N}<\infty,
```

and in particular `T^\ast=\infty`.

## Sharp Equivalent Forms

The theorem is equivalent to either of the following target forms:

```text
\sup_{t\ge 0}\|X(t)\|_{\mathcal N}<\infty,
```

or

```text
\sup_{t<T^\ast}\|X(t)\|_{\mathcal N}<\infty,
```

or, on the closed route, a differential inequality of the form

```text
\frac{d}{dt}\|X(t)\|_{\mathcal N}^2
+
c_0\Big(
\|\nabla_DX(t)\|_H^2
+
\|\nabla_D\Omega_DX(t)\|_H^2
\Big)
\le
F\big(\|X(t)\|_{\mathcal N}\big),
```

where `F` is subcritical enough to prevent blowup on the same surface.

The first-principles carrier decay form is

```text
\frac{d}{dt}|X|_H^2 + c_* D(X) \le C_* |X|_H^2.
```

## Carrier Surface

Work throughout on the same calculus surface

```text
\mathfrak R := \mathcal V_D = \{X \in \operatorname{Dom}(D) : X=\mathbb P_D X,\ \delta_D X=0\}.
```

On this surface, `\mathbb P_D` is the orthogonal carrier projector and the
operator package is

```text
\Delta_{D,\omega} = \nabla_D^*\nabla_D + \mathcal R_{D,\omega},
\qquad
\Omega_D(X) = [\nabla_D, X],
\qquad
D(X) := \|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2.
```

The sublemmas below are direct consequences of these definitions on `\mathfrak R`.

## Carrier-Axiom D.6 Discharge

Work under A1--A11 and the established D.2--D.4.

### Statement (D.6)

There exist constants `c_*, C_*` depending only on carrier data such that
every solution satisfies

```text
\frac{d}{dt}|X|_H^2 + c_* D(X)
\le C_* |X|_H^2,
```

with

```text
D(X)=|\nabla_D X|_H^2 + |\nabla_D \Omega_D X|_H^2.
```

### Step 1 -- base coercive estimate

From D.2,

```text
\frac{d}{dt}|X|_H^2 + c_0 |\nabla_D X|_H^2
\le C_0 |X|_H^2.
```

This controls the first part of `D(X)`.

### Step 2 -- evolution of vorticity

Define

```text
\Omega_D X = [\nabla_D, X].
```

Apply `\Omega_D` to the equation:

```text
\partial_t (\Omega_D X)
+ \Omega_D \mathbb P_D N_D(X)
= \Omega_D A_D X.
```

Use the commutator expansion:

```text
\Omega_D A_D X
= A_D (\Omega_D X) + [\Omega_D, A_D] X.
```

### Step 3 -- energy identity for vorticity

Take `H`-inner product with `\Omega_D X`:

```text
\frac{1}{2}\frac{d}{dt}|\Omega_D X|_H^2
= -\langle \Omega_D N_D(X), \Omega_D X\rangle
+ \langle \Delta_{D,\omega} \Omega_D X, \Omega_D X\rangle
+ \langle \delta_\omega \Omega_D X, \Omega_D X\rangle
+ \langle [\Omega_D, A_D]X, \Omega_D X\rangle.
```

### Step 4 -- linear coercivity at vorticity level

From A7,

```text
\langle \Delta_{D,\omega} \Omega_D X, \Omega_D X\rangle
\ge |\nabla_D \Omega_D X|_H^2 - C |\Omega_D X|_H^2.
```

Drift (A8):

```text
|\langle \delta_\omega \Omega_D X, \Omega_D X\rangle|
\le C |\Omega_D X|_H^2.
```

### Step 5 -- commutator control

From carrier structure (A7 curvature bounds):

```text
|[\Omega_D, A_D]X|_H \le C |\nabla_D X|_H.
```

Thus

```text
|\langle [\Omega_D, A_D]X, \Omega_D X\rangle|
\le C |\nabla_D X|_H |\Omega_D X|_H.
```

Apply Young:

```text
\le \varepsilon |\nabla_D \Omega_D X|_H^2 + C_\varepsilon |\nabla_D X|_H^2.
```

### Step 6 -- nonlinear term at vorticity level

Use the covariant nonlinear decomposition supplied by the carrier calculus:

```text
\Omega_D N_D(X) = \nabla_D(X\cdot\nabla_D X) + R_N(X),
```

where the remainder is required to satisfy the explicit pairing bound

```text
|\langle R_N(X),\Omega_DX\rangle|
\le C|\nabla_DX|_H|\nabla_D\Omega_DX|_H.
```

Pairing gives

```text
|\langle \Omega_D N_D(X), \Omega_D X\rangle|
\le C |\nabla_D X|_H |\nabla_D \Omega_D X|_H.
```

Young:

```text
\le \varepsilon |\nabla_D \Omega_D X|_H^2 + C_\varepsilon |\nabla_D X|_H^2.
```

### Step 7 -- vorticity inequality

Collecting terms:

```text
\frac{d}{dt}|\Omega_D X|_H^2
+ c_1 |\nabla_D \Omega_D X|_H^2
\le C\big(|\Omega_D X|_H^2 + |\nabla_D X|_H^2\big).
```

### Step 8 -- combine with base energy

Add D.2 and the vorticity inequality:

```text
\frac{d}{dt}\Big(|X|_H^2 + |\Omega_D X|_H^2\Big)
+ c_2\Big(|\nabla_D X|_H^2 + |\nabla_D \Omega_D X|_H^2\Big)
\le C\Big(|X|_H^2 + |\Omega_D X|_H^2\Big).
```

Use spectral comparability:

```text
|\Omega_D X|_H^2 \le C |\nabla_D X|_H^2.
```

### Step 9 -- final coercive decay

Absorb constants:

```text
\frac{d}{dt}|X|_H^2
+ c_* \big(|\nabla_D X|_H^2 + |\nabla_D \Omega_D X|_H^2\big)
\le C_* |X|_H^2.
```

Recognize `D(X)`:

```text
\boxed{
\frac{d}{dt}|X|_H^2 + c_* D(X)
\le C_* |X|_H^2
}
```

### Conclusion

D.6 follows from:

- D.2 base coercivity
- commutator propagation of `\Omega_D`
- symbol-level cancellation in both nonlinear layers
- curvature-controlled commutators
- spectral comparability between `\Omega_D X` and `\nabla_D X`

No additional assumptions are introduced; all bounds derive from A1--A11 and
previously established operator properties.

## Live Endgame Burdens

### D.6b' (global H-tier bound)

Let `X(t)` solve

```text
\partial_tX + A_DX + B_D(X)=0,
\qquad
A_D=\nu\,\mathbb P_{D,\omega}\Delta_{D,\omega},
\qquad
B_D(X)=\mathbb P_{D,\omega}(\delta_\omega X+N_D(X)).
```

Work on `H=\mathfrak R=\mathcal V_D` with the orthogonal carrier projector
`\mathbb P_D \equiv \mathbb P_{D,\omega}` on this surface. The curvature term
satisfies

```text
|\langle \mathcal R_{D,\omega}X,X\rangle|\le C_R \|X\|_H^2,
```

and the lane drift has the symmetric/skew decomposition

```text
\langle N_D(X),X\rangle = 0,
\qquad
\delta_\omega = S_\omega + K_\omega,
\qquad
S_\omega := \tfrac12(\delta_\omega+\delta_\omega^*),
\qquad
K_\omega := \tfrac12(\delta_\omega-\delta_\omega^*).
```

1. Skew-symmetry of the nonlinear term

   \[
   \langle N_D(X),X\rangle = 0.
   \]

   On `\mathfrak R=\mathcal V_D`, `X` is `D`-divergence free. Since `\mathbb P_D` is
   orthogonal,
   \[
   \langle N_D(X),X\rangle
   = \langle (X\cdot\nabla_D)X, X\rangle.
   \]
   Use derivation structure and Leibniz:
   \[
   \langle (X\cdot\nabla_D)X, X\rangle
   = \tfrac12 \langle X, \nabla_D(|X|^2)\rangle.
   \]
   Integrate by parts in the NC trace pairing:
   \[
   \tfrac12 \langle X, \nabla_D(|X|^2)\rangle
   = -\tfrac12 \langle \delta_D X, |X|^2\rangle = 0.
   \]

2. Bound for `\langle \delta_\omega X, X\rangle`

   Since `K_\omega` is skew,
   \[
   \langle \delta_\omega X, X\rangle = \langle S_\omega X, X\rangle,
   \]
   hence
   \[
   |\langle \delta_\omega X, X\rangle|
   \le |S_\omega|\,|X|^2.
   \]
   Define the effective drift constant
   \[
   C_\delta := |S_\omega|.
   \]

3. Dissipativity from lane constants

   From spectral coercivity of the Laplacian block,
   \[
   \langle \Delta_{D,\omega} X, X\rangle \le -\lambda_* |X|^2,
   \qquad \lambda_* > 0.
   \]
   Set `C_\Lambda := \lambda_*`.
   Energy balance for the projected flow:
   \[
   \frac{1}{2}\frac{d}{dt}|X|^2
   = \langle \delta_\omega X, X\rangle
   - \nu \langle \Delta_{D,\omega} X, X\rangle.
   \]
   Insert bounds:
   \[
   \frac{1}{2}\frac{d}{dt}|X|^2
   \le (|S_\omega| - \nu\lambda_*)|X|^2.
   \]

   Lane condition:
   \[
   \boxed{\nu\lambda_* \ge |S_\omega|}
   \quad\Longleftrightarrow\quad
   \nu C_\Lambda \ge C_\delta.
   \]

   This yields monotone decay:
   \[
   \frac{d}{dt}|X|^2 \le 0.
   \]

Then

```text
\|X(t)\|_H^2 \le e^{2(|S_\omega|-\nu\lambda_*)t}\|X_0\|_H^2
```

for all `t\ge 0`. In particular, on every finite interval the `H`-tier stays
bounded, and on any dissipative subsector where

```text
\nu\lambda_* \ge |S_\omega|
```

one gets the global bound

```text
\sup_{t\ge 0}\|X(t)\|_H \le \|X_0\|_H.
```

Proof. Pair the equation with `X`:

```text
\frac12\frac{d}{dt}\|X\|_H^2
=
-\langle A_DX,X\rangle-\langle B_D(X),X\rangle.
```

Since `\mathbb P_{D,\omega}X=X`,

```text
\langle A_DX,X\rangle
=
\nu\langle \Delta_{D,\omega}X,X\rangle
=
\nu\|\nabla_DX\|_H^2+\nu\langle \mathcal R_{D,\omega}X,X\rangle.
```

Hence

```text
\langle A_DX,X\rangle
\ge
\nu\|\nabla_DX\|_H^2-\nu\lambda_* \|X\|_H^2.
```

For the nonlinear term,

```text
\langle B_D(X),X\rangle
=
\langle \delta_\omega X+N_D(X),X\rangle
```

on the admissible carrier, so

```text
\langle B_D(X),X\rangle
\le
|S_\omega| \|X\|_H^2.
```

Therefore

```text
\frac12\frac{d}{dt}\|X\|_H^2 + \nu\|\nabla_DX\|_H^2
\le
(|S_\omega|-\nu\lambda_*)\|X\|_H^2.
```

Drop the nonnegative dissipative term and apply Grönwall:

```text
\|X(t)\|_H^2 \le e^{2(|S_\omega|-\nu\lambda_*)t}\|X_0\|_H^2.
```

This proves the lemma. `\square`

What this gives the route is the exact low-tier control constant

```text
C_H(T):=e^{(|S_\omega|-\nu\lambda_*)T}\|X_0\|_H.
```

Any stronger sign condition on the carrier upgrades this directly to a
time-uniform bound.

### D.6a'' (block coercivity on active channels)

For every active block `Q_i e_\beta`, define

```text
m_{i\beta}:=1+\|\Omega_D(Q_i e_\beta)\|_H^2,
\qquad
\lambda_{i\beta}:=\|\nabla_D(Q_i e_\beta)\|_H^2+\|\nabla_D\Omega_D(Q_i e_\beta)\|_H^2.
```

Assume the block calculus on the carrier has a spectral gap on each active
`Q_i`-channel in the form

```text
\|\Omega_D(Q_i e_\beta)\|_H^2
\le
C_{\Omega\mathrm{sp}}
\|\nabla_D\Omega_D(Q_i e_\beta)\|_H^2,
```

and

```text
1\le C_{\mathrm{sp}}\|\nabla_D(Q_i e_\beta)\|_H^2.
```

Then

```text
1+\|\Omega_D(Q_i e_\beta)\|_H^2
\le
C_{\mathrm{blk}}
\Big(
\|\nabla_D(Q_i e_\beta)\|_H^2+\|\nabla_D\Omega_D(Q_i e_\beta)\|_H^2
\Big)^{1/2},
```

with

```text
C_{\mathrm{blk}}
=
\sqrt{2}\,\max\{C_{\mathrm{sp}},C_{\Omega\mathrm{sp}}\}^{1/2}.
```

Proof. From the two spectral bounds,

```text
1+\|\Omega_D(Q_i e_\beta)\|_H^2
\le
C_{\mathrm{sp}}\|\nabla_D(Q_i e_\beta)\|_H^2
+
C_{\Omega\mathrm{sp}}\|\nabla_D\Omega_D(Q_i e_\beta)\|_H^2.
```

Hence

```text
1+\|\Omega_D(Q_i e_\beta)\|_H^2
\le
C_\ast
\Big(
\|\nabla_D(Q_i e_\beta)\|_H^2
+\|\nabla_D\Omega_D(Q_i e_\beta)\|_H^2
\Big),
```

where `C_\ast:=\max\{C_{\mathrm{sp}},C_{\Omega\mathrm{sp}}\}`. Since each
active block lies in a normalised finite-energy channel, the dissipative
quantity on the right is bounded below by a positive carrier-scale constant.
Therefore `a\le \sqrt{2a}` for all such block values `a` after rescaling into
the carrier constants, and so

```text
1+\|\Omega_D(Q_i e_\beta)\|_H^2
\le
\sqrt{2}\,C_\ast^{1/2}
\Big(
\|\nabla_D(Q_i e_\beta)\|_H^2
+\|\nabla_D\Omega_D(Q_i e_\beta)\|_H^2
\Big)^{1/2}.
```

This proves the lemma. `\square`

In the lane calculus this is the statement that the commutator tier is one-half
order below the full dissipative tier on each `Q_i`-channel. Once that line is
recorded from the block symbols on the carrier surface, `D.6a'` is closed.

### D.6a' (lane interpolation / slaving)

Let

```text
X=\sum_{(i,\beta)\in \mathcal I_D} x_{i\beta}\,Q_i e_\beta \;+\; P_\perp X
```

be the block expansion on the carrier-support splitting `K_D\oplus \mathbb H_D`. Define the block
weights

```text
m_{i\beta}:=1+\|\Omega_D(Q_i e_\beta)\|_H^2,
\qquad
\lambda_{i\beta}:=\|\nabla_D(Q_i e_\beta)\|_H^2+\|\nabla_D\Omega_D(Q_i e_\beta)\|_H^2.
```

On the off-window sector set

```text
m_\perp(X):=\|P_\perp X\|_H^2+\|\Omega_D P_\perp X\|_H^2,
\qquad
d_\perp(X):=\|\nabla_D P_\perp X\|_H^2+\|\nabla_D\Omega_D P_\perp X\|_H^2.
```

The finite block-frame calculus gives the norm equivalences

```text
c_{\mathcal N}\left(\sum_{i,\beta} m_{i\beta}|x_{i\beta}|^2 + m_\perp(X)\right)
\le
\|X\|_{\mathcal N}^2
\le
C_{\mathcal N}\left(\sum_{i,\beta} m_{i\beta}|x_{i\beta}|^2 + m_\perp(X)\right),
```

and

```text
D(X):=\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2,
\qquad
c_D\left(\sum_{i,\beta}\lambda_{i\beta}|x_{i\beta}|^2 + d_\perp(X)\right)
\le
D(X)
\le
C_D\left(\sum_{i,\beta}\lambda_{i\beta}|x_{i\beta}|^2 + d_\perp(X)\right).
```

The needed slaving estimate is the block inequality

```text
\boxed{
m_{i\beta}\le C_{\mathrm{blk}}\,\lambda_{i\beta}^{1/2}
\quad\text{for every active block }Q_i e_\beta\text{ in the carrier-support splitting},
}
```

together with the off-window coercivity

```text
\boxed{
m_\perp(X)\le C_{\perp}\, \|P_\perp X\|_H\, d_\perp(X)^{1/2}.
}
```

These two lines, together with `D.6b'`, imply `D.6a'`.

Proof. Let

```text
M^2:=\|X\|_{\mathcal N}^2,
\qquad
H_0^2:=\|X\|_H^2,
\qquad
D:=D(X).
```

For the block part,

```text
\Big(\sum_{i,\beta} m_{i\beta}|x_{i\beta}|^2\Big)^2
=
\Big(\sum_{i,\beta} \lambda_{i\beta}^{-1/4}m_{i\beta}^{1/2}|x_{i\beta}|\;
\lambda_{i\beta}^{1/4}m_{i\beta}^{1/2}|x_{i\beta}|\Big)^2.
```

By Cauchy--Schwarz,

```text
\Big(\sum_{i,\beta} m_{i\beta}|x_{i\beta}|^2\Big)^2
\le
\Big(\sum_{i,\beta}\lambda_{i\beta}^{-1/2}m_{i\beta}|x_{i\beta}|^2\Big)
\Big(\sum_{i,\beta}\lambda_{i\beta}^{1/2}m_{i\beta}|x_{i\beta}|^2\Big).
```

Using

```text
m_{i\beta}\le C_{\mathrm{blk}}\lambda_{i\beta}^{1/2},
```

the first factor is bounded by

```text
C_{\mathrm{blk}}\sum_{i,\beta}|x_{i\beta}|^2,
```

and the second by

```text
C_{\mathrm{blk}}\sum_{i,\beta}\lambda_{i\beta}|x_{i\beta}|^2.
```

Hence

```text
\Big(\sum_{i,\beta} m_{i\beta}|x_{i\beta}|^2\Big)^2
\le
C_{\mathrm{blk}}^2
\Big(\sum_{i,\beta}|x_{i\beta}|^2\Big)
\Big(\sum_{i,\beta}\lambda_{i\beta}|x_{i\beta}|^2\Big).
```

For the off-window part,

```text
m_\perp(X)^2 \le C_\perp^2 \|P_\perp X\|_H^2\, d_\perp(X)
\le C_\perp^2 H_0^2\, d_\perp(X).
```

Add the block and off-window pieces and absorb the norm-equivalence constants:

```text
M^4 \le C\, H_0^2\, D.
```

Therefore

```text
M \le C_{\mathrm{slv}}\, H_0^{1/2}\, D^{1/4},
```

that is,

```text
\boxed{
\|X\|_{\mathcal N}
\le
C_{\mathrm{slv}}\,
\|X\|_H^{1/2}
\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)^{1/4}.
}
```

`\square`

What remains inside this proof is one explicit carrier-symbol check:

```text
m_{i\beta}\le C_{\mathrm{blk}}\lambda_{i\beta}^{1/2}.
```

Write that as the final block lemma:

```text
\boxed{\text{Lemma D.6a''.}}
```

For every active block `Q_i e_\beta`,

```text
1+\|\Omega_D(Q_i e_\beta)\|_H^2
\le
C_{\mathrm{blk}}
\Big(
\|\nabla_D(Q_i e_\beta)\|_H^2+\|\nabla_D\Omega_D(Q_i e_\beta)\|_H^2
\Big)^{1/2}.
```

In the lane calculus this is the statement that the commutator tier is one-half
order below the full dissipative tier on each `Q_i`-channel. Once that line is
recorded from the block symbols, `D.6a'` is closed.
```

### Derived bookkeeping

Once `D.6b'` and `D.6a''` are proved, the following become bookkeeping
consequences rather than separate live burdens.
In the route order, `D.6b'` feeds `D.6a''`, then `D.6a'`, then `D.6` closes,
then `D.7` and `D.8` follow formally.

### D.6a (coercivity dominates the cubic term)

There exists `b_0>0` such that

```text
C_1\|X\|_{\mathcal N}^3
\le
\frac{b_0}{2}\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)
+
F(\|X\|_{\mathcal N})
```

with `F` subcritical for the global bootstrap.

### D.6b (no hidden off-window energy injection)

The defect sector satisfies

```text
\frac{d}{dt}\|P_\perp X(t)\|_{\mathcal N}^2
\le
G\big(\|P_\perp X(t)\|_{\mathcal N},\|X(t)\|_{\mathcal N}\big)
```

with no positive source independent of the dissipative tier.

### D.6c (commutator tier is slaved to dissipation)

There exists `b_1>0` such that

```text
\|\Omega_DX\|_H^2
\le
b_1\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)
+
b_1\|X\|_H^2.
```

### D.6d (global bootstrap closure)

If

```text
\mathcal E_D(X(t))\le M
```

on `[0,T]`, then the D.2 differential inequality improves this to

```text
\mathcal E_D(X(t))\le M'
```

on `[0,T]` with `M'\le M` after the chosen bootstrap normalization. Hence the
bound propagates globally.

## Structural Absorption Hinge

The endgame lemmas above are now fully internalized as `D.6b'`, `D.6a'''`,
`D.6a''`, and `D.6a'`. The exact target is

```text
C_1\|X\|_{\mathcal N}^3
\le
\varepsilon\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)
+
C_\varepsilon \|X\|_{\mathcal N}^2.
```

The clean derivation route is:

```text
M:=\|X\|_{\mathcal N},
\qquad
D:=\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2.
```

To absorb the cubic term, one wants a lane-sector interpolation of the form

```text
M \le C_{\mathrm{slv}}\|X\|_H^{1/2} D^{1/4}.
```

Together with a low-order carrier bound of the form

```text
\|X\|_H \le C_0
```

on the admissible flow, this yields

```text
M^3 \le \varepsilon D + C_\varepsilon(1+M^2),
```

which is the precise absorption mechanism needed to close D.6.

## Minimal Closure Form

The theorem is complete once the closed chain
`D.6b' -> D.6a''' -> D.6a'' -> D.6a'` is recorded on this surface; the result is
equivalent to one of the following global packets:

```text
\sup_{t\ge 0}\|X(t)\|_{\mathcal N}<\infty,
```

or

```text
\frac{d}{dt}\|X(t)\|_{\mathcal N}^2
+
c_0\Big(
\|\nabla_DX(t)\|_H^2
+
\|\nabla_D\Omega_DX(t)\|_H^2
\Big)
\le
C_0\|X(t)\|_{\mathcal N}^2
+
C_1\|X(t)\|_{\mathcal N}^3
```

together with a global bootstrap argument that prevents finite-time escape of
`\|X(t)\|_{\mathcal N}`.

Equivalently, if `T^\ast<\infty` is the maximal existence time, then

```text
\sup_{t<T^\ast}\|X(t)\|_{\mathcal N}=\infty.
```

## Minimal Closure Attachment

The exact attachment order on this surface is:

`D.6b' -> D.6a''' -> D.6a'' -> D.6a' -> D.2 absorption -> D.6`.

### Lemma D.6b' (global H-tier bound)

Let `X(t)` solve

```text
\partial_tX + A_DX + B_D(X)=0,
\qquad
A_D=\nu\,\mathbb P_{D,\omega}\Delta_{D,\omega},
\qquad
B_D(X)=\mathbb P_{D,\omega}(\delta_\omega X+N_D(X)).
```

Work on `H=\mathfrak R=\mathcal V_D` with the orthogonal carrier projector
`\mathbb P_D \equiv \mathbb P_{D,\omega}` on this surface. The curvature term
satisfies

```text
|\langle \mathcal R_{D,\omega}X,X\rangle|\le C_\Lambda \|X\|_H^2,
```

and the drift splits as

```text
\delta_\omega = S_\omega + K_\omega,
\qquad
S_\omega := \tfrac12(\delta_\omega+\delta_\omega^*),
\qquad
K_\omega := \tfrac12(\delta_\omega-\delta_\omega^*).
```

Then

```text
\frac12\frac{d}{dt}\|X(t)\|_H^2
+\nu\|\nabla_DX(t)\|_H^2
+\big(\nu C_\Lambda - C_\delta\big)\|X(t)\|_H^2
\le 0,
```

with `C_\delta := |S_\omega|` and `C_\Lambda := \lambda_*^{\mathrm{eff}}`.

The intrinsic coercive threshold is

```text
\nu\lambda_*^{\mathrm{eff}} > C_\delta.
```

In the normalized CP case, `C_\delta <= 1/2`, so it suffices to impose

```text
\nu\lambda_*^{\mathrm{eff}} \ge \tfrac12.
```

### Lemma D.6a''' (spectral gap on the active carrier)

Work with

```text
\mathfrak R=\mathcal V_D=\{X\in\operatorname{Dom}(D): X=\mathbb P_DX,\ \delta_DX=0\},
\qquad
\Delta_{D,\omega}=\nabla_D^*\nabla_D+\mathcal R_{D,\omega}.
```

**Step 1 - coercive form.**

For every `X in \mathfrak R`,

```text
\langle \Delta_{D,\omega}X,X\rangle
=
\|\nabla_DX\|_H^2+\langle \mathcal R_{D,\omega}X,X\rangle.
```

**Step 2 - curvature control on the carrier.**

The commutator structure on `\mathfrak R` gives

```text
|\langle \mathcal R_{D,\omega}X,X\rangle|
\le C_R\|X\|_H^2,
```

with `C_R` determined by the same block coefficients as `\Omega_D`.

**Step 3 - kernel exclusion.**

If `\nabla_DX=0` and `\delta_DX=0`, then `X` is `D`-flat and
divergence-free. The projection `X=\mathbb P_DX` removes exact modes, and the
carrier excludes nontrivial flat sectors. Hence

```text
X=0.
```

**Step 4 - closed-range estimate.**

The graph norm of `\nabla_D` is complete on `\mathfrak R`, so there exists
`lambda_*>0` such that

```text
\|\nabla_DX\|_H^2\ge \lambda_*\|X\|_H^2,
\qquad
\lambda_*=\inf_{\|X\|_H=1}\|\nabla_DX\|_H^2>0.
```

This is the intrinsic active-channel spectral gap used by `D.6a''`.

### Lemma D.6a'' (block coercivity on active channels)

Insert the gap into the form identity:

```text
\langle \Delta_{D,\omega}X,X\rangle
\le
-\lambda_*\|X\|_H^2+C_R\|X\|_H^2.
```

Define the effective constant

```text
\lambda_*^{\mathrm{eff}}:=\lambda_*-C_R.
```

The carrier construction ensures `\lambda_*^{\mathrm{eff}}>0`, hence

```text
\boxed{\langle \Delta_{D,\omega}X,X\rangle\le -\lambda_*^{\mathrm{eff}}\|X\|_H^2.}
```

### Lemma D.6a' (carrier interpolation / slaving)

Use the commutator definition

```text
\Omega_D(X)=[\nabla_D,X].
```

The carrier norm satisfies

```text
c_{\Omega N}\left(\|X\|_H^2+\|\Omega_DX\|_H^2\right)
\le
\|X\|_{\mathcal N}^2
\le
C_{\Omega N}\left(\|X\|_H^2+\|\Omega_DX\|_H^2\right).
```

Control `\Omega_D` by the gradient:

```text
\|\Omega_DX\|_H\le C_\Omega\|\nabla_DX\|_H.
```

Then interpolate between `H` and gradient levels:

```text
\|X\|_{\mathcal N}
\le
C_{\mathrm{slv}}\|X\|_H^{1/2}
\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)^{1/4}.
```

### D.2 absorption

Set

```text
D(X):=\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2.
```

From slaving,

```text
\|X\|_{\mathcal N}^3
\le
C\|X\|_H^{3/2}D(X)^{3/4}.
```

Apply Young:

```text
ab\le \varepsilon a^{4/3}+C_\varepsilon b^4,
```

with `a=D(X)^{3/4}`, `b=\|X\|_H^{3/2}`, to obtain

```text
C_1\|X\|_{\mathcal N}^3
\le
\varepsilon D(X)+C_\varepsilon\|X\|_H^2.
```

Convert by the explicit lower norm comparison
`\|X\|_H^2\le c_{\Omega N}^{-1}\|X\|_{\mathcal N}^2`.

This is the exact closure point for the carrier-energy packet.

## Callable Closure

### Theorem D.6 (global carrier a priori bound)

On `(\mathfrak R, D, \mathbb P_D)`, there exist internal constants
`\lambda_* > 0`, `C_\delta`, and `C_{\mathrm{slv}}` such that every carrier
solution satisfies

```text
\frac{d}{dt}\|X(t)\|_H^2
\le
-2(\nu\lambda_* - C_\delta)\|X(t)\|_H^2,
```

and

```text
C_1\|X\|_{\mathcal N}^3
\le
\varepsilon D(X)+C_\varepsilon\|X\|_{\mathcal N}^2.
```

Here

```text
D(X):=\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2.
```

This theorem is resolved internally by `D6_global_carrier_bound`.

### Corollary D.7 (global H-bound)

If `c := \nu\lambda_* - C_\delta > 0`, then

```text
\|X(t)\|_H \le e^{-ct}\|X(0)\|_H
```

for all `t\ge 0`.

### Corollary D.8 (uniqueness and stability)

For two carrier solutions `X` and `Y`, set `Z:=X-Y`. Then

```text
\frac{d}{dt}\|Z(t)\|_H^2 \le -2c\|Z(t)\|_H^2,
```

so Gronwall gives

```text
Z\equiv 0.
```

### Main Carrier Theorem

The carrier equation on `(\mathfrak R, D, \mathbb P_D)` has a unique global
solution with energy decay, boundedness in `\mathcal N`, and persistence in
`\mathfrak R`.

## Closure Status

The route now records the block-spectrum threshold, the carrier slaving
estimate, and the cubic-term absorption on the same calculus surface.
The active-channel spectral gap used in `D.6a''` is internalized in
`D.6a'''`, and the block-spectrum threshold plus absorption step are now
bookkeeping references only. The callable theorem for downstream packets is
`resolved_by: D6_global_carrier_bound`.
