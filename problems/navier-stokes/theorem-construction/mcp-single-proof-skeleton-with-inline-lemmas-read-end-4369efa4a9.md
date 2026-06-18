# Single Proof Skeleton With Inline Lemmas

Status: conditional proof skeleton.

## Theorem

Under the averaged terminal-tail route hypotheses and the source choice

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
```

the periodic zero-force Navier-Stokes maximal classical solution satisfies

```math
T_* = \infty.
```

## Proof skeleton

### 1. Local SCF-good cylinders

On a bounded same-fluid moving cylinder, the frame-term local energy inequality is valid after the pullback

```math
x=c(t)+rA(t)y,
\qquad
s=(t-t_0)/r^2.
```

The transport term is expressed through the affine-relative velocity

```math
u_{rel}=u-c'-\dot A A^{-1}(x-c),
```

which is part of the `SCF_base` packet. The pressure normalization is

```math
p^{norm}=p-c(t)-p^{frame}_{aff}.
```

This is CKN-compatible and remains compatible with the later original-pressure readout.

The threshold transfer gives

```math
SCF_{base}(Q_r^\Phi)\le\varepsilon_m
\Longrightarrow
CKN_{std}(Q_1)\le\varepsilon_{CKN}.
```

CKN epsilon regularity plus interior bootstrapping gives the finite tower packet:

```math
ATD_m^\varepsilon.
```

The depth is chosen so that the route contains

```math
U_0,\dots,U_{N+2},
\qquad
\nabla p,\dots,\nabla^{N+1}p.
```

### 2. Material coverage

Finite-energy suitability gives

```math
u\in L^3_{loc},
\qquad
p\in L^{3/2}_{loc},
\qquad
\nabla u\in L^2_{loc}.
```

Parabolic Lebesgue differentiation in bounded same-fluid charts yields

```math
SCF_{base}(Q_r^\Phi(a,t))\to0
```

for material-a.e. `(a,t)`. Hence `SGC.A_a.e` supplies finite SCF-good subcovers on compact good subsets.

The bad material set is typed by

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

Thus

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
AVG.COVER.A.
```

### 3. Averaged main route

On the averaged-good branch,

```math
SCF_{base}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{avg}.
```

The averaged receiver theorem gives

```math
DTC.A_{avg}\Longrightarrow LCI.A_{avg}.
```

The selected source supplier gives

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The source hypothesis includes `FCC.C1a`.

Therefore the averaged consumer chain gives

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

The averaged endpoint matrix gives

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

This is `AVG.MAIN.A`.

### 4. Readout to pointwise endpoint

From `End_NS_avg`, the strict-margin row gives

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing.
```

The strict-margin SCF stability lemma turns this into a finite positive-scale SCF-good cover:

```math
READ.COVER.
```

On that cover,

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
Field,
```

and

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
DTC.A.
```

The second readout includes the pressure component of

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

Thus

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

### 5. Continuation

The pointwise class route supplies `CFI.A`. Combining with recovered `End_NS` gives

```math
CFI.A+End_{NS}
\Longrightarrow
\text{absence of finite-time class exit}.
```

By `ECQ.A`, absence of finite-time class exit gives

```math
T_* = \infty.
```

Equivalently, the retained pointwise class witness gives the terminal continuation readout

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,
\qquad s>5/2,
```

and `PCTP.cond` extends the solution beyond any finite `T_*`. Therefore

```math
T_* = \infty.
```

## Type ledger

```text
Field_avg  --Field.Read-->  Field
DTC.A_avg  --DTC.Read---->  DTC.A
End_NS_avg --READ.END---->  End_NS
```

## Boundary

This is a conditional mathematical skeleton for the averaged route. Project acceptance remains with the matrix, audit, review, and release surfaces.
