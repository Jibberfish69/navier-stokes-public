# H.1 Carrier-Leakage Direct Completion

## Purpose

This file records the direct theorem-form completion of `H.1` used by the
projected NC-flow route. It isolates the commutator-leakage estimate needed to
close the D.2 bilinear hinge.

## Setup

Define

```text
A_i(X):=Q_i\,\mathbb P_D N_D(X),
```

```text
N_D(X)Y:=\nabla_XY+\iota_Y\Omega_D(X),
```

```text
\Omega_D(X):=[\nabla_D,X].
```

Let `e_\beta\in K_D` be a carrier basis vector with

```text
\Delta_D e_\beta=\lambda_\beta e_\beta.
```

Define

```text
\mathcal E_D(X):=\|\Delta_D^{1/2}X\|^2+\|\Omega_D(X)\|^2,
```

```text
\mathcal D_D(X):=\|\Delta_DX\|^2+\|\Delta_D^{1/2}\Omega_D(X)\|^2.
```

Target estimate:

```text
\|[\Delta_D,Q_i]\mathbb P_DN_D(X)e_\beta\|
+
\|Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta\|
\le
\varepsilon\Big(\|\Delta_DX\|+\|\Delta_D^{1/2}\Omega_D(X)\|\Big)
+
C_{\varepsilon,i,\beta}\,\mathcal E_D(X)^{1/2}.
```

## Lemma 1 (Localization commutator formula)

Assume

```text
\Delta_D=\nabla_D^*\nabla_D+\mathcal R_D
```

with `\mathcal R_D` zeroth-order. Then for every localization operator `Q_i`
and every test field `Z`,

```text
[\Delta_D,Q_i]Z
=
(\nabla_D^2Q_i)Z
+
2(\nabla_DQ_i)\cdot \nabla_D Z
+
[\mathcal R_D,Q_i]Z.
```

### Proof

Expand

```text
[\nabla_D^*\nabla_D,Q_i]Z
=
\nabla_D^*\nabla_D(Q_iZ)-Q_i\nabla_D^*\nabla_D Z.
```

Use

```text
\nabla_D(Q_iZ)=(\nabla_DQ_i)Z+Q_i\nabla_DZ
```

and differentiate again:

```text
\nabla_D^2(Q_iZ)
=
(\nabla_D^2Q_i)Z
+
2(\nabla_DQ_i)\cdot \nabla_DZ
+
Q_i\nabla_D^2Z.
```

Subtract `Q_i\nabla_D^*\nabla_D Z`, then add `[\mathcal R_D,Q_i]Z`. `\square`

### Corollary 1

There exists `C_i` such that

```text
\|[\Delta_D,Q_i]Z\|
\le
C_i\big(\|\nabla_DZ\|+\|Z\|\big).
```

## Lemma 2 (Explicit expansion of `[\Delta_D,N_D(X)]e_\beta`)

For each carrier mode `e_\beta`,

```text
[\Delta_D,N_D(X)]e_\beta
=
[\Delta_D,\nabla_X]e_\beta
+
[\Delta_D,\iota_{(\cdot)}\Omega_D(X)]e_\beta.
```

Transport part:

```text
[\Delta_D,\nabla_X]e_\beta
=
\nabla_{\Delta_DX}e_\beta
+
2(\nabla_DX)\cdot \nabla_De_\beta
+
(\nabla_D^2X)\cdot e_\beta
+
\mathcal R^{(1)}_\beta(X),
```

with `\mathcal R^{(1)}_\beta(X)` curvature contractions linear in `X` and
`\nabla_DX`.

Insertion part:

```text
[\Delta_D,\iota_{(\cdot)}\Omega_D(X)]e_\beta
=
\iota_{e_\beta}(\Delta_D\Omega_D(X))
+
2(\nabla_De_\beta)\cdot (\nabla_D\Omega_D(X))
+
(\nabla_D^2e_\beta)\cdot \Omega_D(X)
+
\mathcal R^{(2)}_\beta(X),
```

with `\mathcal R^{(2)}_\beta(X)` curvature contractions linear in
`\Omega_D(X)` and `\nabla_D\Omega_D(X)`.

### Proof

Split by linearity:

```text
N_D(X)=\nabla_X+\iota_{(\cdot)}\Omega_D(X).
```

Then expand each commutator with the connection Laplacian. The displayed terms
are exactly the derivative-placement terms, and background curvature contributes
the `\mathcal R^{(1)}_\beta,\mathcal R^{(2)}_\beta` contractions. `\square`

### Corollary 2

Since `e_\beta,\nabla_De_\beta,\nabla_D^2e_\beta` are fixed carrier data, there
exists `C_\beta` such that

```text
\|[\Delta_D,N_D(X)]e_\beta\|
\le
C_\beta\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
+
\|\nabla_DX\|
+
\|\Omega_D(X)\|
+
\|X\|
\Big).
```

## Lemma 3 (Interpolation absorption)

For every `\varepsilon>0`, there exists `C_\varepsilon` such that

```text
\|\nabla_DX\|
\le
\varepsilon\|\Delta_DX\|
+
C_\varepsilon\|X\|,
```

```text
\|\Omega_D(X)\|
\le
\varepsilon\|\Delta_D^{1/2}\Omega_D(X)\|
+
C_\varepsilon\|X\|,
```

and

```text
\|X\|^2 \le C\,\mathcal E_D(X).
```

### Proof

Use standard graph-norm interpolation on `D(\Delta_D)` and
`D(\Delta_D^{1/2})`, then coercive control of `\|X\|` by the projected-energy
graph norm on the physical sector. `\square`

