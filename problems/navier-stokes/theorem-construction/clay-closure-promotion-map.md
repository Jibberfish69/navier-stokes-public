# Clay Closure Promotion Map

## Purpose

This file records the exact formal promotions still required to close the
Navier-Stokes lane in the Clay sense.

It is not a proof. It is the minimal theorem-order execution map that turns the
current scaffold into a discharge plan.

## Required Promotions

### 1. D.1 operator package promotion

Promote the projected mild-flow theorem on

```text
H:=\mathcal V_{D,\omega},
\qquad
A_D:=\nu\,\mathbb P_{D,\omega}\Delta_{D,\omega},
\qquad
B_D(X):=\mathbb P_{D,\omega}\big(\delta_\omega X+N_D(X)\big),
```

using the exact hypotheses

```text
[\mathbb P_{D,\omega},\delta_\omega]=0,
\qquad
[\mathbb P_{D,\omega},\Delta_{D,\omega}]=0,
\qquad
N_D(H)\subseteq \operatorname{Dom}(\mathbb P_{D,\omega}),
```

together with sectoriality of `A_D`, analyticity of `e^{-tA_D}`, and local
Lipschitzness of `B_D` on `D(A_D^{1/2})`.

This promotes D.1 from assumption-level semilinear packaging to a genuine
projected-flow theorem.

### 2. H.1 carrier-leakage promotion

Promote the carrier-leakage lemma by proving the reduced-resolvent and
commutator-control package through three explicit sublemmas:

Canonical assembled proof surface:
`theorem-construction/h1-carrier-leakage-direct-completion.md`.

```text
P_\perp A_i(X)e_\beta
=
(\Delta_D-\lambda_\beta)^{-1}P_\perp[\Delta_D,A_i(X)]e_\beta,
\qquad
A_i(X):=Q_i\mathbb P_DN_D(X),
```

and

1. `H.1.1` localization commutator formula:

```text
[\Delta_D,Q_i]Z
=
(\nabla_D^2Q_i)Z
+
2(\nabla_DQ_i)\cdot \nabla_DZ
+
[\mathcal R_D,Q_i]Z.
```

2. `H.1.2` transport commutator expansion on carrier modes:

```text
[\Delta_D,N_D(X)]e_\beta
=
[\Delta_D,\nabla_X]e_\beta
+
[\Delta_D,\iota_{(\cdot)}\Omega_D(X)]e_\beta.
```

3. `H.1.3` interpolation absorption to dissipation scale:

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

Together with the coherent carrier control

```text
\|N_{\mathrm{coh}}(X)\|
+
\|[\nabla_D,N_{\mathrm{coh}}(X)]\|
\le
C\,\Psi(\mathcal E_D(X))^{1/2},
```

this yields

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

This is the formal core of D.2.

Two micro-claims remain inside this boundary:

```text
\sigma_0(\mathcal C_{ij})=0
\quad\text{on overlap carrier modes,}
```

```text
P_\perp N_D(X)P_K \in \Psi^{-1}_{\mathrm{coh}}.
```

### 3. D.2 coercive estimate promotion

With H.1 promoted, close the bilinear hinge

```text
|\langle \Delta_DX,\mathbb P_DN_D(X)\rangle|
+
|\langle \Omega_D(X),[\nabla_D,\mathbb P_DN_D(X)]\rangle|
\le
\varepsilon\,\mathcal D_D(X)
+
C_\varepsilon\,\Psi(\mathcal E_D(X)),
```

so that

```text
\frac{d}{dt}\mathcal E_D(X)
+
c_D\,\mathcal D_D(X)
\le
C\,\Psi(\mathcal E_D(X)).
```

This promotes D.2 from a conditional reduction to a real coercive theorem.

### 4. L and C.1 promotion

Promote the exact lift package

```text
\mathcal C(\partial_t X)=\partial_t u,\quad
\mathcal C(\Delta_DX)=\Delta u,\quad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u,\quad
\mathcal C(\mathbb P_DN_D(X))=\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u),
```

and the continuation comparison

```text
\|u\|_{H^1}+\|\nabla\times u\|_{L^2}
\le
C\Big(\|\Delta_D^{1/2}X\|+\|\Omega_D(X)\|\Big),
```

with the stronger continuation norm

```text
\|u\|_{H^s}\le C\|X\|_{H_D^s},
\qquad
s>\frac52.
```

This yields the exact descent and continuation bridge from the ontic flow to the
classical equation.

### 5. Warrant promotion

Promote the same-surface warrant theorem

```text
(S1 \wedge S2 \wedge M1 \wedge M2 \wedge K1 \wedge K2 \wedge K3 \wedge G1 \wedge G2 \wedge C1 \wedge C2)
\Longrightarrow
\text{the Clay whole-space existence-and-smoothness statement with } f=0 \text{ follows,}
```

under the exact condition that all theorem-critical control mechanisms on the
route are realized on the active whole-space branch with no essential use of
modified-equation terms.

This is the step that promotes `Theorem 2.1` from a route theorem to a genuine
same-surface warrant theorem.

## Exact Remaining Local Checks

The lane-local unresolved checks are now compressed to:

1. `[\mathbb P_{D,\omega},\delta_\omega]=0`,
   `[\mathbb P_{D,\omega},\Delta_{D,\omega}]=0`,
   and local Lipschitzness of `B_D`.
2. Proof of sublemmas `H.1.1`, `H.1.2`, and `H.1.3`, including
   `\sigma_0(\mathcal C_{ij})=0` and
   `P_\perp N_D(X)P_K \in \Psi^{-1}_{\mathrm{coh}}`.
3. Exact proof of the lift identities and the `H_D^s -> H^s` comparison on the
   chosen theorem surface.
4. Final same-surface promotion of the source-grounded four-bridge route through
   Theorem `W`.

## Execution Order

The exact closure order is:

```text
D.1 operator package
\to
H.1 carrier-leakage lemma
\to
D.2 coercive theorem
\to
L exact lift theorem
\to
C.1 continuation comparison
\to
W same-surface warrant theorem
\to
Theorem 2.1.
```

## Source Anchors

- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-generator-sector-invariance.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-carrier-commutator-coercive-lemma.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-hypothesis-h-carrier-leakage-package.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d1-projected-nc-flow-well-posedness.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d2-global-coercive-energy-estimate.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d4-shadow-continuation-theorem.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d5-clay-theorem-integration.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/classical-closure-warrant-carrier.md`
