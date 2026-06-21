# MPP Class-Membership Full Bridge Ledger

## Status

Theorem-facing bridge ledger.

Role: record the complete ordered bridge stack from the direct
transported-center block to the no-class-exit conclusion.

This note is a closure contract, not a proof of the remaining hard PDE input.
It also records two honesty constraints:

1. `DTC.MA-Readout` cannot recover the raw local tower coefficient from
   affine remainders alone; the affine packet must include center zero modes,
   or an independent center-amplitude ledger must be supplied.
2. `DTC-to-TowerBound` must read out both `U_k` and `K_k` on a finite cover of
   the class region; raw `U_q` control alone is not enough unless the
   `K_k` readout through the pressure/viscous tower identities is included.

## A. Direct Transported-Center Bridge Stack

Fix

```math
\mathfrak p=(n,\mu,\Delta)\in\mathscr P_{\rm req},
\qquad
c_j(t)=\Phi(a^j,t).
\tag{BL.0}
```

### 1. `DTC.MA-Energy`

Set

```math
A_j(t):=U_1(c_j(t),t),
\qquad
\dot G_j=A_jG_j,
\qquad
G_j(t_0)=I.
\tag{BL.1}
```

For the affine coordinate

```math
x=c_j(t)+G_j(t)y,
\tag{BL.2}
```

define center-frame remainders

```math
R_{q,j}(y,t)
:=
\mathcal C_{G_j(t)}^{-1}
\left(
U_q(c_j(t)+G_j(t)y,t)-U_q(c_j(t),t)
\right).
\tag{BL.3}
```

The non-smuggling affine packet must include both the remainders and the center
zero modes:

```math
\mathcal E_{\mathfrak p}^{aff}(t)
:=
\sum_{j,q\le\mu+2}
\left|U_q(c_j(t),t)\right|^2
+
\sum_{j,q\le\mu+2}
\sum_{|\beta|\le2}
\int_{B(0,R_{\mathfrak p}^{aff})}
\left|\nabla_y^\beta R_{q,j}(y,t)\right|^2\,dy.
\tag{BL.4}
```

Let
```math
L_{\mathfrak p}(I):=\sup_{j,t\in I}\|G_j(t)^{-1}\|.
```
The affine radius must satisfy
```math
R_{\mathfrak p}^{aff}\ge
L_{\mathfrak p}(I)R_{\mathfrak p}^{TC}.
```
Then every raw center ball `B(c_j(t),R_{\mathfrak p}^{TC})` pulls back inside
`B(0,R_{\mathfrak p}^{aff})`.

The bridge theorem is:

```math
DTC.MA\text{-}Energy_{\mathfrak p}:
\qquad
\frac{d}{dt}\mathcal E_{\mathfrak p}^{aff}
+
c_\nu\mathcal D_{\mathfrak p}^{aff}
\le
B_{\mathfrak p}^{aff}(t)\mathcal E_{\mathfrak p}^{aff}(t)
+
F_{\mathfrak p}^{aff}(t),
\tag{BL.5}
```

with

```math
B_{\mathfrak p}^{aff},\ F_{\mathfrak p}^{aff}\in L^1(I),
\tag{BL.6}
```

where the coefficients are supplied directly before `DTC.A`, without spending

```math
EOC.A,\quad AFD.A,\quad RCF.A,\quad LCI.A,\quad CSP.A,\quad OFP.A,\quad Field.
\tag{BL.7}
```

Output:

```math
\mathcal E_{\mathfrak p}^{aff}\in L^\infty(I).
\tag{BL.8}
```

This is the concrete affine-packet realization of `DTC.M-Linear`.

### 2. `DTC.MA-Readout`

The frame bounds follow from the pack gauge:

```math
\Gamma_\sharp\in L^\infty(I)
\Longrightarrow
\sup_{j,t}
\left(
|G_j(t)|+|G_j(t)^{-1}|
\right)<\infty.
\tag{BL.9}
```

Because the center zero modes are included in `(BL.4)`, Sobolev/Morrey on the
finite affine balls gives

```math
\mathcal E_{\mathfrak p}^{aff}\in L^\infty(I),
\quad
\Gamma_\sharp\in L^\infty(I)
\Longrightarrow
\mathcal M_{\mathfrak p}^{TC}\in L^\infty(I),
\tag{BL.10}
```

where

```math
\mathcal M_{\mathfrak p}^{TC}(t)
:=
1+
\sum_j
\sum_{q\le\mu+2}
\left|U_q(\cdot,t)\right|_{L^\infty(B(c_j(t),R_{\mathfrak p}^{TC}))}.
\tag{BL.11}
```

Output:

```math
DTC.M_{\mathfrak p}^{\infty}.
\tag{BL.12}
```

### 3. `DTC.M-to-VPF`

The strengthened local tower carrier closes the remaining direct coefficients:

```math
\mathcal M_{\mathfrak p}^{TC}\in L^\infty(I)
\Longrightarrow
DTC.V_{\mathfrak p}
+
DTC.P_{\mathfrak p}
+
DTC.F_{\mathfrak p}.
\tag{BL.13}
```

Here

```math
DTC.V_{\mathfrak p}:\ \mathcal V_{\mathfrak p}^{TC}\in L^1(I),
\quad
DTC.P_{\mathfrak p}:\ \mathcal P_{\mathfrak p}^{TC}\in L^1(I),
\quad
DTC.F_{\mathfrak p}:\ F_{\mathfrak p}^{TC}\in L^1(I).
\tag{BL.14}
```

Together with `DTC.M_{\mathfrak p}` this gives:

```math
DTC.PRE_{\mathfrak p}.
\tag{BL.15}
```

### 4. `DTC.PRE-to-DTC.A`

The direct coefficient package gives the raw transported-center packet:

```math
DTC.PRE_{\mathfrak p}
\Longrightarrow
DTC.A_{\mathfrak p}.
\tag{BL.16}
```

Equivalently,

```math
B_{\mathfrak p}^{TC},F_{\mathfrak p}^{TC}\in L^1(I)
\Longrightarrow
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I),
\tag{BL.17}
```

by Gronwall.

### 5. `DTC.A-to-EAR`

The transported-center packet supplies the three receiver-center packages:

```math
DTC.A_{\mathfrak p}
\Longrightarrow
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}.
\tag{BL.18}
```

