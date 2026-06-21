# ACT.KX Conditional Route Completion Theorem

This packet records the paper-grade conditional route theorem for the
`ACT.KX` completion pass. The claim level is intentionally conditional:
`RSCB.NKF`, bounded pack gauge, the finite required parameter set, and the
accepted endpoint certificate maps are hypotheses of this packet, not
conclusions proved here.

The packet does not replace the theorem-facing status surfaces. It is the
single ordered proof packet they cite for the retained-smoothness route

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A
\Longrightarrow
FCI.5f
\Longrightarrow
CFI.A
\Longrightarrow
End_{NS}.
```

## Averaged-Route Boundary

The route displayed above spends retained local smoothness through `RSCB.NKF`.
It must not be cited as a proof of `NKF.Native`, `ACT.X-Scale`, point pressure
center forcing, or pointwise `DTC.A` from finite energy, bounded pack gauge,
same-fluid geometry, and pressure Poisson structure alone.

When retained smoothness is not an allowed input, the receiver-side replacement
target is the averaged packet recorded in
[mpp-averaged-act-kx-scale-critical-forcing-packet-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-averaged-act-kx-scale-critical-forcing-packet-note.md):

```math
SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
DTC.A_{\mathrm{avg}}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{\mathrm{avg}}
\Longrightarrow
CSP.A_{\mathrm{avg}}
\Longrightarrow
OFP.A_{\mathrm{avg}}
\Longrightarrow
CFI.A_{\mathrm{avg}}.
```

The old pointwise `DTC.A` remains quarantined behind the later readout theorem

```math
DTC.Read:
\qquad
DTC.A_{\mathrm{avg}}
+\text{fixed-scale finite same-fluid cover}
+ATD_m^\varepsilon
\Longrightarrow DTC.A.
```

The old pointwise class-membership conclusion remains quarantined behind

```math
Field.Read:
\qquad
Field_{\mathrm{avg}}
+\text{uniform positive-scale SCF-good finite cover}
+ATD_m^\varepsilon
\Longrightarrow Field
\qquad\text{or}\qquad
CM.Read:\ CM_{\mathrm{avg}}\Longrightarrow CM.
```

## Theorem Statement

**Theorem 1 (`ACT.KX` conditional route completion).** Fix a classical
Navier-Stokes solution on the working time interval `I`, a target spatial
region `Q_t`, and the finite parameter set

```math
\Pi_{req}
=
\{m,N,\alpha,\nu,I,Q,\rho,\psi,\varepsilon,\delta,R_{fix},
\eta_X,c_\nu,C_X\}
\cup
\{I_a,c_j,r_a,R_b\}_{finite}.
```

Assume the following hypotheses.

**H1 (`RSCB.NKF`, retained-window admission).** There are retained same-fluid
windows

```math
I_a=[s_a,s_{a+1}],
\qquad
c_j(t)=\Phi(a^j,t),
```

and radii `r_a>0` such that

```math
B(c_j(t),2r_a)\subset Q_t^{rec,+}
```

for every retained center and every `t\in I_a`. On these retained center
balls,

```math
\sum_{q\le m+2}
\|U_q\|_{L^\infty_t C^2_x(B(c_j(t),2r_a))}
+
\|p\|_{L^1_t C^{m+1,\alpha}_x(B(c_j(t),2r_a))}
<\infty.
```

This is the only smoothness input spent by `NKF.Native`, `ACT.X-Scale`, and
the point-recovery step inside `RSCB.NKF`.

**H2 (bounded pack gauge).** The retained pack geometry obeys

```math
\Gamma_{\mathrm{pack},Q}\in L^\infty(I),
```

and every fixed readout ball admits a finite same-fluid dynamic cover with
bounded overlap:

```math
B(c_j(t),R_{fix})
\subset
\bigcup_{b=1}^{B}B(c_{j_b}(t),R_b).
```

No infinite cover, limiting parameter family, or fixed-radius smallness is
assumed.

**H3 (`ACT.KX` differential budget).** On each retained interval the excess
and center ledgers satisfy

```math
dX+c_\nu N
\le
(L_0+C A_{core})X+C_X X^{1/2}N+F_0,
```

```math
dA_{core}\le \mathcal K_{\le m}^{ctr}+\mathcal T_{tri}(A_{core}),
```

```math
\mathcal K_{\le m}^{ctr}
\le C(X^{1/2}N^{1/2}+X)+F_K,
```

with finite-depth triangular center forcing `\mathcal T_{tri}`.

**H4 (scheduler and scale seeds).** With

```math
\eta_X=\left(\frac{c_\nu}{4C_X}\right)^2,
```

the retained scheduler chooses subintervals so that

```math
\left(
\eta_X+\int_{I_a}(F_0+F_K)
\right)
\exp\left(
\int_{I_a}(L_0+C A_{core}+1)
\right)
\le 2\eta_X.
```

At every restart time `s_a`, `ACT.X-Scale` supplies a retained radius `R_a`
with

```math
B(c_j(s_a),2R_a)\subset Q_{s_a}^{rec,+},
\qquad
X_{exc}(s_a;R_a)\le\eta_X.
```

**H5 (post-receiver source inputs).** Once `LCI.A` is obtained, it supplies
the coefficient controls required by `FPCR.C` and `FSCR.C`, and the corrected
`FCC.C1` also requires the explicit cutoff-defect input. In
particular the pressure source splits into `LH/HL + RR + far`, the
strain/cascade coefficient satisfies

```math
\mathfrak C_{N+1}^{\delta}\in L^1(I),
```

and the cutoff channel is closed only after

```math
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I).
```

**H6 (tower and endpoint certificates).** A finite transported-center cover

```math
Q_t\subset\bigcup_a B(c_a(t),R_a)
```

is fixed, the local DTC packet is available on each retained ball, the depth
for `DTC-to-TowerBound` is at least `N+2`, and the accepted endpoint
certificate maps are installed:

```math
\neg Part_{N,Q}\Longrightarrow Dead,
```

```math
\neg Pack_Q
\Longrightarrow
packing\text{-}detached\vee tower\text{-}blown,
```

```math
\neg Field_{N,r,Q}\Longrightarrow Jump,
```

```math
Blown
\Longleftrightarrow
packing\text{-}detached\vee tower\text{-}blown,
```

```math
Pack+Part+Jump
\Longrightarrow
Field\text{-coherence fracture},
```

together with the installed `(Part,Dead)` row. The endpoint faces are
`END.Pack` and `END.Field`, with `END.Pack` spending the bounded pack gauge
and `END.Field` spending `OFP.A`.

Then the following conclusions hold, in the stated dependency order.

**C1 (`RSCB.NKF` to `NKF.Native`).**

```math
RSCB.NKF
\Longrightarrow
NKF.Native.
```

The native forcing and native pressure-cell functionals are licensed by the
retained mollifier limit and point recovery.

**C2 (`ACT.X-Press`).**

```math
NKF.Native+NKF.Ann+NKF.Quad
\Longrightarrow
ACT.X\text{-Press}.
```

The pressure contribution has the route form

```math
|\mathcal T_{press}|
\le
\varepsilon N
+C_{press}X_{exc}^{1/2}N
+L_{press}X_{exc}
+F_{press},
```

with finite-energy far tail in `L^1(I)`.

**C3 (`ACT.KX`).**

```math
ACT.X\text{-Cut}
+ACT.X\text{-Press}
+ACT.X\text{-MidRaw}
+ACT.X\text{-TopVisc}
\Longrightarrow
ACT.KX.
```

Consequently

```math
X_{exc}\in L^\infty(I),
\qquad
N\in L^1(I),
\qquad
\mathcal K_{\le m}^{ctr}\in L^1(I),
\qquad
A_{core}^{ctr}\in L^\infty(I).
```

**C4 (`ACT.X-Readout`, `ACT.A`, `RCF.A`, `LCI.A`).**

```math
ACT.KX+ACT.X\text{-Scale}+RWS.C\_scale
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

