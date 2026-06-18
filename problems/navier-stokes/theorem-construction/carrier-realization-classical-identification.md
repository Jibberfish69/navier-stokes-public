# NS Carrier Realization And Classical Identification

## Status

Theorem-grade classical realization / identification surface for the classical NS model. This note
instantiates the carrier axioms on the declared divergence-free Euclidean
setting \(H=L^2_\sigma(\mathbb R^3)\), \(V=H^1_\sigma(\mathbb R^3)\), and
\(V'=H^{-1}_\sigma(\mathbb R^3)\), and isolates the exact pullback and compactness steps used by D.1, D.4,
and D.8a.

It does not introduce a new analytic principle. It packages the classical
functional-analytic realization needed to turn the abstract carrier sheet into
an explicit Euclidean model.

## Realized Carrier

Fix the classical divergence-free carrier on the Euclidean model

```text
H := L^2_\sigma(\mathbb R^3),
\qquad
V := H^1_\sigma(\mathbb R^3),
\qquad
V' := H^{-1}_\sigma(\mathbb R^3).
```

The periodic version `L^2_\sigma(\mathbb T^3)` is kept only as an auxiliary
compact variant in the compactness remark below.

The common realized time class used below is

```text
X \in L^\infty(0,T;H)\cap L^2(0,T;V),\qquad \partial_t X \in L^2(0,T;V').
```

On the strong side we use the classical Stokes regularity class

```text
X \in C([0,T];V)\cap L^2(0,T;H^2_\sigma).
```

The classical realization of the carrier data is:

```text
\mathbb P_D := \mathbb P,
\qquad
D := (I-\Delta)^{1/2},
\qquad
\nabla_D := \nabla,
\qquad
\delta_D := -\mathrm{div},
```

```text
\Delta_{D,\omega} := -\Delta
\quad\text{(the positive Stokes/Laplacian sign convention used by the route)},
\qquad
\delta_\omega := 0,
```

```text
N_D(X) := \mathbb P\big((X\cdot\nabla)X\big),
\qquad
\Omega_D(X) := \nabla X
\quad
\text{(equivalently curl, up to coercive equivalence)},
```

and

```text
H_D^s := H^s_\sigma.
```

The carrier space becomes

```text
\mathfrak R = H^1_\sigma \cap \ker(\mathrm{div}) = H^1_\sigma
```

with the standard divergence-free interpretation.

## Realization Audit

This section discharges the carrier sheet line by line on the realized classical
model.

### (a) Leray projector

The Leray projector has Fourier symbol

```text
\widehat{\mathbb P f}_i(\xi)
=
\left(\delta_{ij}-\frac{\xi_i\xi_j}{|\xi|^2}\right)\hat f_j(\xi).
```

Consequently,

```text
\mathbb P^2=\mathbb P,
\qquad
\mathbb P^*=\mathbb P,
\qquad
\|\mathbb P\|_{L^2\to L^2}=1.
```

It preserves `H^s_\sigma` for every `s\ge 1` and commutes with `\nabla` on the
natural domain.

**Proof.**
For each `\xi \neq 0`, the matrix

```text
P(\xi):=\left(\delta_{ij}-\frac{\xi_i\xi_j}{|\xi|^2}\right)_{ij}
```

is the orthogonal projector onto `\xi^\perp`, so `P(\xi)^2=P(\xi)=P(\xi)^*`
and `\|P(\xi)\|_{\mathrm{op}}\le 1`. Plancherel therefore gives
`\|\mathbb P f\|_{L^2}\le \|f\|_{L^2}` and the same symbol identities give
idempotence and self-adjointness. Since `i\xi_k` commutes with `P(\xi)`,
the projector preserves `H^s` and commutes with `\nabla`. \(\square\)

### (b) Generator

Define the classical Stokes operator

```text
A := -\mathbb P\Delta,
\qquad
D(A)=H^2\cap L^2_\sigma.
```

Then

```text
\langle AX, X\rangle = \|\nabla X\|_{L^2}^2,
```

so `A` is self-adjoint and positive. Therefore `e^{-tA}` is analytic on
`L^2_\sigma`. This is the sectorial block required by D.1.

**Proof.**
On `L^2_\sigma(\mathbb R^3)`, the Leray projector acts as the identity on the
Fourier side, so `A` has multiplier `|\xi|^2` on the divergence-free sector.
Hence `A` is nonnegative and self-adjoint with domain `H^2\cap L^2_\sigma`.
The semigroup `e^{-tA}` has multiplier `e^{-t|\xi|^2}`, which is holomorphic
for `\Re t>0`; this is the realized analytic Stokes semigroup. \(\square\)

### (c) Nonlinearity and cancellation

Set

```text
N_D(X)=\mathbb P\big((X\cdot\nabla)X\big).
```

Then `N_D:H^1_\sigma\to H^{-1}_\sigma`, and

```text
\langle (X\cdot\nabla)X, X\rangle = 0
```

for divergence-free `X` by classical integration by parts. Hence

```text
\langle N_D(X), X\rangle = 0.
```

Moreover,

```text
\|N_D(X)-N_D(Y)\|_{H^{-1}}
\le
C\big(\|X\|_{H^1}+\|Y\|_{H^1}\big)\|X-Y\|_{H^1}.
```

This is the nonlinear block used by D.1 and D.2.

**Proof.**
Let `\varphi \in H^1_\sigma`. Since `\nabla\cdot X=0`,

```text
\langle (X\cdot\nabla)X,\varphi\rangle
=
-\int_{\mathbb R^3} (X\cdot\nabla)\varphi \cdot X\,dx.
```

By Sobolev embedding and interpolation,
`\|X\|_{L^6}\le C_6\|X\|_{H^1}` and
`\|X\|_{L^3}\le C_3\|X\|_{H^1}`, so

```text
|\langle (X\cdot\nabla)X,\varphi\rangle|
\le
\|X\|_{L^6}\|X\|_{L^3}\|\nabla\varphi\|_{L^2}
\le
C_6C_3\|X\|_{H^1}^2\|\varphi\|_{H^1}.
```

This proves `H^1_\sigma \to H^{-1}_\sigma`. The bilinear estimate and the
local Lipschitz consequence follow by polarization. Taking `\varphi=X` gives
the classical cancellation. \(\square\)

### (d) Commutator and structure control

With `\Omega_D=\nabla`, the commutator

```text
[\Omega_D, A]
```

vanishes identically on the realized carrier. In particular,

```text
[\Omega_D,A]X=0,
\qquad
\|[\Omega_D, A]X\|_{H^{s-1}}=0\le C\|X\|_{H^s}.
```

This is the propagation estimate used in D.1, D.4, and D.6.

**Proof.**
On the realized Euclidean model, both `\nabla` and `A=-\mathbb P\Delta` are
Fourier multipliers, and their multipliers commute pointwise. Hence the
commutator vanishes exactly. \(\square\)

### (e) Exact pullback

On the realized carrier, define

```text
\rho = \mathrm{Id}_{L^2_\sigma}.
```

Then

```text
\rho(\mathbb P_DX)=\mathbb P\,\rho(X),
\qquad
\rho(\nabla_DX)=\nabla\rho(X),
```

```text
\rho(\Delta_{D,\omega}X)=\Delta\rho(X),
\qquad
\rho(N_D(X))=\mathbb P\big((\rho(X)\cdot\nabla)\rho(X)\big).
```

The drift channel is fixed in the pressure gauge:

```text
\rho(\delta_\omega X)=0.
```

So the carrier evolution pushes forward exactly to the classical incompressible
Navier--Stokes system, with the pressure recovering the gradient remainder in
the usual way:

```text
-\Delta p = \nabla\cdot((u\cdot\nabla)u).
```

**Proof.**
Because `\rho` is the identity on the realized carrier, the linear and
nonlinear intertwining identities follow from substituting the realized carrier into the defining formulas. The Leray projection removes
the gradient component of the convective term, and the remaining gradient
remainder is recovered as the pressure by solving the Poisson equation above
with the standard normalization. \(\square\)

### (f) Compactness

If `X_n` is bounded in

```text
L^\infty(0,T;L^2_\sigma)\cap L^2(0,T;H^1_\sigma)
```

and

```text
\partial_tX_n \text{ is bounded in } L^2(0,T;H^{-1}_\sigma),
```

then:

1. On `\mathbb T^3`, the embedding `H^1_\sigma\hookrightarrow L^2_\sigma` is
   compact, so Aubin--Lions gives strong convergence in `L^2(0,T;L^2_\sigma)`.
2. On `\mathbb R^3`, Aubin--Lions gives strong convergence in
   `L^2(0,T;L^2_{\mathrm{loc}})` and the energy tail bound globalizes the limit
   on the fixed admissible data class.

This is the compactness bridge required by D.8a.

Reference point: Boyer--Fabrie, *Mathematical Tools for the Study of the
Incompressible Navier--Stokes Equations and Related Models*, Theorem II.5.16
(Aubin--Lions--Simon).

## Theorem R1 (Carrier realization theorem)

On the realized carrier above, the abstract axioms A1--A11 become standard
facts of classical incompressible Navier--Stokes analysis.

### Projection structure

```text
\mathbb P : L^2 \to L^2_\sigma
```

is bounded, self-adjoint, and idempotent. It preserves `H^s_\sigma` for every
`s\ge 1`, commutes with `\nabla`, and satisfies `\operatorname{Ran}(\mathbb P)
\subset \ker(\mathrm{div})`.

### Sectoriality

The Stokes operator `-\mathbb P\Delta` is self-adjoint and nonnegative on
`L^2_\sigma`, with domain `H^2\cap L^2_\sigma`. Hence `\mathbb P\Delta_{D,\omega}`
generates an analytic semigroup on the realized carrier.

### Commutator control

The commutator tier is classical:

```text
[\Omega_D,\mathbb P\Delta_{D,\omega}]
```

vanishes on the realized Euclidean carrier. In particular, the
vorticity/gradient tier is propagated by the Stokes semigroup with no residual
commutator error.

### Nonlinearity mapping

The bilinear map

```text
N_D(U,V)=\mathbb P\big((U\cdot\nabla)V\big)
```

satisfies

```text
\|N_D(U,V)\|_{H^{-1}}\le C\|U\|_{H^1}\|V\|_{H^1}.
```

The classical cancellation

```text
\langle N_D(X),X\rangle = 0
```

holds for divergence-free `X` after the Leray projection and integration by
parts.

### Coercive quadratic form

With the route sign convention,

```text
\langle \Delta_{D,\omega}X, X\rangle = \|\nabla X\|_{L^2}^2
```

up to the standard identification of `\Delta_{D,\omega}` with the positive
Stokes operator. This is the classical energy identity used by D.2 and D.6.

### Norm equivalence

On the realized carrier,

```text
c_{\mathcal N}\|X\|_{H^1_\sigma}
\le
\|X\|_{\mathcal N}
\le
C_{\mathcal N}\|X\|_{H^1_\sigma}
```

and the `\Omega_D` tier is coercively equivalent to the same first-order
control. Thus the abstract carrier norm and the classical Sobolev norm agree
up to fixed constants.

**Proof.**
All quantities are the standard Euclidean Sobolev quantities on the realized
divergence-free space. The route norm is a finite sum of `L^2`, first
derivative, and vorticity-tier terms, so its equivalence with `H^1_\sigma` is
the standard first-order Sobolev equivalence on the divergence-free subspace.
\(\square\)

**Proof of Theorem R1.**
The projection structure, sectoriality block, nonlinear mapping, classical
cancellation, exact commutator identity, and norm equivalence were proved in
the audit blocks above on the realized Euclidean carrier. The remaining axioms
specialize as follows: `\delta_\omega=0` is the trivial bounded Lindblad term,
the curvature part `\mathcal R_{D,\omega}` vanishes in the classical model,
and the readout `\rho=\mathrm{Id}` will be handled in Theorem R4. Thus A1--A11
hold on the realized carrier as direct facts of the classical NS model.
\(\square\)

## Theorem R4 (Carrier--Classical equivalence)

On the realized carrier `H = L^2_\sigma(\mathbb R^3)`, the carrier evolution is
literally the classical Leray-projected incompressible Navier--Stokes system
under `\rho = \mathrm{Id}`. More precisely:

1. If `X` is a carrier solution in the common energy class
   `L^\infty(0,T;H)\cap L^2(0,T;V)`, interpreted distributionally on `V'`, then
   `u := \rho(X) = X` is exactly a Leray--Hopf weak solution of the classical
   NS system on the same interval.
2. Conversely, every Leray--Hopf weak solution `u` in that same class
   determines the same carrier state `X = \rho^{-1}(u) = u`.
3. Strong solutions correspond bijectively in the classical strong class
   `C([0,T];V)\cap L^2(0,T;H^2_\sigma)`, and uniqueness is asserted only in
   that strong class.
4. The pressure is recovered uniquely up to an additive constant from
   `-\Delta p = \nabla\cdot((u\cdot\nabla)u)`.

**Proof.**
Because `\rho` is the identity on the realized carrier, the carrier evolution
and the classical projected NS evolution are the same equation written in the
same Hilbert space. The Leray projector removes the gradient component of the
convective term, and the remaining gradient part is recovered by solving the
Poisson equation for the pressure. Weak and strong solution notions therefore
coincide with their classical counterparts on the realized model. \(\square\)

## Theorem R5 (Nonlinear limit passage)

Let `X_n` be a realized carrier sequence such that

```text
X_n \text{ is bounded in } L^\infty(0,T;L^2_\sigma)\cap L^2(0,T;H^1_\sigma),
```

and

```text
\partial_t X_n \text{ is bounded in } L^2(0,T;H^{-1}_\sigma).
```

Then, after extraction of a subsequence,

```text
X_n \to X \quad\text{strongly in } L^2(0,T;L^2_{\mathrm{loc}}(\mathbb R^3)),
```

and, on the fixed admissible data class with uniform energy tails,

```text
X_n \to X \quad\text{strongly in } L^2(0,T;L^2(\mathbb R^3)).
```

Moreover,

```text
\mathbb P\big((X_n\cdot\nabla)X_n\big)\to \mathbb P\big((X\cdot\nabla)X\big)
```

in `L^1(0,T;H^{-1}_\sigma)` and hence in the sense of distributions. On
`\mathbb T^3`, the same conclusion holds with global compactness and no tail
argument.

**Proof.**
By Aubin--Lions on the chain `H^1_\sigma \Subset L^2_{\mathrm{loc}} \hookrightarrow
H^{-1}_\sigma`, the stated space and time bounds yield

```text
X_n \to X \quad\text{strongly in } L^2(0,T;L^2_{\mathrm{loc}}(\mathbb R^3)).
```

On `\mathbb R^3`, fix `\varepsilon>0`. By the admissible energy-tail bound,
choose `R` so that

```text
\int_0^T \int_{|x|>R} |X_n(t,x)|^2\,dx\,dt \le \varepsilon
```

uniformly in `n`, and by weak lower semicontinuity the same tail bound holds
for the limit `X`. Hence

```text
\|X_n-X\|_{L^2(0,T;L^2(\mathbb R^3))}
\le
\|X_n-X\|_{L^2(0,T;L^2(B_R))} + 2\varepsilon^{1/2},
```

so local compactness plus the uniform tail bound yields global strong
convergence in `L^2(0,T;L^2(\mathbb R^3))`.

For the nonlinear limit, write

```text
\mathbb P\big((X_n\cdot\nabla)X_n\big)-\mathbb P\big((X\cdot\nabla)X\big)
```

as the sum of

```text
\mathbb P\big(((X_n-X)\cdot\nabla)X_n\big)
+ \mathbb P\big((X\cdot\nabla)(X_n-X)\big)
```

The first term tends to zero by strong convergence of `X_n-X` in
`L^2(0,T;L^2_\sigma)` paired with the uniform `L^2(0,T;H^1_\sigma)` bound on
`X_n`. The second term tends to zero by the same strong--weak pairing with `X`
fixed. The Leray projector is bounded on `H^{-1}_\sigma`, so the projected
nonlinear term converges in `L^1(0,T;H^{-1}_\sigma)`. \(\square\)

## Proposition R6 (Classical continuation criterion on the realized carrier)

Let `u` be a Leray--Hopf solution on `\mathbb R^3` or `\mathbb T^3` with
initial data `u_0\in L^2_\sigma`.

Then:

1. `u` satisfies the classical energy inequality, and in the regular class it
   becomes the classical energy identity.
2. If `u\in L^2(0,T;H^1_\sigma)\cap L^p(0,T;L^q)` with
   `\frac{2}{p}+\frac{3}{q}\le 1` and `q>3`, then `u` is regular on `[0,T]`.

**Proof.**
The energy statement is the classical Leray estimate on the realized carrier,
and the Serrin-type regularity conclusion is the named continuation
criterion for incompressible Navier--Stokes on the Euclidean model. On
`\mathbb T^3` the same criterion applies with the usual periodic compactness
simplifications. \(\square\)

## Theorem T* (Global weak solution and closed limit construction)

Let `u_0\in L^2_\sigma`.

Then there exists

```text
u \in L^\infty(0,T;L^2_\sigma)\cap L^2(0,T;H^1_\sigma)
```

such that

```text
\partial_t u + \mathbb P\big((u\cdot\nabla)u\big)=\nu\mathbb P\Delta u
```

in `\mathcal D'`, and

```text
|u(t)|_{L^2}^2 + 2\nu \int_0^t |\nabla u|_{L^2}^2\,ds
\le |u_0|_{L^2}^2.
```

**Proof.**
Take the standard Galerkin truncations `P_N` and solve the finite-dimensional
ODE

```text
\partial_t u_N + P_N\big((u_N\cdot\nabla)u_N\big)=\nu P_N\Delta u_N.
```

The ODE is global. The classical energy identity gives uniform bounds in
`L^\infty(0,T;L^2_\sigma)\cap L^2(0,T;H^1_\sigma)`, and the time derivative is
bounded in `L^2(0,T;H^{-1}_\sigma)`. Therefore Theorem R5 gives, after
subsequence extraction, strong convergence in `L^2(0,T;L^2)` and convergence
of the nonlinear term in distributions. The limit solves the projected
Navier--Stokes equation, and lower semicontinuity yields the energy
inequality. \(\square\)

## Status note

Theorem `T*` closes the classical Leray--Hopf existence loop on the realized
carrier. It does not resolve the global regularity upgrade; that remains a
separate continuation problem.

## Interfaces Into The Route

This note is the missing realization / identification surface used by:

- [Theorem R4](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md#theorem-r4-carrier-classical-equivalence)
- [Theorem R5](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md#theorem-r5-nonlinear-limit-passage)
- [Proposition R6](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md#proposition-r6-classical-continuation-criterion-on-the-realized-carrier)
- [Theorem T*](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md#theorem-t-global-weak-solution-and-closed-limit-construction)
- [Theorem D.1](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d1-projected-nc-flow-well-posedness.md)
- [Theorem D.4](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d4-shadow-continuation-theorem.md)
- [Theorem D.8a](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d8a-strong-convergence-approximants.md)

It is the concrete classical identification of the carrier axioms, the exact
pullback, and the compactness passage.
