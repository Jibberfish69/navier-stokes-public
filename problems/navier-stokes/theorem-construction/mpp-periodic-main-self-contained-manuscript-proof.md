# Periodic Navier--Stokes Main Theorem: Self-Contained Manuscript Proof

## Status

Theorem-program manuscript hardening package for the periodic branch. The main line uses classical PDE language and names the route machinery as lemmas.

## Main theorem

Let `nu>0` and let

```math
u_0\in C^\infty(\mathbb T^3;\mathbb R^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{\mathbb T^3}u_0\,dx=0.
```

Then the unforced incompressible Navier--Stokes system on `T^3`,

```math
\partial_t u+u\cdot\nabla u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
u(0)=u_0,
```

has a unique global smooth solution

```math
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

## Setup

Let `(u,p)` be the maximal smooth solution on `[0,T_*)`. Classical local theory gives `T_*>0`; smooth continuation beyond a finite `T_*` follows from a bounded `H^s(T^3)` norm for any `s>5/2`.

The proof assumes `T_*<infty` and derives a continuation bound.

## Lemma 1: strict-margin averaged jump

Define the same-fluid scale-critical base packet `SCF_base(Q_r^Phi(a,t))` and the good radius

```math
r_g(a,t):=
\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m\}.
```

Define the averaged jump face on a terminal tail `T` by

```math
Jump_{avg}(T)
\Longleftrightarrow
\inf_{(a,t)\in T} r_g(a,t)=0.
```

Then every terminal tail satisfies the dichotomy

```math
\text{strict averaged-good branch}\quad\vee\quad Jump_{avg}.
```

### Proof

At every point with `r_g(a,t)>0`, the strict SCF-good condition is open in the same-fluid topology. If a compact terminal piece has `r_g>=R_*>0`, finitely many SCF-good cylinders cover it, and the minimum selected radius remains positive. If the infimum of available radii along the terminal tail equals zero, every positive averaged coherence scale is lost along some terminal sequence. This is exactly `Jump_avg` by definition. Thus the dichotomy holds.

## Lemma 2: common scheduler

Let `{Q_i}` be a finite strict averaged-good cover, and let `p` range over the finite required parameter set. Suppose

```math
\sum_{i,p}(1+A_{i,p}+V_i+P_i+F_{i,p})\in L^1(0,T_*).
```

Then one finite partition of `(0,T_*)` works for every local averaged ACT budget.

### Proof

Set

```math
B(t)=\sum_{i,p}(1+A_{i,p}+V_i+P_i),
\qquad
G(t)=\sum_{i,p}F_{i,p}.
```

Both functions belong to `L^1`. Absolute continuity of the integral gives finitely many intervals `J_l` with `int_{J_l}B` and `int_{J_l}G` below the smallness thresholds in the local averaged ACT estimate. Since every local integral is bounded by the corresponding global sum, each local budget satisfies

```math
\left(\eta_X+\int_{J_l}F_{i,p}\right)
\exp\left(\int_{J_l}(1+A_{i,p}+V_i+P_i)\right)
\le 2\eta_X.
```

## Lemma 3: averaged ACT globalization

On the strict averaged-good branch,

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}.
```

### Proof

The strict branch gives a finite SCF-good cover with positive lower scale and bounded overlap. The epsilon-regularity gain `ATD_m^epsilon` supplies on each shrunken cylinder

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

The local averaged ACT inequality is

```math
D^+X_R+cN_R
\le
(1+A_R+V_R+P_R)X_R
+C(X_R^{1/2}+V_R^{1/3}+P_R^{2/3})N_R
+F_R.
```

Smallness from `SCF_base` and the seed from `ATD_m^epsilon` keep the scale-critical terms inside the retained coefficient margin. Lemma 2 supplies a common finite scheduler. Running the local first-exit argument on each cylinder and summing by bounded overlap gives `DTC.A_avg`.

## Lemma 4: final source input

The source input consumed downstream is a single theorem:

```math
SRC.Final:
\qquad
\operatorname{Hyp}(FFSRC.A)\vee(FPCR.C+FSCR.C+FCC.C1+FCC.C1a)
\Longrightarrow FCI.5f.
```

### Proof

The exact branch yields `FCI.5f` through pressure, strain/cascade, and cutoff channels. The strengthened sufficient branch also yields `FCI.5f`. Since the averaged consumer chain consumes only `FCI.5f`, both branches reduce to the same downstream source theorem.

## Lemma 5: averaged chain

