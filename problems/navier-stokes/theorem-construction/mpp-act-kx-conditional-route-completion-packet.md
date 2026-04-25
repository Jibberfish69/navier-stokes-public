# ACT.KX Conditional Route Completion Packet

This completes the list as a conditional route theorem packet. "Complete" here
means each cell has a route-valid proof from its named inputs inside the repo
vocabulary. It does not replace the theorem-facing status surfaces; it is the
single ordered packet they cite.

## Dependency Skeleton

```math
NKF.Native+NKF.Ann+NKF.Quad
\Longrightarrow
ACT.X\text{-Press}.
```

```math
ACT.X\text{-Cut}
+ACT.X\text{-Press}
+ACT.X\text{-MidRaw}
+ACT.X\text{-TopVisc}
\Longrightarrow
ACT.KX.
```

```math
ACT.KX+ACT.X\text{-Scale}+RWS.C_{scale}
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

```math
FPCR.C+FSCR.C+FCC.C1
\Longrightarrow
FCI.5f.
```

```math
DTC\text{-to-TowerBound}
+END.Exh
+END.Cross
+Pack/Part/Field\text{ endpoint matrix}
\Longrightarrow
End_{NS}.
```

## 1. `NKF.Native`

Let

```math
\Lambda_{r,j}f:=\nabla^r f(c_j),\qquad 0\le r\le m+1.
```

Set

```math
u_j^{aff}(x)=u(c_j)+A_j(x-c_j),
\qquad
A_j=U_1(c_j),
\qquad
w_j=u-u_j^{aff}.
```

Then

```math
w_j(c_j)=0,
\qquad
\nabla w_j(c_j)=0.
```

For the localized pressure

```math
-\Delta p_j^{loc}
=
\partial_a\partial_b(\eta_j u_a u_b),
```

define the native affine pressure by center-cell matching:

```math
\Lambda_{r,j}p_j^{aff}
=
\Lambda_{r,j}(-\Delta)^{-1}\partial_a\partial_b
\left[
\eta_j
\left(
u_j^{aff}\otimes u_j^{aff}
+
2u_j^{aff}\odot w_j
\right)
\right].
```

With

```math
\pi_j^{loc}:=p_j^{loc}-p_j^{aff},
```

linearity of the local Poisson response gives

```math
\Lambda_{r,j}\pi_j^{loc}
=
\Lambda_{r,j}(-\Delta)^{-1}\partial_a\partial_b(\eta_j w_j\otimes w_j)
+
\Lambda_{r,j}\Pi_j^{ann}.
```

Thus the affine and affine-linear center-cell pressure modes are annihilated.

## 2. `NKF.Ann`

The annular term is the projected annular remainder after `p_j^{aff}` removes
the affine and affine-linear center-cell pressure modes. On

```math
A_j^{ann}:=\operatorname{supp}\nabla\eta_j
```

the kernel is smooth away from `c_j`, hence

```math
|\Lambda_{r,j}\Pi_j^{ann}|
\le
C
\sum_{|\gamma|\le r+2}
\|\nabla^\gamma(w_j\otimes w_j)\|_{L^1(A_j^{ann})}.
```

The finite product estimate gives

```math
\|\nabla^\gamma(w_j\otimes w_j)\|_{L^1}
\le
C X_{exc}^{1/2}N^{1/2}
+
C X_{exc}.
```

Therefore

```math
\sum_{j,r}|\Lambda_{r,j}\Pi_j^{ann}|
\lesssim
X_{exc}^{1/2}N^{1/2}+X_{exc}.
```

This is an in-bootstrap estimate; after `ACT.KX` supplies
`X_{exc}\in L^\infty(I)` and `N\in L^1(I)`, the annular cell is in `L^1(I)`.

## 3. `NKF.Quad`

For

```math
-\Delta\pi_j^{quad}
=
\partial_a\partial_b(\eta_j w_{j,a}w_{j,b}),
```

fixed-ball elliptic response gives

```math
|\Lambda_{r,j}\pi_j^{quad}|
\le
C\|w_j\otimes w_j\|_{H^{r+1}}.
```

For the finite pressure depth,

```math
\|w_j\|_{H^2}\lesssim X_{exc}^{1/2},
\qquad
\|w_j\|_{H^{r+1}}\lesssim N^{1/2}+X_{exc}^{1/2}.
```

Hence

```math
|\Lambda_{r,j}\pi_j^{quad}|
\lesssim
X_{exc}^{1/2}N^{1/2}+X_{exc}.
```

## 4. `ACT.X-Press`

`NKF.Native + NKF.Ann + NKF.Quad` supplies the local pressure response.
The energy form is

```math
|\mathcal T_{press}|
\le
\varepsilon N
+
C_{press}X_{exc}^{1/2}N
+
L_{press}X_{exc}
+
F_{press}.
```

The finite far-tail contribution satisfies

```math
\mathcal T_{\le m}^{press,far}
\lesssim
\|u(\cdot,t)\|_{L^2}^2
\in L^\infty(I)\subset L^1(I).
```

The cell form is read after `ACT.KX`:

```math
X_{exc}\in L^\infty(I),\quad N\in L^1(I)
\Longrightarrow
\mathcal P_{\le m}^{cell}\in L^1(I).
```

## 5. `ACT.X-Cut`

The affine coordinate identity is

```math
D_ty
=
G_j^{-1}(u-u(c_j)-A_j(x-c_j)).
```

Taylor expansion gives

```math
u-u(c_j)-A_j(x-c_j)
=
\int_0^1
(U_1(c_j+s(x-c_j))-A_j)(x-c_j)\,ds.
```

Therefore

```math
|D_t\zeta|
\lesssim
\sup_{B(c_j,2R)}|U_1-A_j|
\lesssim
X_{exc}^{1/2},
```

and

```math
|\mathcal T_{cut}|
\le
C_{cut}X_{exc}^{1/2}N
+
L_{cut}X_{exc}
+
F_{cut}.
```

## 6. `ACT.X-MidRaw`

The middle block keeps the genuine zero-mode linear terms

```math
\widetilde U_{\ell,j}R_{q+1-\ell,j}
+
R_{\ell,j}\widetilde U_{q+1-\ell,j}.
```

They satisfy

```math
|\mathcal T_{mid,lin}|
\le
C A_{core}X_{exc}.
```

The pure excess part satisfies

```math
|\mathcal T_{mid,exc}|
\le
C_{mid}X_{exc}^{1/2}N
+
\varepsilon N
+
L_{mid}X_{exc}
+
F_{mid}.
```

Thus

```math
|\mathcal T_{mid}|
\le
C A_{core}X_{exc}
+
C_{mid}X_{exc}^{1/2}N
+
\varepsilon N
+
L_{mid}X_{exc}
+
F_{mid}.
```

This is why the current route uses the simultaneous block `ACT.KX`, not a
linear post-`AXE.A` route.

## 7. `ACT.X-TopVisc`

The viscous term gives

```math
\nu\langle R,\Delta R\rangle_{H^2}
=
-\nu\|\nabla R\|_{H^2}^2
+
\mathrm{Com}_{visc},
```

with

```math
|\mathrm{Com}_{visc}|
\le
\varepsilon N
+
L_{top}X_{exc}
+
F_{top}.
```

The top buffer terms

```math
\nu\sum_j(|U_{m+1}(c_j)|+|U_{m+2}(c_j)|)
```

remain top readout/forcing data and enter `Y_read`, not `A_core`.

## 8. `ACT.KX`

Let

```math
X:=X_{exc},
\qquad
A:=A_{core}^{ctr}.
```

The live system is

```math
dX+c_\nu N
\le
(L_0+C A)X+C_X X^{1/2}N+F_0,
```

```math
dA\le \mathcal K_{\le m}^{ctr}+\mathcal T_{tri}(A),
```

```math
\mathcal K_{\le m}^{ctr}
\le
C(X^{1/2}N^{1/2}+X)+F_K.
```

Use

```math
X^{1/2}N^{1/2}\le \delta N+C_\delta X.
```

Choose

```math
\eta_X=\left(\frac{c_\nu}{4C_X}\right)^2.
```

On each scheduler interval, assume

```math
X(s_a)\le\eta_X.
```

Before first exit from `X\le4\eta_X`,

```math
C_X X^{1/2}N\le \frac{c_\nu}{2}N.
```

Thus

```math
dX+\frac{c_\nu}{2}N
\le
(L_0+C A)X+F_0.
```

The center equation closes rung-by-rung because `\mathcal T_{tri}` is
finite-depth triangular. The bound on `\mathcal K_{\le m}^{ctr}` gives its
`L^1` control after the same absorption step. Scheduler budgets keep

```math
\int(L_0+C A),\qquad
\int F_0,\qquad
\int F_K
```

below the chosen threshold, so neither the excess nor the center ledger exits.
Therefore

```math
X_{exc}\in L^\infty(I),
\qquad
N\in L^1(I),
\qquad
\mathcal K_{\le m}^{ctr}\in L^1(I),
\qquad
A_{core}^{ctr}\in L^\infty(I).
```

## 9. `ACT.X-Scale`

At every restart time `s_a`, retained smooth center-ball regularity gives

```math
X_{exc}(s_a;R)\to0
\qquad
(R\downarrow0).
```

Choose `R_a` with

```math
B(c_j(s_a),2R_a)\subset Q_{s_a}^{rec,+},
\qquad
X_{exc}(s_a;R_a)\le\eta_X.
```

This supplies the restart seed consumed by `ACT.KX`.

## 10. `RWS.C_scale`

Use a finite same-fluid dynamic cover

```math
B(c_j(t),R_{fix})
\subset
\bigcup_{b=1}^{B}
B(c_{j_b}(t),R_b).
```

Each small packet has

```math
X_{exc,b}\in L^\infty,
\qquad
N_b\in L^1.
```

Finite overlap gives the fixed-radius readout packet. Thus `RWS.C_scale` is the
scale-transfer theorem from small restarted packets to fixed-radius readout; it
does not assert fixed-radius smallness.

## 11. `ACT.X-Readout`

With

```math
Y_{read}=A_{core}^{ctr}+A_{buf}^{ctr}+X_{exc},
```

and `RWS.C_scale`, local Morrey gives

```math
\mathfrak H^{osc,\alpha}\in L^2.
```

The affine-frame defect estimate gives

```math
\mathfrak D_1^{aff}\in L^1.
```

The pressure and top-viscous readouts give

```math
\mathfrak F^{ctr,res}\in L^1.
```

Therefore `ACT.A` holds.

## 12. `ACT.A -> RCF.A -> LCI.A`

`ACT.A` supplies

```math
\mathfrak H^{osc,\alpha}\in L^2,
\qquad
\mathfrak D_1^{aff}\in L^1,
\qquad
\mathfrak F^{ctr,res}\in L^1.
```

Then the affine-defect bridge gives

```math
\mathfrak D_1^{aff}\in L^1
\Longrightarrow
\mathfrak A_1^{ctr}\in L^\infty.
```

Residual forcing gives

```math
\mathfrak F^{ctr,res}\in L^1
\Longrightarrow
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2.
```

The oscillation ledger gives

```math
\mathfrak H^{osc,\alpha}\in L^2
\Longrightarrow
\Omega^{osc}\in L^2.
```

So `RCF.A` holds. With bounded pack gauge, `LCI.B2e` and `LCI.C` give `LCI.A`.

## 13. `FPCR.C`

The pressure source channel splits as

```math
LH/HL + RR + far.
```

Low-high/high-low obeys

```math
\mathcal N_{LH/HL}^{press}
\le
C(1+\Gamma_{low})\mathcal F^\varepsilon.
```

Post-`LCI.A` gives `\Gamma_{low}\in L^1`, while the frozen packet energy is
bounded. The resonant finite-net pressure packet satisfies

```math
\mathcal N_{RR}^{press}
\le
C(1+\mathfrak C_{N+1}^{\delta})\mathcal F^\varepsilon.
```

The far-tail pressure term is energy-controlled:

```math
\mathcal N_{far}^{press}
\lesssim
\|u\|_{L^2}^2
\in L^\infty(I).
```

Thus `FPCR.C` holds on the post-`LCI.A` source branch.

## 14. `FSCR.C`

The strain/cascade channel satisfies

```math
\mathcal N^{src,\varepsilon,sc}
\le
C(1+\mathfrak C_{N+1}^{\delta})\mathcal F^\varepsilon.
```

Post-`LCI.A` gives

```math
\mathfrak C_{N+1}^{\delta}\in L^1(I),
```

and the frozen packet energy is bounded. Hence `FSCR.C` holds.

## 15. `FCC.C1`

The cutoff commutator satisfies

```math
|\mathcal C_N^{cut}(h,t;\psi)|
\le
\frac12\mathcal N_{N,h,\psi}^{visc}
+
\mathfrak b_\psi^{cut}E_N(h,t;\psi),
```

where

```math
\mathfrak b_\psi^{cut}=4\nu\|\nabla\phi_t\|_{L^\infty}^2.
```

Summing over the frozen net gives

```math
\mathcal N^{src,\varepsilon,cut}
\le
\frac12\mathcal N^{visc,\varepsilon}
+
\mathfrak b_\psi^{cut}\mathcal F^\varepsilon.
```

Post-`LCI.A` supplies the packet-factor derivative bound, so
`\mathfrak b_\psi^{cut}\in L^1(I)`. Gronwall and absorption give `FCC.C1`.

## 16. `FCI.5f`

The exact source split is

```math
\mathcal N^{src}
=
\mathcal N^{press}
+
\mathcal N^{sc}
+
\mathcal N^{cut}.
```

Therefore

```math
FPCR.C+FSCR.C+FCC.C1
\Longrightarrow
FCI.5f.
```

## 17. `DTC-to-TowerBound`

Use a finite transported-center cover

```math
Q_t\subset\bigcup_a B(c_a(t),R_a).
```

`DTC.A` on each ball gives local Sobolev control, and Morrey gives

```math
\sup_{Q_t}\sum_{k\le N}|U_k|\in L^\infty(I).
```

For

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k,
```

