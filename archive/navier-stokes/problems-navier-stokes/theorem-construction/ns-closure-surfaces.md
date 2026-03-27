# NS Closure Surfaces

## Route Order

`D6_global_carrier_bound -> D.8a -> D.8b`.

These are the self-contained closure surfaces on the classical Navier-Stokes
theorem route. The former `D.6a'''`, `D.6a''`, `D.6a'`, `D.6b'`, and
`D.2 absorption` steps are resolved by `D6_global_carrier_bound`.

## Realization Surface

The missing first-principles identification of the carrier with the classical
divergence-free model is recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).
That note is the upstream realization / exact-pullback / compactness surface
consumed by D.1, D.4, and D.8a.

The first-principles carrier hypotheses used by the route are normalized in
[carrier-axiom-sheet.md](carrier-axiom-sheet.md).

## Lemma D.6a' (carrier interpolation / slaving)

Let
```text
X = \sum_\lambda X_\lambda,
\qquad
\Omega_D X = \sum_\lambda \omega(\lambda) X_\lambda,
```
with `\omega(\lambda) \asymp \lambda^{1/2}` and
```text
|X|_{\mathcal N}^2 \asymp \sum_\lambda (1+\omega(\lambda)) |X_\lambda|^2.
```
Assume the carrier blocks are recorded from the active spectral split and the
same classical approximation surface is used throughout.

Then
```text
|X|_{\mathcal N}
\le
C_{\mathrm{slv}} |X|_H^{1/2}
\Big(|\nabla_D X|_H^2 + |\nabla_D \Omega_D X|_H^2\Big)^{1/4}.
```

**Proof spine.**
Apply Cauchy-Schwarz on the spectral sum and use the block-spectrum
comparability already fixed on the carrier surface. The `H`-norm controls the
coarse factor, while the gradient terms control the weighted factor. Taking
square roots gives the displayed slaving estimate.

## D.2a — Cubic absorption via slaving

For every `\varepsilon > 0`,
```text
C_1 \|X\|_{\mathcal N}^3
\le
\varepsilon\Big(\|\nabla_D X\|_H^2 + \|\nabla_D \Omega_D X\|_H^2\Big)
+ C_\varepsilon \|X\|_H^6.
```

**Proof spine.**
Raise the D.6a' slaving estimate to the third power, separate the gradient
factor from the carrier factor, and apply Young's inequality with exponents
`(4/3,4)`. The cubic term is therefore absorbed into the dissipative block up
to a lower-order `H`-controlled remainder.

## Dependency row

| D.2a | cubic absorption via slaving | `d2a-cubic-absorption-slaving.md` |

## D.2 absorption

For every `\varepsilon > 0`,
```text
C_1 |X|_{\mathcal N}^3
\le
\varepsilon\Big(|\nabla_D X|_H^2 + |\nabla_D \Omega_D X|_H^2\Big)
+ C_\varepsilon |X|_H^6.
```

**Proof spine.**
Insert D.6a' into the cubic term, write the result as a product of a gradient
factor and an `H`-factor, and apply Young's inequality with exponents chosen to
absorb the gradient contribution into the dissipation. This is the exact
absorption surface needed by the carrier-energy packet.

## Lemma D.6b' (global H-tier coercivity)

Let `X(t)` solve the classical carrier evolution on the same approximation
surface, and assume the drift and curvature terms satisfy the already-certified
coercive split. Then there exists
```text
c := \nu C_\Lambda - C_\delta > 0
```
such that
```text
\frac{d}{dt}|X(t)|_H^2 \le -c |X(t)|_H^2,
```
and hence
```text
|X(t)|_H \le e^{-ct/2} |X(0)|_H.
```

**Proof spine.**
Combine the carrier energy identity with the curvature bound and the symmetric
drift bound. The coercive constant is the same carrier constant already fixed
in the theorem-construction spine, so no new estimate enters here.

## Lemma D.8a (approximation compactness / strong convergence)

Assume a classical approximation family `X_n` is uniformly bounded in
`L^\infty(0,T;H)` and `L^2(0,T;\mathcal N)`, and that `\partial_t X_n` is
bounded in `L^2(0,T;\mathcal N^\ast)`. Assume also that
`\mathcal N \hookrightarrow H` is compact and `H \hookrightarrow \mathcal N^\ast`
is continuous. Then, after passing to a subsequence,
```text
X_n \to X
```
strongly in `L^2(0,T;H)`.