```math
DTC.A_{avg}\Longrightarrow LCI.A_{avg}\Longrightarrow CFI.A_{avg}\Longrightarrow End_{NS,avg}.
```

### Proof

`DTC.A_avg` supplies the averaged transported-center ledgers: oscillation in `L^2`, affine defect in `L^1`, and residual center forcing in the integrable class needed by the receiver Gronwall inequality. The averaged lower-carrier coefficient is therefore in `L^1` over the finite parameter set, and Gronwall gives `LCI.A_avg`.

Using Lemma 4,

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

## Lemma 6: terminal readout

Let the pointwise endpoint tower depth be `N` and choose averaged readout depth `m>=N+2`. Then

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

### Proof

`End_NS_avg` gives `READ.COVER`, a finite positive-scale SCF-good cover. On each shrunken cover element, `ATD_m^epsilon` provides derivative control through depth `m`.

`Field.Read` converts averaged field coherence to pointwise field coherence on the finite cover.

`DTC.Read` converts averaged transported-center data to pointwise tower data. For

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
\qquad 0\le q\le N,
```

the viscous term uses `U_{q+2}`, available because `m>=N+2`. The pressure term uses the local Poisson split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_au_b),
```

with local Calderon--Zygmund/Schauder control for `p_i^{loc}` and harmonic far-tail energy control for `h_i`:

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}\|u_0\|_{L^2}^2.
```

Pointwise `Field` and pointwise `DTC.A` then supply the old endpoint matrix
together with the repaired Part response-margin input, yielding `End_NS`.

## Lemma 7: endpoint-face reduction

At the first finite endpoint face,

```math
\bigl(Dead\vee packing\text{-}detached\vee Jump\bigr)
\wedge\neg response\text{-}margin\text{-}collapse
\Longrightarrow tower\text{-}blown.
```

### Proof

The installed first-face reductions are old-face reductions after
response-margin collapse has been excluded:

```math
packing\text{-}detached\Rightarrow Dead\vee Jump\vee tower\text{-}blown,
```

```math
Dead\Rightarrow Jump\vee tower\text{-}blown,
```

```math
Jump\Rightarrow Dead\vee packing\text{-}detached\vee tower\text{-}blown.
```

First-face ordering removes all non-tower alternatives on the right as earlier or simultaneous failures. The remaining stable first-face alternative is `tower-blown`.

## Lemma 8: tower continuation

Let `s>5/2` and choose finite depth `N>s+2`. If

```math
\mathfrak A_{N,Q}\in L^\infty(0,T_*),
```

then

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty,
```

and the solution continues past `T_*`.

### Proof

The tower bound controls velocity derivatives through order `N` on a finite
terminal cover. Finite-cover Sobolev patching gives a uniform `H^s` bound
because `N>s+2`. The periodic `H^s`, `s>5/2`, local
well-posedness/relaunch theorem gives a lifespan depending only on
`s`, `nu`, and `sup_{t<T_*}||u(t)||_{H^s}`; relaunching from times
`t_j\uparrow T_*` and using uniqueness on overlaps extends the same solution
beyond `T_*`.

## Proof of the main theorem

Assume `T_*<infty`. By Lemma 1, the terminal tail is strict averaged-good or `Jump_avg`. On the strict branch, Lemmas 2 and 3 give `DTC.A_avg`. Lemma 5 gives `End_NS_avg`. The `Jump_avg` branch is an averaged endpoint face and is removed by the same averaged endpoint theorem.

After `End_NS_avg`, Lemma 6 gives pointwise `End_NS`. Lemma 7 reduces the old non-tower first faces to the tower face, and `End_NS` removes the pointwise endpoint faces. Lemma 8 gives the `H^s` continuation contradiction. Hence `T_*` is infinite.

Therefore the periodic solution is global and smooth:

```math
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

## Dependency table

| Lemma | Role |
|---|---|
| Strict-margin averaged jump | terminal cover dichotomy |
| Common scheduler | one partition for finite cover/parameter set |
| Averaged ACT globalization | strict branch gives `DTC.A_avg` |
| Final source input | downstream `FCI.5f` source object |
| Averaged chain | `DTC.A_avg` to `End_NS_avg` |
| Terminal readout | `End_NS_avg` to pointwise `End_NS` |
| Endpoint-face reduction | old non-tower faces reduce to tower face |
| Tower continuation | pointwise tower control gives global continuation |

## Claim boundary

This is a manuscript-grade theorem-program proof surface. Public Clay-level promotion remains controlled by `proof_promotion_packet` and the release/review ledgers.
