# MPP ParabolicRateStrainBurst.A Direct Attempt

Date: 2026-05-06

Status: direct attempt; inverse burst lemma proved; full burst charge remains
open.

Depends on:

```text
mpp-response-flux-derivative-control-direct-attempt-20260506.md
```

## 0. Target

The response-flux proof reduces the aligned high-response obstruction to the
bad coefficient set:

```math
ParabolicRateStrainBurst_j(t):
\quad
\|S_{<j}^{loc}(t)\|_{L^\infty(Q_j)}
>
\theta\nu2^{2j}.
\tag{PRS.1}
```

The theorem target is:

```math
\boxed{
ParabolicRateStrainBurst.A
}
```

in the form:

```math
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{ParabolicRateStrainBurst_\ell\}}
D_\ell(t)\,dt
\le
LegalCharge_N(W)+o_N(1).
\tag{PRS.2}
```

The exact conditional consequence of `(PRS.2)` is this: once the response-flux
reduction has localized the uncontrolled aligned component of `partial_nu N_l`
to `ParabolicRateStrainBurst_l`, `(PRS.2)` charges that remaining component by
`LegalCharge_N(W)+o_N(1)`. Outside that burst set, the positive
viscosity-response damping term supplies the control.

## 1. Bernstein Inverse Burst Lemma

Let:

```math
S_{<j}^{loc}
=
\frac12(\nabla u_{<j}^{loc}+(\nabla u_{<j}^{loc})^T).
```

The Littlewood--Paley Bernstein estimate gives:

```math
\|S_{<j}^{loc}(t)\|_{L^\infty}
\le
C\sum_{m<j}2^{5m/2}\|u_m(t)\|_2.
\tag{PRS.3}
```

Define:

```math
D_m(t):=2^{2m}\|u_m(t)\|_2^2.
```

Then:

```math
2^{5m/2}\|u_m\|_2
=
2^{3m/2}D_m^{1/2}.
```

### Lemma `InverseParabolicBurst.A`

If `(PRS.1)` holds at scale `j`, then there exists `m<j` such that:

```math
D_m(t)
\ge
c_{\theta,\nu}
(j-m+1)^{-4}
2^{4j-3m}.
\tag{PRS.4}
```

Equivalently, writing `q=j-m>0`:

```math
D_{j-q}(t)
\ge
c_{\theta,\nu}
q^{-4}
2^{j+3q}.
\tag{PRS.5}
```

### Proof

Use the summable weights:

```math
a_m=(j-m+1)^{-2},
\qquad
\sum_{m<j}a_m\le C.
```

If `(PRS.4)` failed for every `m<j`, then:

```math
2^{3m/2}D_m^{1/2}
<
c^{1/2}_{\theta,\nu}
(j-m+1)^{-2}2^{2j}.
```

Summing in `(PRS.3)` would give:

```math
\|S_{<j}^{loc}\|_{L^\infty}
<
C c^{1/2}_{\theta,\nu}2^{2j}.
```

Choose `c_{\theta,\nu}` so that the right side is below
`\theta\nu2^{2j}`.  This contradicts `(PRS.1)`.  Hence some `m<j`
satisfies `(PRS.4)`.  `\square`

## 2. Consequence: A Burst Is Not Scale-Free

The lemma says that a parabolic-rate strain burst at high shell `j` cannot be
created by diffuse low modes below the displayed threshold. It forces a
definite lower/intermediate shell concentration:

```math
D_{j-q}(t)
\ge
c_{PRS}
\nu^2 q^{-4}2^{j+3q}.
```

For bounded `q`, this is already:

```math
D_{j-q}(t)\ge c_{PRS,L}\nu^2 2^j.
```

More importantly, this is a donor-height event.  If `m=j-q` is the index
selected by `InverseParabolicBurst.A`, then for `m-5>N`:

```math
H_{m-5}(t)
=
2^{m-5}\sum_{r>m-1}D_r(t)
\ge
2^{m-5}D_m(t).
```

Using `(PRS.4)`:

```math
\boxed{
H_{m-5}(t)
\ge
c_{\theta,\nu}
(j-m+1)^{-4}
2^{4j-2m}.
}
\tag{PRS.6}
```

Writing `q=j-m`, this becomes:

```math
H_{j-q-5}(t)
\ge
c_{\theta,\nu}q^{-4}2^{2j+2q}.
\tag{PRS.7}
```

If the selected `m` stayed below `N+5` while `j\to\infty`, the energy bound

```math
D_m(t)\le 2^{2m}\|u(t)\|_2^2
```

would contradict `(PRS.4)` for all sufficiently large `j`.  Therefore on the
terminal high-shell branch the selected `m` eventually satisfies `m-5>N`.

