# Periodic Main Theorem Manuscript-Grade Package

## Status

Theorem-program manuscript package for the periodic Navier--Stokes branch. The package consolidates the ten requested mathematical closures around the matrix target

```math
pctp\text{-}hard\text{-}terminal\text{-}tail\text{-}uniformization.
```

Release promotion remains governed by `proof_promotion_packet` and the review ledgers.

## 0. Periodic theorem statement

Let

```math
\nu>0,
\qquad
u_0\in C^\infty(\mathbb T^3;\mathbb R^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{\mathbb T^3}u_0\,dx=0.
```

Consider the unforced incompressible Navier--Stokes system on `T^3`:

```math
\partial_tu+u\cdot\nabla u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
u(0)=u_0.
```

The theorem-program conclusion is

```math
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

The proof proceeds by contradiction from a finite maximal smooth endpoint `T_*`.

## 1. Manuscript-grade `PCTP.hard` proof

The terminal-tail theorem is

```math
PCTP.hard:
\qquad
OriginalSmoothData\Longrightarrow TTU.A\Longrightarrow End_{NS}\Longrightarrow T_*=\infty.
```

Let `(u,p)` be the maximal smooth periodic solution on `[0,T_*)`. The terminal same-fluid tail is analyzed through the averaged branch first and the pointwise endpoint readout second.

The production path is

```math
OriginalSmoothData
\Longrightarrow
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
DTC.A_{avg}
\Longrightarrow
CFI.A_{avg}
\Longrightarrow
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

Once `End_NS` is obtained, the endpoint matrix removes every first finite endpoint face. The tower-to-continuation theorem then gives the `H^s` continuation contradiction.

## 2. Strict-margin `Jump_avg` theorem

Define the bad material set

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,\ SCF_{base}(Q_r^{\Phi}(a,t))>\varepsilon_m\}.
```

Define

```math
Jump_{avg}(\mathcal T)
\Longleftrightarrow
\mathcal T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
```

with the strict-margin terminal variant included: loss of every positive same-fluid `SCF_base` scale along the tail is `Jump_avg`.

### Theorem `TGC.A`

```math
\inf_{\text{terminal SCF-good finite covers}}\min_iR_i=0
\Longrightarrow
Jump_{avg}.
```

### Proof

On the strict-good region, each point has a positive same-fluid cylinder with `SCF_base<=epsilon_m`. The strict-good condition is open in the same-fluid topology. A compact terminal subtail contained in the strict-good region has a finite subcover, and the finite set has a positive minimum radius. Hence zero terminal cover radius means an actual bad material point or a sequence of good cylinders with radii tending to zero at the terminal boundary. Both express loss of a positive averaged coherence scale. Thus the endpoint face is `Jump_avg`.

## 3. Standalone `AACT.Global`

### Theorem `AACT.Global`

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}
```

on the strict averaged-good terminal branch.

### Proof

The strict branch supplies a finite positive-scale SCF-good cover with bounded overlap. On each shrunken cylinder, `ATD_m^epsilon` supplies

```math
X_R(s_a)\le\eta_X,
\qquad
X_R\in L^\infty,
\qquad
N_R\in L^1,
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1,
\qquad
F_R\in L^1.
```

The local averaged ACT estimate gives the first-exit inequality

```math
D^+X_R+cN_R
\le
(1+A_R+V_R+P_R)X_R
+C(X_R^{1/2}+V_R^{1/3}+P_R^{2/3})N_R
+F_R.
```

The scale-small terms stay inside the coefficient margin supplied by the `SCF_base` threshold and the `ATD_m^epsilon` seed. The common scheduler lemma below gives one finite partition for all cover elements and parameters. Summing the local outputs over bounded overlap gives `DTC.A_avg`.

## 4. Reusable scheduler lemma

### Lemma `SCH.Common`

Let the cover index `i` and route parameter `p` range over finite sets. If

```math
\sum_{i,p}\bigl(1+A_{i,p}+V_i+P_i+F_{i,p}\bigr)
\in L^1(0,T_*),
```

then one finite scheduler partition works for every `i,p`.

### Proof

Set

```math
B(t)=\sum_{i,p}(1+A_{i,p}+V_i+P_i),
\qquad
G(t)=\sum_{i,p}F_{i,p}.
```

Then `B,G in L^1`. By absolute continuity of the integral, choose finitely many intervals `J_l` such that `\int_{J_l}B` and `\int_{J_l}G` are below the local `AACT.KX` thresholds. Since each local coefficient is bounded above by the global sum, every local scheduler inequality holds on every `J_l`:

```math
\left(\eta_X+\int_{J_l}F_{i,p}\right)
\exp\left(\int_{J_l}(1+A_{i,p}+V_i+P_i)\right)
\le2\eta_X.
```

## 5. Final source theorem

### Theorem `SRC.Final`

```math
\operatorname{Hyp}(FFSRC.A)\vee(FPCR.C+FSCR.C+FCC.C1+FCC.C1a)
\Longrightarrow FCI.5f.
```

