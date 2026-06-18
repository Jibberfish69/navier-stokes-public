# MPP SquareReserveEvolution.A Sufficiency And Temporal Fork

## Status

Conditional closure note after the square-first-pulse Gate 2 test.

This note installs the theorem-facing reductions and records that the temporal
anti-atom presentation is conditional support, not an independent root after the
direct temporal-integrability attempt:

```math
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A,
```

and

```math
UniformTemporalSourceIntegrability_p.A
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
ZenoBoundedClass_{B_{time}}.A+ZenoResidueLiouville_{B_{time}}.A.
```

Thus the source-wall root is not solved.  The direct branch is sharpened to the
exact missing dynamic square-reserve law.  The displayed temporal anti-atom
chain remains a valid conditional implication, but subsequent attempts reduce
its native source-integrability premise to `HeatScaleSquareSource.A` /
`ScaleCriticalTreeCarleson.A`.

## Direct Branch

Let

```math
\mathcal R_N(W)
:=
\int_W\sum_{P^-}|A_{P^-}(t)|^2dt
=
\int_W\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
```

The failed square-first-pulse proof shows that selecting the first pulse of
`\mathcal R_N` is the right object, because diffuse legal parent clouds are
counted by the same `\ell^2` mass left after `ParentSquareEmbed.A`.  The only
failed gate is the missing dynamic law for `\mathcal R_N`.

State the required law as:

```math
\boxed{
SquareReserveEvolution.A:
\quad
\mathcal R_N(W)
\le
Charge_N(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}(W)
+
o_N(1).
}
```

Here `Charge_N(W)` must be controlled by the installed first-moment
high-frequency tail:

```math
\sum_W Charge_N(W)
\le
C\int\sum_{q>N}D_q(t)dt+o_N(1).
```

### Conditional Theorem

```math
\boxed{
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
}
```

Proof.  Suppose `ScaleCriticalTreeCarleson.A` fails.  Then for some
`N_m\to\infty` there are terminal same-fluid windows `W_m` with

```math
\mathcal R_{N_m}(W_m)\ge\eta>0
```

after legal losses are removed.  Choose `W_m` first in the dyadic
same-fluid window order.

Iterating `SquareReserveEvolution.A` backward gives

```math
\mathcal R_N(W_m)
\le
\sum_{j=0}^{s-1}(1-\delta)^j Charge_N(Past_j(W_m))
+
(1-\delta)^s\mathcal R_N(Past_s(W_m))
+
Loss_{legal}
+
o_N(1).
```

The first-window choice rules out an earlier order-one `\mathcal R_N` pulse.
The factor `(1-\delta)^s` kills the inherited quiet branch as `s\to\infty`,
and the charge term is bounded by the high-frequency dissipation tail:

```math
\int\sum_{q>N}D_q(t)dt\to0.
```

After summing legal losses, this contradicts
`\mathcal R_{N_m}(W_m)\ge\eta`.  Hence the scale-critical tree reserve is
controlled:

```math
\int_I\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\le
o_N(1)+Loss_{legal}.
```

This proves the conditional implication.

## Why The Direct Branch Is Still Open

The current installed corpus gives:

```math
ParentSquareEmbed.A:
\quad
\text{static diffuse-parent embedding into }\mathcal R_N,
```

and

```math
WeightedAdjRes.A:
\quad
\text{residual charge control for child packet mass.}
```

It does not give the derivative, sign, dissipative identity, or contractive
parent-or-charge alternative for the donor square factor `|A_{P^-}|^2` itself.

The signed-exchange route also stops before this point.  Bare shell
antisymmetry is broken by one-sided weights, lifted/cutoff reductions,
terminal selection, and positive-part extraction.  The required additional
input is `TerminalSignedSaturation.A`: it must keep each selected terminal
signed counter-edge inside the usable terminal same-fluid ledger or charge it by
a named legal/source-control measure.  Without that input, this is another
presentation of the same source-control wall unless a new sign/saturation
theorem is supplied.

The active-tree coefficient route stops at the bad terminal coefficient set,
where uniform integrability of the active-square density is exactly
`ScaleCriticalTreeCarleson.A`.

Thus `SquareReserveEvolution.A` is the exact direct interface, but it is not
installed.

## Zeno Branch

The strongest produced compactness class remains the local suitable ancient
source-residue limit with no fixed earlier selected source pulse.  This
first-pulse property says, for every `a>0`,

```math
\mu_*^{src}(\text{selected source residue in }s<-a)=0.
```

It does not exclude a terminal atom at `s=0`.

Define the temporal class `B_time` by adjoining the terminal anti-atom
condition:

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad
\forall R<\infty.
```

Then the Liouville half is tautological: no earlier selected residue plus no
terminal atom gives `\mu_*^{src}=0` on every compact backward cylinder,
contradicting the inherited positive residue.

The missing production theorem is:

```math
\boxed{
TemporalNonAtomicSource.A:
\quad
\mu_*^{src}(B_R\times\{0\})=0
\quad
\forall R<\infty.
}
```

A sufficient prelimit estimate is:

```math
\boxed{
UniformTemporalSourceIntegrability_p.A:
\quad
\left\|
\|F_n^{src,+}(s,\cdot)\|_{\mathcal M_y}
\right\|_{L_s^p((-1,0))}
\le C
\quad
\text{for some }p>1.
}
```

Holder then gives no terminal time atom in the weak-* limit.  Current
compactness gives only finite Radon mass, which allows concentration on
`(-\varepsilon_n,0]` and convergence to a terminal atom.

## Exact Remaining Root

The direct source-wall root is now:

```math
\boxed{
SquareReserveEvolution.A
}
```

on the direct square-reserve branch.

The temporal-support Zeno chain is only a conditional support route:

```math
ScaleCriticalTreeCarleson.A
\Longrightarrow
HeatScaleSquareSource.A
\Longrightarrow
UniformTemporalSourceIntegrability_p.A
\Longrightarrow
TemporalNonAtomicSource.A.
```

Therefore it does not supply an independent source-wall root.  The only
alternate branch left by this note is a different explicit rigid Zeno class with
its own residue Liouville theorem genuinely produced by terminal Zeno rescaling.

No theorem in the current installed corpus proves `SquareReserveEvolution.A` or
such an independent rigid Zeno class from `OriginalSmoothData`.
