# MPP BASACTerminalSourceAntiConcentration.A Direct Attempt

Date: 2026-05-17

## Status

Direct attempt on the next target after `BASACSourceAncestryCompactness.A`.

Outcome: open from installed inputs. The conditional theorem is valid; the needed terminal-strip modulus is absent from the current `B_ASAC` class data.

## Target

Prove:

```math
\boxed{
BASACTerminalSourceAntiConcentration.A:
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\quad \omega_R(\varepsilon)\downarrow0.
}
```

This theorem would imply the time-face anti-atom condition:

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad\forall R<\infty.
```

Combined with the `B_ASAC` no-earlier-selected-source-slice clause, it gives `ZenoResidueLiouville_{B_ASAC}.A`.

## Installed inputs

The produced class supplies:

```text
same-fluid retained terminal carrier,
nonzero inherited native positive source residue,
no earlier selected source slice,
zero ASAC defect measure,
no legal/projected/cutoff/boundary exit,
no finite or non-Zeno donor-refill exit,
terminal Zeno source support.
```

The analytic source ledger supplies local finite temporal mass:

```math
\int_{-1}^{0}\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,ds\le C_R.
```

## Conditional closure

Assume `BASACTerminalSourceAntiConcentration.A`. For fixed `R`, pass to the terminal source-residue limit. The strip estimate gives

```math
\mu_*^{src}(B_R\times\{0\})
\le \lim_{\varepsilon\downarrow0}\omega_R(\varepsilon)=0.
```

For every `n`, `B_ASAC` gives zero selected source residue on the fixed earlier slab `B_R\times[-R^2,-1/n]`. The decomposition

```math
[-R^2,0]
=
\bigcup_{n\ge1}[-R^2,-1/n]
\cup
\{0\}
```

then yields

```math
\mu_*^{src}(B_R\times[-R^2,0])=0.
```

Letting `R` exhaust the tangent domain gives

```math
\mu_*^{src}=0.
```

Therefore:

```math
BASACTerminalSourceAntiConcentration.A
\Longrightarrow
ZenoResidueLiouville_{B_ASAC}.A
\Longrightarrow
BASACNoIncomingSourceDrain.A.
```

## Direct attempt 1: local source mass

The only installed temporal bound is `L^1_s`. It permits terminal strip concentration. The model

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

has

```math
\int_{-1}^{0}g_m(s)\,ds=1,
```

and, for any fixed `\varepsilon>0`, all mass lies in `[-\varepsilon,0]` for large `m`. Thus no modulus `\omega_R(\varepsilon)\downarrow0` follows from the `L^1_s` ledger.

## Direct attempt 2: zero ASAC defect

The ASAC defect measure is the paid active-alignment / pair-weight channel. Its vanishing removes that paid leakage. The native positive source measure remains independent of that paid defect in the produced equality class.

A terminal strip source marginal can carry native positive mass bounded below by
`M_0>0` with zero ASAC-paid defect. Hence `ASACDefectMeasure.A` supplies exit
classification and no terminal-strip modulus.

## Direct attempt 3: no earlier selected source slice

The no-earlier clause removes fixed negative-time selected same-fluid slices. It is consistent with all source mass living in shrinking strips `[-\varepsilon_m,0]`, where `\varepsilon_m\downarrow0`. Thus it identifies the Zeno support pattern and supplies no anti-concentration estimate inside the terminal layer.

## Direct attempt 4: donor and legal exit removals

The legal/projected/cutoff/boundary ledgers and finite/non-Zeno donor ledgers remove paid exits. A terminal Zeno refill cloud avoids finite and non-Zeno capture by construction. The remaining native source residue can sit in the terminal layer with no paid exit.

Thus paid-exit removal also supplies no modulus for terminal strip mass.

## Verdict

`BASACTerminalSourceAntiConcentration.A` is a valid sufficient theorem and remains open from installed inputs.

The next equivalent usable form is:

```math
\boxed{UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A,\\ p>1.}
```

A proof of that estimate would give the modulus by Holder:

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^{1-1/p}+o_m(1).
```