### 6. `EAR-to-ULCI`

Across the finite required parameter set,

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
\left(
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}
\right)
\Longrightarrow
ULCI(\mathscr P_{\rm req}).
\tag{BL.19}
```

This supplies the required lower-carrier reads, including

```math
LCI.A_{N,m,\delta},
\qquad
LCI.A_{N,m,\delta+\delta_{seg}},
\qquad
LCI.B_{N+4,N+4,\delta+5\Lambda_{\delta,\rho}^{halo}}.
\tag{BL.20}
```

## B. Source-Side Bridge Stack

### 7. `FCI.Split`

The frozen-family source ledger closes through:

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
(FCI.5f).
\tag{BL.21}
```

When `(FCI.5f)` is treated as installed, this bridge sits in the proven ledger.
When `(FCI.5f)` remains open, `FCI.Split` remains part of the terminal work.

This bridge is closed only under the four displayed source inputs, including
the cutoff-defect input `FCC.C1a`. By definition the source ledger splits
pointwise as

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}
=
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}.
\tag{BL.21a}
```

Thus `FPCR.C`, `FSCR.C`, and `FCC.C1` identify the pressure, strain-cascade,
and cutoff channels, while `FCC.C1a` supplies the cutoff-defect integrability
needed to put the cutoff channel in `L^1(I)`. With all four inputs present,
finite summation gives `(FCI.5f)`.

Route-license caution. A route-level closure packet may use the receiver output
`LCI.A` later in the one-field assembly, but that does not by itself prove the
source-only theorem `(FCI.5f)`. The exact source-side blocks remain the channel
theorems `FPCR.C`, `FSCR.C`, and `FCC.C1`; any post-`LCI.A` sufficient shortcut
must be recorded as a separate sufficient source route, not as a discharge of
the exact frozen-family source ledger.

## C. Receiver-to-One-Field Bridge Stack

### 8. `LCI+FCI-to-CSP`

The collar Sobolev packet closes by:

```math
LCI.A+(FCI.5f)
\Longrightarrow
CSP.A.
\tag{BL.22}
```

The same bridge is used at the required enlarged thickness when
`LCI.A_{N,m,\delta+\delta_{seg}}` is the receiver input.

### 9. `CSP+FixedFamily-to-OFP`

One-field forward preservation closes by:

```math
CSP.A+(FCI.5f)
\Longrightarrow
OFP.A.
\tag{BL.23}
```

Output:

```math
Field_{N,r_0,Q_0}
\Longrightarrow
Field_{N,r_{N,\sigma},Q_s}^{\le C_{N,\sigma}}
\qquad
(0\le s\le\sigma).
\tag{BL.24}
```

### 10. `OFP+Pack+Part-to-CFI`

Class-membership forward invariance is:

```math
OFP.A+CFI.B1+CFI.B2
\Longrightarrow
CFI.A.
\tag{BL.25}
```

## D. Endpoint Bridge Stack

### 11.0 Endpoint/Tower-Bound Conditional Packet

The endpoint and tower-bound part of the repaired endpoint-matrix conditional
theorem is the finite Part/Field endpoint matrix plus the tower-amplitude
bridge:

```math
\mathcal M_{End}
:=
\{Pack,Part,Field\}
\times
\{
Dead,\ response\text{-}margin\text{-}collapse,\ packing\text{-}detached,\ tower\text{-}blown,\ Jump,\ Dead_\times,\ Blown_\times,\ Jump_\times
\}.
\tag{BL.E0}
```

The native entries are `(Part,Dead)`, `(Part,response-margin-collapse)`,
`(Pack,packing-detached)`, `(Field,Jump)`, and the row-independent mixed
`tower-blown` slot. The remaining cells are cross entries, not new primitive law
failures. The endpoint theorem packet is:

```math
DTC\text{-}to\text{-}TowerBound
\Longrightarrow
END.TowerAmp
\Longrightarrow
END.TowerBound,
\tag{BL.E1}
```

```math
END.Exh+END.Cross+END.Pack+END.PartMargin+END.Field+END.TowerBound
\Longrightarrow
End\_NS.
\tag{BL.E2}
```

Here `End_NS` is the route-label notation for `\mathsf{End}_{NS}`. Thus the
terminal class-membership route assembly is:

```math
CFI.A+End\_NS
\Longrightarrow
\text{no finite-time class exit}.
\tag{BL.E3}
```

### 11. `END.Exh`

Endpoint exhaustiveness is:

```math
\neg CM_{N,r,Q}
\Longrightarrow
Dead
\vee
response\text{-}margin\text{-}collapse
\vee
packing\text{-}detached
\vee
tower\text{-}blown
\vee
Jump.
\tag{BL.26}
```

It closes from the component certificate definitions/theorems:

```math
\neg Part_{N,Q}\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse,
\qquad
\neg Pack_Q\Longrightarrow packing\text{-}detached\vee tower\text{-}blown,
\qquad
\neg Field_{N,r,Q}\Longrightarrow Jump.
\tag{BL.27}
```

This is the main semantic endpoint bridge.

This bridge is closed as a witness-certificate completeness theorem once the
displayed certificate maps are installed. It is a theorem about the
repo's class-membership witness vocabulary, not an independent classical PDE
blowup classification.

### 12. `END.Pack`

The pack-native blown face is discharged by:

```math
\Gamma_{\mathrm{pack},Q}\in L^\infty(I)
\Longrightarrow
\neg packing\text{-}detached.
\tag{BL.28}
```

### 13. `END.PartMargin`

The repaired Part response-margin face is discharged only by closed terminal
Part predicates or retained strict margins on the same terminal tail:

```math
Part_{N,Q}^{closed}
\quad\text{or}\quad
\left(\mathcal R_\ell(t)\ge\gamma_\ell>0
\text{ on }I\text{ for every strict Part response clause }\ell\right)
\Longrightarrow
\neg response\text{-}margin\text{-}collapse.
\tag{BL.28m}
```

Without this input, response-margin collapse remains a Part-side endpoint face.

### 14. `END.Field`

The field jump face is discharged by:

```math
OFP.A
\Longrightarrow
\neg Jump.
\tag{BL.29}
```

The propagated positive coherence scale and finite field bound exclude loss of
every positive one-field coherence scale.

### 15. `DTC-to-TowerBound`

The actual tower-amplitude input is:

```math
END.TowerAmp:
\qquad
\mathfrak A_{N,Q}\in L^\infty(I),
\tag{BL.30}
```

where

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}
\sum_{k=0}^{N}
\left(
|U_k(x,t)|+|K_k(x,t)|
\right).
\tag{BL.31}
```

