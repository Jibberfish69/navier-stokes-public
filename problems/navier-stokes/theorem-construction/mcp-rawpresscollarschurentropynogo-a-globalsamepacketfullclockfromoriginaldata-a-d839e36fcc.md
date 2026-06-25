# RawPressCollarSchurEntropyNoGo.A

Status: hard obstruction.  The standalone bounded-below relative Schur pressure/collar storage cannot pay the raw pressure/RHS plus collar clock unless that clock is replaced by the relative-defect clock or the free-material graph-driver storage is added.

## 0. Target being tested

The requested law is

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+c_N(d\Omega_N^{press/RHS}+d\Omega_N^{collar})
\le dR_N^{legal},
\tag{NG.1}
```

with

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=-(E_p+E_{coll,N})+\mathcal G_N^{ell/collar},
\qquad
\widetilde{\mathscr A}_N^{press/op+collar}\ge -C_N(u_0).
```

The natural relative Schur construction is

```math
Z_N=(q,C_N),
\qquad
Z_N=\Gamma_N(Y_N)+W_N,
```

```math
\mathcal G_N^{ell/collar}
=E_{pc,N}-{1\over2}\|Z_N-\Gamma_N(Y_N)\|_{pc,N}^2,
```

hence

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=-{1\over2}\|W_N\|_{pc,N}^2.
\tag{NG.2}
```

## 1. Graph-parallel null direction

The graph manifold is

```math
\mathcal M_N=\{(Y_N,Z_N):Z_N=\Gamma_N(Y_N)\}.
```

On this manifold,

```math
W_N=0,
\qquad
\widetilde{\mathscr A}_N^{press/op+collar}=0,
\qquad
d\widetilde{\mathscr A}_N^{press/op+collar}=0
```

for pure graph-parallel motion.  But the raw pressure/RHS and collar clocks can be positive along this same motion, because the pressure and collar records move when the free material variables move:

```math
q=L_G^{-1}R(Y_N),
\qquad
C_N=\mathcal C_N(Y_N).
```

Thus graph-parallel pressure/collar growth is a free-material driver effect, not a relative pressure/collar defect.

## 2. Contradiction for the standalone law

Restrict `(NG.1)` to a graph-parallel history with \(W_N\equiv0\) and no legal residual.  Then the left storage term vanishes and `(NG.1)` becomes

```math
c_N(d\Omega_N^{press/RHS}+d\Omega_N^{collar})\le0.
```

This is false whenever the elliptic/collar graph changes with positive raw pressure/collar variation.

Equivalently, on a closed graph-parallel loop in the free material variables, the storage returns to the same value while the raw total variation clock is positive:

```math
\Delta \widetilde{\mathscr A}_N^{press/op+collar}=0,
\qquad
\int(d\Omega_N^{press/RHS}+d\Omega_N^{collar})>0.
```

No bounded-below scalar correction can fix this without either:

1. leaving an unbounded negative graph-energy component, which is circular because it requires bounded continuation-depth pressure/collar graph energy; or
2. adding a free-material graph-driver storage; or
3. redefining the pressure/collar clock to count only the relative defect.

## 3. Correct theorem forms

The standalone Schur entropy proves only the relative-defect form:

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+c_Nd\Omega_N^{rel.defect}
\le dR_N^{interface/legal}.
\tag{NG.3}
```

The raw pressure/collar clock requires the additional descent estimate

```math
(d\Omega_N^{press/RHS}+d\Omega_N^{collar})_{graph\ parallel}
\le
C\,d\Omega_N^{free/material}+dR_N^{legal},
\tag{NG.4}
```

and therefore belongs to the global full-clock entropy, not to the standalone pressure/collar Schur entropy.

## Verdict

The requested law `(NG.1)` is false as a standalone pressure/operator + collar entropy law.  The correct local object is the relative Schur-defect entropy `(NG.3)`.  The raw pressure/RHS plus collar clock can be handled only after adding the free-material graph-driver sector or replacing the raw clock by the relative-defect clock.