Here `RWS.C_scale` is the finite-overlap scale-transfer theorem from the
small restarted packets to fixed-radius readout; it does not assert
fixed-radius smallness.

**C5 (`FCI.5f`).**

```math
LCI.A
\Longrightarrow
FPCR.C+FSCR.C+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow
FCI.5f.
```

**C6 (`CFI.A`).**

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
CFI.A.
```

**C7 (`End_NS` and terminal class-exit contradiction).**

```math
DTC\text{-to-TowerBound}
+END.Exh
+END.Cross
+END.Pack
+END.Field
\Longrightarrow
End_{NS},
```

and therefore

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
```

This proves only the conditional route completion under H1-H6.

## Proof Blocks

### Lemma 1 (`RSCB.NKF` licenses `NKF.Native`)

Under `RSCB.NKF`, the native center forcing and native pressure-cell
functionals used by `NKF.Native` are well-defined in the retained center
balls and are recovered as limits of transported mollifier tests.

**Proof.** For a retained center define

```math
\varphi_{j,r}(x,t)=r^{-3}\varphi((x-c_j(t))/r).
```

Testing the center forcing against `\varphi_{j,r}` gives the mollified
quantity `K_{q,j}^{[r]}`. The viscous part is handled by integration by
parts against the mollifier. The pressure part is handled by the local Poisson
split on the retained ball plus the finite-energy far tail. Since H1 gives
the required local `C^2` velocity and `C^{m+1,\alpha}` pressure regularity,
the transported center point is a legitimate point of recovery:

