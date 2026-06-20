# Door 2 No Neutral Modulation Loop Direct Test

Date: 2026-06-20

Status: direct child test; not proved from current installed inputs.  The
test shows that `NoNeutralModulationLoop.A` is exactly the point where Door 2
needs either an unweighted modulation-action budget, a strict rescaled
no-waste Lyapunov drop, or a rigidity theorem excluding flat zero-readout
families.  Ordinary physical energy monotonicity is too discounted in terminal
log time to exclude recurrent neutral loops.

## 1. Target under test

The Door 2 drift branch needs

```math
\text{CanonicalGaugeCoercivity.A}
+
\text{ModulationForcingNativeProjection.A}
+
\text{NoNeutralModulationLoop.A}
\Longrightarrow
\text{ZeroFluxDriftVisibility.A}.
\tag{NL.1}
```

After the two preceding child tests, the remaining drift escape is a path that
moves through the modulation/profile space while every native stress/source
readout remains zero.

## 2. What a neutral loop is

In a quotient gauge, write

```math
U(s)=g(s)U_0,
\qquad
g(s)\in\mathcal G_{mod},
\tag{NL.2}
```

where \(\mathcal G_{mod}\) contains the allowed translation, rotation, scale,
phase, and selector motions after normalization.  A neutral loop is a
nonconstant path with

```math
g(s_0)=g(s_1),
\qquad
\int_{s_0}^{s_1}|g^{-1}g_s|\,ds>0,
\tag{NL.3}
```

but with no point-force residue and no selected native positive source
readout:

```math
\Phi_0=0,
\qquad
\mu^{+}_{src,sel}=0.
\tag{NL.4}
```

This is not a contradiction by itself.  It becomes a contradiction only if the
loop is forced to pay an unweighted terminal action that the proof can sum.

## 3. The desired cost statement

The exact coercive form would be a connection-action lower bound

```math
\mathcal A_{mod}(s)
\ge
c\,|g^{-1}g_s(s)|^2
-\mathcal R_{legal}(s),
\tag{NL.5}
```

combined with an unweighted budget

```math
\int_{s_0}^{\infty}\mathcal A_{mod}(s)\,ds<\infty.
\tag{NL.6}
```

Then an infinite terminal recurrence of nontrivial loops is impossible, because
each loop of quotient length at least \(\eta\) pays

```math
\int_{J_k}\mathcal A_{mod}(s)\,ds
\ge
c_\eta-o_k(1).
\tag{NL.7}
```

The same conclusion follows from a strict rescaled no-waste Lyapunov functional

```math
-{d\over ds}L(s)
\ge
c\,\mathcal A_{mod}(s)
-\mathcal R_{legal}(s),
\qquad
\inf_sL(s)>-\infty,
\qquad
\int\mathcal R_{legal}<\infty.
\tag{NL.8}
```

## 4. Why current inputs do not give it

The compact recurrent LaSalle test already shows the obstruction.  In terminal
variables,

```math
s=-\log(T-t),
\qquad
y={x-x_\ast\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\tag{NL.9}
```

physical energy and physical dissipation carry the exponential weight
\(e^{-s/2}\).  Thus the known budget has the form

```math
\int_{s_0}^{\infty}
e^{-s/2}\mathcal A_{mod}(s)\,ds<\infty,
\tag{NL.10}
```

not `(NL.6)`.  A recurrent loop may have disjoint unit intervals
\(I_j=[S_j,S_j+1]\), \(S_j\to\infty\), on which

```math
0<c_0\le \mathcal A_{mod}(s)\le C_0
\qquad(s\in I_j),
\tag{NL.11}
```

and may vanish off those intervals.  This is compatible with `(NL.10)` because
\(\sum_j e^{-S_j/2}<\infty\).

So ordinary energy monotonicity sees the loop only with the wrong terminal
weight.  It does not prove no neutral recurrence.

## 5. Flat zero-readout families

There is a second obstruction.  Even with a good connection-action metric, the
zero-readout set may contain a flat family:

```math
\mathcal M_0
:=
\{U:\Phi(U)=0,\ \mu^{+}_{src,sel}(U)=0\}.
\tag{NL.12}
```

If \(\mathcal M_0\) contains a nontrivial compact orbit after the selected
normalization, then motion inside \(\mathcal M_0\) need not create Door 1
residue.  Excluding this requires a rigidity statement:

```math
\boxed{
\text{ZeroReadoutFlatFamilyExclusion.A}
}
\tag{NL.13}
```

This is weaker than full Landau production only if it acts directly on the
compact recurrent renormalized orbit.  Otherwise it becomes another name for
`MinimalZenoProfileProduction.A`.

## 6. Exact reduction

The direct test gives

```math
\boxed{
\text{NoNeutralModulationLoop.A}
\Leftarrow
\text{GaugeMetricActionCoercivity.A}
+
\text{UnweightedModulationActionFinite.A}
+
\text{ZeroReadoutFlatFamilyExclusion.A}.
}
\tag{NL.14}
```

An equivalent route is

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
+
\text{GaugeMetricActionCoercivity.A}
+
\text{ZeroReadoutFlatFamilyExclusion.A}.
}
\tag{NL.15}
```

Here:

1. `GaugeMetricActionCoercivity.A` turns modulation speed into a real
   normalized action;
2. `UnweightedModulationActionFinite.A` or `StrictRescaledNoWasteLyapunov.A`
   gives the missing unweighted terminal-time budget;
3. `ZeroReadoutFlatFamilyExclusion.A` rules out compact zero-readout families
   that move without native residue.

## 7. Relation to the global Door 2 problem

This child does not close independently of the broader stationarity branch.
It identifies why Door 2 keeps returning to

```math
\text{RenormalizedActionFinite.A}
\quad\text{or}\quad
\text{StrictRescaledNoWasteLyapunov.A}.
\tag{NL.16}
```

The neutral-loop problem is a time-residence problem in quotient space.  It is
the modulation version of the heat-scale pulse: the spatial packet can be legal
at each instant, while the terminal log-time recurrence remains unpaid unless
an unweighted action budget is proved.

## Verdict

`NoNeutralModulationLoop.A` is not installed.  Zero flux, compactness, and a
measurable gauge do not rule out recurrent neutral loops.  To kill them, the
gold route needs an unweighted modulation-action reserve, a strict rescaled
no-waste Lyapunov drop, or a direct rigidity theorem excluding nontrivial
compact zero-readout families.
