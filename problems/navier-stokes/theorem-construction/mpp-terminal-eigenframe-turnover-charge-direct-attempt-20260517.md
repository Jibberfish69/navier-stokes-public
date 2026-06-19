# MPP TerminalEigenframeTurnoverCharge.A Direct Attempt

Date: 2026-05-17

Status: fresh direct attempt; far-low and small-amplitude turnover are
separated, but the theorem does not close.  The surviving term is the
one-sided near-band material pressure/source-current.

Purpose: attack the turnover atom isolated in
`mpp-independent-prd-material-eigenframe-attempt-20260516.md` without importing
`ScaleCriticalTreeCarleson.A`, `TemporalNonAtomicSource.A`,
`TerminalWeightedNoFreeSink.A`, or `ZenoSourceResidueRigidity.A`.

## 0. Target

For a retained terminal packet `P`, write

```math
\sigma_P(t)
:=
n_P(t)\cdot S^{loc}_{<j_P}(X_P(t),t)n_P(t),
\qquad
\tau_P:=(\nu2^{2j_P})^{-1}.
\tag{TET.1}
```

The turnover atom asks for a legal payment of the material variation term left
by the scalar source covering lemma:

```math
\boxed{
\sum_{P\in\mathcal F_N}
E_P^\#\,\tau_P
\operatorname{Var}_{I_P}
\left(\sigma_P^{near,>\eta\tau_P^{-1}}\right)
\le
\mathrm{Legal}_N(\mathcal F_N)+o_N(1).
}
\tag{TET.2}
```

Here `E_P^\#=\|E_P\|_{L^\infty(I_P)}` and `S^{near}` denotes the finite band
`j_P-L<m<j_P`.  The far-low part was already separated in the eigenframe
attempt and carries the parabolic factor `2^{-2L}`.

## 1. Material derivative expansion

Along the packet path,

```math
D_t\sigma_P^{near}
=
n_P\cdot D_tS^{near}_{j_P,L}n_P
+2(D_tn_P)\cdot S^{near}_{j_P,L}n_P
+\mathrm{PathComm}_P.
\tag{TET.3}
```

The strain equation gives

```math
D_tS^{near}_{j,L}
=
\nu\Delta S^{near}_{j,L}
-P^{loc}_{j,L}(S^2+\Omega^2+\nabla^2p)
+\mathrm{Comm}^{flow/cut}_{j,L}.
\tag{TET.4}
```

Thus the turnover charge splits into:

```text
heat variation,
frame variation,
near-band nonlinear / pressure material source,
path/cutoff/projector commutators.
```

The commutators are legal only after the projected-cutoff and boundary ledgers
prove a definite legal-loss bound.  In this attempt that means the
projected-cutoff, path, collar, and boundary commutators must satisfy

```math
\sum_{P\in\mathcal F_N}
E_P^\#\tau_P
\int_{I_P}|\mathrm{PathComm}_P+\mathrm{Comm}^{flow/cut}_{j_P,L}+\mathrm{FrameComm}_P|
\,dt
\le
Legal_N(\mathcal F_N)+o_N(1).
```

Only after that estimate is proved or imported may these terms be removed from
the analytic wall.

## 2. Heat and small-amplitude pieces

On the subparabolic near-band set

```math
\|S^{near}_{j_P,L}\|_\infty\le\theta\tau_P^{-1},
\tag{TET.5}
```

the heat contribution is bounded by

```math
\tau_P\int_{I_P}\|\nu\Delta S^{near}_{j_P,L}\|_\infty\,dt
\le C_L
\theta
\tag{TET.6}
```

up to legal commutators.

This is a real absorption: heat cannot create large near-band turnover unless
the near-band strain itself is parabolic-size.

On the complement of `(TET.5)`, the lower/near strain has high-shell
parabolic-rate amplitude:

```math
\|S^{near}_{j_P,L}\|_\infty>\theta\tau_P^{-1}.
\tag{TET.7}
```

This routes to the strain-burst branch:

```text
ParabolicRateStrainBurst
=> lower/neighbor donor height
=> inherited height, height charge, or Zeno residue.
```

This identifies where large-amplitude turnover lives, but it does not by
itself pay the selected product `E_P^\# Var(\sigma_P)`.  A donor-height event
can still feed a selected positive high packet unless the donor sink is
depleted, signed, or made temporally non-atomic.  That is the same
no-free-sink/source-residence issue in burst language.

## 3. Frame variation test

For a transported vorticity direction,

```math
D_tn_P
=
(I-n_P\otimes n_P)S^{loc}_{<j_P}n_P
+\mathrm{FrameComm}_P.
\tag{TET.8}
```

The principal frame term is therefore

```math
\mathcal F_{turn}
=
\sum_P
E_P^\#\tau_P
\int_{I_P}
\left|
(I-n_P\otimes n_P)S^{loc}_{<j_P}n_P
\right|
\|S^{near}_{j_P,L}\|\,dt.
\tag{TET.9}
```

If `n_P` is far from a strain eigendirection, `(TET.9)` measures real angular
turnover.  If `n_P` is already aligned with an expanding eigendirection, the
frame term vanishes and the packet falls into the residence branch.

The hoped-for proof was that nonzero frame turnover must spend legal angular
mixing cost.  The equation gives the cost, but not its legality.  The product
in `(TET.9)` is positive and one-sided after terminal selection.  Without an
independent angular decorrelation theorem it is exactly an active alignment
charge, not a consequence of the vorticity direction equation alone.

A local obstruction already appears.  If