```math
K_{q,j}^{[r]}\to K_q(c_j)
\quad\text{in }L^1_t
\qquad
(r\downarrow0).
```

Thus

```math
NKF.Moll+NKF.Point
\Longrightarrow
NKF.Native.
```

No global smoothness or endpoint certificate is spent in this step. `\square`

### Lemma 2 (`NKF.Native` affine annihilation)

The native pressure cell annihilates the affine and affine-linear center-cell
pressure modes, leaving only the quadratic excess cell and the annular
remainder.

**Proof.** Let

```math
\Lambda_{r,j}f:=\nabla^r f(c_j),
\qquad
0\le r\le m+1,
```

and set

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

The affine and affine-linear center-cell pressure modes are therefore
removed before the pressure estimate is inserted into `ACT.X-Press`.
`\square`

### Lemma 3 (`NKF.Ann`)

The annular remainder satisfies the in-bootstrap estimate

```math
\sum_{j,r}|\Lambda_{r,j}\Pi_j^{ann}|
\le C_{ann}
X_{exc}^{1/2}N^{1/2}+X_{exc}.
```

**Proof.** On

```math
A_j^{ann}:=\operatorname{supp}\nabla\eta_j
```

the kernel is smooth away from `c_j`, so

```math
|\Lambda_{r,j}\Pi_j^{ann}|
\le
C
\sum_{|\gamma|\le r+2}
\|\nabla^\gamma(w_j\otimes w_j)\|_{L^1(A_j^{ann})}.
```

The retained finite product estimate yields

```math
\|\nabla^\gamma(w_j\otimes w_j)\|_{L^1}
\le
C X_{exc}^{1/2}N^{1/2}
+
C X_{exc}.
```

Summing over the finite centers and finite pressure depths gives the stated
bound. After `ACT.KX` has supplied `X_{exc}\in L^\infty(I)` and
`N\in L^1(I)`, this annular cell is in `L^1(I)`. `\square`

### Lemma 4 (`NKF.Quad`)

The quadratic native pressure cell satisfies

```math
|\Lambda_{r,j}\pi_j^{quad}|
\le C_{quad}
X_{exc}^{1/2}N^{1/2}+X_{exc}.
```

**Proof.** The quadratic cell solves

```math
-\Delta\pi_j^{quad}
=
\partial_a\partial_b(\eta_j w_{j,a}w_{j,b}).
```

Fixed-ball elliptic response gives

```math
|\Lambda_{r,j}\pi_j^{quad}|
\le
C\|w_j\otimes w_j\|_{H^{r+1}}.
```

At the finite pressure depth used by the route,

```math
\|w_j\|_{H^2}\le C_2X_{exc}^{1/2},
\qquad
\|w_j\|_{H^{r+1}}\le C_r\big(N^{1/2}+X_{exc}^{1/2}\big).
```

The product estimate therefore gives the claimed quadratic bound. `\square`

### Proposition 5 (`ACT.X-Press`)

`NKF.Native + NKF.Ann + NKF.Quad` prove `ACT.X-Press`.