Thus:

```math
\boxed{
ParabolicRateStrainBurst_j(t)
\Longrightarrow
H_N(t)\text{ is already large at a lower/neighbor index.}
}
\tag{PRS.8}
```

Thus the burst creates or inherits a large neighboring-scale dissipation
packet.  On a terminal first-height run, this must fall into one of three
cases:

```text
1. the lower/intermediate concentration is already present in the past;
2. it is newly created and needs a native height charge;
3. it is paired with the active high shell and returns to the old parent/donor
   source wall.
```

This is a useful reduction, but not yet `(PRS.2)`.

## 3. Direct Charge Attempt

On the burst set:

```math
1_{\{PRS_j\}}D_j
\le
\frac{1}{\theta\nu2^{2j}}
\|S_{<j}^{loc}\|_{L^\infty}D_j.
\tag{PRS.9}
```

Since `D_j=2^{2j}E_j`, `(PRS.9)` becomes:

```math
1_{\{PRS_j\}}D_j
\le
\frac{1}{\theta\nu}
\|S_{<j}^{loc}\|_{L^\infty}E_j.
\tag{PRS.10}
```

The right side is exactly the active low-strain/high-shell source carrier.
After localization and positive-part selection it is the native source wall:

```math
\left[
\langle S_{<j}^{loc}u_j,u_j\rangle
\right]_+.
```

Therefore the direct charge `(PRS.9)` is circular unless one adds a new
ingredient.  It returns to:

```math
NativePositiveSourceControl.A
\quad\text{or}\quad
ScaleCriticalTreeCarleson.A.
```

## 4. Stronger Noncircular Target

The inverse lemma identifies the noncircular replacement:

```math
\boxed{
BurstToHeightInheritanceOrCharge.A.
}
```

Statement:

For every terminal same-fluid Field-face packet family,
`ParabolicRateStrainBurst_j` on an active high shell implies:

```text
inherited lower/neighbor height
or native height creation charge
or terminal source-residue rigidification.
```

Formula shape:

```math
\begin{aligned}
&\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{PRS_\ell\}}D_\ell(t)\,dt\\
&\quad\le
H_N(Past(W))
+Charge_N^{height}(W)
+ZenoResidueCharge_N(W)
+o_N(1).
\end{aligned}
\tag{PRS.11}
```

This is narrower than the old source wall because the bad set is no longer all
positive strain/source activity.  It is only the region where the low strain
beats the parabolic shell rate `nu 2^{2j}`.

The proved implication `(PRS.8)` gives the direct reduction:

```math
\boxed{
FirstHeightCreationDichotomy.A
\Longrightarrow
BurstToHeightInheritanceOrCharge.A.
}
\tag{PRS.12}
```

Indeed, the burst forces large `H_N` on the same time slice.  A first-height
dichotomy then says that this height is inherited, legally charged, or routed
to terminal rigidity/source-residue.  Those are exactly the alternatives in
`BurstToHeightInheritanceOrCharge.A`.

## 5. Conditional Implication

If `BurstToHeightInheritanceOrCharge.A` is proved, then:

```math
BurstToHeightInheritanceOrCharge.A
\Longrightarrow
ParabolicRateStrainBurst.A
```

on first-height windows, because the inherited height term is excluded by
first-height selection, the native height charge is legal by definition, and
the Zeno residue branch is handled by the existing rigid-class alternate if it
is selected.

Combining with the previous response-flux proof gives:

```math
\boxed{
\begin{aligned}
&BurstToHeightInheritanceOrCharge.A\\
&+LowResponseStrainCharge.A\\
&+OrthogonalResponseDecorrel.A\\
&\Longrightarrow
ResponseFluxDerivativeControl.A.
\end{aligned}}
\tag{PRS.13}
```

## 6. Verdict

`ParabolicRateStrainBurst.A` is not discharged by a direct Bernstein/energy
estimate.  The naive estimate is circular and returns to the native positive
source wall.

What is proved:

```text
InverseParabolicBurst.A
ParabolicBurstForcesHeight.A
FirstHeightCreationDichotomy.A => BurstToHeightInheritanceOrCharge.A
```

What remains:

```text
FirstHeightCreationDichotomy.A
```

This is still a real narrowing: a positive viscosity-height fold can only use
aligned response through low strain that reaches the parabolic shell rate, and
such a burst forces a quantified lower/neighbor shell concentration by
`InverseParabolicBurst.A`, hence a large lower/neighbor donor-height event by
`ParabolicBurstForcesHeight.A`.

The next noncircular proof target is exactly:

```math
\boxed{
FirstHeightCreationDichotomy.A.
}
```
