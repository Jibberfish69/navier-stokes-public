# Endpoint, Origin-Retain, And Lane-Boundary Completion Note

## Status

Conditional terminal completion note for the retained class-membership route.

Claim level: retained conditional theorem under the installed route hypotheses.

## 1. Endpoint Analytic Tower

Let the endpoint region have a finite transported-center cover

```math
Q_t\subset\bigcup_{i=1}^{J_Q}B(c_i(t),R_i/2),
```

with each cover element carrying a transported-center packet `DTC.A_{\mathfrak p_i}` through depth at least `N+2`.

From `DTC.A_{\mathfrak p_i}` and fixed-radius Morrey,

```math
\sup_{t\in I}\sup_{B(c_i(t),R_i/2)}\sum_{k=0}^{N}|U_k|<\infty.
```

For the forcing tower, use

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

The viscous term is controlled by the `U_{k+2}` readout, which is licensed by the `N+2` depth. The pressure term is controlled by the local pressure split plus the ordinary energy far tail:

```math
\sup_{B(c_i(t),R_i/2)}|\nabla^{k+1}p|
\le
C_i\left(1+\mathcal Z_{\mathfrak p_i}^{TC}(t)+\|u_0\|_{L^2}^2\right).
```

Since the cover is finite and `\mathcal Z_{\mathfrak p_i}^{TC}\in L^\infty(I)`,

```math
\mathfrak A_{N,Q}(t)
:=\sup_{x\in Q_t}\sum_{k=0}^{N}(|U_k(x,t)|+|K_k(x,t)|)
\in L^\infty(I).
```

Thus

```math
DTC\text{-}to\text{-}TowerBound\Longrightarrow END.TowerAmp.
```

The definition-level endpoint cell is

```math
END.TowerAmp\Longrightarrow END.TowerBound.
```

## 2. Endpoint Certificate Matrix

The endpoint package is

```math
End_{NS}:=END.Pack\wedge END.Field\wedge END.TowerBound\wedge END.Cross\wedge END.Exh.
```

`END.Exh` is the endpoint exhaustiveness theorem:

```math
\neg CM_{N,r,Q}\Longrightarrow Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

The certificate maps are

```math
\neg Part\Longrightarrow Dead,
\qquad
\neg Pack\Longrightarrow packing\text{-}detached\vee tower\text{-}blown,
\qquad
\neg Field\Longrightarrow Jump.
```

`END.Cross` reduces mixed endpoint entries to the native rows:

```math
(Part,Dead),\quad END.Pack,\quad END.Field,\quad END.TowerBound.
```

`END.Pack` spends bounded pack gauge:

```math
\Gamma_{pack,Q}\in L^\infty(I)\Longrightarrow\neg packing\text{-}detached.
```

`END.Field` spends `OFP.A`:

```math
OFP.A\Longrightarrow\neg Jump.
```

Together with `END.TowerBound`, the endpoint matrix closes:

```math
DTC\text{-}to\text{-}TowerBound+END.Exh+END.Cross+END.Pack+END.Field
\Longrightarrow End_{NS}.
```

## 3. Terminal Contradiction

`CFI.A` propagates class membership on retained same-fluid approach windows. At a first finite class-exit time, `END.Exh` forces one endpoint shell. The installed endpoint package removes every shell:

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump.
```

Therefore

```math
CFI.A+End_{NS}\Longrightarrow\text{no finite-time class exit}.
```

This is the terminal retained-route contradiction.

## 4. ORIGIN.Retain

Let `(u,p)` be the maximal classical solution on `[0,T_*)` and fix a compact interval

```math
I=[a,b]\Subset[0,T_*).
```

Classical smoothness gives finite retained center-ball norms on a finite transported-center cover:

```math
\sum_j\|u\|_{L^1_tC^{m+2,\alpha}(B(c_j(t),2\rho_I))}
+
\sum_j\|p\|_{L^1_tC^{m+1,\alpha}(B(c_j(t),2\rho_I))}<\infty.
```

This supplies

```math
RSCB.NKF.
```

The same compact classical flow supplies bounded pack gauge. The deformation gradient satisfies

```math
\partial_tD_a\Phi(a,t)=\nabla u(\Phi(a,t),t)D_a\Phi(a,t).
```

Because `\nabla u\in L^1_tL^\infty_x` on the compact retained tubes, Gronwall gives

```math
\Gamma_{pack,Q}\in L^\infty(I).
```

At each retained restart time, affine excess tends to zero with the retained radius:

```math
X_{exc}(s_a;R)\to0\qquad(R\downarrow0).
```

Hence `ACT.X-Scale` supplies a radius `R_a` with

```math
X_{exc}(s_a;R_a)\le\eta_X.
```

Absolute continuity of the `L^1` coefficient ledgers gives a finite partition of `I` satisfying the `ACT.KX` scheduler budgets. Compactness of the transported tubes and bounded pack gauge give the finite same-fluid cover needed for

```math
RWS.C_{scale}.
```

Thus every compact classical interval supplies the retained hypotheses:

```math
RSCB.NKF,
\qquad
ACT.X\text{-}Scale,
\qquad
RWS.C_{scale},
\qquad
\Gamma_{pack}\in L^\infty.
```

Endpoint failure at a finite class time is typed through the endpoint grammar. The endpoint package excludes all typed failures, so the retained route upgrades to the original maximal-solution setup at the conditional level.

## 5. Boundary Between The Three Lanes

### Retained conditional route

The retained route is pointwise and spends retained smooth center-ball admission:

```math
RSCB.NKF\Longrightarrow NKF.Native\Longrightarrow ACT.KX\Longrightarrow LCI.A\Longrightarrow CFI.A.
```

This is the route completed by the current terminal compression under H1--H6.

### Averaged finite-energy route

The finite-energy replacement route remains averaged:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}
\Longrightarrow
End_{NS,avg}.
```

Averaged objects remain averaged throughout this branch.

### Terminal readout route

Pointwise endpoint recovery from averaged objects occurs only through terminal readout:

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A,
```

```math
Field.Read:
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field,
```

and

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

This boundary preserves branch typing and prevents averaged data from being used as pointwise data upstream of the readout theorems.

## 6. Optional Exact Branch `FIRP.A0`

The exact same-depth resonant pressure theorem is

```math
FIRP.A0:
\qquad
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I).
```

The finite-net reduction is closed:

```math
\left[\mathfrak Q_{N,\eta^\ell}^{press,loc,src,RR,\alpha}\in L^1(I)\ \text{for all }\ell\right]
\Longrightarrow
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}\in L^1(I).
```

The current exact branch remains open at the fixed-radius Holder-to-energy conversion. The strengthened source route uses the pressure-side returned receiver path instead:

```math
CSP.B3a1[N+2,N+2,\delta+5\Lambda]\Longrightarrow FFPB.A0
\Longrightarrow \operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The source hypothesis includes `FCC.C1a`,
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`.

So `FIRP.A0` is an optional exact branch, not a blocker for the strengthened retained conditional route.

## 7. Terminal Statement

Combining the completed pieces gives the retained conditional terminal theorem:

```math
ACT.KX\Longrightarrow LCI.A\Longrightarrow FCI.5f\Longrightarrow CSP.A\Longrightarrow OFP.A\Longrightarrow CFI.A,
```

```math
DTC\text{-}to\text{-}TowerBound+END.Exh+END.Cross+END.Pack+END.Field\Longrightarrow End_{NS},
```

and hence

```math
CFI.A+End_{NS}\Longrightarrow\text{no finite-time class exit}.
```

With `ORIGIN.Retain`, the retained conditional theorem applies on compact classical intervals of the original maximal-solution setup.
