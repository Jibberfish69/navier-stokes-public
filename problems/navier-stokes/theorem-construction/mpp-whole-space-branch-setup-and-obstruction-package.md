# Whole-Space Branch Setup And Obstruction Package

## Status

Conditional package for the whole-space branch. The periodic `T^3` theorem surface remains closed separately. The `R^3` branch requires additional spatial-infinity control.

## 1. Branch setup: from `T^3` to `R^3`

The following components survive locally on `R^3`:

1. moving same-fluid cylinders;
2. affine subtraction in the velocity packet;
3. local scale-critical `SCF_base` quantities;
4. local CKN-to-`ATD_m^epsilon` transfer;
5. local averaged `AACT.KX` budgets;
6. local pressure Poisson readout;
7. endpoint grammar on each retained finite packet.

The following periodic components require replacement:

1. pressure normalization: periodic zero mean is replaced by the Riesz/Poisson pressure with additive time normalization;
2. finite torus cover: replaced by compact-core finite cover plus locally finite exterior cover and tail control;
3. compactness of `T^3`: replaced by exterior tightness and no-escape-to-infinity ledgers;
4. global Sobolev patching: replaced by local tower bounds plus global `H^s` tail control.

The branch target is therefore an `R^3` theorem under tail/tightness control, with a separate theorem still needed to derive that control from original data alone.

## 2. Whole-space pressure readout

On `R^3`, set

```math
p=\mathcal R_i\mathcal R_j(u_i u_j),
```

with pressure defined up to an additive function of time. On a compact readout ball `B_i' compactly contained in B_i compactly contained in 2B_i`, choose `chi_i=1` on `B_i` and supported in `2B_i`. Split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

Interior estimates give, for `0<=q<=N`,

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

For the far part, if `B_i` lies in a fixed compact core `K` and the exterior energy tail satisfies

```math
\sup_{t<T_*}\int_{|y|>R}|u(y,t)|^2dy\to0
\qquad (R\to\infty),
```