The required bridge is:

```math
DTC\text{-}to\text{-}TowerBound:
\qquad
DTC.A_{\mathfrak p}
\text{ on a finite transported-center cover of }Q_t
+
\text{the }K_k\text{ pressure/viscous readout}
\Longrightarrow
END.TowerAmp.
\tag{BL.32}
```

The `K_k` readout is part of this bridge; it must not be silently replaced by
raw `U_q` control unless the tower identities and local pressure/viscous
response have been included.

### 16. `END.TowerBound`

Once `END.TowerAmp` is supplied,

```math
END.TowerAmp
\Longrightarrow
\neg tower\text{-}blown.
\tag{BL.33}
```

This implication is definition-level.

### 16. `END.Cross`

The blown split is:

```math
\mathfrak B_{N,Q}
=
\Gamma_{\mathrm{pack},Q}
+
\mathfrak A_{N,Q},
\tag{BL.34}
```

so

```math
Blown
\Longleftrightarrow
packing\text{-}detached
\vee
tower\text{-}blown.
\tag{BL.35}
```

Jump cross-entries reduce through the installed coherence reduction
`Pack+Part+Jump => Field`-coherence fracture, and dead cross-entries reduce to
the installed `(Part,Dead)` row. Therefore:

```math
END.Cross.
\tag{BL.36}
```

### 17. `END.COMPLETE`

The endpoint contradiction assembly is:

```math
END.Exh
+
END.Pack
+
END.Field
+
END.TowerBound
+
END.Cross
\Longrightarrow
\mathsf{End}_{NS}.
\tag{BL.37}
```

Then:

```math
CFI.A+\mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time class exit}.
\tag{BL.38}
```

Equivalently:

```math
CFI.A+End\_NS
\Longrightarrow
\text{no finite-time class exit}.
\tag{BL.38label}
```

## Compressed Closure Ledger

The bridge stack is:

```math
DTC.MA\text{-}Energy
\Longrightarrow
DTC.MA\text{-}Readout
\Longrightarrow
DTC.M\text{-}to\text{-}VPF
\Longrightarrow
DTC.PRE\text{-}to\text{-}DTC.A
\Longrightarrow
DTC.A\text{-}to\text{-}EAR
\Longrightarrow
EAR\text{-}to\text{-}ULCI
\tag{BL.39}
```

```math
FCI.Split,
\qquad
LCI+FCI\text{-}to\text{-}CSP
\Longrightarrow
CSP+FixedFamily\text{-}to\text{-}OFP
\Longrightarrow
OFP+Pack+Part\text{-}to\text{-}CFI.
\tag{BL.40}
```

```math
END.Exh
+
END.Pack
+
END.Field
+
DTC\text{-}to\text{-}TowerBound
+
END.TowerBound
+
END.Cross
+
END.COMPLETE.
\tag{BL.41}
```

Thus, with `(FCI.5f)` installed, the terminal theorem blocks reduce to:

```math
\boxed{DTC.MA\text{-}Energy}
+
\boxed{DTC\text{-}to\text{-}TowerBound}
+
\boxed{END.Exh}
+
\boxed{END.Cross\text{ certificate reduction}}.
\tag{BL.42}
```

If `END.Cross` is accepted as a conditional matrix reduction from the displayed
certificate reductions, the serious remaining bridge content is:

```math
\boxed{DTC.MA\text{-}Energy}
\qquad
\boxed{DTC\text{-}to\text{-}TowerBound}
\qquad
\boxed{END.Exh}.
\tag{BL.43}
```

If `(FCI.5f)` is not installed, add:

```math
\boxed{FPCR.C+FSCR.C+FCC.C1+FCC.C1a}
\quad
\text{followed by the source-ledger split }FCI.Split.
\tag{BL.44}
```

The main analytic bridge is `DTC.MA-Energy`. The main endpoint semantic bridge
is the certificate-definition content beneath `END.Exh`. The source-side bridge
`FCI.Split` itself is closed only under the four displayed source inputs; when
source-side work remains, the open content is the pressure channel `FPCR.C`, the
strain-cascade channel `FSCR.C`, the cutoff channel `FCC.C1`, and the
cutoff-defect integrability input `FCC.C1a`.

## Current Hard Analytic Subledger for `DTC.MA-Energy`

The affine-frame energy identity cancels the endpoint `U_1U_q` action through
the frame equation

```math
\dot G_j(t)=U_1(c_j(t),t)G_j(t),
\qquad
G_j(t)=F(a^j,t)F(a^j,t_0)^{-1}.
\tag{BL.45}
```

In affine coordinates `x=c_j(t)+G_j(t)y`, the moving cutoff velocity becomes

```math
D_ty
=
G_j^{-1}
\left(
u(x,t)-u(c_j(t),t)-U_1(c_j(t),t)(x-c_j(t))
\right),
\tag{BL.46}
```

so the moving-cutoff commutator is controlled by the affine defect of the first
rung.

The structural affine-local-equation gate is recorded as `DTC.AFF-L1` in the
direct transported-center package note. It proves that, provided
`\mathcal C_G` is the natural tower-tensor representation satisfying the
infinitesimal compatibility identity, the transformed local equation has the
form

```math
\partial_tR_{q,j}
-
\nu\,\operatorname{div}_y(A_j^{aff}\nabla_yR_{q,j})
=
\mathcal M_{q,j}^{aff}
+
\mathcal P_{q,j}^{aff}
+
\mathcal C_{q,j}^{aff}
+
\mathcal F_{q,j}^{aff},
\tag{BL.46a}
```

with

```math
A_j^{aff}=G_j^{-1}G_j^{-T}
\tag{BL.46b}
```

uniformly elliptic, and with no unpaired
`|U_1(c_j,t)|\,\|R_{q,j}\|_{H^2_y}^2` term. If the representation compatibility
of `\mathcal C_G` is not already installed for the tower tensors, that
compatibility identity becomes the first sub-obligation of `DTC.MA-Energy`.

