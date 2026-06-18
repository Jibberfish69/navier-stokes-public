# Final Dependency Compression

## Status

Closed manuscript dependency spine.

## Compressed lemma sequence

The final proof can be written with seven named lemmas and one terminal theorem.

### Lemma 1: Terminal averaged cover dichotomy

```math
Field_{avg}\Longleftrightarrow\text{terminal positive-scale SCF-good cover},
\qquad
Jump_{avg}\Longleftrightarrow\neg Field_{avg}.
```

Quantitative form: the cover has radius floor `r_*`, bounded overlap, and finite cardinality controlled by the same-fluid distortion and `D_T/r_*`.

### Lemma 2: Local averaged ACT estimate

On each SCF-good moving cylinder,

```math
AACT.KX.local:
X_R\in L^\infty,
\quad N_R\in L^1,
\quad \mathcal K_{\le m}^{avg,R}\in L^1.
```

### Lemma 3: Global averaged transported-center packet

The finite cover and common scheduler give

```math
Field_{avg}\Longrightarrow AACT.Global\Longrightarrow DTC.A_{avg}.
```

### Lemma 4: Source and averaged consumer chain

The selected source branch is

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

Here `Hyp(FFSRC.A)` includes the cutoff-defect input `FCC.C1a`,
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`.

Together with the averaged receiver,

```math
DTC.A_{avg}\Longrightarrow LCI.A_{avg},
```

this gives

```math
LCI.A_{avg}+FCI.5f\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}.
```

### Lemma 5: Averaged endpoint matrix

The four primitive averaged faces are exactly

```math
Dead,
\quad packing\text{-}detached,
\quad tower\text{-}blown_{avg},
\quad Jump_{avg}.
```

They are exhaustive and irredundant, and are eliminated by `Part`, `Pack`, `DTC.A_avg`, and `Field_avg+OFP.A_avg`, respectively. Hence

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

### Lemma 6: Terminal readout equivalence

On the readout cover,

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longleftrightarrow End_{NS}.
```

The pressure part of `DTC.Read` recovers every endpoint rung

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
\qquad q\le N.
```

### Lemma 7: Continuation bridge

The pointwise endpoint closure gives a uniform continuation norm

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty,
\qquad s>5/2,
```

Set `M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}`. Periodic `H^s` local
well-posedness gives `\tau=\tau(\nu,s,M_s)>0` for data with norm at most `M_s`.
Choosing `t_j\uparrow T_*` with `T_*-t_j<\tau/2`, the relaunch from `u(t_j)`
exists past `T_*` and agrees with the original solution on the overlap by
uniqueness. Thus an alleged finite `T_*` contradicts maximality.

## Final theorem

The seven lemmas imply:

```math
u_0\in C^\infty(\mathbb T^3),\quad\nabla\cdot u_0=0,
\quad\int_{\mathbb T^3}u_0=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

## Manuscript use

The manuscript should expose only this compressed sequence. Detailed packet names remain in proof notes and dependency references.