**Proof.** Lemma 2 removes the affine and affine-linear pressure modes.
Lemmas 3 and 4 control the remaining annular and quadratic cells. Their
combined contribution has the energy form

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
\le C_{far}
\|u(\cdot,t)\|_{L^2}^2
\in L^\infty(I)\subset L^1(I).
```

After `ACT.KX` supplies

```math
X_{exc}\in L^\infty(I),
\qquad
N\in L^1(I),
```

the pressure cell readout obeys

```math
\mathcal P_{\le m}^{cell}\in L^1(I).
```

This is exactly `ACT.X-Press`. `\square`

### Lemma 6 (`ACT.X-Cut`)

The moving cutoff contribution has the route-valid bound

```math
|\mathcal T_{cut}|
\le
C_{cut}X_{exc}^{1/2}N
+
L_{cut}X_{exc}
+
F_{cut}.
```

**Proof.** In affine coordinates,

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

Thus

```math
|D_t\zeta|
\le C_\zeta
\sup_{B(c_j,2R)}|U_1-A_j|
\le C_\zeta'
X_{exc}^{1/2}.
```

Pairing this cutoff velocity with the dissipative ledger gives the displayed
`ACT.X-Cut` estimate. `\square`

### Lemma 7 (`ACT.X-MidRaw`)

The middle block satisfies

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

**Proof.** The route keeps the genuine zero-mode linear terms

```math
\widetilde U_{\ell,j}R_{q+1-\ell,j}
+
R_{\ell,j}\widetilde U_{q+1-\ell,j}.
```

These terms are bounded by

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

Adding the two pieces gives the displayed `ACT.X-MidRaw` estimate. This is
the reason the packet uses the simultaneous `ACT.KX` block rather than a
linear post-`AXE.A` route. `\square`

### Lemma 8 (`ACT.X-TopVisc`)

The top viscous block has the dissipative form

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

**Proof.** Integrating by parts gives the displayed negative top-order
viscous term. All commutators either lose to `\varepsilon N`, enter the
linear `X_{exc}` ledger, or remain in the finite forcing `F_{top}`. The top
buffer modes

```math
\nu\sum_j(|U_{m+1}(c_j)|+|U_{m+2}(c_j)|)
```

are not inserted into the pre-pressure `A_{core}` ledger; they remain
top-readout and residual-forcing data inside

```math
Y_{read}=A_{core}^{ctr}+A_{buf}^{ctr}+X_{exc}.
```

This is `ACT.X-TopVisc`. `\square`

### Proposition 9 (`ACT.KX`)

The inputs `ACT.X-Cut`, `ACT.X-Press`, `ACT.X-MidRaw`, and
`ACT.X-TopVisc` prove `ACT.KX` on the retained cover.

**Proof.** Let

```math
X:=X_{exc},
\qquad
A:=A_{core}^{ctr}.
```

Combining Proposition 5 and Lemmas 6-8 gives the live system

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

Use Young's inequality

```math
X^{1/2}N^{1/2}\le \delta N+C_\delta X
```

and choose

```math
\eta_X=\left(\frac{c_\nu}{4C_X}\right)^2.
```

On a scheduler interval with `X(s_a)\le\eta_X`, argue up to the first exit
from `X\le4\eta_X`. Before that exit,

```math
C_X X^{1/2}N\le \frac{c_\nu}{2}N,
```

and therefore

```math
dX+\frac{c_\nu}{2}N
\le
(L_0+C A)X+F_0.
```

The center equation closes rung-by-rung because `\mathcal T_{tri}` is
finite-depth triangular. The bound on `\mathcal K_{\le m}^{ctr}` gives its
`L^1` control after the same absorption. The scheduler inequality from H4
keeps

```math
\int_{I_a}(L_0+C A),
\qquad
\int_{I_a}F_0,
\qquad
\int_{I_a}F_K
```

below the chosen threshold. Thus neither the excess ledger nor the center
ledger reaches the exit value. Hence, on each retained interval,

```math
X_{exc}\in L^\infty(I_a),
\qquad
N\in L^1(I_a),
\qquad
\mathcal K_{\le m}^{ctr}\in L^1(I_a),
\qquad
A_{core}^{ctr}\in L^\infty(I_a).
```

The retained cover is finite, so summation over the cover gives the same
bounds on `I`. `\square`

### Lemma 10 (`ACT.X-Scale`)

`RSCB.NKF` supplies the scale seeds consumed by `ACT.KX`.

**Proof.** At each restart time `s_a`, retained smooth center-ball
regularity gives

```math
X_{exc}(s_a;R)\to0
\qquad
(R\downarrow0).
```

Choose `R_a` so that

```math
B(c_j(s_a),2R_a)\subset Q_{s_a}^{rec,+},
\qquad
X_{exc}(s_a;R_a)\le\eta_X.
```

This is precisely the `ACT.X-Scale` restart seed needed in Proposition 9.
`\square`

### Proposition 11 (`RWS.C_scale`)

`RWS.C_scale` transfers small restarted packet bounds to fixed-radius
readout through the finite same-fluid cover.

**Proof.** H2 gives, for every fixed readout ball,

```math
B(c_j(t),R_{fix})
\subset
\bigcup_{b=1}^{B}
B(c_{j_b}(t),R_b),
```

with bounded overlap. Each small retained packet from Proposition 9 supplies

```math
X_{exc,b}\in L^\infty,
\qquad
N_b\in L^1.
```

Finite overlap sums these packet bounds to the fixed readout ball. This proves
the scale-transfer theorem `RWS.C_scale`; it does not turn the fixed-radius
readout into a smallness assumption. `\square`

### Proposition 12 (`ACT.X-Readout` to `LCI.A`)

`ACT.KX + ACT.X-Scale + RWS.C_scale` imply `ACT.X-Readout`, then `ACT.A`,
then `RCF.A`, then `LCI.A`.

**Proof.** With

```math
Y_{read}=A_{core}^{ctr}+A_{buf}^{ctr}+X_{exc},
```

Proposition 9 and Proposition 11 give the fixed-radius readout packet. Local
Morrey yields

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

These three readouts are `ACT.A`. The receiver bridge then gives

```math
\mathfrak D_1^{aff}\in L^1
\Longrightarrow
\mathfrak A_1^{ctr}\in L^\infty,
```

```math
\mathfrak F^{ctr,res}\in L^1
\Longrightarrow
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2,
```

```math
\mathfrak H^{osc,\alpha}\in L^2
\Longrightarrow
\Omega^{osc}\in L^2.
```

Thus `RCF.A` holds. With the bounded pack gauge from H2, `LCI.B2e` and
`LCI.C` give `LCI.A`. `\square`

### Proposition 13 (`FPCR.C`, `FSCR.C`, `FCC.C1`, and `FCI.5f`)

Post-`LCI.A` coefficient control proves

```math
FPCR.C+FSCR.C+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow
FCI.5f.
```

**Proof.** For `FPCR.C`, split the pressure source channel as

```math
LH/HL + RR + far.
```

The low-high/high-low component obeys

```math
\mathcal N_{LH/HL}^{press}
\le
C(1+\Gamma_{low})\mathcal F^\varepsilon,
```

and post-`LCI.A` gives `\Gamma_{low}\in L^1`. The resonant finite-net
pressure packet satisfies

```math
\mathcal N_{RR}^{press}
\le
C(1+\mathfrak C_{N+1}^{\delta})\mathcal F^\varepsilon,
```

with `\mathfrak C_{N+1}^{\delta}\in L^1(I)`. The far-tail pressure term is
energy-controlled:

```math
\mathcal N_{far}^{press}
\le C_{far}
\|u\|_{L^2}^2
\in L^\infty(I).
```

This proves `FPCR.C` on the post-`LCI.A` source branch.

For `FSCR.C`,

```math
\mathcal N^{src,\varepsilon,sc}
\le
C(1+\mathfrak C_{N+1}^{\delta})\mathcal F^\varepsilon,
```

and the same `L^1` coefficient control closes the strain/cascade channel.

For `FCC.C1`,

```math
|\mathcal C_N^{cut}(h,t;\psi)|
\le
\frac12\mathcal N_{N,h,\psi}^{visc}
+
4\nu\,\mathcal E_N^{cut,\nabla}(h,t;\psi),
```

where

```math
\mathcal E_N^{cut,\nabla}(h,t;\psi)
:=
\sum_{k=0}^{N}\lambda_k
\int |\nabla\phi_t|^2|\delta_hU_k|^2.
```

Summing over the frozen net gives

```math
\mathcal N^{src,\varepsilon,cut}
\le
\frac12\mathcal N^{visc,\varepsilon}
+
4\nu\,\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}.
```

Thus the source step needs
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`, or a separate
domination theorem deriving that input from coefficient-side data. With that
input, Gronwall and absorption give the corrected `FCC.C1`. The exact source split