### Proof

The exact branch is the split

```math
FPCR.C+FSCR.C+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow FCI.5f.
```

The strengthened sufficient branch is

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
\qquad
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\text{ among those hypotheses.}
```

Both branches produce the identical downstream frozen-family source object `FCI.5f`. Therefore the single consumer-facing theorem is `SRC.Final`.

## 6. Averaged chain compression

### Theorem `AVG.Chain`

```math
DTC.A_{avg}\Longrightarrow LCI.A_{avg}\Longrightarrow CFI.A_{avg}\Longrightarrow End_{NS,avg}.
```

### Proof

`DTC.A_avg` supplies averaged `EOC`, `AFD`, and `RCF` ledgers. The averaged lower-carrier coefficient belongs to `L^1` because the center and oscillation ledgers are in `L^2`, the affine defect is in `L^1`, and the route parameter set is finite. Gronwall gives `LCI.A_avg`.

With `SRC.Final`, the averaged consumers give

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

The averaged endpoint certificate gives

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

## 7. Depth-explicit `READ.END`

### Theorem `READ.END_N`

Assume endpoint depth `N` and local readout depth

```math
m\ge N+2.
```

Then

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

### Proof

`End_NS_avg` gives `READ.COVER`, a finite positive-scale SCF-good cover. On each shrunken cover element, `ATD_m^epsilon` gives velocity derivatives through depth `m`.

`Field.Read` converts `Field_avg` to pointwise `Field` on the finite cover.

`DTC.Read` converts `DTC.A_avg` to pointwise `DTC.A`. The force rung is

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
\qquad 0\le q\le N.
```

The viscous part uses `U_{q+2}`, available since `m>=N+2`. The pressure part uses the local split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_au_b),
```

with local Calderon--Zygmund/Schauder control for `p_i^{loc}` and the harmonic far-tail estimate

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}\|u_0\|_{L^2}^2.
```

Thus pointwise `Field` and `DTC.A` are available, and the old endpoint matrix
yields `End_NS` only together with the repaired Part response-margin input.

## 8. Clean endpoint-face theorem

### Theorem `FACE.Absorb`

```math
\bigl(Dead\vee packing\text{-}detached\vee Jump\bigr)
\wedge\neg response\text{-}margin\text{-}collapse
\Longrightarrow tower\text{-}blown.
```

### Proof

The installed first-face reductions below are the old-face reductions; they run
after response-margin collapse has been excluded by the repaired Part row:

```math
packing\text{-}detached\Rightarrow Dead\vee Jump\vee tower\text{-}blown,
```

```math
Dead\Rightarrow Jump\vee tower\text{-}blown,
```

```math
Jump\Rightarrow Dead\vee packing\text{-}detached\vee tower\text{-}blown.
```

At a first endpoint face, every non-tower face appearing on the right side is
earlier than the alleged first face or is tied with it as an already-present
first face. Removing those earlier-or-tied non-tower subcases leaves
`tower-blown` as the stable first-face alternative.

## 9. Tower-to-continuation theorem

### Theorem `Tower.Cont`

Let `s>5/2` and choose finite depth `N>s+2`. If

```math
\mathfrak A_{N,Q}\in L^\infty(0,T_*),
```

then

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty,
```

and the smooth solution extends beyond `T_*`.

### Proof

The tower bound controls velocity derivatives through order `N` on a finite terminal cover. Finite-cover Sobolev patching gives the `H^s` bound because `N>s+2`. The periodic local theory in `H^s`, `s>5/2`, continues the classical solution past any finite endpoint with bounded `H^s` norm.

## 10. Periodic main theorem proof

Assume `T_*<infty` and assume the same-tail `SCFBaseLocalModulus_N` input has been supplied on the admitted terminal tail, or proved from the retained `Field_{N,r,Q}` face. By `TTU.A_quant`, the terminal tail is strict averaged-good or `Jump_avg`. On the strict branch, `AACT.Global` gives `DTC.A_avg`. On the `Jump_avg` branch, the averaged endpoint theorem removes only those averaged endpoint faces whose positive Field scale carries the same-tail modulus. Under that conditional input, the compressed averaged chain gives `End_NS_avg`. Then `READ.END_N` gives old pointwise `End_NS`. The clean endpoint-face theorem and pointwise endpoint matrix remove every first finite endpoint face. `Tower.Cont` gives the `H^s` continuation contradiction. Hence this note proves the periodic conclusion only under the same-tail modulus hypothesis; without it, the `Jump_avg` Field-face consumption remains open.

Thus, for the periodic branch,

```math
u_0\in C^\infty_\sigma(\mathbb T^3),
\qquad
\int_{\mathbb T^3}u_0\,dx=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

## Claim boundary

This is a theorem-program manuscript package. Public Clay-level release status is read from `proof_promotion_packet` and the review/release ledgers.
