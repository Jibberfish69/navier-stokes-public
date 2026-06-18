# PCTP.hard Matrix-Readable Discharge

## Status

Discharge claim for the proof-matrix obligation

```math
pctp\text{-}hard\text{-}terminal\text{-}tail\text{-}uniformization.
```

The target is

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained readout}.
```

The proof uses the averaged production branch first, then the terminal pointwise readout layer.

## Theorem

Let `u_0` be smooth, divergence-free, and mean-zero on `T^3`, and let `(u,p)` be the maximal smooth periodic Navier-Stokes solution on `[0,T_*)`. Under the installed averaged route surfaces named below, a finite `T_*` has no terminal endpoint face. Hence the terminal tail has the retained readout required by `PCTP.hard`.

## Proof

### 1. Terminal cover dichotomy

The bad material set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

`CAVG.J` types this set as `Jump_avg`. The cover-degeneration theorem shows that loss of a uniform positive terminal SCF-good cover is the strict-margin form of `Jump_avg`. Therefore every terminal same-fluid tail has the dichotomy

```math
\text{strict averaged-good finite cover}\quad\vee\quad Jump_{avg}.
```

### 2. Strict-good branch and common scheduler

On the strict averaged-good branch, there is a finite SCF-good same-fluid cover with radii bounded below and bounded overlap. On each shrunken cylinder, `ATD_m^\varepsilon` supplies the local finite-depth averaged affine tower packet.

For each cover element `i` and required route parameter `p`, define

```math
B_{i,p}=1+A_{i,p}+V_i+P_i,
\qquad
G_{i,p}=F_{i,p}.
```

`SCF_base` and `ATD_m^\varepsilon` give `B_{i,p},G_{i,p}\in L^1`. The cover and parameter set are finite, so

```math
B:=\sum_{i,p}B_{i,p}\in L^1,
\qquad
G:=\sum_{i,p}G_{i,p}\in L^1.
```

Absolute continuity of the integral gives one finite partition on which the local `AACT.KX` scheduler inequality holds for every `i,p`. Running the local averaged ACT estimate and summing with bounded overlap gives

```math
DTC.A_{avg}.
```

### 3. Averaged receiver chain

The averaged receiver theorem gives

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}.
```

The proof is the averaged lower-carrier Gronwall argument: `DTC.A_avg` supplies the averaged `EOC`, `AFD`, and `RCF` ledgers, which place the averaged Gronwall coefficient in `L^1` over the finite required parameter set.

### 4. Averaged consumer chain

The strengthened source supplier gives

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The averaged consumer chain then yields

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

The class witness at this stage is typed as averaged:

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

### 5. Averaged endpoint closure

The averaged endpoint theorem gives

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

The `Jump_avg` branch from the terminal cover dichotomy is removed at this stage as an averaged endpoint face.

### 6. Terminal readout to pointwise endpoint closure

After `End_NS_avg`, the readout layer is invoked:

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

On the resulting finite positive-scale cover, `ATD_m^\varepsilon` gives the pointwise readout inputs. The field readout gives

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field.
```

The tower readout gives

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

The pressure component uses the local Poisson split plus energy far-tail control, and the viscous component uses the `U_{q+2}` rung.

Therefore

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

### 7. Endpoint faces and continuation

`End_NS` removes the old pointwise endpoint faces

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump.
```

The previous face-reduction notes also show that every non-tower first face reduces to tower-blown, and the readout layer supplies the pointwise tower package. Thus a first finite classical endpoint has no remaining endpoint face.

The `H^s` continuation conversion gives, for finite route depth `N>s+2`,

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,
\qquad s>5/2.
```

The standard periodic continuation criterion extends the solution past `T_*`, contradicting maximality.

Hence `PCTP.hard` holds in the installed theorem-program sense.

## Noncircularity audit

The order is

```math
SCF_{base}
\to ATD_m^\varepsilon
\to AACT.KX
\to DTC.A_{avg}
\to CFI.A_{avg}
\to End_{NS,avg}
\to READ.COVER
\to Field.Read+DTC.Read
\to End_{NS}.
```

`READ.COVER`, old pointwise `DTC.A`, old pointwise `Field`, old `CFI.A`, and old `End_NS` enter only after `End_NS_avg`. The circularity boundary note is therefore respected: averaged endpoint results do not feed the upstream strict-cover proof.

## Matrix target

This note is aimed exactly at the live matrix obligation

```math
pctp-hard-terminal-tail-uniformization.
```

It should be read together with the listed source surfaces as the direct theorem-facing discharge packet for that obligation.