```math
\mathcal N^{src}
=
\mathcal N^{press}
+
\mathcal N^{sc}
+
\mathcal N^{cut}
```

then proves `FCI.5f`. `\square`

### Proposition 14 (`DTC-to-TowerBound`)

The finite DTC depth gives the tower bound needed by the endpoint side.

**Proof.** Use a finite transported-center cover

```math
Q_t\subset\bigcup_a B(c_a(t),R_a).
```

`DTC.A` on each retained ball gives local Sobolev control. Since the depth is
at least `N+2`, Morrey gives

```math
\sup_{Q_t}\sum_{k=0}^{N}|U_k|\in L^\infty(I).
```

For

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k,
```

the viscous term uses `U_{k+2}` and the pressure term uses local pressure
response plus the energy far tail. Hence

```math
\sup_{Q_t}\sum_{k=0}^{N}|K_k|\in L^\infty(I),
```

and therefore

```math
\mathfrak A_{N,Q}\in L^\infty(I).
```

This is `DTC-to-TowerBound`. `\square`

### Proposition 15 (`END.Exh` and `END.Cross`)

The accepted endpoint certificate maps prove `END.Exh` and `END.Cross`.

**Proof.** Let

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

If `CM` fails, at least one of `Pack`, `Part`, or `Field` fails. The accepted
maps give

```math
\neg Part\Longrightarrow Dead,
\qquad
\neg Pack\Longrightarrow packing\text{-}detached\vee tower\text{-}blown,
\qquad
\neg Field\Longrightarrow Jump.
```

Thus

```math
END.Exh:
\quad
\neg CM
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