```math
S=\operatorname{diag}(2a,-a,-a),\qquad n=e_1,
\tag{TET.10}
```

then `D_tn=0` in the principal frame equation while

```math
\sigma=n\cdot Sn=2a>0.
\tag{TET.11}
```

So the frame equation cannot rule out the worst case.  It only says that a
non-resident packet pays angular variation; the legality of that variation is
another theorem.

## 4. Riccati / strain-eigenvalue test

Let `a_P=n_P\cdot S^{near}n_P`.  The scalar material equation has the form

```math
D_ta_P
=
-n_P\cdot P^{loc}_{j_P,L}(S^2+\Omega^2+\nabla^2p)n_P
+\nu n_P\cdot\Delta S^{near}_{j_P,L}n_P
+2(D_tn_P)\cdot S^{near}_{j_P,L}n_P
+\mathrm{Comm}_P.
\tag{TET.12}
```

The `-S^2` part has a damping flavor when `n_P` is an eigenvector, but the
full expression is not sign-definite:

```text
-Omega^2 contributes with the opposite sign in selected directions,
the anisotropic Hessian of pressure is not signed,
and finite-band projection destroys a pointwise eigenvalue ODE.
```

The pressure term is the decisive obstruction.  A local linear strain jet can
keep a positive extensional eigenvalue steady by balancing the quadratic
strain through a quadratic pressure Hessian.  This is not a finite-energy
global solution model, but it shows the local equation has no pointwise
Riccati sign law strong enough to prove `(TET.2)`.

Thus a Riccati proof would need a new nonlocal pressure theorem:

```math
\boxed{
TerminalPressureHessianNoSustain.A
}
\tag{TET.13}
```

stating that on selected same-fluid terminal packets, pressure cannot sustain
positive near-band strain turnover/residence without spending a legal signed
source or donor charge.

That theorem is exactly source-wall strength unless proved by a genuinely new
pressure mechanism.

## 5. Integration by parts returns to the source-current

Try to keep signs by integrating the near-band scalar coefficient:

```math
\int_{I_P}E_P b_P'(t)\,dt
=
[E_Pb_P]_{\partial I_P}
-\int_{I_P}E_P'(t)b_P(t)\,dt.
\tag{TET.14}
```

The packet energy equation is

```math
E_P'
=
2\sigma_PE_P
-c\tau_P^{-1}E_P
+Source_P^{loc}
+Legal_P.
\tag{TET.15}
```

Therefore `(TET.14)` produces

```math
-2\int\sigma_PE_Pb_P\,dt
-\int Source_P^{loc}b_P\,dt
+\mathrm{endpoint/heat/legal}.
\tag{TET.16}
```

The first term is active alignment.  The second term is the one-sided terminal
source-current.  The cancellation available in the unweighted dyadic exchange
does not survive terminal positive selection, one-sided weights, cutoffs, and
packet localization.

So the signed integration-by-parts version of turnover charge returns to the
same selected source-current that the source wall was built to control.

## 6. Result of the attempt

The direct turnover proof gives a smaller conditional statement:

```math
\boxed{
\begin{aligned}
&TerminalAngularVariationLegal.A\\
&\quad+
TerminalPressureHessianNoSustain.A\\
&\quad+
TerminalBurstDonorSinkCharge.A\\
&\Longrightarrow
TerminalEigenframeTurnoverCharge.A.
\end{aligned}
}
\tag{TET.17}
```

Meanings:

```text
TerminalAngularVariationLegal.A
```

pays the frame variation product `(TET.9)` without importing active-square or
source-Carleson control.

```text
TerminalPressureHessianNoSustain.A
```

pays the anisotropic pressure/material source term in `(TET.12)`.

```text
TerminalBurstDonorSinkCharge.A
```

pays the parabolic-rate near-band strain burst branch without sending it to
Zeno source-residue rigidity.

The heat and far-low pieces are paid only through the displayed heat/gap
estimates, including `FarLow_L <= C2^{-2L}H_W+Legal_L` with
`C2^{-2L}<=eta_far<1`. These three are the only remaining pieces after the
material derivative split.

## 7. Verdict

`TerminalEigenframeTurnoverCharge.A` is not proved by the direct material
eigenframe/Riccati computation.

The attempt does produce a sharper obstruction:

```math
\boxed{
TerminalPressureHessianNoSustain.A
}
```

or, equivalently at packet level,

```math
\boxed{
OneSidedNearBandMaterialStrainBV.A.
}
```

Proving either theorem is the exact independence condition for the eigenframe
route relative to the installed Carleson/Zeno inputs.  The present computation stops because
the pressure Hessian and the signed source-current can sustain the selected
positive coefficient after terminal localization.  The absolute-value route
spends

```math
\|P^{loc}_{j,L}(S^2+\Omega^2+\nabla^2p)\|_\infty
\le
C_{\mathrm{CZ}}\|\nabla u\|_\infty^2,
```

which is the active-square coefficient strength, and the signed route produces
the selected source-current term

```math
-\int Source_P^{loc}b_P\,dt.
```

The pressure-sustain atom is tested directly in
`mpp-terminal-pressure-hessian-no-sustain-attempt-20260517.md`; that attempt
shows the pressure Poisson law alone gives elliptic recovery, not one-sided
terminal sign depletion.

The next pressure normal form is
`mpp-pressure-hessian-partner-graph-normal-form-20260517.md`.  It shows that
the pressure partner is an oscillatory Calderon--Zygmund partner, so the
turnover route now hinges on terminal preservation of that pressure
cancellation or conversion of its failure into a source-residue branch.