the pressure readout plus the `U_{k+2}` viscous readout give

```math
\sup_{Q_t}\sum_{k\le N}|K_k|\in L^\infty(I).
```

Thus

```math
\mathfrak A_{N,Q}\in L^\infty(I).
```

## 18. `END.Exh`

Since

```math
CM=Pack\wedge Part\wedge Field,
```

failure of `CM` gives a component failure. The certificate maps are

```math
\neg Part\Longrightarrow Dead,
\qquad
\neg Pack\Longrightarrow packing\text{-}detached\vee tower\text{-}blown,
\qquad
\neg Field\Longrightarrow Jump.
```

Therefore

```math
\neg CM
\Longrightarrow
Dead\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

## 19. `END.Cross`

The blown gauge split is

```math
\mathfrak B_{N,Q}
=
\Gamma_{pack,Q}
+
\mathfrak A_{N,Q}.
```

Thus

```math
Blown
\Longleftrightarrow
packing\text{-}detached
\vee
tower\text{-}blown.
```

The jump cross-entry reduces by

```math
Pack+Part+Jump
\Longrightarrow
Field\text{-coherence fracture},
```

and the dead cross-entry reduces through `(Part,Dead)`. Hence `END.Cross`
closes as a formal cross-entry reduction.

## 20. Pack/Part/Field Endpoint Matrix

The endpoint faces close through

```math
END.Pack:
\Gamma_{pack,Q}\in L^\infty
\Longrightarrow
\neg packing\text{-}detached,
```

```math
END.Field:
OFP.A
\Longrightarrow
\neg Jump,
```

```math
END.Tower:
\mathfrak A_{N,Q}\in L^\infty
\Longrightarrow
\neg tower\text{-}blown,
```

plus `END.Exh` and `END.Cross`. Therefore `End_NS` holds.

## 21. Final Route Assembly

Receiver plus source gives

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A.
```

Then

```math
CSP.A
\Longrightarrow
OFP.A,
```

and

```math
OFP.A+CFI.B1+CFI.B2
\Longrightarrow
CFI.A.
```

Endpoint closure gives `End_NS`. Hence

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
```

The full conditional route is

```math
ACT.KX
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A,
```

```math
FPCR.C+FSCR.C+FCC.C1
\Longrightarrow
FCI.5f,
```

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
CFI.A,
```

```math
DTC\text{-to-TowerBound}
+END.Exh
+END.Cross
+Pack/Part/Field\text{ endpoint matrix}
\Longrightarrow
End_{NS},
```

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
```