The middle-block structural gate is recorded as `DTC.AFF-L2`. It uses the
installed affine-frame center cancellation
`(LCI.3c3z19az19)`--`(LCI.3c3z19az26)` to show that the local affine middle
block contains no genuine same-rung quadratic term:

```math
R_{q,j}R_{q,j}
\quad\text{does not occur in }\mathcal M_{q,j}^{aff}.
\tag{BL.46c}
```

This passes the same-rung break test. It does not, by itself, give
`B_{\mathrm{mid}}^{aff},F_{\mathrm{mid}}^{aff}\in L^1(I)`; that estimate still
belongs to the noncircular `ACT.E1` / `ACT.E2` term-by-term proof.

The pressure/forcing and moving-cutoff gates are recorded as `DTC.AFF-L3` and
`DTC.AFF-L4`. They pass their structural break tests in the following precise
sense:

```math
\text{pressure uses local Poisson response plus far-tail energy, not }CSP.A,
\tag{BL.46d}
```

```math
\text{top viscosity is read from the included }m+2\text{ rungs},
\tag{BL.46e}
```

and

```math
\text{the moving cutoff sees }
u(x)-u(c_j)-A_j(x-c_j),
\text{ not }U_1(c_j).
\tag{BL.46f}
```

The corresponding `L^1` coefficient estimates remain part of `ACT.E1` /
`ACT.E2`; they are not licensed by reading back `AFD.A`, `EOC.A`, `RCF.A`, or
`CSP.A`.

The target inequality is still:

```math
\frac{d}{dt}\mathcal E_{\mathfrak p}^{aff}
+
c_\nu\mathcal D_{\mathfrak p}^{aff}
\le
B_{\mathfrak p}^{aff}(t)\mathcal E_{\mathfrak p}^{aff}(t)
+
F_{\mathfrak p}^{aff}(t),
\tag{BL.47}
```

where the coefficient has the route form

```math
B_{\mathfrak p}^{aff}
=
C_{\mathfrak p}
\left(
1+
\mathfrak D_{1,\rho,\psi}^{aff}
+
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha\,2}
+
\mathfrak A_{0,\rho,\psi}^{ctr\,2}
+
\mathfrak T_{1,\rho,\psi}^{press,far}
\right).
\tag{BL.48}
```

The direct pieces are:

```math
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
\le
C_{\rho,\psi,\delta}\left|u(\cdot,t)\right|_{L^2}^2
\le
C_{\rho,\psi,\delta}\left|u_0\right|_{L^2}^2,
\tag{BL.49}
```

and

```math
\frac{d}{dt}\mathfrak A_{0,\rho,\psi}^{ctr}
\le
\mathfrak K_{0,\rho,\psi}^{ctr},
\qquad
\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I)
\Longrightarrow
\mathfrak A_{0,\rho,\psi}^{ctr}\in L^\infty(I).
\tag{BL.50}
```

Thus the remaining noncircular affine-center coefficient subledger is:

```math
\boxed{
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I),
\qquad
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1(I),
\qquad
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I)
}
\tag{BL.51}
```

proved directly in affine-center variables, not by spending `AFD.A`, `RCF.A`,
or `EOC.A`.

With `(BL.51)` plus the direct tail and zero-rung pieces, Gronwall gives
`\mathcal E_{\mathfrak p}^{aff}\in L^\infty(I)`, then `DTC.MA-Readout` gives
`DTC.M_{\mathfrak p}^{\infty}`, then `DTC.M-to-VPF` gives `DTC.PRE`.

## B. Affine-Center Three-Ledger Target `ACT.A`

The three ledgers in `(BL.51)` should be treated as one affine-center theorem,
not as three independent supplier problems. Splitting them too early recreates
the old receiver loop, because the affine defect, residual forcing, and local
Holder oscillation are all read out from the same local affine packet.

### Master Packet

For each transported center set

```math
c_j(t)=\Phi(a^j,t),
\qquad
A_j(t):=U_1(c_j(t),t),
\qquad
\dot G_j=A_jG_j,
\qquad
G_j(t_0)=I.
\tag{ACT.0}
```

The deformation equation gives

```math
G_j(t)=F(a^j,t)F(a^j,t_0)^{-1},
\tag{ACT.1}
```

so the pack gauge gives

```math
\|G_j\|_{L^\infty(I)}
+
\|G_j^{-1}\|_{L^\infty(I)}
\le
C_\sharp.
\tag{ACT.2}
```

Use affine coordinates

```math
x=c_j(t)+G_j(t)y.
\tag{ACT.3}
```

For `0\le q\le m+2`, define

```math
R_{q,j}(y,t)
:=
\mathcal C_{G_j(t)}^{-1}
\left(
U_q(c_j(t)+G_j(t)y,t)-U_q(c_j(t),t)
\right),
\tag{ACT.4}
```

with the affine-subtracted first rung

```math
R_{1,j}(y,t)
:=
\mathcal C_{G_j(t)}^{-1}
\left(
U_1(c_j(t)+G_j(t)y,t)-A_j(t)
\right).
\tag{ACT.5}
```

Let

```math
\widetilde U_{q,j}
:=
\mathcal C_{G_j}^{-1}U_q(c_j,t).
\tag{ACT.6}
```

The master energy is

```math
\mathcal E_{ACT}(t)
:=
\sum_{j=1}^{J}
\sum_{q=0}^{m+2}
\sum_{|\beta|\le2}
\int
\zeta(y)^2|\nabla_y^\beta R_{q,j}(y,t)|^2\,dy
+
\sum_{j=1}^{J}
\sum_{q=0}^{m+2}
|\widetilde U_{q,j}(t)|^2.
\tag{ACT.7}
```

Let `\mathcal D_{ACT}` be the corresponding one-derivative-higher packet.

### Theorem Target `ACT.A`

The target is:

```math
ACT.A:
\qquad
\mathcal E_{ACT}
\text{ proves }
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I),
\quad
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1(I),
\quad
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I).
\tag{ACT.A}
```

The intended energy inequality is

```math
\frac{d}{dt}\mathcal E_{ACT}
+
c_\nu\mathcal D_{ACT}
\le
B_{ACT}(t)\mathcal E_{ACT}(t)
+
F_{ACT}(t),
\tag{ACT.E}
```

with

```math
B_{ACT},F_{ACT}\in L^1(I).
\tag{ACT.E0}
```

### Noncircularity Requirement

The following bootstrap is **not** a proof:

