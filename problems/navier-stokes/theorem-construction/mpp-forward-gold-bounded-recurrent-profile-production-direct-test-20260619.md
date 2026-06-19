# MPP Forward-Gold Bounded Recurrent Profile Production Direct Test

Date: 2026-06-19

## Status

Direct test of the bounded recurrent branch left by the log-time recurrence
action quantum note.

The recurrence note showed that failure of late smallness forces infinitely
many unweighted critical action quanta.  The remaining bounded branch is:

```math
0<c_\eta
\le
\int_{J_k}\mathcal A_R(s)\,ds
\le
C_\eta<\infty
\tag{BRP.1}
```

on infinitely many unit log-time slabs \(J_k=[s_k,s_k+1]\), together with
local rescaled energy bounded above and below by fixed positive constants.

This note tests whether `(BRP.1)` automatically produces the compact no-waste
recurrent profile needed for rigidity.  It does not.  It produces, at best, a
bounded recurrent local-suitable profile package on finite renormalized-time
windows.  Turning that package into a contradiction still requires a strict
rescaled Lyapunov/no-waste principle, or a stationarity/no-drift theorem that
current inputs do not provide.

## 1. What bounded recurrence gives

Use the same self-similar variables:

```math
s=-\log(T-t),
\qquad
y={x-x_0\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\qquad
q(s,y)=(T-t)p(t,x).
\tag{BRP.2}
```

On the active slabs \(J_k=[s_k,s_k+1]\), assume the bounded recurrent branch:

```math
0<m_\eta
\le
\sup_{s\in J_k}M_R(s)
\le
M_\eta<\infty,
\tag{BRP.3}
```

and

```math
0<c_\eta
\le
\int_{J_k}\mathcal A_R(s)\,ds
\le
C_\eta<\infty.
\tag{BRP.4}
```

Shift the slabs:

```math
v_k(\sigma,y)=v(s_k+\sigma,y),
\qquad
q_k(\sigma,y)=q(s_k+\sigma,y),
\qquad
\sigma\in[-L,L].
\tag{BRP.5}
```

For each fixed \(L\), local energy compactness can extract a subsequential
limit after pressure normalization and standard local cutoffs:

```math
(v_k,q_k,\mu_k)
\rightharpoonup
(V,Q,\mu)
\tag{BRP.6}
```

on compact subsets of \((-L,L)\times B_R\), where \((V,Q)\) is local suitable
with a possible defect/source measure \(\mu\).

The lower recurrence survives as nontriviality:

```math
\sup_{\sigma\in[0,1]}
\int |V(\sigma,y)|^2\rho_R(y)\,dy
\ge
c(m_\eta)>0
\tag{BRP.7}
```

after ruling out loss through tails or selector drift.

So bounded recurrence can produce a nonzero recurrent local-suitable package.

## 2. What it does not give

The limit `(BRP.6)` is not automatically a rigidity-consumable object.

It need not have a compact orbit.  Different subsequences \(s_k\) may select
different profiles:

```math
V^{(1)}\neq V^{(2)}
\tag{BRP.8}
```

with the same bounded action range.  Energy compactness gives subsequences,
not a unique tangent or a precompact full orbit modulo the selected symmetries.

It need not be no-waste.  The defect measure can survive:

```math
\mu\neq0.
\tag{BRP.9}
```

Local suitability records this defect, but current inputs do not identify it
with the selected positive native source carrier or evacuate it from annuli.

It need not be stationary.  In fact the lower action bound says that the
renormalized dynamics may keep doing work on every unit slab:

```math
\int_0^1\mathcal A_R[V,Q](\sigma)\,d\sigma
\ge
c_\eta.
\tag{BRP.10}
```

This is compatible with a time-periodic, heteroclinic, recurrent, modulated, or
defect-bearing ancient local-suitable object.  It is not a stationary
Landau-class profile.

## 3. The missing strict Lyapunov principle