For `END.Cross`, use the accepted blown split

```math
Blown
\Longleftrightarrow
packing\text{-}detached
\vee
tower\text{-}blown,
```

the jump cross-entry

```math
Pack+Part+Jump
\Longrightarrow
Field\text{-coherence fracture},
```

and the installed `(Part,Dead)` row. These are exactly the formal cross-entry
reductions required by `END.Cross`. `\square`

### Proposition 16 (`END.Pack`, `END.Field`, and `End_NS`)

`DTC-to-TowerBound`, `END.Exh`, `END.Cross`, `END.Pack`, and `END.Field`
prove `End_NS`.

**Proof.** The endpoint faces close through

```math
END.Pack:
\Gamma_{\mathrm{pack},Q}\in L^\infty(I)
\Longrightarrow
\neg packing\text{-}detached,
```

```math
END.Field:
OFP.A
\Longrightarrow
Field_{N,r,Q}\ \text{persists on }I
\Longrightarrow
\neg Jump,
```

and the tower face from Proposition 14,

```math
\mathfrak A_{N,Q}\in L^\infty(I)
\Longrightarrow
\neg tower\text{-}blown.
```

Together with `END.Exh` and `END.Cross`, these exclude every endpoint face in
the accepted matrix. Therefore `End_NS` holds. `\square`

## Conditional-to-Original Upgrade (`ORIGIN.Retain`)

`ORIGIN.Retain` is not an extra assembly step inside Theorem 1. It is the
route-completeness theorem upgrading the conditional retained-window packet to
the original maximal-solution/class-membership setup.

**Theorem 2 (`ORIGIN.Retain`).** Let `u_0` be smooth divergence-free data on
`\mathbb R^3` or `\mathbb T^3`, and let `(u,p)` be the maximal classical
Navier-Stokes solution on `[0,T_*)`. Assume the installed class-membership
witness

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}
```

and the accepted endpoint certificate maps. Then every compact classical
interval `I=[a,b]\Subset[0,T_*)` admits a finite retained-window cover
satisfying the retained hypotheses needed by the affine-excess route:

```math
RSCB.NKF,\qquad ACT.X\text{-Scale},\qquad
ACT.KX\text{-Boot},\qquad RWS.C_{\mathrm{scale}}.
```

Moreover, a first finite failure of retained-window hypotheses is endpoint
captured only after it is reduced to one of the retained class faces:

```math
\neg Part_{N,Q},
\qquad
\neg Pack_Q,
\qquad
\neg Field_{N,r,Q},
\qquad
\mathfrak A_{N,Q}(t)\to\infty.
```

Under that reduction, the accepted endpoint certificate maps produce an
endpoint certificate in

```math
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

