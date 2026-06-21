# OriginalSmoothData Production Theorem: Proof Attempt and HFG Reduction

## Claim level

This note performs the mathematical proof attempt for the requested closure list. The downstream production theorem is proved from a critical vorticity continuation bound, and the raw `OriginalSmoothData` step is reduced exactly to the dyadic high-frequency gain theorem `HFG`.

The resulting theorem is:

```math
OriginalSmoothData + HFG
\Longrightarrow
Part+Field+\mathfrak A_{N,Q}
\Longrightarrow
H1+H2+H6+ORIGIN.Retain
\Longrightarrow
LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

The remaining mathematical wall is:

```math
OriginalSmoothData\Longrightarrow HFG.
```

## 1. Critical vorticity bound implies all production data

Let `u` be a smooth Navier-Stokes solution on `[0,T)` and let

```math
\omega=\nabla\times u.
```

Assume the critical vorticity bound

```math
\int_0^T\|\omega(t)\|_{B^0_{\infty,1}}\,dt<\infty.
\tag{CV}
```

### Lemma 1.1: velocity-gradient control

The Biot-Savart law and Littlewood-Paley/Riesz boundedness give

```math
\|\nabla u(t)\|_{L^\infty}
\le C\|\omega(t)\|_{B^0_{\infty,1}}.
```

Therefore `(CV)` gives

```math
L(t):=\|\nabla u(t)\|_{L^\infty}\in L^1(0,T).
\tag{1.1}
```

### Lemma 1.2: Pack production

Let `F=D_a\Phi`. Then

```math
\partial_tF=(\nabla u)(\Phi,t)F,
\qquad
\partial_tF^{-1}=-F^{-1}(\nabla u)(\Phi,t).
```

Hence

```math
\frac{d}{dt}|F|\le L(t)|F|,
\qquad
\frac{d}{dt}|F^{-1}|\le L(t)|F^{-1}|.
```

Gronwall gives, on every retained approach family `Q`,

```math
\Gamma_{pack,Q}(t)
\le
\Gamma_{pack,Q}(0)\exp\left(\int_0^tL(s)\,ds\right).
```

Thus

```math
\Gamma_{pack,Q}\in L^\infty(0,T).
\tag{Pack}
```

### Lemma 1.3: high Sobolev continuation

Choose

```math
s>N+\frac72+3
```

large enough to read all required `U_k`, `K_k`, pressure derivatives, and one spatial derivative of those objects in `L^\infty`.

The classical high-Sobolev estimate for incompressible Navier-Stokes gives

```math
\frac{d}{dt}\|u(t)\|_{H^s}^2
+2\nu\|u(t)\|_{H^{s+1}}^2
\le
C_s\|\nabla u(t)\|_{L^\infty}\|u(t)\|_{H^s}^2.
```

Using `(1.1)` and Gronwall,

```math
\sup_{0\le t<T}\|u(t)\|_{H^s}<\infty.
\tag{1.2}
```

### Lemma 1.4: pressure and carrier readout

Pressure solves

```math
-\Delta p=\partial_i\partial_j(u_iu_j).
```

For `s>3/2`, `H^s` is an algebra, and Calderon-Zygmund estimates give, for all required `k`,

```math
\|\nabla^{k+1}p(t)\|_{H^{s-k-1}}
\le C_s\|u(t)\|_{H^s}^2.
```

With `(1.2)`, Sobolev embedding yields finite pointwise bounds for

```math
U_k=\nabla^ku,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k
```

through the required depth. Hence

```math
\mathfrak A_{N,Q}(t)
:=\sup_{x\in Q_t}\sum_{k=0}^{N}(|U_k(x,t)|+|K_k(x,t)|)
\in L^\infty(0,T).
\tag{Tower}
```

The carrier participation envelope also satisfies

```math
\mathfrak P_{N,Q}(t):=\sup_{x\in Q_t}\sum_{k=0}^{N}|K_k(x,t)|
\in L^\infty(0,T).
\tag{Part-envelope}
```

The rung law

```math
D_tU_k=K_k+B_k
```

comes by applying `\nabla^k` to Navier-Stokes and expanding the transport commutator. Therefore

```math
Part_{N,Q}
```

holds through the required depth.

### Lemma 1.5: Field production

From `(1.2)` with `s` chosen above the required embedding threshold, for every `0\le k\le N`,

```math
\|\nabla U_k(t)\|_{L^\infty(Q_t)}+
\|\nabla K_k(t)\|_{L^\infty(Q_t)}
\le C_{N,Q}<\infty.
```

For `0<|h|\le r`, the mean value theorem gives

```math
\frac{|\delta_hU_k(x,t)|+|\delta_hK_k(x,t)|}{|h|}
\le
\|\nabla U_k(t)\|_{L^\infty(Q_t)}+
\|\nabla K_k(t)\|_{L^\infty(Q_t)}.
```

Summing over `k` gives

```math
\mathfrak C_{N,r,Q}\in L^\infty(0,T)
```

for every retained finite scale `r` contained in the window. Thus

```math
Field_{N,r,Q}
```

holds.

### Theorem 1 conclusion

The critical vorticity bound `(CV)` implies

```math
Pack_Q+Part_{N,Q}+Field_{N,r,Q}+\mathfrak A_{N,Q}\in L^\infty(0,T)
```

on every retained approach family. This proves items 1-5 under `(CV)`.

## 2. HFG supplies the critical vorticity bound

Assume the dyadic high-frequency gain estimate

```math
\sum_{j\ge0}2^{\frac32j}\|\Delta_j\omega\|_{L^1_tL^2_x(0,T)}<\infty.
\tag{HFG}
```

Bernstein gives

```math
\|\Delta_j\omega(t)\|_{L^\infty}
\le C2^{\frac32j}\|\Delta_j\omega(t)\|_{L^2}.
```

Therefore

```math
\int_0^T\|\omega(t)\|_{B^0_{\infty,1}}\,dt
\le
C\sum_{j\ge0}2^{\frac32j}\|\Delta_j\omega\|_{L^1_tL^2_x(0,T)}+C_{low}<\infty.
```

So `HFG` implies `(CV)`, and Theorem 1 applies.

## 3. DTC-to-TowerBound audit

Assume a finite transported-center cover of `Q_t` and `DTC.A_{\mathfrak p_i}` through depth `N+2` on each cover element. Local Sobolev/Morrey gives pointwise bounds for `U_k` through `k\le N+2`. For the carrier rungs,

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

The viscous term uses `U_{k+2}` and is covered by the depth `N+2` readout. The pressure term is controlled by the local pressure response plus finite-energy far tail. Finite cover summation gives

```math
\mathfrak A_{N,Q}\in L^\infty(0,T).
```

Thus

```math
DTC.A_{\mathfrak p}\text{ on a finite cover}\Longrightarrow DTC\text{-}to\text{-}TowerBound.
```

This proves item 6.

## 4. H3, H4, H5, END.Exh, END.Cross, ORIGIN.Retain, and six-burden replay

With `Part+Field+\mathfrak A_{N,Q}` produced by `HFG`, the prior solution note gives

```math
H1+H2+H6+ORIGIN.Retain.
```

H3 is then the installed `ACT.KX` atom chain:

```math
ACT.X\text{-Cut}+ACT.X\text{-Press}+ACT.X\text{-MidRaw}+ACT.X\text{-TopVisc}\Rightarrow ACT.KX,
```

with no spend from `LCI.A`, `CSP.A`, `OFP.A`, `Field`, or endpoint closure.

H4 follows because `ACT.X-Scale` supplies restart seeds and absolute continuity of the `L^1` coefficient budgets supplies the scheduler partition.

H5 follows from the post-`LCI.A` source split:

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a\Rightarrow FCI.5f.
```