The natural way to kill bounded recurrence would be a strict rescaled Lyapunov
functional \(L(s)\) satisfying

```math
-{d\over ds}L(s)
\ge
c\,\mathcal A_R(s)
-
\mathcal R_{\rm legal}(s),
\tag{BRP.11}
```

with \(L(s)\) bounded below and the legal residual summable.

Then `(BRP.4)` on infinitely many disjoint slabs would imply

```math
\sum_k
\int_{J_k}\mathcal A_R(s)\,ds
\le
C\left(L(s_0)-\inf L\right)
+\sum_k\int_{J_k}\mathcal R_{\rm legal}(s)\,ds
<\infty,
\tag{BRP.12}
```

contradicting the recurrence quantum sum.

This is exactly the LaSalle-style mechanism the gold route wants: every
nonstationary recurrent motion must spend a positive amount of a finite
renormalized budget.

## 4. Why the current rescaled energy is not that Lyapunov

The Gaussian/local rescaled energy obeys only the sign-indefinite balance

```math
M_R'(s)+cM_R(s)+cD_R(s)
\le
C\mathcal A_R(s)+\mathcal B_R(s).
\tag{BRP.13}
```

The critical action appears on the wrong side.  Pressure, convection, moving
cutoffs, and conormal tails are not signed.  This gives:

```math
\text{recurrence}
\Longrightarrow
\text{critical action is visible,}
\tag{BRP.14}
```

but not:

```math
\text{critical action}
\Longrightarrow
\text{finite Lyapunov drop.}
\tag{BRP.15}
```

The same obstruction was already exposed by the pressure-flux and log-time
action notes.  The bounded recurrent branch needs a pressure-corrected,
material, or no-waste functional whose drop is exactly the unweighted action
quantum.

## 5. Compactness fork after bounded recurrence

Bounded recurrence therefore splits as follows.

If the shifted slabs lose mass, pressure, selected carrier, or defect into
tails, the loss must be routed by a tail/trace theorem:

```math
\text{TerminalLocalEnergyFluxTightness.A}
\quad\text{or}\quad
\text{TerminalMovingPacketTraceModulus.A}.
\tag{BRP.16}
```

If the shifted slabs compactify but retain defect/source measure, the route
needs no-waste identification and evacuation:

```math
\text{LocalEnergyFluxNativeResidueIdentity.A}
+
\text{AnnularDefectEvacuation.A}.
\tag{BRP.17}
```

If the shifted slabs compactify to a nonzero time-dependent recurrent object,
the route needs a strict Lyapunov or stationarity theorem:

```math
\text{StrictRescaledNoWasteLyapunov.A}
\quad\text{or}\quad
\text{RenormalizedZenoStationarity.A}.
\tag{BRP.18}
```

If the shifted slabs switch profiles or drift in gauge, the route needs the
same no-drift/unique-tangent theorem:

```math
\text{ZenoNoDriftUniqueTangent.A}.
\tag{BRP.19}
```

## Verdict

The bounded recurrent branch does not close by compactness alone.

It proves only:

```math
\boxed{
\text{bounded recurrent heat-scale slabs}
\Longrightarrow
\text{nonzero recurrent local-suitable profile package after subsequence.}
}
\tag{BRP.20}
```

It does not prove:

```math
\boxed{
\text{bounded recurrent heat-scale slabs}
\Longrightarrow
\text{stationary no-waste compact Landau-class profile.}
}
\tag{BRP.21}
```

The exact forward-gold supplier exposed by this attempt is:

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
}
\tag{BRP.22}
```

or the equivalent package

```math
\boxed{
\text{CompactOrbitProduction.A}
+
\text{NoWasteLocalEnergyFlux.A}
+
\text{RenormalizedZenoStationarity.A}.
}
\tag{BRP.23}
```

Without one of those, bounded recurrence remains visible but not excluded.  It
is a recurrent local-suitable package, not yet the rigid zero-force profile
needed by the Landau/Sverak consumer.
