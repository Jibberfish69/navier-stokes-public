# MPP Jump_avg Branch-Native Post-Reconcile No-Field Elimination Note

## Status

Theorem-facing successor to
`mpp-jump-avg-branch-native-noescape-hard-wall-note.md` after
`SourceWall.Reconcile.A`.

This note solves the requested routing problem:

```math
\text{Eliminate }Jump_{avg}\text{ without assuming }Field_{avg}
\text{ on the }Jump_{avg}\text{ branch.}
```

It does not claim that `Jump_avg` is unconditionally eliminated from
`OriginalSmoothData`.  It proves the legal no-`Field_avg` branch theorem and
identifies the exact remaining root source-wall input.

With `SourcePulseCMExit.A` installed, this note is the stronger no-field/no-pulse
supplier route.  The retained CM branch split can use `SourcePulseCMExit.A`
directly; the source-wall roots below are needed only for the route that wants a
literal no-`Jump_avg` contradiction without consuming the class-exit witness.

## Next Targets Executed

1. Verify that the `Jump_avg` branch is not discharged by `Field_avg`,
   `AVG.END.A`, `READ.COVER`, or endpoint exclusion.
2. Replace the stale `AWG.A` presentation by the post-reconcile source-wall
   roots.
3. Install the legal conditional no-`Field_avg` theorem:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
\Longrightarrow
(Jump_{avg}\Rightarrow\bot).
```

## Forbidden Spending

On the branch being eliminated, the following are not premises:

```math
Field_{avg},\quad
CFI.A_{avg},\quad
End_{NS,avg},\quad
READ.COVER,\quad
Field.Read,\quad
DTC.Read,\quad
End_{NS}.
```

The proof below therefore does not use the endpoint matrix to manufacture the
good cover it needs.  `CAVG.J` remains a typing lemma only:

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\quad\text{or terminal SCF-good radius collapse}
\Longrightarrow
Jump_{avg}.
```

It is not used as a contradiction theorem.

## Branch-Native No-Field Theorem

### Direct source-wall route

Assume the direct post-reconcile source-wall root:

```math
ScaleCriticalTreeCarleson.A.
```

The installed square-embedding reduction gives

```math
ParentSquareEmbed.A
+ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A.
```

By the local positive-source Carleson theorem, terminal active source pulses are
excluded:

```math
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

The branch-native active-window reduction already records

```math
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
JAVG.1+JAVG.2
\Longrightarrow
(Jump_{avg}\Rightarrow\bot).
```

Combining,

```math
\boxed{
ScaleCriticalTreeCarleson.A
\Longrightarrow
(Jump_{avg}\Rightarrow\bot).
}
```

This implication never assumes `Field_avg`; it contradicts `Jump_avg` through
the source-pulse/no-pulse channel.

### Zeno rigidity route

Alternatively assume the Zeno root pair:

```math
ZenoBoundedClass_B.A
+ZenoResidueLiouville_B.A.
```

If `Jump_avg` persisted and no direct no-pulse source-wall theorem were
available, the installed terminal-Zeno extraction produces an ancient local
suitable source-residue limit with nonzero source mass:

```math
(u_\ast,p_\ast,\mu_\ast^{src}),
\qquad
\mu_\ast^{src}(Q_1^-)\ge c_0>0.
```

`ZenoBoundedClass_B.A` places this limit in the rigid class `B`, while
`ZenoResidueLiouville_B.A` gives

```math
B\Longrightarrow \mu_\ast^{src}=0.
```

This contradicts the nonzero source residue extracted from the persistent
`Jump_avg` branch.  Therefore

```math
\boxed{
ZenoBoundedClass_B.A
+ZenoResidueLiouville_B.A
\Longrightarrow
(Jump_{avg}\Rightarrow\bot).
}
```

Again the contradiction is branch-native; it uses source-residue rigidity, not
`Field_avg` or endpoint readout.

## Hidden-Assumption Audit

No compactness finite-cover assumption is used on the `Jump_avg` branch.  The
good-cover machinery belongs to the complementary no-`Jump_avg` route:

```math
\neg Jump_{avg}
+TGC.A.cover
+ATD_m^\varepsilon
+AACT.KX.local
\Longrightarrow
DTC.A_{avg}.
```

No endpoint exclusion is used.  The endpoint route starts only after the
averaged class spine has produced `CFI.A_{avg}`.

No scaling loss is hidden.  The direct root is exactly the scale-critical
Carleson reserve:

```math
\int
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
dt
\le
o_N(1)+\mathrm{legal\ losses}.
```

Raw energy first moments do not prove this reserve; that failure is the scalar
heat-window pulse obstruction recorded in the post-reconcile direct attempt.

## Verdict

The no-`Field_avg` branch-elimination theorem is now legally normalized as:

```math
\boxed{
\left[
ScaleCriticalTreeCarleson.A
\ \vee\
\left(
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
\right)
\right]
\Longrightarrow
(Jump_{avg}\Rightarrow\bot).
}
```

For this stronger supplier route, the remaining unsolved input is not
`Jump_avg` grammar, averaged endpoint readout, `DTC.Read`, or `Field.Read`.
It is exactly one of the post-reconcile source-wall roots:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

Until one of those roots is proved, older claims of unconditional

```math
Jump_{avg}\Rightarrow\bot
```

from `LemmaB.SourceDrain`, `AWG.A`, or normalized-adjoint source-drain support
remain conditional branch support, not installed original-data consequences.
