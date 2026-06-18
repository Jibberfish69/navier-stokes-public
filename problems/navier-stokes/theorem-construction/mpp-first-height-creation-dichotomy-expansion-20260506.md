# MPP FirstHeightCreationDichotomy.A Expansion

Date: 2026-05-06

Status: theorem expansion; selection/accounting part proved; independent
closure not proved.

Depends on:

```text
mpp-parabolic-rate-strain-burst-direct-attempt-20260506.md
mpp-donorheightcreation-shellbalance-direct-attempt-20260506.md
mpp-actual-synthesis-heightfluxcontrol-class-exit-architecture-20260506.md
```

## 0. Target

The response-homotopy route reduced the parabolic-rate aligned-response branch
to:

```math
\boxed{
FirstHeightCreationDichotomy.A.
}
```

The intended statement is:

```text
first creation of large donor height
=> inherited parent height
   or legal native height charge
   or terminal rigidity/source-residue branch.
```

The donor height is:

```math
H_N(W)
:=
\sup_{t\in W}\sup_{k>N}
2^k\sum_{\ell>k+4}D_\ell(t).
```

## 1. Proved Selection Lemma

### Lemma `FirstHeightSelection.A`

Assume a terminal same-fluid window `W=[a,b]` satisfies:

```math
H_N(W)
>
H_N(Past(W))+Loss_N^{height}(W)+\eta.
\tag{FHC.1}
```

Then there exist a time `t_* in W` and an index `k_*>N` such that:

```math
H_{k_*}(t_*)
=
2^{k_*}\sum_{\ell>k_*+4}D_\ell(t_*)
>
H_N(Past(W))+Loss_N^{height}(W)+\eta/2.
\tag{FHC.2}
```

Moreover, after replacing `H_k` by the standard smooth maximum regularization

```math
H_N^\varepsilon(t)
:=
\varepsilon\log\sum_{k>N}\exp(H_k(t)/\varepsilon),
```

there is an absolutely continuous subinterval `I_* subset W` ending at `t_*`
such that:

```math
\eta/4
\le
\int_{I_*}
\left[
\frac{d}{dt}H_N^\varepsilon(t)
\right]_+dt
+Loss_N^{height}(W)
+o_\varepsilon(1).
\tag{FHC.3}
```

### Proof

The first assertion is the definition of the supremum, losing `eta/2`.
For the second, choose `s_*` before `t_*` so that
`H_N^\varepsilon(s_*)` is below the past/loss threshold.  Since
`H_N^\varepsilon` is an absolutely continuous smooth maximum of absolutely
continuous shell energies on a finite-depth truncated packet, the fundamental
theorem of calculus gives:

```math
H_N^\varepsilon(t_*)-H_N^\varepsilon(s_*)
=
\int_{s_*}^{t_*}\frac{d}{dt}H_N^\varepsilon(t)dt
\le
\int_{s_*}^{t_*}
\left[
\frac{d}{dt}H_N^\varepsilon(t)
\right]_+dt.
```

Letting the truncation depth increase and then `epsilon ->0` gives `(FHC.3)`
with the legal-loss terms restored.  `\square`

## 2. Height Derivative Accounting

The shell energy inequality has the route form:

```math
\frac{d}{dt}D_\ell(t)
\le
2^{2\ell}F_\ell(t)
-c\nu2^{2\ell}D_\ell(t)
+2^{2\ell}L_\ell(t),
\tag{FHC.4}
```

where `F_l` is the native nonlinear shell flux and `L_l` is legal.

Therefore:

```math
\frac{d}{dt}H_k(t)
\le
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
-c\nu2^k\sum_{\ell>k+4}2^{2\ell}D_\ell(t)
+2^k\sum_{\ell>k+4}2^{2\ell}L_\ell(t).
\tag{FHC.5}
```

Taking the positive part after the smooth-max selection gives:

```math
\boxed{
\left[
H_N(W)-H_N(Past(W))-Loss_N^{height}(W)
\right]_+
\le
\int_W\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+dt
+o_N(1).
}
\tag{FHC.6}
```

This proves the accounting theorem:

```math
FirstHeightSelection.A
+ShellBalance.A
\Longrightarrow
FirstHeightCreationAccounting.A.
```

## 3. Exact Dichotomy

The actual dichotomy is therefore:

```math
\boxed{
\begin{aligned}
&\text{large first creation of }H_N(W)\\
&\Longrightarrow
InheritedHeight_N(W)
\vee
HeightFluxControlFailure_N(W)
\vee
TerminalRigidityOrResidue_N(W).
\end{aligned}}
\tag{FHC.7}
```

Here:

```math
HeightFluxControlFailure_N(W)
```

means the positive weighted shell flux survives:

```math
\int_W\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+dt
\not\le
Charge_N^{height}(W)+o_N(1).
```

Thus `FirstHeightCreationDichotomy.A` is not an independent closure theorem
below `HeightFluxControl.A`.  Its non-tautological content is exactly the
structural theorem that charges the positive weighted height flux.

## 4. What This Does To The Response Route

The parabolic-rate aligned-response branch proved:

```math
ParabolicRateStrainBurst.A
\Longrightarrow
ParabolicBurstForcesHeight.A.
```

Combining that with `(FHC.7)` gives:

```math
\boxed{
ParabolicRateStrainBurst.A
\Longrightarrow
InheritedHeight
\vee
HeightFluxControlFailure
\vee
TerminalRigidityOrResidue.
}
\tag{FHC.8}
```

Therefore the parabolic-rate branch is folded into the already identified
height-flux wall.  It is no longer a separate primitive.

## 5. Conditional Closure

Assume:

```text
1. HeightFluxControl.A;
2. terminal first-height selection excludes InheritedHeight;
3. terminal rigidity/source-residue branch is discharged by the Zeno/rigidity
   alternate;
4. legal height charges are summable on the same Field-face packet ledger.
```

Then `(FHC.7)` excludes first creation of large donor height.  Thus:

```math
\boxed{
HeightFluxControl.A
+TerminalRigidityOrResidueExclusion.A
\Longrightarrow
FirstHeightCreationDichotomy.A.
}
\tag{FHC.9}
```

The proof is `(FHC.6)` applied at the first-height selection.

## 6. Verdict

Proved:

```text
FirstHeightSelection.A
FirstHeightCreationAccounting.A
ParabolicRateStrainBurst.A folds into HeightFluxControlFailure or rigidity
```

Not proved:

```text
HeightFluxControl.A
TerminalRigidityOrResidueExclusion.A
```

The honest next target is not `FirstHeightCreationDichotomy.A` as a standalone
headline.  The response route now has two genuinely new remaining branches:

```text
LowResponseStrainCharge.A
OrthogonalResponseDecorrel.A
```

and one old structural branch:

```text
HeightFluxControl.A / terminal rigidity-residue.
```

## 7. Full Response Drain Update

The later full-coefficient response drain discharges the response-specific
branches:

```text
LowResponseStrainCharge.A
OrthogonalResponseDecorrel.A
ResponseHeightCreationControl.A
NonlinearResponseRotationNoGain.A
```

and `mpp-response-height-ledger-supports-discharge-20260506.md` discharges:

```text
HeatMatchedShellCoercivity.A
BoundaryResponseFirstHeight.A.
```

Therefore the no-fold route now reads:

```text
FirstHeightCreationDichotomy.A
=> ResponseHeightControl.A.
```

But this note's Section 3 remains decisive: `FirstHeightCreationDichotomy.A`
is theorem-equivalent to the native `HeightFluxControl.A` /
terminal-rigidity-residue branch, not an independent closure theorem.