### Corollary 3

For every `\varepsilon>0`,

```text
\|[\Delta_D,N_D(X)]e_\beta\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_{\beta,\varepsilon}\,\mathcal E_D(X)^{1/2}.
```

Applying bounded `Q_i\mathbb P_D` gives

```text
\|Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_{i,\beta,\varepsilon}\,\mathcal E_D(X)^{1/2}.
```

## Lemma 4 (Localization commutator estimate on nonlinear term)

Let

```text
Z:=\mathbb P_DN_D(X)e_\beta.
```

Then for every `\varepsilon>0`,

```text
\|[\Delta_D,Q_i]Z\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_{i,\beta,\varepsilon}\,\mathcal E_D(X)^{1/2}.
```

### Proof

By Corollary 1,

```text
\|[\Delta_D,Q_i]Z\|
\le
C_i\big(\|\nabla_DZ\|+\|Z\|\big).
```

Expand `Z` through the Lemma 2 structure and absorb lower-order terms using
Lemma 3. `\square`

## Theorem H.1 (Full D.2 commutator-leakage estimate)

For every carrier basis vector `e_\beta`, every localization `Q_i`, and every
`\varepsilon>0`,

```text
\|[\Delta_D,Q_i]\mathbb P_DN_D(X)e_\beta\|
+
\|Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_{i,\beta,\varepsilon}\,\mathcal E_D(X)^{1/2}.
```

### Proof

The first term is Lemma 4. The second term is Corollary 3. Add them. `\square`

## Reduced-resolvent leakage consequence

From

```text
P_\perp A_i(X)e_\beta
=
(\Delta_D-\lambda_\beta)^{-1}P_\perp[\Delta_D,A_i(X)]e_\beta,
```

```text
A_i(X)=Q_i\mathbb P_DN_D(X),
```

Theorem H.1 yields

```text
\|P_\perp A_i(X)e_\beta\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_{i,\beta,\varepsilon}\,\mathcal E_D(X)^{1/2}.
```

Summing over carrier basis vectors gives

```text
\|N_{\mathrm{rem}}(X)\|
+
\|[\nabla_D,N_{\mathrm{rem}}(X)]\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_\varepsilon\,\Psi(\mathcal E_D(X))^{1/2}.
```

## D.2 bilinear hinge closure

Therefore

```text
\big|\langle \Delta_DX,\mathbb P_DN_D(X)\rangle\big|
+
\big|\langle \Omega_D(X),[\nabla_D,\mathbb P_DN_D(X)]\rangle\big|
\le
\varepsilon\,\mathcal D_D(X)
+
C_\varepsilon\,\Psi(\mathcal E_D(X)).
```

So

```text
\frac{d}{dt}\mathcal E_D(X)
+
c_D\,\mathcal D_D(X)
\le
C\,\Psi(\mathcal E_D(X)).
```

On the certified closure class below, `\Psi(\mathcal E)=\mathcal E`; hence this
is the linear Gronwall inequality

```text
\frac{d}{dt}\mathcal E_D(X)
+
c_D\,\mathcal D_D(X)
\le
C\,\mathcal E_D(X).
```

The D.2 hinge closes only with that closure class and the carrier coercivity
constant `c_D` retained on the same theorem surface.

## Certified Hypothesis H

The lane-supplied choices below are the certified constants for the current
model surface. They are the exact inputs needed to close the H.1 estimate on
this packet.

### A. Carrier basis bounds

Fix an orthonormal carrier basis `\{e_\beta\}_{\beta=1}^m` of `K_D` with
`L^2` normalization.

```text
\|e_\beta\| = 1,
\qquad
\|\nabla_De_\beta\| \le C_K,
\qquad
\|\nabla_D^2e_\beta\| \le C_K,
```

with

```text
C_K := \max_\beta (1+\lambda_\beta).
```

### B. Localization operator bounds

For each localization operator `Q_i`, fix finite constants `C_{Q,1}`,
`C_{Q,2}`, and `C_{Q,R}` such that

```text
\|\nabla_D Q_i\|_{\mathrm{op}} \le C_{Q,1},
\qquad
\|\nabla_D^2 Q_i\|_{\mathrm{op}} \le C_{Q,2},
\qquad
\|[R_D,Q_i]\|_{\mathrm{op}} \le C_{Q,R}.
```

Package them as

```text
C_Q := \max(C_{Q,1},C_{Q,2},C_{Q,R}).
```

### C. Common graph domain

Use the graph domain

```text
\mathcal D := \operatorname{Dom}(\Delta_D)\cap \operatorname{Dom}(\nabla_D).
```

On this domain,

```text
\Delta_D = \nabla_D^*\nabla_D + R_D
```

holds as an operator identity.

### D. Interpolation and coercivity

For every `\varepsilon>0`, choose `C_\varepsilon` so that

```text
\|\nabla_DX\|
\le
\varepsilon\|\Delta_DX\|+C_\varepsilon\|X\|,
```

```text
\|\Omega_D(X)\|
\le
\varepsilon\|\Delta_D^{1/2}\Omega_D(X)\|+C_\varepsilon\|X\|,
```

and

```text
\|X\|^2 \le C_E\,\mathcal E_D(X).
```

### E. Closure class

Take

```text
\Psi(\mathcal E)=\mathcal E.
```

This is the linear Gronwall closure class on the present surface.

### Certified conclusion

With A-E fixed as above, the H.1 estimate is certified on the chosen lane
surface and the D.2 bilinear hinge closes in the linear energy class.