```math
\mathcal E_{ACT}\in L^\infty(I)
\Longrightarrow
B_{ACT},F_{ACT}\in L^1(I)
\Longrightarrow
\mathcal E_{ACT}\in L^\infty(I).
\tag{ACT.Bad}
```

That is the old loop in affine-center language unless `(ACT.E)` has already
been proved with `L^1` coefficients not obtained from the desired
`\mathcal E_{ACT}\in L^\infty` conclusion.

Thus `ACT.A` is promoted only if the term expansion proves one of the two
noncircular forms:

```math
\frac{d}{dt}\mathcal E_{ACT}
+
c_\nu\mathcal D_{ACT}
\le
B_{ext}(t)\mathcal E_{ACT}
+
F_{ext}(t),
\qquad
B_{ext},F_{ext}\in L^1(I),
\tag{ACT.E1}
```

or the equivalent absorbed bad-term estimate

```math
\mathcal T_{ACT}^{bad}
\le
\varepsilon\mathcal D_{ACT}
+
B_{ext}(t)\mathcal E_{ACT}
+
F_{ext}(t),
\qquad
B_{ext},F_{ext}\in L^1(I).
\tag{ACT.E2}
```

Here `B_{ext}` and `F_{ext}` may use finite seed data, the energy-controlled
far pressure tail, direct zero-rung forcing, transported cutoff/pack-gauge
ledgers, and terms absorbed by `\mathcal D_{ACT}`. They may not use `AFD.A`,
`RCF.A`, `EOC.A`, `LCI.A`, `CSP.A`, `OFP.A`, or `Field`.

### Scale-Small Alternative `ACT.ScaleSmall`

The finite-stage route is not the only possible completion. A parallel
sufficient branch is the scale-small affine-excess bootstrap:

```math
\frac{d}{dt}\mathcal X
+
c_\nu\mathcal N
\le
L(t)\mathcal X
+
C\mathcal X^{1/2}\mathcal N
+
F(t),
\qquad
L,F\in L^1(I).
\tag{ACT.X1}
```

Here `\mathcal X` is the scale-normalized affine **excess** packet, not the full
affine packet with arbitrary center zero modes. Center amplitudes are either
gauged/renormalized away from the small quantity or carried separately in the
`L,F` budget. This distinction is necessary because the raw `q=0` center term
`R^{-1}|\widetilde U_{0,j}|^2` is not made small by taking `R` small.

Choose `\varepsilon_\ast>0` such that

```math
C(2\varepsilon_\ast)^{1/2}\le c_\nu/4.
\tag{ACT.X2}
```

If

```math
\mathcal X(t_0)\le\varepsilon_\ast
\tag{ACT.X3}
```

and the additive budget on the affine interval satisfies

```math
\left(
\mathcal X(t_0)+\|F\|_{L^1}
\right)
\exp(\|L\|_{L^1})
<
2\varepsilon_\ast,
\tag{ACT.X4}
```

then the first-exit argument absorbs `C\mathcal X^{1/2}\mathcal N` and gives

```math
\mathcal X\in L^\infty,
\qquad
\mathcal N\in L^1.
\tag{ACT.X5}
```

Thus:

```math
ACT.ScaleSmall
\Longrightarrow
\mathcal X^{exc}\in L^\infty
\quad\text{and}\quad
\mathcal N\in L^1
\tag{ACT.X6}
```

on every affine interval where `(ACT.X3)`--`(ACT.X4)` are supplied. The
subledger readouts require the separate `ACT.X-Readout` step, packaged below as
`AXP.A`. For the full strip, this branch still requires a small-budget scheduler
or a proof that the source budget is small on the chosen retained windows; mere
finiteness of `L,F` is not enough.

The named atom split is:

```math
ACT.X\text{-}Def:
\quad
\mathcal X^{exc}\ \text{is the scale-normalized affine excess,}
\qquad
\mathcal Y^{read}=\mathcal A_{\mathfrak p}^{ctr}+\mathcal X^{exc}.
\tag{ACT.X7}
```

Only `\mathcal X^{exc}` is used in the small factor
`(\mathcal X^{exc})^{1/2}\mathcal N`. The full readout packet
`\mathcal Y^{read}` keeps the center zero modes for raw tower readout. The
separate center ledger is

```math
\mathcal A_{\mathfrak p}^{ctr}
:=
1+
\sum_j\sum_{q=0}^{m+2}
|\widetilde U_{q,j}|^2,
\qquad
\frac{d}{dt}\mathcal A_{\mathfrak p}^{ctr}
\le
L_A\mathcal A_{\mathfrak p}^{ctr}+F_A,
\quad
L_A,F_A\in L^1(I).
\tag{ACT.X7a}
```

Thus the center ledger is controlled by its own Gronwall rule or carried in
`L,F`; it is not absorbed by scale smallness. The noncircular pre-pressure
piece is the lower core ledger, not the top buffer modes.

The sharpened form is:

```math
ACT.Actr_{\mathrm{core}}:
\quad
\mathcal K_{\le m}^{ctr}\in L^1(I)
\Longrightarrow
\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I),
\tag{ACT.X7b}
```

where

```math
\mathcal K_{\le m}^{ctr}
=
\sum_j |K_0(c_j)|
+
\sum_j |\mathcal E_j^{(1)}|
+
\sum_{q=2}^{m}\sum_j|\widetilde K_{q,j}|.
\tag{ACT.X7c}
```

The named supplier for this ledger is:

```math
NKF.A:
\quad
\mathcal P_{\le m}^{ctr,nat}\in L^1(I)
\Longrightarrow
K0.Core+E1.Aff+Kmid.Core
\in L^1(I)
\Longrightarrow
ACT.Kcore.
\tag{ACT.X7d}
```

Here `K0.Core` supplies the residual pressure-gradient/harmonic split
`\sum_j|\nabla\pi_j^{loc}(c_j)|+\sum_j|\nabla h_j(c_j)|
+\nu\sum_j|U_2(c_j)|`, where
`\pi_j^{loc}=p_j^{loc}-p_j^{aff}` and `p_j^{aff}` is the native affine
normal-form pressure: its center-cell functionals match the affine and
affine-linear pressure modes. `E1.Aff` supplies the corresponding residual/harmonic
pressure Hessian and `\nu U_3` terms in `\mathcal E_j^{(1)}`, and `Kmid.Core`
supplies the residual pressure center forcing plus the viscous forcing split.
The lower viscous part is core-controlled; the
top-viscous line
`\nu\sum_j(|U_{m+1}(c_j)|+|U_{m+2}(c_j)|)` is carried as forcing/readout, not
as a pre-pressure `A_buf` amplitude ledger.

