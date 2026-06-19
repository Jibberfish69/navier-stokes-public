# Forward-Gold Visible Defect Ledger Routing Attempt

Date: 2026-06-18

Status: direct continuation of the Stokes-multipole coercivity fork.  The
off-point residual branch closes as a visibility/readout statement under the
solenoidal-visible residual hypothesis.  The scale-critical energy branch also
closes as visibility, but not as a finite-cost contradiction from current
inputs.  The remaining hard branch is still the monopole/native-carrier bridge.

## Incoming fork

`mpp-forward-gold-stokes-multipole-coercivity-attempt-20260618.md` reduces the
projected spatial point-residue problem to the fork

```math
\boxed{
\text{off-point residual}
\quad\text{or}\quad
\text{scale-critical energy blowup}
\quad\text{or}\quad
\Phi_0\delta_0.
}
\tag{VD.1}
```

This note tests whether the first two alternatives can be routed into the
native local-energy/stress ledger.

## Off-point residual

Target:

```math
\boxed{
\text{OffPointResidualToLedger.A}
}
\tag{VD.2}
```

Let `mathfrak R` be the projected spatial residual seen by divergence-free
tests in a renormalized terminal limit.  The solenoidal-visible off-point
residual statement is:

```math
\exists \varphi\in C_c^\infty(B_1\setminus B_\rho;\mathbb R^3),
\qquad
\nabla\cdot\varphi=0,
\qquad
\langle\mathfrak R,\varphi\rangle\ne0.
\tag{VD.3}
```

For a frozen or stationary projected residual,

```math
\mathfrak R
=
\mathbb P[-\nu\Delta U+\nabla\cdot(U\otimes U)]
\tag{VD.4}
```

and therefore

```math
\langle\mathfrak R,\varphi\rangle
=
-\nu\int U\cdot\Delta\varphi\,dx
-\int (U\otimes U):\nabla\varphi\,dx.
\tag{VD.5}
```

Because `supp varphi` stays a fixed positive distance from the terminal point,
the terms in `(VD.5)` are fixed-annulus local stress/readout terms.  They are
not terminal point defects and they do not rely on shrinking point-support
bookkeeping.

Thus `(VD.3)` gives a nonzero native fixed-annulus residual:

```math
\boxed{
|\langle\mathfrak R,\varphi\rangle|
\le
\mathcal L_{\rm ann}(\varphi;U,\Pi)
}
\tag{VD.6}
```

where

```math
\mathcal L_{\rm ann}(\varphi;U,\Pi)
:=
\nu\left|\int U\cdot\Delta\varphi\,dx\right|
+
\left|\int (U\otimes U):\nabla\varphi\,dx\right|
\tag{VD.7}
```

or, in the unfrozen local-energy version, the same expression with the
time-action and pressure flux terms supplied by the tested local energy
identity.

So the off-point branch is not hidden:

```math
\boxed{
\text{solenoidal-visible off-point residual}
\Longrightarrow
\text{nonzero fixed-annulus local stress/action ledger readout.}
}
\tag{VD.8}
```

If the Zeno limit is already known to solve Navier-Stokes away from the terminal
point with no defect measure on the annulus, `(VD.8)` is a contradiction.  If
that away-from-point exact equation has not been installed, `(VD.8)` is the
ledger branch that must be paid:

```math
\boxed{
\text{OffPointResidualToLedger.A}
\text{ closes as visibility, not as an independent global contradiction.}
}
\tag{VD.9}
```

## Scale-critical energy blowup

Target:

```math
\boxed{
\text{ScaleCriticalEnergyDefectToLedger.A}
}
\tag{VD.10}
```

The branch is

```math
\sup_{0<r<r_0}
r^{-1}\int_{B_r}|U|^2\,dx
=\infty.
\tag{VD.11}
```

Equivalently, there exists `r_j downarrow0` such that

```math
E_j
:=
r_j^{-1}\int_{B_{r_j}}|U|^2\,dx
\longrightarrow\infty.
\tag{VD.12}
```

This is already a positive scale-local ledger readout.  It is not a hidden
signed-current cancellation and it is not a missing point multipole.  It is a
visible scale-energy concentration at the terminal point.

The local-energy ledger can name it as

```math
\mathcal E_{\rm sc}(r;U)
:=
r^{-1}\int_{B_r}|U|^2\,dx.
\tag{VD.13}
```

Then `(VD.11)` says precisely

```math
\sup_{r\downarrow0}\mathcal E_{\rm sc}(r;U)=\infty.
\tag{VD.14}
```

Thus the visibility statement is the definition-level implication:

```math
\boxed{
\text{failure of critical local energy}
\Longrightarrow
\text{visible scale-critical energy defect.}
}
\tag{VD.15}
```

This is useful, but it is weaker than a finite-cost contradiction.  A blowup of
`\mathcal E_{\rm sc}` is a visible terminal concentration, not an automatic
payment by a finite legal ledger.  To convert `(VD.15)` into closure, the route
still needs one of:

```math
\boxed{
\text{CriticalLocalEnergyBoundForResidue.A}
}
\tag{VD.16}
```

or

```math
\boxed{
\text{ScaleEnergyBlowupToCMFace.A}
}
\tag{VD.17}
```

or a rigidity theorem saying that a minimal no-waste terminal element cannot
carry infinite scale-local energy:

```math
\boxed{
\text{MinimalElementScaleEnergyBound.A}.
}
\tag{VD.18}
```

Thus:

```math
\boxed{
\text{ScaleCriticalEnergyDefectToLedger.A}
\text{ closes as a visibility theorem, but not as a finite-cost theorem.}
}
\tag{VD.19}
```

## Consequence for the multipole route

The multipole fork becomes:

```math
\text{terminal projected residual}
\Longrightarrow
\begin{cases}
\text{fixed-annulus visible residual},\\
\text{visible scale-critical energy concentration},\\
\Phi_0\delta_0.
\end{cases}
\tag{VD.20}
```

The first line is paid if the away-from-point local equation is installed, and
otherwise remains a visible stress/action ledger defect.

The second line is a visible compactness/critical-energy defect.  It is not
hidden, but it requires `CriticalLocalEnergyBoundForResidue.A`,
`ScaleEnergyBlowupToCMFace.A`, or `MinimalElementScaleEnergyBound.A` to become
a contradiction.

The third line is the original Door 1 / Door 2 monopole branch.

## Remaining hard branch

After this routing attempt, no new invisible middle branch has appeared.  The
hard forward-gold work is still:

```math
\boxed{
\text{LocalEnergyFluxNativeResidueIdentity.A}
\text{ / }
\text{ProjectedLocalPreCauchyResidueIdentity.A}
}
\tag{VD.21}
```

for the nonzero monopole branch, plus the compact critical-element production
and rigidity requirements on the zero-defect side.

The practical gain is narrower but real: higher point multipoles and off-point
residuals are not hidden terminal source atoms.  A terminal residue must now
show itself as fixed-annulus residual, scale-energy concentration, or
`\Phi_0\delta_0`.
