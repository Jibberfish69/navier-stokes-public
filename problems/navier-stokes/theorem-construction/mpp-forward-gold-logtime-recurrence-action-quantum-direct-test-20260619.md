# MPP Forward-Gold Log-Time Recurrence Action Quantum Direct Test

Date: 2026-06-19

## Status

Direct continuation after the small-tail reaction test.

The previous test showed that late smallness would be enough to absorb the
terminal heat-scale packet, but that the rescaled equation does not force late
smallness.  This note tests the complementary branch:

```math
\limsup_{s\to\infty}M_R(s)>0.
\tag{LRQ.1}
```

The result is useful but not a full gold closure.  Failure of late smallness is
not free.  It forces an unweighted critical action quantum on infinitely many
log-time slabs, unless the branch already exits through unbounded rescaled
energy or uncontrolled pressure/tail leakage.  The remaining gap is that
current Navier-Stokes energy controls only discounted log-time action, so the
infinite unweighted quantum sum is visible but not contradictory.

## 1. Local rescaled energy and critical action

Work in the same backward self-similar variables:

```math
s=-\log(T-t),
\qquad
y={x-x_0\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\qquad
q(s,y)=(T-t)p(t,x).
\tag{LRQ.2}
```

Fix a Gaussian or compactly supported heat-scale weight \(\rho_R\), and set

```math
M_R(s)
=
{1\over2}\int |v(s,y)|^2\rho_R(y)\,dy.
\tag{LRQ.3}
```

Let the local critical flux/action density on the same moving packet be

```math
\mathcal A_R(s)
=
\int
\left(
|v|^3+|q|^{3/2}+|S(v)|^{5/2}
\right)\rho_R^*(y)\,dy,
\tag{LRQ.4}
```

where \(\rho_R^*\) is the slightly enlarged weight needed for the pressure and
boundary terms.  The precise choice of equivalent local heat-scale weight is
not important for this test.

After the pressure-conormal, cutoff, tail, and legal leakage terms are placed in
\(\mathcal B_R\), the local rescaled energy calculation has the form

```math
M_R'(s)
+c_0M_R(s)
+c_1D_R(s)
\le
C\mathcal A_R(s)+\mathcal B_R(s),
\tag{LRQ.5}
```

where \(D_R\) is the weighted gradient/dissipation term and
\(\mathcal B_R\) collects pressure-conormal, cutoff, tail, and legal leakage.

This is the same inequality as the small-tail reaction test, but here it is
used in the opposite direction: not to absorb a small packet, but to charge a
packet that keeps coming back.

## 2. A rise costs critical action

Suppose on an interval \(I=[a,b]\) the packet rises from below \(\eta/2\) to at
least \(\eta\):

```math
M_R(a)\le {\eta\over2},
\qquad
M_R(b)\ge \eta.
\tag{LRQ.6}
```

Since the damping and dissipation terms in `(LRQ.5)` are nonnegative on the
left,

```math
M_R'(s)\le C\mathcal A_R(s)+\mathcal B_R(s).
\tag{LRQ.7}
```

Taking the positive variation on \(I\) gives

```math
{\eta\over2}
\le
\int_I (M_R')_+\,ds
\le
C\int_I\mathcal A_R(s)\,ds
+
\int_I \mathcal B_R^+(s)\,ds.
\tag{LRQ.8}
```

Thus every genuine recovery from the small regime pays an unweighted critical
action or legal/tail bill.

## 3. Residence also costs critical action

Now suppose the packet does not repeatedly rise because it stays bounded below.
On an interval \(I=[a,b]\) with

```math
M_R(s)\ge {\eta\over2}
\quad\text{for }s\in I,
\tag{LRQ.9}
```

integrating `(LRQ.5)` gives

```math
c_0{\eta\over2}|I|
\le
M_R(a)-M_R(b)
+C\int_I\mathcal A_R(s)\,ds
+
\int_I\mathcal B_R(s)\,ds.
\tag{LRQ.10}
```

If \(M_R\) has a uniform local rescaled energy ceiling on the active branch,
then the endpoint term cannot pay this inequality on infinitely many disjoint
unit intervals.  Hence persistent residence also forces

```math
\int_I\mathcal A_R(s)\,ds
+
\int_I\mathcal B_R^+(s)\,ds
\ge c_\eta
\tag{LRQ.11}
```