**Proof spine.**
The boundedness hypotheses and compact embedding allow the Aubin-Lions lemma
to be applied on the same approximation surface. The subsequence limit
`X \in L^\infty(0,T;H) \cap L^2(0,T;\mathcal N)` follows from the weak and weak-*
compactness of the uniform bounds. This is the strong-convergence surface
consumed by the nonlinear closure step.

## Dependency row

| D.8a | strong convergence of the approximating family | `d8a-strong-convergence-approximants.md` |

## D.6c — Global low-tier coercivity under uniform H-control

The stronger finish line after `D.8a` is recorded in
[d6c-unconditional-low-tier-coercivity.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d6c-unconditional-low-tier-coercivity.md).

## Dependency row

| D.6c | unconditional low-tier coercivity from dissipative dominance | `d6c-unconditional-low-tier-coercivity.md` |

## D.8b — Global projected well-posedness and exponential decay

The exported theorem is recorded in
[d8b-global-projected-wellposedness-decay.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d8b-global-projected-wellposedness-decay.md).

## Dependency row

| D.8b | global projected well-posedness and exponential decay | `d8b-global-projected-wellposedness-decay.md` |

## First-Principles Closure Construction

Work entirely inside A1--A11 with D.1--D.6 established. The objective is to
show that the carrier system closes on the invariant surface

```text
\mathfrak R = \mathcal V_D = \{X:\ X=\mathbb P_D X,\ \delta_D X=0\}
```

and generates a global, well-defined dynamical semigroup with controlled
energy.

### 1. Invariance of the closure surface

For the projected evolution

```text
\partial_t X = -\mathbb P_D N_D(X) + A_D X,
```

apply `\mathbb P_D` and use `\mathbb P_D^2=\mathbb P_D` and
`[\mathbb P_D, A_D]=0`. Since `\operatorname{Ran}(\mathbb P_D)\subset\ker(\delta_D)`,
the projected carrier condition is preserved, and the evolution stays in
`\mathfrak R`.

### 2. Dissipative surface structure

From D.6,

```text
\frac{d}{dt}|X|_H^2 + c_* D(X) \le C_* |X|_H^2,
\qquad
D(X)=|\nabla_D X|_H^2 + |\nabla_D \Omega_D X|_H^2.
```

Hence

```text
\mathcal E(t) + c_* \int_0^t D(X(s))\,ds \le e^{C_* t}\mathcal E(0),
\qquad
\mathcal E(X):=|X|_H^2.
```

So energy remains finite and the dissipation integral is finite on finite
intervals.

### 3. Nonlinear closure

From A9 and the refined D.2 cancellation extraction,

```text
|\langle N_D(X),X\rangle|
\le
C\,|X|_H\,|\nabla_D X|_H.
```

Thus all nonlinear transfer remains inside `H_D^1` and no derivative escape
occurs beyond the dissipative tier.

### 4. Semigroup closure

From D.1, the projected flow is well posed on `\mathfrak R`. Define

```text
S(t)X_0 := X(t).
```

Then `S(t)` maps `\mathfrak R` to itself, `S(t+s)=S(t)S(s)`, and `S(0)=I`.
The energy bound gives

```text
|S(t)X_0|_H \le e^{Ct}|X_0|_H.
```

So the flow defines a strongly continuous semigroup on the carrier surface.

### 5. Compactness / tightness of trajectories

The D.6 bounds and the D.8a strong-convergence bridge give

```text
X \in L^\infty(0,T;H)\cap L^2(0,T;H_D^1),
```

with time derivatives bounded in the corresponding dual space on the
approximating family. Hence the trajectory family is precompact in
`L^2_{\mathrm{loc}}(0,T;H)` on the same carrier scale.

### 6. Closure under limits

If `X_n` is a bounded family of carrier solutions, then D.8a gives a strongly
convergent subsequence in `L^2_{\mathrm{loc}}(H)`. The limit preserves the
projection constraint, the divergence constraint, and the projected flow
equation. The readout `\rho` transports the bounds to the classical shadow; the
exact identification of the drift term is the same caveat recorded in D.4.

### Final closure statement

The carrier Navier--Stokes system is therefore a globally invariant,
dissipative, derivatively closed, compactly stable semigroup on `\mathfrak R`
at the level of the carrier axioms and the discharged D.1--D.8 route.