Consequently,

```math
CFI.A+End_{NS}
\Longrightarrow
\text{retained-window hypotheses persist through every finite class interval}.
```

Equivalently, for every compact `I\Subset[0,T_*)`, there is a finite retained
window cover `I=\bigcup_r I_r` such that, on each `I_r`,

```math
\sum_j
|u|_{L^1_t C^{m+2,\alpha}(B(c_j,2\rho_r))}
+
\sum_j
|p|_{L^1_t C^{m+1,\alpha}(B(c_j,2\rho_r))}
<\infty,
```

and the retained budget satisfies

```math
\left(
\mathcal X^{exc}(t_r)+|F|_{L^1(I_r)}
\right)
e^{|L|_{L^1(I_r)}}<2\eta_X.
```

**Proof.** Fix a compact classical interval `I=[a,b]\Subset[0,T_*)`. Since
`(u,p)` is classical on a neighbourhood of `I`, every finite spatial derivative
of `u` and `p` is bounded on the compact retained packet supports. For the
finitely many transported centers `c_j(t)=\Phi(a^j,t)`, smoothness of the
center curves gives a radius `\rho_I>0` such that `B(c_j(t),2\rho_I)` remains
inside a classical retained center tube for all `t\in I`. Hence

```math
\sum_j
|u|_{L^1_t C^{m+2,\alpha}(B(c_j(t),2\rho_I))}
+
\sum_j
|p|_{L^1_t C^{m+1,\alpha}(B(c_j(t),2\rho_I))}
<\infty.
```

This is exactly the retained smooth center-ball hypothesis used by
`RSCB.NKF`, so `RSCB.NKF => NKF.Moll+NKF.Point => NKF.Native` is available on
`I`.

The compact classical flow also supplies the bounded pack gauge. The
deformation gradient obeys

```math
\partial_t D_a\Phi(a,t)=\nabla u(\Phi(a,t),t)D_a\Phi(a,t),
```

and `\nabla u\in L^1_tL^\infty_x` on the retained tubes. Gronwall gives
`D_a\Phi\in L^\infty(I)`, while incompressibility and smooth invertibility give
`D_a\Phi^{-1}\in L^\infty(I)`. Thus

```math
\Gamma_{\mathrm{pack},Q}\in L^\infty(I).
```

At each restart time `s_a`, the installed affine-excess remainders vanish at
the center. Classical local `H^2` control and shrink-admissibility of the
excess slots imply that, for every `\eta_X>0`, there is a radius `R_a>0` with

```math
\mathcal X^{exc}(t_r;R_r)\le\eta_X
```

after admissible recentering and radius choice. This is `ACT.X-Scale`.

On each retained window, `AXE.A` gives

```math
D^+\mathcal X^{exc}
+c_\nu\mathcal N
\le
L(t)\mathcal X^{exc}
+C_X(\mathcal X^{exc})^{1/2}\mathcal N
+F(t),
```

with `L,F\in L^1(I)` from the retained smooth norms, finite energy tails,
cutoff ledgers, and center forcing ledgers. Choose `\eta_X` so that

```math
C_X(2\eta_X)^{1/2}\le \frac{c_\nu}{2}.
```

Absolute continuity of the `L^1` integrals gives a finite partition of `I`
with

```math
\left(
\eta_X+|F|_{L^1(I_r)}
\right)e^{|L|_{L^1(I_r)}}<2\eta_X.
```

Together with the restart smallness from `ACT.X-Scale`, the first-exit
argument gives

```math
\mathcal X^{exc}\in L^\infty(I),
\qquad
\mathcal N\in L^1(I).
```

This is `ACT.KX-Boot` on compact classical intervals.

For `RWS.C_scale`, compactness of the retained label tubes and the bounded
pack gauge give a finite same-fluid dynamic cover of every fixed readout ball.
Finite overlap transfers the small-radius readout packets to the fixed-radius
transported-center packet, so

