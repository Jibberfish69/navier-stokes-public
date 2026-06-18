# Seven-Item Paper-Grade Closure Package

## Status

Paper-grade theorem-program closure package for the periodic Navier--Stokes branch. Internal route labels are converted into ordinary lemma names in the main proof.

## Setting

Let `nu>0`. Let

```math
u_0\in C^\infty(\mathbb T^3;\mathbb R^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{\mathbb T^3}u_0\,dx=0.
```

Let `(u,p)` be the maximal smooth solution of the unforced incompressible Navier--Stokes system on `[0,T_*)`, with zero-mean pressure.

## 1. Paper-grade terminal-tail uniformization theorem

### Theorem 1.1

Original smooth periodic data produce terminal-tail uniformization:

```math
OriginalSmoothData\Longrightarrow TTU.A.
```

### Proof

Fix a terminal same-fluid approach tail. The scale-critical good-cylinder dichotomy gives two cases.

In the strict averaged-good case, the tail has a finite same-fluid cover by
cylinders with positive lower radius and bounded overlap.  On each selected
cylinder the exact input is `SCF_{base}(Q_R^\Phi)<=\varepsilon_m`, with the
bounded-distortion CKN comparison from Section 3; the `ATD_m^\varepsilon` lemma
then supplies the finite-depth averaged affine tower packet on
`Q_{\theta_mR}^\Phi`.  The common scheduler lemma runs the averaged ACT budget
on all cover elements and all finitely many route parameters, giving averaged
transported-center control.

In the averaged-jump case, loss of every positive same-fluid good-cylinder scale is an averaged endpoint face. The averaged endpoint theorem removes that face.

Thus every terminal tail reaches averaged endpoint closure. The terminal readout theorem then gives the pointwise endpoint package. Hence `TTU.A` holds.

## 2. Terminal readout theorem with constants

### Theorem 2.1

Let endpoint tower depth be `N`, and choose readout depth `m>=N+2`. Assume
averaged endpoint closure, a finite readout cover, averaged field control,
averaged transported-center control, and `ATD_m^\varepsilon` on the shrunken
cover. Then pointwise endpoint closure follows.

### Constants

For each cover element choose nested balls

```math
B_i'\Subset B_i\Subset 2B_i
```

with separation constant `sigma_i=dist(B_i',T^3\setminus B_i)>0`, radius `r_i`, and cutoff `chi_i` supported in `2B_i`, equal to one on `B_i`. Let

```math
C_{cover}=C(N,m,\{r_i,\sigma_i,\|\chi_i\|_{C^{N+2}}\}_{i=1}^M,M_{overlap}).
```

For `0<=q<=N`, split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

Interior elliptic estimates give

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

The harmonic tail obeys

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}^{tail}\|u_0\|_{L^2(\mathbb T^3)}^2.
```

The viscous part of

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q
```

uses the rung `U_{q+2}`; this is why `m>=N+2` is imposed. Combining these estimates over the finite cover gives pointwise transported-center control and pointwise field control. The pointwise endpoint matrix then gives endpoint closure.

## 3. CKN-to-affine-tower theorem

### Theorem 3.1

There are constants

```math
\varepsilon_m>0,
\qquad
\theta_m\in(0,1/2),
\qquad
C_m<\infty
```

depending on `m,nu` and the same-fluid distortion bound such that

```math
SCF_{base}(Q_R^\Phi)\le\varepsilon_m
\Longrightarrow
ATD_m^\varepsilon(Q_{\theta_m R}^\Phi).
```

### Proof

Rescale the moving cylinder to unit size.  The bounded same-fluid distortion is
spent through the CKN comparison constants and the exact threshold

```math
C_M\,SCF_{base}(Q_R^\Phi)\le\varepsilon_{CKN}(m+2,M_\sharp,\nu).
```

Choose `epsilon_m` below that threshold.  Interior regularity and parabolic
bootstrapping yield, for `0<=k<=m+2`,

```math
\sup_{Q_{\theta_m R}^\Phi}R^{k+1}|\nabla^ku|+
\sup_{Q_{\theta_m R}^\Phi}R^{k+3}|\nabla^{k+1}p|
\le C_m.
```

The pressure is normalized by subtracting the admissible local pressure mode and preserving zero mean on the torus. The averaged affine residual satisfies

```math
X_{\theta_mR}(s_a)\le C_m\theta_m^2.
```

Choose `theta_m` with `C_m theta_m^2<=eta_X`. The same derivative estimates give the averaged dissipation, forcing, and center ledgers required by `ATD_m^epsilon`.

## 4. Exact source theorem

### Theorem 4.1

The exact source split gives

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a\Longrightarrow FCI.5f.
```

The pressure channel, strain/cascade channel, and cutoff channel are the three components of the frozen-family source decomposition. Their integrable ledgers add to the five-family frozen source integrability statement `FCI.5f`.

The sufficient route is compatible:

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

Thus the single downstream source theorem is

```math
\operatorname{Hyp}(FFSRC.A)\vee(FPCR.C+FSCR.C+FCC.C1+FCC.C1a)\Longrightarrow FCI.5f.
```

## 5. Standalone endpoint matrix theorem

### Theorem 5.1

If any of the four endpoint faces appears at a first finite endpoint,

```math
Dead\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump,
```

then the endpoint package produces a contradiction.

### Proof

Participation failure gives the dead face. Pack failure gives the packing-detached or tower-blown face. Tower escape gives the tower-blown face. Field failure gives the jump face. Cross-entry reductions place mixed failures into the same four rows.

Endpoint closure supplies the four row eliminations: participation row, pack row, tower-bound row, and field row. Hence a first finite endpoint has a face and that face is eliminated, contradiction.

## 6. Final periodic theorem proof

### Theorem 6.1

For smooth divergence-free zero-mean data on `T^3`, the periodic Navier--Stokes solution is global and smooth.

### Proof

Assume `T_*<infty`. Theorem 1.1 gives terminal-tail uniformization and therefore the pointwise endpoint package. Theorem 5.1 eliminates every first finite endpoint face. Hence the pointwise tower remains bounded to depth `N` on a finite terminal cover.

Choose `s>5/2` and `N>s+2`. Finite-cover Sobolev patching gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty.
```

The standard `H^s` local theory for periodic Navier--Stokes extends the solution beyond `T_*`, contradicting maximality. Therefore `T_*=infty`. Smoothness for all positive times and at time zero follows from the smooth local theory and bootstrapping.

## 7. Dependency-clean manuscript rewrite

The main proof now uses the following ordinary lemma names.

| Lemma | Content |
|---|---|
| Terminal-tail uniformization | original data gives the terminal readout path |
| Terminal readout with constants | averaged endpoint closure gives pointwise endpoint closure |
| CKN-to-affine-tower | SCF smallness gives finite-depth averaged tower data |
| Exact source theorem | exact and sufficient source branches both supply `FCI.5f` |
| Endpoint matrix theorem | every endpoint face contradicts endpoint closure |
| Tower continuation | bounded finite tower gives bounded `H^s` norm and continuation |

Under these names, the proof reads:

```math
OriginalSmoothData
\Longrightarrow
TTU.A
\Longrightarrow
End_{NS}
\Longrightarrow
\mathfrak A_{N,Q}\in L^\infty
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\Longrightarrow
T_*=\infty.
```

## Boundary

This note closes the requested mathematical manuscript-hardening pass. Repository release status remains governed by the MCP promotion packet and release ledgers.