on infinitely many unit log-time slabs, unless the branch already has an
unbounded local rescaled energy readout.

## 4. Consequence of late-smallness failure

Assume the legal/tail leakage is summable on the terminal branch and that the
local rescaled packet energy is bounded above on the selected branch.  If
late smallness fails, then there are infinitely many disjoint log-time slabs
\(J_k\) such that

```math
\int_{J_k}\mathcal A_R(s)\,ds
\ge
c_\eta>0.
\tag{LRQ.12}
```

Therefore

```math
\sum_k
\int_{J_k}\mathcal A_R(s)\,ds
=\infty.
\tag{LRQ.13}
```

This is the exact unweighted action quantum forced by terminal recurrence.
The heat-scale packet cannot keep returning for free in rescaled time.

## 5. Why this still does not close forward-gold

The physical energy and local-energy ledgers supply only discounted log-time
control:

```math
\int_{S_0}^{\infty}
e^{-s}
\int
\left(|v|^3+|q|^{3/2}\right)\,dy\,ds
<\infty,
\tag{LRQ.14}
```

and

```math
\int_{S_0}^{\infty}
e^{-s/2}
\int|\nabla v|^2\,dy\,ds
<\infty.
\tag{LRQ.15}
```

They do not supply the unweighted upper bound

```math
\int_{S_0}^{\infty}
\mathcal A_R(s)\,ds
<\infty.
\tag{LRQ.16}
```

So `(LRQ.13)` is not a contradiction from current inputs.  It is exactly the
missing source-square / normalized CKN / selected critical-strain reserve in
log-time form.

## 6. The compactness fork

There are now two ways the late-smallness failure can look.

First, the unit-slab critical action is unbounded along a subsequence:

```math
\int_{J_k}\mathcal A_R(s)\,ds\to\infty.
\tag{LRQ.17}
```

Then the terminal object is not hidden.  It has a visible critical-action
readout.  This is useful for CM-facing Pack/Field classification, but it is not
a forward-gold no-jump proof unless a continuation-strength critical-action
upper theorem is installed.

Second, the unit-slab critical action is bounded above and below:

```math
0<c_\eta
\le
\int_{J_k}\mathcal A_R(s)\,ds
\le
C_\eta<\infty.
\tag{LRQ.18}
```

Then shifting the slabs,

```math
v_k(\sigma,y)=v(s_k+\sigma,y),
\qquad
q_k(\sigma,y)=q(s_k+\sigma,y),
\tag{LRQ.19}
```

can give a subsequential local suitable limit on bounded \(\sigma\)-windows,
provided the pressure normalization, tail tightness, and selected positive
carrier stability are supplied.

This still does not produce the rigidity object by itself.  The limit may be
time-dependent, pressure-flux-bearing, selector-drifting, or defect-bearing.  To
turn it into a contradiction one still needs the same production package:

```math
\boxed{
\text{CompactOrbitProduction.A}
+
\text{NoWasteLocalEnergyFlux.A}
+
\text{RenormalizedStationarity/Rigidity.A}.
}
\tag{LRQ.20}
```

## Verdict

The recurrence calculation improves the ontology of the surviving branch:

```math
\boxed{
\text{failure of late smallness}
\Longrightarrow
\text{infinitely many unweighted critical action quanta,}
}
\tag{LRQ.21}
```

up to legal/tail leakage or an already-visible unbounded critical readout.

It does not prove the needed upper bound on those quanta.  The forward-gold
closure still requires one of:

```math
\boxed{
\text{UnweightedActionFinite.A / normalized CKN Carleson}
}
\tag{LRQ.22}
```

or

```math
\boxed{
\text{SelectedCriticalStrainCarleson.A}
}
\tag{LRQ.23}
```

or

```math
\boxed{
\text{SourceSquare/ScaleCriticalTreeCarleson.A}
}
\tag{LRQ.24}
```

or

```math
\boxed{
\text{compact no-waste recurrent-profile rigidity.}
}
\tag{LRQ.25}
```

So the packet is not ontologically mysterious anymore.  It is a recurrent
log-time object with a fixed positive lower bound.  The exact unsolved
forward-gold question is whether
Navier-Stokes supplies a finite unweighted critical-action budget, or whether
that recurrent object must instead be consumed as a Pack/that Part/Field failure
readout.
