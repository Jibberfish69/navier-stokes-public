# Same-Shadow Unweighted Modulation Action Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SameShadowUnweightedModulationAction.A` is not proved by
physical energy monotonicity, measurable gauge selection, canonical atlas
language, or the already-tested no-neutral-loop package.

The needed theorem is an unweighted action bound on the same selected source
shadow used by the endpoint mismatch and donor-branching charges.  Gauge
coercivity can identify a modulation speed, but it does not supply the
unweighted terminal-time budget for that speed.

## 1. Target under test

Let `gamma_m(s)` denote the selected terminal gauge parameters and set

```math
v_m(s):=
|\gamma_m(s)^{-1}\gamma_{m,s}(s)|.
\tag{SUMA.1}
```

For a selected source shadow `J_m`, the needed action estimate is

```math
\int_{J_m}v_m(s)^2\,ds
\le
\operatorname{Legal}^{mod}_m+o_m(1).
\tag{SUMA.2}
```

In donor-edge form, with `d_e` the mode/gauge distance across selected retained
edges, the same estimate is

```math
\sum_{e\in\mathcal G_m^{sel}}d_e^2
\le
\operatorname{Legal}^{mod}_m+o_m(1).
\tag{SUMA.3}
```

This is the modulation-action factor needed in the product estimate

```math
\sum_e |q_e|d_e
\le
\left(\sum_e |q_e|^2\right)^{1/2}
\left(\sum_e d_e^2\right)^{1/2}.
\tag{SUMA.4}
```

The first factor is source-square.  The second factor is the same-shadow
unweighted modulation action.

## 2. What would prove it

The estimate follows from a strict no-waste action density that sees modulation
motion on the selected shadow:

```math
\mathcal A_m(s)
\ge
c\,\mathbf 1_{J_m}(s)v_m(s)^2
-
\mathcal R_m(s),
\tag{SUMA.5}
```

and

```math
-{d\over ds}L_m(s)
\ge
c_0\mathcal A_m(s)-\mathcal R^{legal}_m(s),
\qquad
\inf_sL_m(s)>-\infty,
\qquad
\int\mathcal R^{legal}_m(s)\,ds<\infty.
\tag{SUMA.6}
```

It also follows from a renormalized action theorem that is already localized to
the selected source shadow:

```math
\int_{J_m}\mathcal A^{mod}_m(s)\,ds\le C,
\qquad
\mathcal A^{mod}_m(s)\ge c\,v_m(s)^2-\mathcal R_m(s).
\tag{SUMA.7}
```

Current inputs do not install `(SUMA.5)`--`(SUMA.7)`.

## 3. Discounted-action obstruction

Physical energy gives only a terminally discounted action.  In terminal log-time
variables, the available bound has the form

```math
\int_{s_0}^{\infty} e^{-s/2}v_m(s)^2\,ds<\infty.
\tag{SUMA.8}
```

This does not imply `(SUMA.2)`.  Let `J_n=[n,n+1]` and set

```math
v(s)=1
\quad\text{on }\bigcup_{n\ge1}J_n.
\tag{SUMA.9}
```

Then

```math
\int_{0}^{\infty} e^{-s/2}v(s)^2\,ds
=
\sum_{n\ge1}\int_n^{n+1}e^{-s/2}\,ds
<\infty,
\tag{SUMA.10}
```

but

```math
\sum_{n\ge1}\int_{J_n}v(s)^2\,ds
=\infty.
\tag{SUMA.11}
```

So the physical terminal discount leaves infinitely many selected unit
modulation-action packets unpaid.

## 4. Gauge-coercivity obstruction

Gauge coercivity is a metric statement:

```math
|\dot\gamma(s)|
\le
C\|\partial_sU_{\gamma(s)}\|_{\mathcal X^\ast}
+\operatorname{Def}_{gauge}(s).
\tag{SUMA.12}
```

It identifies the cost of a given motion.  It does not prove that the integral
of that cost is finite.  Therefore

```math
\text{GaugeMetricActionCoercivity.A}
\not\Rightarrow
\text{SameShadowUnweightedModulationAction.A}.
\tag{SUMA.13}
```

The budget still has to come from unweighted action, strict no-waste, normalized
CKN/source-square currency, or compact-profile rigidity.

## 5. Same-shadow obstruction

An unweighted action bound on a different representative does not prove
`(SUMA.2)`.  Endpoint mismatch and donor branching are measured on the selected
native source shadow.  If the action is measured after changing the selector,
discarding signed partners, or passing to an unsigned compact orbit, it may not
control the donor edges where the selected source weight lives.

Selector switching is the discrete version of this failure.  If two packets
have tied selector score, a selected representative can jump between them while
the continuous gauge parameters have small speed.  Charging that jump requires
selector stability or a discrete selector-action term on the same shadow.  Those
inputs are not installed.

## 6. Exact reduction

At current input strength,

```math
\boxed{
\text{SameShadowUnweightedModulationAction.A}
\Leftarrow
\text{StrictRescaledNoWasteLyapunov.A}
+
\text{GaugeMetricActionCoercivity.A}
+
\text{SameShadowActionLocalization.A}.
}
\tag{SUMA.14}
```

or

```math
\boxed{
\text{SameShadowUnweightedModulationAction.A}
\Leftarrow
\text{RenormalizedActionFinite.A}
+
\text{SameShadowSelectorStability.A}
+
\text{SameShadowActionLocalization.A}.
}
\tag{SUMA.15}
```

or by the equivalent critical-action suppliers:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
\quad\text{on the actual selected positive carrier}.
}
\tag{SUMA.16}
```

These inputs are not installed.

## Verdict

`SameShadowUnweightedModulationAction.A` is not a consequence of physical
energy, gauge coordinates, or zero stress flux.  It is another form of the
unweighted terminal critical-action reserve, with the extra requirement that the
action be measured on the same selected source shadow used by the native
positive carrier.