`END.Exh` is supplied by `EndpointFace.Type`, and `END.Cross` is supplied by the endpoint matrix reduction through `(Part,Dead)`, `END.Pack`, `END.Field`, and `END.TowerBound`.

Therefore the packet replays:

```math
H1+H2+H3+H4+H5+H6
\Longrightarrow
LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

This proves items 7-13 under `HFG`.

## 5. Functional separation: energy/enstrophy baseline does not imply HFG

Let `a_j(t)` model the dyadic vorticity shell size `\|\Delta_j\omega(t)\|_{L^2}`. Choose disjoint time intervals `I_j` with

```math
|I_j|=2^{-j/2}
```

and define

```math
a_j(t)=2^{-j}\mathbf 1_{I_j}(t).
```

Then the dissipation-level shell mass is finite:

```math
\sum_j\int a_j(t)^2\,dt
=
\sum_j2^{-2j}2^{-j/2}<\infty.
```

The HFG-weighted mass diverges:

```math
\sum_j2^{\frac32j}\int a_j(t)\,dt
=
\sum_j2^{\frac32j}2^{-j}2^{-j/2}
=
\sum_j1=\infty.
```

Thus the baseline energy/enstrophy scale cannot yield `HFG` by functional interpolation alone. The missing proof must use an actual Navier-Stokes cascade mechanism: a dyadic high-frequency gain, an all-scale frequency-transfer inefficiency theorem, or an equivalent critical continuation estimate.

## Final mathematical reduction

The requested closure list is mathematically equivalent, on the current route, to proving the single raw production theorem

```math
OriginalSmoothData\Longrightarrow HFG
```

or an equivalent bound such as

```math
\int_0^T\|\omega(t)\|_{B^0_{\infty,1}}dt<\infty.
```

Everything downstream from that estimate is proved above and by the installed class-membership packet.