then the far kernel estimate gives

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i,K,R}\int_{|y|>R}|u(y,t)|^2dy
+ C_{q,i,R}\|u(t)\|_{L^2(B_R)}^2.
```

With local smooth/tower bounds on `B_R` and exterior tightness, this supplies the same pressure readout role as the periodic harmonic-tail bound.

## 3. Noncompact terminal cover theorem

### Theorem `READ.COVER_R3.cond`

Assume a terminal active set decomposes as

```math
A_{term}=A_{core}\cup A_{tail},
```

where `A_core` is contained in a compact spatial region and admits a positive-scale finite SCF-good cover, while `A_tail` satisfies an exterior smallness condition strong enough to prevent endpoint faces at spatial infinity. Then

```math
A_{core}+A_{tail}\Longrightarrow READ.COVER_{R^3}.
```

### Proof

The compact core is handled exactly as in the periodic branch: strict SCF-goodness is open, compactness gives a finite subcover, and the selected finite cover has positive lower scale. The tail region is controlled by the exterior smallness ledger; it supplies a vacuous endpoint contribution or a separate tail face already eliminated by the tail theorem. Combining the compact finite cover and the tail exclusion gives `READ.COVER_R3`.

## 4. Whole-space energy/tightness lemma

Finite energy gives

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

It gives local compactness and a.e. good-cylinder information. It does not by itself give uniform terminal tightness of high derivatives or exclude concentration escaping to spatial infinity.

The needed theorem is

```math
Tail.TTU_{R^3}:
OriginalSmoothData_{R^3}\Longrightarrow
\sup_{t<T_*}\int_{|x|>R}|u(x,t)|^2dx\to0
```

plus the corresponding higher-order tail statement needed for the `H^s` continuation norm. If this fails, the branch needs a new endpoint face:

```math
TailFace_{R^3}:
\text{terminal obstruction escapes to spatial infinity}.
```

At current resolution, `Tail.TTU_R3` is the live whole-space obstruction.

## 5. Whole-space `SCF_base`

For a same-fluid center path `c(t)=Phi(a_0,t)` and radius `R`, define

```math
Q_R^\Phi(a_0,t_0)=\{(x,t): |x-c(t)|<R,\ t_0-R^2<t<t_0\}\subset R^3\times[0,T_*).
```

Let

```math
u_R^{aff}(x,t)=b_R(t)+A_R(t)(x-c(t))
```

be the least-squares affine velocity mode on `B(c(t),R)`, with `tr A_R=0`. Let `p_R^{norm}(t)` be the local pressure average on `B(c(t),R)`. Define

```math
SCF_{base,R^3}(Q_R^\Phi)
=
R^{-2}\iint_{Q_R^\Phi}|u-u_R^{aff}|^3
+R^{-2}\iint_{Q_R^\Phi}|p-p_R^{norm}|^{3/2}
+R^{-1}\iint_{Q_R^\Phi}|\nabla u|^2.
```

The parabolic weights are the periodic SCF weights:
`R^{-2}` on the velocity and pressure slots and `R^{-1}` on the dissipation
slot. The `R^3` packet is not a periodic-packet export by equality; its pressure
slot uses the local average `p_R^{norm}`, and its theorem use is conditional on
the compact-core / exterior-tail hypotheses stated below.

## 6. Whole-space `TTU.A`

### Conditional theorem `TTU.A_R3.cond`

If the following hold:

1. strict averaged-good core/tail dichotomy;
2. `Tail.TTU_R3` or elimination of `TailFace_R3`;
3. local `SCF_base_R3 <= epsilon_m` to `ATD_m^epsilon` transfer;
4. local averaged `AACT.Global` on the compact core;
5. whole-space pressure readout under local/far splitting;

then

```math
OriginalSmoothData_{R^3}\Longrightarrow TTU.A_{R^3}.
```

### Proof

On the compact core, the periodic averaged proof applies locally. The moving-cylinder CKN transfer gives local averaged tower packets, the finite scheduler gives `DTC.A_avg`, and the averaged endpoint theorem gives `End_NS_avg`. `READ.COVER_R3` provides the finite readout cover on the core, and the tail theorem removes exterior endpoint contributions. The pressure readout uses the whole-space local/far split. Therefore the pointwise endpoint package is recovered on `R^3`, conditionally on the tail theorem.

## 7. Whole-space tower-to-continuation

### Conditional theorem `Tower.Cont_R3`

Let `s>5/2` and choose `N>s+2`. If local tower bounds cover every compact core and a global `H^s` tail bound holds:

```math
\sup_{t<T_*}\|u(t)\|_{H^s(|x|>R)}\to0
\qquad (R\to\infty),
```

then

```math
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty.
```

The standard whole-space `H^s` local theory then continues the solution beyond `T_*`.

### Proof

Choose `R` so the exterior `H^s` tail is small. Cover `B_R` by finitely many local tower charts. Since `N>s+2`, local Sobolev patching controls the `H^s` norm on `B_R`. Adding the exterior tail gives the global `H^s` bound. Continuation follows from whole-space local well-posedness in `H^s`.

## 8. Whole-space theorem statement

The full desired whole-space theorem is

```math
u_0\in C^\infty_\sigma(R^3)\cap H^s(R^3),\qquad s>5/2
\Longrightarrow
u\in C^\infty([0,\infty)\times R^3).
```

The theorem-program branch currently proves the conditional version:

```math
OriginalSmoothData_{R^3}+Tail.TTU_{R^3}
\Longrightarrow
TTU.A_{R^3}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty
\Longrightarrow
T_*=\infty.
```

The unconditional `R^3` theorem remains open until the exterior tightness / no-tail-face theorem is proved.

## Verdict

The `T^3` proof components extend locally. The whole-space branch is blocked globally by spatial infinity: exterior pressure tails, terminal cover tails, and `H^s` tail control. The exact next mathematical target is `Tail.TTU_R3` or an endpoint theorem eliminating `TailFace_R3`.
