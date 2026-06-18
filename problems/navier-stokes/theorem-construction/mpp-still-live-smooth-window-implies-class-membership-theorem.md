# MPP Still-Live Smooth Window Implies Class Membership Theorem

## Status

Theorem-facing constitutive note.

Role: install the local admission step

```math
\text{classical still-live window }Q
\Longrightarrow
\exists r_Q>0\ \text{such that}\ \forall N\ge 0,\
\mathrm{CM}_{N,r_Q,Q}(u,p,\Phi),
```

and therefore primitive local membership on `Q`, using the exact
`Pack / Part / Field` witness predicates and nothing stronger.

## Purpose

The exact class-membership witness of primitive local membership is already
fixed by
[mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md):

```math
\mathrm{CM}_{N,r,Q}(u,p,\Phi)
:=
\mathrm{Pack}_Q(u,\Phi)\wedge
\mathrm{Part}_{N,Q}(u,p)\wedge
\mathrm{Field}_{N,r,Q}(u,p).
\tag{SLC.0}
```

This note proves that every classical still-live window already satisfies that
predicate-family, hence already witnesses
`\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})`.

## Setup

Let `\Omega=\mathbf R^3` or `\mathbf T^3`, let `\nu>0`, and let `(u,p)` be a
classical incompressible Navier--Stokes solution on
`\Omega\times[0,T_\ast)`:

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{SLC.1}
```

Let `\Phi` be the associated Lagrangian flow map:

```math
\partial_t\Phi(a,t)=u(\Phi(a,t),t),
\qquad
\Phi(a,0)=a.
\tag{SLC.2}
```

Fix a still-live spacetime window

```math
Q\Subset \Omega\times[0,T_\ast).
\tag{SLC.3}
```

Choose an open collar

```math
Q\Subset Q^+\Subset \Omega\times[0,T_\ast).
\tag{SLC.4}
```

For each `k\ge 0`, write

```math
U_k:=\nabla^k u,
\qquad
K_k:=-\nabla^{k+1}p+\nu\Delta U_k,
\qquad
D_t:=\partial_t+u\cdot\nabla,
\tag{SLC.5}
```

so that the differentiated Navier--Stokes law has the form

```math
D_tU_k=K_k+B_k,
\tag{SLC.6}
```

where for each multi-index `\gamma` with `|\gamma|=k`,

```math
B_\gamma
:=
u\cdot\nabla\partial^\gamma u
-
\partial^\gamma(u\cdot\nabla u)
=
-
\sum_{0<\beta\le\gamma}
\binom{\gamma}{\beta}\,
(\partial^\beta u\cdot\nabla)\partial^{\gamma-\beta}u.
\tag{SLC.6a}
```

The tensor `B_k` is the finite collection of these `B_\gamma`; in particular
`B_0=0`, and for each fixed `N` every `B_k` with `k\le N` is bounded on
`Q^+` because `(u,p)` is classical there.

For each finite depth `N`, define

```math
M_N
:=
\sup_{(x,t)\in Q^+}
\sum_{k=0}^{N}
\Big(
|K_k(x,t)|+|\nabla U_k(x,t)|+|\nabla K_k(x,t)|
\Big).
\tag{SLC.7}
```

Since `(u,p)` is classical on `Q^+`, one has `M_N<\infty` for every finite
`N`.

Define the spatial collar radius

```math
\rho_Q
:=
\inf\Big\{
|x-y|:\ \exists t\in[0,T_\ast)\ \text{with}\ (x,t)\in\overline Q,\
(y,t)\in(\Omega\times[0,T_\ast))\setminus Q^+
\Big\},
\tag{SLC.8}
```

and set

```math
r_Q:=\frac12\rho_Q.
\tag{SLC.9}
```

Because `\overline Q\Subset Q^+`, one has `\rho_Q>0`, hence `r_Q>0`.

## Exact Theorem

### Theorem SLC.A (still-live smooth window installs the class-membership witness)

For the single scale `r_Q` from `(SLC.9)`, one has for every finite depth
`N\ge 0`

```math
\mathrm{CM}_{N,r_Q,Q}(u,p,\Phi).
\tag{SLC.10}
```

Equivalently,

```math
\boxed{
\text{classical still-live window }Q
\Longrightarrow
\exists r_Q>0\ \text{such that}\ \forall N\ge 0,\
\mathrm{CM}_{N,r_Q,Q}(u,p,\Phi).
}
\tag{SLC.11}
```

Consequently, by Theorem `CMW.A`,

```math
\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}),
\qquad
\neg \mathrm{Exit}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}).
\tag{SLC.11a}
```

### Proof

Fix a finite depth `N`.

We verify the three constituent predicates separately.

#### 1. Packing

For each time `t<T_\ast`, classicality of `u` gives a `C^1` flow map
`\Phi_t:a\mapsto \Phi(a,t)`. Its deformation gradient

```math
F(a,t):=D_a\Phi(a,t)
\tag{SLC.12}
```

satisfies

```math
\partial_tF(a,t)=\nabla u(\Phi(a,t),t)F(a,t),
\qquad
F(a,0)=I.
\tag{SLC.13}
```

Since `\nabla\cdot u=0`, the Jacobian obeys

```math
\partial_t\det F(a,t)
=
(\nabla\cdot u)(\Phi(a,t),t)\det F(a,t)
=0,
\qquad
\det F(a,0)=1,
\tag{SLC.14}
```

hence

```math
\det F(a,t)=1
\qquad
\text{for all }(a,t).
\tag{SLC.15}
```

Since `u` is smooth on the compact time window under discussion, `\nabla u` is
continuous and bounded on the transported compact tube.  The flow ODE has a
unique `C^1` solution map, the derivative in labels is the matrix `F` above, and
`\det F=1` is nonzero.  The inverse-function theorem gives local `C^1`
invertibility, while uniqueness of the forward and backward flow gives the
global inverse.  Thus each `\Phi_t` is a `C^1` diffeomorphism of `\Omega`; in
particular, its restriction to `A_Q(t):=\{a:\Phi(a,t)\in Q_t\}` is one `C^1`
diffeomorphic motion on `A_Q(t)`.

Now fix a time-slice meeting `Q`. Since `\overline Q_t` is compact and
`\Phi_t^{-1}` is continuous, the label set `\Phi_t^{-1}(\overline Q_t)` is
compact. The matrices `F(\cdot,t)` and `F(\cdot,t)^{-1}` are continuous there,
so

```math
\Gamma_{\mathrm{pack},Q}(t)
:=
\sup_{a\in A_Q(t)}
\max\{|F(a,t)|,\ |F(a,t)^{-1}|\}
<
\infty.
\tag{SLC.16}
```

Thus all three clauses in `\mathrm{Pack}_Q(u,\Phi)` hold, so

```math
\mathrm{Pack}_Q(u,\Phi).
\tag{SLC.17}
```

#### 2. Participation

Because `(u,p)` is classical on `Q^+`, the differentiated law `(SLC.6)` holds
pointwise on `Q^+`, hence on `Q`, for every `0\le k\le N`.

Also, by `(SLC.7)`,

```math
\mathfrak P_{N,Q}(t)
:=
\sup_{x\in Q_t}\sum_{k=0}^{N}|K_k(x,t)|
\le M_N
\tag{SLC.18}
```

for every time-slice meeting `Q`.

So both clauses in `\mathrm{Part}_{N,Q}(u,p)` hold, and therefore

```math
\mathrm{Part}_{N,Q}(u,p).
\tag{SLC.19}
```

#### 3. One-Field Coherence

Fix `0<|h|\le r_Q`. Subtracting the shifted differentiated laws gives the
finite-difference tower law on `Q`:

```math
\big(\partial_t+u(x+h,t)\cdot\nabla\big)\delta_hU_k
+
(\delta_hu)\cdot\nabla U_k(x,t)
=
\delta_hK_k+\delta_hB_k
\tag{SLC.20}
```

for every `0\le k\le N`.

Now let `t` be a time-slice meeting `Q`, let `x,x+h\in Q_t`, and assume
`0<|h|\le r_Q`. By the definition of `r_Q`, the whole segment
`\{x+\theta h:0\le \theta\le 1\}` stays inside `Q^+_t`. The mean-value theorem
therefore yields

```math
|\delta_hU_k(x,t)|
\le
\sup_{(y,t)\in Q^+}|\nabla U_k(y,t)|\,|h|
\le M_N|h|,
\tag{SLC.21}
```

and likewise

```math
|\delta_hK_k(x,t)|
\le
\sup_{(y,t)\in Q^+}|\nabla K_k(y,t)|\,|h|
\le M_N|h|.
\tag{SLC.22}
```

Hence

```math
\frac{|\delta_hU_k(x,t)|+|\delta_hK_k(x,t)|}{|h|}
\le 2M_N.
\tag{SLC.23}
```

Summing over `0\le k\le N` and taking the supremum over all admissible pairs
`(x,h)` gives

```math
\mathfrak C_{N,r_Q,Q}(t)
\le 2(N+1)M_N
<
\infty
\tag{SLC.24}
```

for every time-slice meeting `Q`.

So both clauses in `\mathrm{Field}_{N,r_Q,Q}(u,p)` hold, and therefore

```math
\mathrm{Field}_{N,r_Q,Q}(u,p).
\tag{SLC.25}
```

#### 4. Conclusion

Combining `(SLC.17)`, `(SLC.19)`, and `(SLC.25)` yields

```math
\mathrm{CM}_{N,r_Q,Q}(u,p,\Phi).
\tag{SLC.26}
```

Since `N` was arbitrary, `(SLC.10)` and `(SLC.11)` follow. The consequence
`(SLC.11a)` is then exactly Theorem `CMW.A` applied to the witness family just
installed on `Q`. ∎

## Exact Local Consequence

### Corollary SLC.B (still-live smooth window excludes autonomous sharpening clauses)

Let `Q` be a still-live window as in `(SLC.3)`, and let `r_Q` be the scale from
`(SLC.9)`. Then for every finite depth `N\ge 0`,

```math
\neg \mathrm{ASG}^{\mathrm{pack}}_Q,
\qquad
\neg \mathrm{ASG}^{\mathrm{part}}_{N,Q},
\qquad
\neg \mathrm{ASG}^{\mathrm{field}}_{N,r_Q,Q}.
\tag{SLC.27}
```

Equivalently,

```math
\boxed{
\text{classical still-live window }Q
\Longrightarrow
\text{no autonomous local sharpening clause is realized on }Q.
}
\tag{SLC.28}
```

#### Proof

Fix `N\ge 0`. By Theorem `SLC.A`,

```math
\mathrm{CM}_{N,r_Q,Q}(u,p,\Phi)
\tag{SLC.29}
```

holds. By the local incompatibility theorem `OP.R`,

```math
\mathrm{ASG}^{\mathrm{pack}}_Q
\Longrightarrow
\neg\mathrm{CM}_{N,r_Q,Q}(u,p,\Phi),
\tag{SLC.30}
```

```math
\mathrm{ASG}^{\mathrm{part}}_{N,Q}
\Longrightarrow
\neg\mathrm{CM}_{N,r_Q,Q}(u,p,\Phi),
\tag{SLC.31}
```

```math
\mathrm{ASG}^{\mathrm{field}}_{N,r_Q,Q}
\Longrightarrow
\neg\mathrm{CM}_{N,r_Q,Q}(u,p,\Phi).
\tag{SLC.32}
```

Each implication contradicts `(SLC.29)`. Hence `(SLC.27)` and `(SLC.28)`
follow. ∎

## Boundary

This note proves only the local admission step

```math
\text{still-live smooth window}
\Longrightarrow
\mathrm{CM}.
\tag{SLC.33}
```

It does not prove:

1. that every first singularity yields autonomous local sharpening;
2. that `\mathrm{CM}` persists globally by itself;
3. global smoothness.