The live native point is `NKF.Native`, namely
`\mathcal P_{\le m}^{ctr,nat}\in L^1(I)`. Finite energy and the pressure
Poisson equation supply the far-tail/distributional pieces, but not by
themselves the pointwise center pressure derivatives and viscous center
derivatives needed for this packet.

So the local center-amplitude routing is:

```math
NKF.Native
\Longrightarrow
NKF.A
\Longrightarrow
ACT.Kcore
\Longrightarrow
\mathcal K_{\le m}^{ctr}\in L^1(I)
\Longrightarrow
ACT.Actr_{\mathrm{core}}.
\tag{ACT.X7e}
```

The pressure parts of `K0.Core`, `E1.Aff`, and `Kmid.Core` are assigned first to
`ACT.X-Press_cell` in residual form: the cell ledger controls
`\pi_j^{loc}=p_j^{loc}-p_j^{aff}` plus harmonic/far-tail terms, with
`p_j^{aff}` annihilating both affine and affine-linear center pressure modes.
The remaining core pressure is quadratic in affine excess; the cutoff support is
isolated in the annular pressure ledger. After `ACT.Actr_core` is available, `ACT.X-Press_energy` may
spend `\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I)` and contributes the
`C_{press}(\mathcal X^{exc})^{1/2}\mathcal N` term to the bootstrap.

The top buffer modes `m+1,m+2` are readout/top-viscous modes inside
`\mathcal Y^{read}=\mathcal A_{\mathrm{core}}^{ctr}
+\mathcal A_{\mathrm{buf}}^{ctr}+\mathcal X^{exc}`. Proving them before
`ACT.X-Boot` would require the optional stronger input
`\sum_{q=m+1}^{m+2}\sum_j|\widetilde K_{q,j}|^2\in L^1(I)` and risks rung
creep. The live obligation beneath `ACT.Actr_core` is now the direct
lower center-forcing ledger `ACT.Kcore`.

Audit boundary. A displayed estimate for `K0.Core+E1.Aff+Kmid.Core` that uses
`\mathcal A_{\mathrm{core}}^{ctr}`, `\mathfrak H^{osc,\alpha}`, or
`Y_{\mathrm{read}}` is a post-readout estimate, not the direct pre-pressure
proof of `ACT.Kcore`. The ordered bridge remains
`NKF.Native => NKF.A => ACT.Kcore => ACT.Actr_core => ACT.X-Press_energy =>
AXP.A`; reversing that dependency would smuggle the readout package into its
own supplier.

```math
ACT.X\text{-}Energy:
\quad
\frac{d}{dt}\mathcal X^{exc}
+
c_\nu\mathcal N
\le
L\mathcal X^{exc}
+
(C_{cut}+C_{press})(\mathcal X^{exc})^{1/2}\mathcal N
+
F.
\tag{ACT.X8}
```

This is supplied by `ACT.X-Mid`, `ACT.X-Cut`, `ACT.X-Press_energy`, and
`ACT.X-TopVisc`. The cutoff and pressure atoms are allowed to retain the
absorbable residues `C_{cut}(\mathcal X^{exc})^{1/2}\mathcal N` and
`C_{press}(\mathcal X^{exc})^{1/2}\mathcal N`; the scheduler absorbs their sum.

The assembly theorem for the affine-excess differential inequality is:

```math
AXE.A:
\quad
AXE.1+AXE.2+AXE.3+AXE.4
\Longrightarrow
ACT.X\text{-}Energy.
\tag{ACT.X8a}
```

Here `AXE.1` is the triangular middle-block estimate, `AXE.2` is the local
pressure/top-viscous estimate, `AXE.3` is the moving affine cutoff estimate, and
`AXE.4` is the viscous cutoff commutator estimate. These are theorem-facing
analytic estimates; they may use the affine frame, the center-amplitude ledger,
local Poisson response, far-tail energy, and the included `m+2` rungs, but not
`LCI.A`, `CSP.A`, `OFP.A`, `Field`, `EOC.A`, `AFD.A`, or `RCF.A`.

```math
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
RWS.C_{\mathrm{scale}}
+
ACT.X\text{-}Readout
\Longrightarrow
ACT.A.
\tag{ACT.X9}
```

The readout requires the separate center-amplitude ledger
`\mathcal A_{\mathfrak p}^{ctr}` to satisfy `(ACT.X7a)` or be carried in `L,F`;
otherwise the scale-small excess bound does not recover the raw center modes.

For a full interval, `ACT.X-Boot` also needs `ACT.X-Scale` at every retained
restart plus the small-budget scheduler. The restarted variable is only
`\mathcal X^{exc}`; the center ledger continues through `(ACT.X7a)`. Because the
seed radius may be smaller than the fixed transported-center readout radius, the
route also needs `RWS.C_scale` to recover fixed-radius readouts from the finite
small-radius packet cover.

Record that boot theorem as:

```math
ACT.X\text{-}Boot:
\quad
\left[
\begin{gathered}
I=\bigcup_{r=0}^{M-1}I_r,\quad
d\mathcal X^{exc}/dt+c_\nu\mathcal N
\le
L\mathcal X^{exc}+(C_{cut}+C_{press})(\mathcal X^{exc})^{1/2}\mathcal N+F,\\
(C_{cut}+C_{press})(4\eta_X)^{1/2}\le c_\nu/2,\quad
\bigl(\eta_X+\|F\|_{L^1(I_r)}\bigr)
e^{\|L\|_{L^1(I_r)}}\le2\eta_X
\ \text{for all }r
\end{gathered}
\right]
\Longrightarrow
\mathcal X^{exc}\in L^\infty(I),\quad \mathcal N\in L^1(I).
\tag{ACT.X9a}
```

`ACT.X-Boot` is separate from `AXE.A`: `AXE.A` proves the local differential
inequality, while `ACT.X-Boot` supplies the Seed+Sched+Absorb first-exit
theorem on retained windows. Its active seed input is `ACT.X-Scale`, not a
consequence of `L,F\in L^1(I)` alone.