```math
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I),
\qquad
\mathfrak H^{osc,\alpha}\in L^2(I),
\qquad
\mathfrak D_1^{aff}\in L^1(I),
\qquad
\mathfrak F^{ctr,res}\in L^1(I).
```

Thus `RWS.C_scale` holds on compact classical intervals. The receiver chain
then gives

```math
DTC.A_{\mathfrak p}\quad(\mathfrak p\in\mathscr P_{\rm req}),
\qquad
ULCI(\mathscr P_{\rm req})\Longrightarrow LCI.A.
```

It remains to spell out what is meant by endpoint capture. A retained-window
failure cannot occur strictly inside a compact classical interval: the local
smooth norms, positive tube radii, finite cover, bounded frame/pack gauge, and
absolute-continuity scheduler budgets above persist after shrinking the window.
Thus a finite failure can only be a failure to continue those retained
structures at the class endpoint.

This failure is not asserted to be a new primitive endpoint class. It must be
typed through the installed retained class vocabulary. There are four possible
typed failures:

1. A loss of same-fluid participation/liveness is `\neg Part_{N,Q}`.
2. A loss of retained packing or bounded pack gauge is `\neg Pack_Q`.
3. A loss of every positive one-field coherence scale is `\neg Field_{N,r,Q}`.
4. A loss of the finite tower/forcing readout while `Pack`, `Part`, and `Field`
   remain meaningful is tower-amplitude escape,
   `\mathfrak A_{N,Q}(t)\to\infty`, supplied to the endpoint matrix through
   `DTC-to-TowerBound`.

The first three are exactly the negation of

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

The fourth is the separate mixed tower face already carried by
`END.TowerAmp`. Therefore the accepted endpoint certificate maps give

```math
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

Here `\neg Part_{N,Q}` gives `Dead`; `\neg Pack_Q` gives the pack-side
certificate split `packing-detached\vee tower-blown`; `\neg Field_{N,r,Q}`
gives `Jump`; and tower-amplitude escape gives `tower-blown`. `END.Pack`
excludes `packing-detached` from the bounded pack gauge, `DTC-to-TowerBound`
excludes `tower-blown`, the installed `(Part,Dead)` row excludes `Dead`, and
`END.Field` excludes `Jump` once `OFP.A` is installed. Thus `End_NS` excludes
every endpoint certificate. Therefore no first retained-window/class endpoint
occurs at finite time once `CFI.A+End_NS` is installed.

This proves `ORIGIN.Retain`: the conditional retained-window route upgrades to
the original-data route. `\square`

## Proof of Theorem 1

By Lemma 1,

```math
RSCB.NKF
\Longrightarrow
NKF.Native.
```

Lemmas 2-4 and Proposition 5 give

```math
NKF.Native+NKF.Ann+NKF.Quad
\Longrightarrow
ACT.X\text{-Press}.
```

Combining Proposition 5 with Lemmas 6-8 gives

```math
ACT.X\text{-Cut}
+ACT.X\text{-Press}
+ACT.X\text{-MidRaw}
+ACT.X\text{-TopVisc}
\Longrightarrow
ACT.KX.
```

Lemma 10 and Proposition 11 add `ACT.X-Scale` and `RWS.C_scale`, so
Proposition 12 yields

```math
ACT.KX+ACT.X\text{-Scale}+RWS.C\_scale
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

Proposition 13 gives the post-receiver source closure:

```math
LCI.A
\Longrightarrow
FPCR.C+FSCR.C+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow
FCI.5f.
```

The recombination spends exactly

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A,
```

then

```math
CSP.A+FCI.5f
\Longrightarrow
OFP.A,
```

and finally

```math
OFP.A+CFI.B1+CFI.B2
\Longrightarrow
CFI.A.
```

On the endpoint side, Propositions 14-16 give

```math
DTC\text{-to-TowerBound}
+END.Exh
+END.Cross
+END.Pack
+END.Field
\Longrightarrow
End_{NS}.
```

Therefore

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
```

All dependencies have been used in the theorem order, and every non-derived
input is one of H1-H6. This completes the conditional `ACT.KX` route theorem.
`\square`

Together with Theorem 2, the conditional retained-window theorem upgrades to
the original-data route.
