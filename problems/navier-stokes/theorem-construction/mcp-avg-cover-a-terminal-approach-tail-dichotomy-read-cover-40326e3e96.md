# AVG.COVER.A Terminal Approach-Tail Dichotomy

Status: conditional averaged route theorem. This replaces direct pointwise `TTU` as the next viable branch.

## Direct pointwise TTU result

The direct theorem

```math
TTU:
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained Pack/Part/Field/tower data}
```

has already failed as a direct pointwise discharge. On compact classical subintervals, original smooth data supplies retained smooth center-ball control, bounded pack gauge, restart seeds, and finite same-fluid covers. On the full terminal tail `[t_0,T_*)`, those same statements become continuation-grade estimates.

The pack-gauge part alone asks for

```math
\int_{t_0}^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty
```

or a pack-native substitute of equivalent strength. Therefore direct pointwise `TTU` remains open.

## Averaged replacement target

The viable branch is averaged:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}
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
CFI.A_{avg}.
```

The bad material set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\text{no positive same-fluid cylinder has }SCF_{base}\le\varepsilon_m\}.
```

The grammar row is

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

## Theorem `AVG.COVER.A`

```math
AVG.COVER.A:
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{every same-fluid terminal approach tail is either averaged-good covered or enters }Jump_{avg}.
```

## Proof

Finite energy and suitability give the local energy-integrability layer:

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
\qquad
u\in L^3_{loc},
\qquad
p\in L^{3/2}_{loc}.
```

In bounded same-fluid coordinates, parabolic Lebesgue differentiation gives `SCF_base` small at material-a.e. spacetime point. Thus, away from `\mathcal B_{\varepsilon_m}^{\Phi}`, every material point has a positive same-fluid cylinder with

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m.
```

By `SGC.A_a.e`, compact subsets of the good complement admit finite SCF-good same-fluid subcovers. On each good cylinder, `ATD_m^\varepsilon` supplies the local CKN epsilon-regularity gain to the finite-depth averaged affine tower packet. Therefore the good part of any same-fluid approach tail is covered by averaged-route cylinders and enters `AACT.KX`.

If a same-fluid terminal approach tail meets `\mathcal B_{\varepsilon_m}^{\Phi}`, then `CAVG.J` applies and the tail enters `Jump_avg`.

These two cases exhaust the terminal approach tail. Hence every terminal tail is either propagated through the averaged good route or routed into the averaged endpoint face `Jump_avg`. This proves `AVG.COVER.A`.

## Non-spending boundary

This theorem supplies only an averaged dichotomy. It does not prove the strong pointwise cover

```math
\mathcal B_{\varepsilon_m}^{\Phi}=\varnothing.
```

It also does not promote

```math
DTC.A_{avg}\to DTC.A,
\qquad
CFI.A_{avg}\to CFI.A,
\qquad
End_{NS,avg}\to End_{NS}
```

without the downstream readout layer.

## Next route step

The next theorem target is

```math
AVG.MAIN.A:
SCF_{base}+ATD_m^\varepsilon+CAVG.J+AVG.RCV.A+AVG.END.A+FFSRC.A
\Longrightarrow
\text{no averaged finite-time class exit}.
```

After that, the old endpoint must be recovered through

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow End_{NS}.
```

Only then can the chain return to the pointwise terminal class-membership route and `PCTP.cond`.