The remaining seed input is:

```math
ACT.X\text{-}Scale:
\quad
\text{retained smooth center-ball regularity}
\Longrightarrow
\exists R_a>0:\ \mathcal X^{exc}(s_a;R_a)\le\eta_X.
\tag{ACT.X9b}
```

`ACT.X-Scale` supplies the next window-start smallness; absolute continuity of
the `L,F` integrals supplies only the local budget part.

The scale/readout compatibility bridge is:

```math
RWS.C_{\mathrm{scale}}:
\quad
\text{finite dynamic same-fluid cover by small restarted packets}
\Longrightarrow
\text{fixed-radius }ACT.X\text{-Readout}.
\tag{ACT.X9c}
```

It replaces the invalid inference from small-radius excess to fixed-radius
excess; it does not assert `\mathcal X_{fixed}<\eta_X`. The dynamic cover input
is supplied by `RWS.C_cover` from compact retained label tubes and the pack
gauge.

The named theorem target for this sufficient branch is:

```math
AXP.A:
\quad
ACT.Actr_{\mathrm{core}}
+
ACT.X\text{-}Def
+
AXE.A
+
ACT.X\text{-}Boot
+
ACT.X\text{-}Scale
+
RWS.C_{\mathrm{scale}}
+
ACT.X\text{-}Readout
\Longrightarrow
\left(
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I)
\wedge
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)
\wedge
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1(I)
\right).
\tag{AXP.A}
```

Equivalently, `AXP.A` is the affine-excess propagation theorem for the current
`DTC.MA-Energy` subledger. It is conditional on the small-excess/small-budget
bootstrap and on the separate center-amplitude ledger. It does not prove
`ACT.X-Energy`, does not install `(FCI.5f)`, and does not discharge
`END.Exh`, `END.TowerAmp`, or `END.Cross`.

The compact completion chain is:

```math
ACT.Actr_{\mathrm{core}}
+
ACT.X\text{-}Def
+
ACT.X\text{-}Energy
+
ACT.X\text{-}Cut
+
ACT.X\text{-}Press
+
ACT.X\text{-}Mid
+
ACT.X\text{-}TopVisc
+
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
RWS.C_{\mathrm{scale}}
+
ACT.X\text{-}Readout
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{ACT.X10}
```

The next theorem-facing proof targets are `NKF.Native / ACT.Kcore`, `ACT.X-Scale`,
and `RWS.C_scale`.
In the sharpened ledger, pressure is split into `ACT.X-Press_cell` and
`ACT.X-Press_energy`. The cell form supplies the residual pressure cells in
`ACT.Kcore` after subtracting the native affine normal-form pressure
`p_j^{aff}` from `p_j^{loc}`. The normal form removes both pure affine and
affine-linear pressure modes, so the residual core is quadratic in affine
excess plus annular/far-tail terms. The energy form is the same residual local
pressure decomposition: the quadratic core produces the scale-small pressure
residue `C_{press}(\mathcal X^{exc})^{1/2}\mathcal N`, while the annular and
harmonic parts enter `epsilon N+L_press X_exc+F_press`;
the finite pressure far-tail ledger is energy-controlled in
`L^\infty(I)\subset L^1(I)`. The top-viscous endpoint reads `m+1,m+2` through
`A_buf` inside `Y_read`, not through `ACT.Actr_core`. It may not spend `LCI.A`,
`CSP.A`, `OFP.A`, or `Field`.

### Finite-Stage `ACT.E2` Route

The valid completion route is finite-stage, not simultaneous. Define

```math
\mathcal E_{\le r}^{aff}
:=
\sum_j
\sum_{q\le r}
\sum_{|\beta|\le2}
\int \zeta^2|\nabla_y^\beta R_{q,j}|^2\,dy
+
\sum_j\sum_{q\le r}
|\widetilde U_{q,j}|^2.
\tag{ACT.S0}
```

Let `\mathcal E_r^{aff}` and `\mathcal D_r^{aff}` denote the exact-rung piece
and its one-derivative-higher dissipation. The induction statement is:

```math
ACT.Stage(r):
\qquad
\mathcal E_{\le r}^{aff}\in L^\infty(I)
\quad
\text{from a noncircular stage inequality.}
\tag{ACT.S1}
```

The stage inequality has the form

```math
D^+\mathcal E_{\le r}^{aff}
+
c_r\nu\mathcal D_{\le r}^{aff}
\le
B_r(t)\mathcal E_{\le r}^{aff}
+
F_r(t),
\qquad
B_r,F_r\in L^1(I),
\tag{ACT.S2}
```

where `B_r,F_r` may depend on direct external ledgers and on already-proved
`\mathcal E_{\le r-1}^{aff}\in L^\infty(I)`, but not on the desired
`\mathcal E_{\le r}^{aff}\in L^\infty(I)`.

The base stages `r=0,1` are not supplied by the triangular middle-block
argument. They must come from the direct zero-rung forcing ledger, finite seed
data, the affine frame equation, and the first-rung affine-defect equation. If
those base estimates are not installed, they remain the base obligations for
`ACT.Stage(r)`.

For the middle block,

```math
\mathcal M_{2,j}^{aff}=0,
\tag{ACT.S3}
```

and for `q\ge3`,

```math
\mathcal M_{q,j}^{aff}
=
\sum_{\ell=2}^{q-1}
\mathcal B_{q,\ell}
\left(
R_{\ell,j},
R_{q+1-\ell,j}
\right)
+
\mathcal R_{q,j}^{mid,cut}.
\tag{ACT.S4}
```

Thus the rung-`r` middle term has only lower affine factors. The local
`H^2` product estimate and Young inequality give

```math
\left|
\sum_j
\langle
R_{r,j},
\mathcal M_{r,j}^{aff}
\rangle_{H^2_y}
\right|
\le
\varepsilon\nu\mathcal D_r^{aff}
+
B_{mid,r}(t)\mathcal E_r^{aff}
+
F_{mid,r}(t),
\tag{ACT.S5}
```

with `B_{mid,r},F_{mid,r}\in L^1(I)` once `ACT.Stage(r-1)` is known. This is
the finite-stage version of the `DTC.AFF-L2f` estimate.

For pressure and top forcing, use

```math
p=p_j^{loc}+h_j,
\qquad
-\Delta p_j^{loc}=\partial_a\partial_b(\eta_j u_a u_b).
\tag{ACT.S6}
```

