# Source-Active Tangent Observability Reduction

Date: 2026-06-20

## Status

Reduction proof complete.  The strong statement
`NativeCarrierTangentObservability.A` is larger than the positive source-carrier
problem.  The exact object visible to the native selected carrier is the
source-active quotient tangent, not every profile-changing quotient tangent.

This note proves the precise replacement:

```math
\text{NativeCarrierTangentObservability.A}
\quad\text{splits into}\quad
\text{SourceTraceCompleteness.A}
+
\text{NoSourceNullProfileTangent.A}.
\tag{SAT.1}
```

The first clause is a native test-completeness statement on the selected source
carrier.  The second clause is the real geometric/no-waste burden: a
profile-changing tangent with zero native source trace must be gauge-neutral,
legal, or routed to the zero-defect compactness branch.

## 1. Native source-trace map

Fix a selected profile \(U\).  Let

```math
E_U:=\mathcal N_U^\perp
\tag{SAT.2}
```

be the quotient modulation tangent space.  A vector \(a\in E_U\) produces the
profile tangent

```math
Z_a:=T_Ua.
\tag{SAT.3}
```

Let \(\mu_U^{src}\) be the limiting selected native source-carrier measure.  The
source-trace linearization is the map

```math
\Gamma_U:E_U\longrightarrow L^2(\mu_U^{src})
\tag{SAT.4}
```

defined by the first variation of the localized pre-Cauchy source density on
the selected carrier:

```math
\Gamma_Ua
:=
\left.
{d\over d\epsilon}
\mathcal N_{preCauchy}^{loc}(U+\epsilon Z_a)
\right|_{\epsilon=0}
\quad\text{on }\operatorname{spt}\mu_U^{src}.
\tag{SAT.5}
```

This is the only profile-changing part that can be read by native carrier tests.

## 2. Carrier test completeness

Let \(D_{src}(U)\) be the native legal test class realized on the selected
carrier, modulo legal spill.  The exact carrier-completeness input is:

```math
\boxed{
\overline{
\{\Psi|_{\operatorname{spt}\mu_U^{src}}:\Psi\in D_{src}(U)\}
}^{\,L^2(\mu_U^{src})}
=
L^2(\mu_U^{src}).
}
\tag{SAT.6}
```

This is `SourceTraceCompleteness.A`.

Under `(SAT.6)`, for \(a\in E_U\),

```math
\langle Z_a,\Psi\rangle_{src}=0
\quad\text{for every }\Psi\in D_{src}(U)
\tag{SAT.7}
```

is equivalent to

```math
\Gamma_Ua=0
\quad\text{in }L^2(\mu_U^{src}).
\tag{SAT.8}
```

Proof: `(SAT.7)` says \(\Gamma_Ua\) has zero integral against every realized
carrier test.  By `(SAT.6)`, it has zero integral against every
\(L^2(\mu_U^{src})\) function.  Taking the test limit \(f=\Gamma_Ua\) gives
\(\|\Gamma_Ua\|_{L^2(\mu_U^{src})}^2=0\).  The converse is immediate.

Thus the annihilator is exact:

```math
\operatorname{Ann}_{D_{src}}(E_U)
=
\ker\Gamma_U.
\tag{SAT.9}
```

## 3. Observable quotient

Let

```math
K_U^{src}:=\ker\Gamma_U.
\tag{SAT.10}
```

The native carrier observes precisely the quotient

```math
E_U/K_U^{src}.
\tag{SAT.11}
```

If the selected profile class is compact, the stabilizer stratum is fixed, and
the positive singular values of \(\Gamma_U\) on \(E_U/K_U^{src}\) have a uniform
lower bound,

```math
\inf_U
\inf_{\substack{a\perp K_U^{src}\\ |a|=1}}
\|\Gamma_Ua\|_{L^2(\mu_U^{src})}
\ge \gamma_{src}>0,
\tag{SAT.12}
```

then finite native-carrier mode tests separate every source-active tangent.

Indeed, for each \(a\perp K_U^{src}\), `(SAT.6)` realizes tests approaching
\(\Gamma_Ua\), so a finite compact subcover gives a bounded carrier-mode
family with

```math
\sum_i |\langle Z_a,\Psi_i^{src}(U)\rangle|^2
\ge c_{src}^2 |a|^2
\quad
(a\perp K_U^{src}).
\tag{SAT.13}
```

This proves:

```math
\boxed{
\text{SourceTraceCompleteness.A}
+
\text{UniformSourceTraceRank.A}
\Longrightarrow
\text{NativeCarrierModeAtlas.A on }E_U/K_U^{src}.
}
\tag{SAT.14}
```

## 4. Exact meaning of the remaining kernel

The strong original target needs observation on all of \(E_U\).  By `(SAT.9)`,
that is equivalent to

```math
K_U^{src}=\{0\}.
\tag{SAT.15}
```

Since \(E_U=\mathcal N_U^\perp\), `(SAT.15)` is exactly:

```math
\boxed{
\ker\Gamma_U\cap\mathcal N_U^\perp=\{0\}.
}
\tag{SAT.16}
```

This is `NoSourceNullProfileTangent.A`.

It has concrete content.  It forbids a nonzero quotient modulation tangent that
changes the profile but has zero first variation of the native pre-Cauchy source
on the selected source carrier.

## 5. Why the strong target is not a free theorem

The finite-dimensional obstruction in the earlier carrier-first note is exactly
the case \(\ker\Gamma_U\ne0\).  In the model

```math
E_U=\mathbb R^2,
\qquad
\Gamma_U(a_1,a_2)=a_1,
\tag{SAT.17}
```

the native carrier observes the first tangent and misses the second:

```math
K_U^{src}=\operatorname{span}\{(0,1)\}.
\tag{SAT.18}
```

No amount of finite mode selection on the same carrier recovers the second
direction.  One must either prove `(SAT.16)` or classify the missed direction as
source-null.

## 6. Routing source-null tangents

A source-null tangent cannot be used as a positive native source-carrier
readout, because its source trace on that carrier vanishes:

```math
\Gamma_Ua=0.
\tag{SAT.19}
```

It has only three admissible roles:

1. it is a true stabilizer or legal gauge direction after quotienting;
2. it creates energy, pressure, dissipation, endpoint, or flux readout away from
   the selected source carrier;
3. it remains zero-readout and belongs to compact ancient rigidity/no-waste.

The second role is a same-shadow or no-waste defect.  The third role is the
Door 2 compact zero-defect branch.

Thus the correct carrier observability theorem is a dichotomy:

```math
\boxed{
\begin{array}{c}
\text{profile-changing quotient tangent}
\\
\Longrightarrow
\\
\text{source-active and seen by native carrier}
\\
\text{or}
\\
\text{source-null and routed to no-waste/zero-defect rigidity.}
\end{array}
}
\tag{SAT.20}
```

## 7. Consequence for the gold route

The positive carrier branch no longer needs to prove that every quotient tangent
is visible on the selected source carrier.  It needs:

```math
\boxed{
\text{SourceTraceCompleteness.A}
+
\text{UniformSourceTraceRank.A}
+
\text{SelectedPositivePolarSaturation.A}
}
\tag{SAT.21}
```

for source-active tangents.

The source-null branch needs:

```math
\boxed{
\text{SourceNullTangentEvacuation.A}
}
\tag{SAT.22}
```

where `SourceNullTangentEvacuation.A` means that a quotient tangent in
\(\ker\Gamma_U\) is gauge-neutral, legal-spill-visible, or enters the compact
zero-defect/no-waste rigidity branch.

Therefore:

```math
\boxed{
\text{NativeCarrierTangentObservability.A}
\Longleftrightarrow
\text{SourceTraceCompleteness.A}
+
\text{UniformSourceTraceRank.A}
+
\text{NoSourceNullProfileTangent.A}.
}
\tag{SAT.23}
```

and the weaker source-branch theorem is:

```math
\boxed{
\text{Source-active tangent observability}
\Longleftrightarrow
\text{SourceTraceCompleteness.A}
+
\text{UniformSourceTraceRank.A}.
}
\tag{SAT.24}
```

## Verdict

The native carrier observability wall has an exact kernel.  The kernel is not a
notation defect or a finite-mode defect.  It is the space of profile-changing
tangents with zero native source trace on the selected carrier.

The next proof burden is not another formal atlas.  It is one of these exact
statements:

```math
\text{NoSourceNullProfileTangent.A}
\tag{SAT.25}
```

or the more route-accurate dichotomy

```math
\text{SourceNullTangentEvacuation.A}.
\tag{SAT.26}
```

This keeps the positive source-carrier branch honest: it controls exactly the
tangents that participate in the native source carrier, and sends source-null
motion to the zero-defect/no-waste side rather than hiding it inside an
overstrong carrier observability claim.
