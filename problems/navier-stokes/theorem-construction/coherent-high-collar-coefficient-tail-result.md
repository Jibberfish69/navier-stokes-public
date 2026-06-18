# Coherent High-Collar Coefficient Tail Result

## Target

The low-pass commutator collar estimate requires the coefficient-tail input

```math
2^j\|P_{>j-M}u_{coh}\|_{L_x^\infty}
\le
c_1\nu2^{2j}+C\Phi(\mathcal E_D(X)).
\tag{HCT.0}
```

This note proves `HCT.0` for a fixed-fattened coherent projector from the selector-localized amplitude estimate supplied by the coherent strain result.

## Inputs

Fix the active dyadic scale `j`, the collar width `M`, and the coherent projector fattening `A`. Assume

```math
u_{coh}=P_{\le j+A}u_{coh}.
\tag{HCT.H1}
```

Assume the amplitude estimate from the selector-localized coherent strain proof:

```math
\|u_{coh}\|_{L_x^\infty}
\le
\alpha_T\nu2^j+\beta_T2^{-j}\Phi(\mathcal E_D(X)),
\tag{HCT.H2}
```

where

```math
\alpha_T=C_A(C_s\kappa_T+
\kappa_R),
\qquad
\beta_T=C_A.
\tag{HCT.H3}
```

The constants depend only on the fixed selector geometry, readout Sobolev comparison, and probe-collar constants.

## Lemma HCT.1: fixed-collar multiplier bound

For fixed `A` and `M`, the operator

```math
R_{j,A,M}:=P_{>j-M}P_{\le j+A}
```

has a uniform `L^\infty\to L^\infty` bound

```math
\|R_{j,A,M}f\|_{L_x^\infty}
\le C_{A,M}\|f\|_{L_x^\infty}.
\tag{HCT.1}
```

### Proof

Choose smooth Littlewood-Paley cutoffs. The symbol of `R_{j,A,M}` is supported in the finite annulus

```math
c_{A,M}2^{j-M}\le |\xi|\le C_{A,M}2^{j+A}.
```

After scaling by `2^j`, its inverse Fourier kernel has the form

```math
K_{j,A,M}(x)=2^{3j}K_{A,M}(2^jx),
```

with `K_{A,M}` Schwartz and

```math
\|K_{j,A,M}\|_{L^1_x}=\|K_{A,M}\|_{L^1_x}=:C_{A,M}.
```

Young's inequality gives `HCT.1`. ∎

## Lemma HCT.2: amplitude controls the high collar

Under `HCT.H1` and `HCT.H2`,

```math
2^j\|P_{>j-M}u_{coh}\|_{L_x^\infty}
\le
C_{A,M}\alpha_T\nu2^{2j}
+C_{A,M}\beta_T\Phi(\mathcal E_D(X)).
\tag{HCT.2}
```

### Proof

By `HCT.H1`,

```math
P_{>j-M}u_{coh}=P_{>j-M}P_{\le j+A}u_{coh}=R_{j,A,M}u_{coh}.
```

Apply `HCT.1` and multiply by `2^j`:

```math
2^j\|P_{>j-M}u_{coh}\|_{L_x^\infty}
\le
C_{A,M}2^j\|u_{coh}\|_{L_x^\infty}.
\tag{HCT.3}
```

Insert `HCT.H2`:

```math
2^j\|P_{>j-M}u_{coh}\|_{L_x^\infty}
\le
C_{A,M}\alpha_T\nu2^{2j}
+C_{A,M}\beta_T\Phi(\mathcal E_D(X)).
```

This proves `HCT.2`. ∎

## Theorem HCT: high-collar coefficient-tail estimate

Assume `HCT.H1`--`HCT.H3`. If the selector transport constants lie inside the collar absorption window

```math
C_{A,M}\alpha_T\le c_1,
\tag{HCT.4}
```

then

```math
\boxed{
2^j\|P_{>j-M}u_{coh}\|_{L_x^\infty}
\le
c_1\nu2^{2j}+C\Phi(\mathcal E_D(X)).
}
\tag{HCT.5}
```

with

```math
C=C_{A,M}\beta_T.
```

### Proof

Combine `HCT.2` with `HCT.4`. ∎

## Exact low-collar corollary

If the coherent projector is selected with a strict buffer below the collar threshold,

```math
u_{coh}=P_{\le j-M}u_{coh},
\tag{HCT.6}
```

then

```math
P_{>j-M}u_{coh}=0,
\tag{HCT.7}
```

and `HCT.0` holds with `c_1=0` and `C=0`.

For the fixed-fattened projector `P_{\le j+A}`, the finite-collar multiplier proof above is the active branch.

## Import into the low-pass commutator collar estimate

The low-pass commutator collar estimate consumes two coherent coefficient inputs:

```math
\|\nabla u_{coh}\|_\infty\le c_0\nu2^{2j},
\tag{HCT.C1}
```

and

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le c_1\nu2^{2j}+C\Phi(\mathcal E_D(X)).
\tag{HCT.C2}
```

The selector-localized coherent strain result supplies `HCT.C1` and the amplitude input `HCT.H2`. The present note supplies `HCT.C2`.

Consequently, the coherent coefficient side of the low-pass commutator collar estimate is closed under the shared selector-persistent transport hypotheses and the smallness windows

```math
C_*(C_s\kappa_T+\kappa_R)\le c_0,
\qquad
C_{A,M}C_A(C_s\kappa_T+\kappa_R)\le c_1.
\tag{HCT.C3}
```

## Failure modes checked

1. Fixed-fattened leakage: all frequencies between `j-M` and `j+A` are included in the finite annulus multiplier `R_{j,A,M}`.

2. Infinite high tail: `HCT.H1` truncates the coherent coefficient at `j+A`, so the high-collar operator has finite width.

3. Loss size: the collar multiplier costs one explicit factor `2^j`, exactly matching the amplitude scale `\nu2^j` from the selector strain proof.

4. Residual readout: the term `\Phi(\mathcal E_D(X))` remains explicit and
   enters the collar estimate as the permitted residual contribution.

## Boundary

This result completes the coefficient side of the low-pass commutator collar chain under the already stated selector-persistent transport hypotheses. It adds no independent smallness source; it uses the amplitude estimate exported by the selector-localized coherent strain result.

The completed chain is

```math
\text{selector-persistent transport}
\Longrightarrow
\|u_{coh}\|_\infty\le C_{coh}(\nu2^j+2^{-j}\Phi)
\Longrightarrow
\begin{cases}
\|\nabla u_{coh}\|_\infty\le C_{collar}(\nu2^{2j}+\Phi),\\
2^j\|P_{>j-M}u_{coh}\|_\infty\le C_{collar}(\nu2^{2j}+\Phi),
\end{cases}
\Longrightarrow
\text{low-pass commutator collar absorption}.
```

## Source surfaces

- `problems/navier-stokes/theorem-construction/selector-localized-coherent-strain-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-estimate-result.md`
- `problems/navier-stokes/theorem-construction/coherent-high-tail-product-estimate-result.md`
- `problems/navier-stokes/theorem-construction/active-coherent-projector-spectral-identification-theorem.md`