The local pressure estimate must be proved on the fixed affine ball in the
stage form

```math
\left|
\langle
R_{r,j},
\mathcal P_{r,j}^{aff,loc}
\rangle_{H^2_y}
\right|
\le
\varepsilon\nu\mathcal D_r^{aff}
+
B_{press,r}^{loc}(t)\mathcal E_r^{aff}
+
F_{press,r}^{loc}(t),
\tag{ACT.S7}
```

where all coefficients depending on lower rungs are external by
`ACT.Stage(r-1)`, and any same-rung derivative factor is absorbed into
`\mathcal D_r^{aff}`. If this estimate produces a same-rung quadratic
coefficient not absorbable by `\mathcal D_r^{aff}`, the finite-stage route
breaks.

The harmonic pressure part is licensed only through far-tail ledgers:

```math
\left|
\langle
R_{r,j},
\mathcal P_{r,j}^{aff,harm}
\rangle_{H^2_y}
\right|
\le
\varepsilon\nu\mathcal D_r^{aff}
+
B_{press,r}^{harm}(t)\mathcal E_r^{aff}
+
F_{press,r}^{harm}(t),
\tag{ACT.S8}
```

with `L^1` coefficients supplied by the far-tail pressure theorem. The first
tail is energy-controlled; higher finite tails remain part of the localized
tower/pressure-response estimate unless separately proved.

The local viscous term in the affine packet is dissipative. The top-viscous
center ledger is a readout, not an additional local energy forcing:

```math
\mathfrak K_{m-1}^{visc,ctr}
+
\mathfrak K_m^{visc,ctr}
\le C_{ACT}
\sum_j
\left(
|U_{m+1}(c_j)|
+
|U_{m+2}(c_j)|
\right),
\tag{ACT.S9}
```

and is available after the finite induction reaches the included `m+2` center
modes.

The cutoff/frame terms are stage-valid only if

```math
D_t y
=
G_j^{-1}
\left(
u(x,t)-u(c_j,t)-A_j(x-c_j)
\right)
\tag{ACT.S10}
```

is used, so the cutoff is controlled by affine defect and lower-stage
oscillation, not by the full center amplitude `|A_j|`.

For each `r`, combine `(ACT.S5)`, `(ACT.S7)`, `(ACT.S8)`, the viscous
dissipation, and the cutoff/frame estimate:

```math
D^+\mathcal E_{\le r}^{aff}
+
c_r\nu\mathcal D_{\le r}^{aff}
\le
B_r(t)\mathcal E_{\le r}^{aff}
+
F_r(t),
\qquad
B_r,F_r\in L^1(I).
\tag{ACT.S11}
```

Gronwall gives `ACT.Stage(r)`. Since the required depth is finite, iterating to
`r=m+2` gives the noncircular form of `(ACT.E2)`:

```math
\boxed{
ACT.Stage(0),\ldots,ACT.Stage(m+2)
\Longrightarrow
ACT.E2.
}
\tag{ACT.S12}
```

The remaining analytic checks are therefore precise: prove the stage pressure
response `(ACT.S7)`--`(ACT.S8)` and the stage cutoff/frame estimate without
spending the receiver conclusions. The middle block is structurally triangular
once `DTC.AFF-L2` is accepted.

### Required Term Checks

The endpoint first-rung action must cancel under the affine frame:

```math
\frac{d}{dt}
\left(
\mathcal C_{G_j}^{-1}U_q(c_j,t)
\right)
=
\mathcal C_{G_j}^{-1}K_q(c_j,t)
+
\mathcal C_{G_j}^{-1}B_{q,\mathrm{mid}}(c_j,t),
\qquad q\ge2.
\tag{ACT.C1}
```

The moving cutoff must see only affine defect:

```math
D_t y
=
G_j^{-1}
\left(
u(x,t)-u(c_j,t)-A_j(x-c_j)
\right),
\tag{ACT.C2}
```

and

```math
|D_t\zeta(y)|
\le
C
\sup_{B(c_j,2R)}
|U_1(x,t)-A_j(t)|.
\tag{ACT.C3}
```

The pressure response must use only local Poisson response plus far-tail
energy:

```math
p=p_j^{loc}+h_j,
\qquad
|\nabla^{q+1}h_j(c_j,t)|
\le
C\mathfrak T_{q,\rho,\psi}^{press,far}(t).
\tag{ACT.C4}
```

The top viscous terms must be read from the included `m+2` rungs:

```math
\mathfrak K_{m-1}^{visc,ctr}
+
\mathfrak K_m^{visc,ctr}
\le
C
\sum_j
\left(
|U_{m+1}(c_j)|
+
|U_{m+2}(c_j)|
\right).
\tag{ACT.C5}
```

### Readouts After Noncircular `ACT.E`

If `(ACT.E1)` or `(ACT.E2)` is proved, Gronwall gives
`\mathcal E_{ACT}\in L^\infty(I)`. Then local Morrey and frame equivalence give

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I).
\tag{ACT.R1}
```

The affine defect readout is

```math
\mathfrak D_{1,\rho,\psi}^{aff}
\le
C
\left(
1+
\mathcal E_{ACT}^{1/2}
+
\mathcal E_{ACT}
+
(\mathfrak A_0^{ctr})^2
+
\mathfrak T_1^{press,far}
\right),
\tag{ACT.R2}
```

so `\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)` on finite `I`, using the direct
far-tail and zero-rung ledgers.

Finally,

```math
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}
=
\mathfrak K_{N,m,\rho,\psi}^{press,ctr}
+
\mathfrak K_{N,m,\rho,\psi}^{visc,top,ctr}
\in L^1(I)
\tag{ACT.R3}
```

follows from the local pressure response and the included top-viscous rungs.

Thus the licensed route is:

```math
ACT.E1\ \text{or}\ ACT.E2
\Longrightarrow
ACT.A
\Longrightarrow
(BL.51)
\Longrightarrow
DTC.MA\text{-}Energy
\Longrightarrow
DTC.PRE.
\tag{ACT.Route}
```

So `ACT.A` is the correct bundled theorem target. The remaining audit point is
not the readout from `\mathcal E_{ACT}`; it is the term-by-term proof of
`(ACT.E1)` or `(ACT.E2)` without using the ledgers that `ACT.A` is supposed to
produce.
