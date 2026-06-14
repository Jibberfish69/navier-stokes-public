# MPP ResponseFluxDerivativeControl.A Direct Attempt

Date: 2026-05-06

Status: direct attempt; aligned response absorption proved; full theorem
reduced to response-rotation and low-response-strain atoms.

Depends on:

```text
mpp-viscosity-homotopy-response-height-proof-20260506.md
```

## 0. Target

The previous proof run reduced `ResponseHeightControl.A` to:

```math
\boxed{
ResponseFluxDerivativeControl.A
}
```

in the sharper response-positive form:

```math
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{R_\ell(t)>0\}}[\partial_\nu N_\ell(t)]_+\,dt
\le
LegalResponseCharge_N(W)+o_N(1).
\tag{RFC.1}
```

Here:

```math
R_\ell(t):=\partial_\nu E_\ell(t)
=2\langle u_\ell(t),z_\ell(t)\rangle,
\qquad
z=\partial_\nu u,
```

and:

```math
N_\ell(u)
=
-\langle P_\ell\mathbb P(u\cdot\nabla u),u_\ell\rangle
```

is the native nonlinear shell flux.

The response-positive restriction is essential.  The signed shell response
identity only asks for `partial_nu N_l` where viscosity is trying to increase
the shell energy.

## 1. Model Dangerous Term

The dangerous paraproduct component of the shell flux has the form:

```math
N_j^{lh}
:=
\int \langle S_{<j}^{loc}u_j,u_j\rangle\,dx,
\tag{RFC.2}
```

where:

```math
S_{<j}^{loc}
:=
\frac12(\nabla u_{<j}+\nabla u_{<j}^{T})
```

is the low/intermediate strain acting on the active high shell.

Differentiating in viscosity gives the principal differentiated term:

```math
(\partial_\nu N_j^{lh})^{prin}
:=
\int \langle ZS_{<j}^{loc}u_j,u_j\rangle\,dx
+2\int \langle S_{<j}^{loc}u_j,z_j\rangle\,dx,
\tag{RFC.3}
```

where:

```math
ZS_{<j}^{loc}
:=
\frac12(\nabla z_{<j}+\nabla z_{<j}^{T}).
```

Thus the response flux has three pieces:

```text
low response strain:        ZS_{<j}^{loc} acting on u_j,u_j;
aligned high response:      component of z_j parallel to u_j;
orthogonal high response:   component of z_j perpendicular to u_j.
```

Only the aligned high-response piece has an immediate absorption mechanism.

## 2. Response Decomposition

On the set where `E_j>0`, decompose:

```math
z_j=a_j u_j+z_j^\perp,
\qquad
\langle u_j,z_j^\perp\rangle=0,
\qquad
a_j:=\frac{\langle u_j,z_j\rangle}{\|u_j\|_2^2}
=\frac{R_j}{2E_j}.
\tag{RFC.4}
```

On the response-positive set `{R_j>0}`, we have:

```math
a_j>0.
```

The high-response contribution in `(RFC.3)` splits as:

```math
2\int\langle S_{<j}^{loc}u_j,z_j\rangle
=
2a_j\int\langle S_{<j}^{loc}u_j,u_j\rangle
+2\int\langle S_{<j}^{loc}u_j,z_j^\perp\rangle.
\tag{RFC.5}
```

## 3. Proved Lemma: Subparabolic Aligned Absorption

### Statement

Assume on a response-positive active packet:

```math
\|S_{<j}^{loc}(t)\|_{L^\infty(Q_j)}
\le
\theta\,\nu\,2^{2j}
\tag{RFC.6}
```

with `theta>0` smaller than the damping constant in the signed shell response
identity.  Then the aligned high-response piece is absorbed:

```math
1_{\{R_j>0\}}
\left[
2a_j\int\langle S_{<j}^{loc}u_j,u_j\rangle
\right]_+
\le
2\theta\,\nu\,2^{2j}R_j^+.
\tag{RFC.7}
```

Consequently this piece is paid by the damping term:

```math
c\nu2^{2j}R_j^+
```

in `SignedShellResponseIdentity.A`.

### Proof

On `{R_j>0}`, `a_j=R_j/(2E_j)>0`.  Therefore:

```math
\begin{aligned}
\left[
2a_j\int\langle S_{<j}^{loc}u_j,u_j\rangle
\right]_+
&\le
2a_j\|S_{<j}^{loc}\|_{L^\infty}\|u_j\|_2^2\\
&=
\|S_{<j}^{loc}\|_{L^\infty}R_j.
\end{aligned}
```

Using `(RFC.6)` gives:

```math
\left[
2a_j\int\langle S_{<j}^{loc}u_j,u_j\rangle
\right]_+
\le
\theta\nu2^{2j}R_j.
```

Changing `theta` by an irrelevant factor gives `(RFC.7)`.  Choosing `theta`
smaller than the response damping constant absorbs the term.  `\square`

This is the first actual gain of the viscosity-homotopy route: the component
of `z_j` that tries to increase shell energy is damped at parabolic rate and
cannot feed the source unless the low strain reaches the same parabolic rate.

## 4. Remaining Pieces After The Gain

After the aligned absorption, `(RFC.3)` leaves:

```math
\boxed{
\int\langle ZS_{<j}^{loc}u_j,u_j\rangle
}
\tag{RFC.8}
```

and:

```math
\boxed{
2\int\langle S_{<j}^{loc}u_j,z_j^\perp\rangle.
}
\tag{RFC.9}
```

It also leaves the bad set where `(RFC.6)` fails:

```math
\boxed{
\|S_{<j}^{loc}\|_{L^\infty}
>
\theta\nu2^{2j}.
}
\tag{RFC.10}
```

These are the exact new atoms.

## 5. Atom 1: ParabolicRateStrainBurst.A

The bad coefficient set `(RFC.10)` is:

```math
ParabolicRateStrainBurst_j(t):
\quad
\|S_{<j}^{loc}(t)\|_{L^\infty(Q_j)}
>
\theta\nu2^{2j}.
```

The needed theorem is:

```math
\boxed{
ParabolicRateStrainBurst.A:
\quad
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{ParabolicRateStrainBurst_\ell\}}
D_\ell(t)\,dt
\le
LegalCharge_N(W)+o_N(1).
}
\tag{RFC.11}
```

Interpretation: if the low/intermediate strain is strong enough to beat the
viscous response damping at shell `ell`, then the event itself must be charged
as an active strain burst.  Otherwise the aligned response part is absorbed.

This is not the old scalar reserve.  It is a parabolic-rate strain event:

```text
low strain comparable to nu * shell heat rate.
```

## 6. Atom 2: LowResponseStrainCharge.A

For `(RFC.8)`, the needed theorem is:

```math
\boxed{
LowResponseStrainCharge.A:
\quad
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{R_\ell>0\}}
\left[
\int\langle ZS_{<\ell}^{loc}u_\ell,u_\ell\rangle
\right]_+dt
\le
LegalResponseCharge_N(W)+o_N(1).
}
\tag{RFC.12}
```

This asks for the viscosity response of the low strain to be legal when tested
against the active high-shell square density.

A crude estimate gives:

```math
\left|
\int\langle ZS_{<j}^{loc}u_j,u_j\rangle
\right|
\le
\|ZS_{<j}^{loc}\|_{L^\infty}\|u_j\|_2^2.
```

That estimate is not enough unless `ZS_{<j}^{loc}` has a response Carleson or
finite-dimensional low-mode control on the same active windows.  Otherwise it
is just the old coefficient-multiplier problem with `z` replacing `u`.

## 7. Atom 3: OrthogonalResponseDecorrel.A

For `(RFC.9)`, the needed theorem is:

```math
\boxed{
OrthogonalResponseDecorrel.A:
\quad
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{R_\ell>0\}}
\left[
2\int\langle S_{<\ell}^{loc}u_\ell,z_\ell^\perp\rangle
\right]_+dt
\le
LegalResponseCharge_N(W)+o_N(1).
}
\tag{RFC.13}
```

The response damping controls the component of `z_\ell` parallel to `u_\ell`.
It does not control rotation of the active shell direction.  A positive
orthogonal response can rotate the shell toward an expanding strain
eigendirection while leaving the shell energy derivative positive but not
large enough to absorb the strain term by scalar damping alone.

Therefore the orthogonal term requires a genuine response-direction theorem:

```text
positive viscosity response cannot rotate active high shells into expanding
low-strain eigendirections without legal strain/pressure charge.
```

## 8. Conditional Closure of ResponseFluxDerivativeControl.A

Combining the proved aligned absorption with the three remaining atoms gives:

```math
\boxed{
\begin{aligned}
&ParabolicRateStrainBurst.A\\
&\quad + LowResponseStrainCharge.A\\
&\quad + OrthogonalResponseDecorrel.A\\
&\Longrightarrow ResponseFluxDerivativeControl.A.
\end{aligned}}
\tag{RFC.14}
```

### Proof

Decompose `partial_nu N_j` by `(RFC.3)` and `(RFC.5)`.  On the subparabolic
coefficient region `(RFC.6)`, the aligned high-response term is absorbed by
`SignedShellResponseIdentity.A` using `(RFC.7)`.  On the complementary region,
`ParabolicRateStrainBurst.A` charges the contribution.  The low response
strain term is charged by `LowResponseStrainCharge.A`.  The orthogonal high
response term is charged by `OrthogonalResponseDecorrel.A`.  Legal
commutator, cutoff, pressure, finite-band, and shell-width errors are absorbed
into `LegalResponseCharge_N(W)`.  Summing over `ell>k+4`, multiplying by
`2^k`, taking the finite-overlap supremum in `k>N`, and integrating over `W`
gives `(RFC.1)`.  `\square`

## 9. Direct Closure Verdict

`ResponseFluxDerivativeControl.A` is not discharged by this pass.

What is proved:

```text
SubparabolicAlignedResponseAbsorption.A
```

What remains:

```text
ParabolicRateStrainBurst.A
LowResponseStrainCharge.A
OrthogonalResponseDecorrel.A
```

This is still progress over the old source wall because the aligned
energy-increasing response component is no longer part of the obstruction.  It
is paid by positive viscosity itself whenever the low strain is below
parabolic rate.

The remaining obstruction is narrower:

```text
only parabolic-rate strain bursts, low response strain, and response-direction
rotation can feed a positive viscosity-height fold.
```

## 10. Next Proof Target

The strongest next atom is:

```math
\boxed{
ParabolicRateStrainBurst.A.
}
```

Reason: it attacks the only place where the aligned response absorption fails.
If parabolic-rate strain bursts are legal or impossible on the terminal
Field-face packet, then the new viscosity-homotopy route removes the largest
piece of the old native positive source wall.

## 11. Continuation Pointer

`ParabolicRateStrainBurst.A` was attacked in:

```text
mpp-parabolic-rate-strain-burst-direct-attempt-20260506.md
```

That pass proves:

```text
InverseParabolicBurst.A
ParabolicBurstForcesHeight.A
FirstHeightCreationDichotomy.A => BurstToHeightInheritanceOrCharge.A
```

So the parabolic-burst branch is no longer an independent primitive; it is
folded into `FirstHeightCreationDichotomy.A`.

The three-atom expansion was continued in:

```text
mpp-first-height-creation-dichotomy-expansion-20260506.md
mpp-low-response-strain-charge-proof-20260506.md
mpp-orthogonal-response-decorrelation-proof-20260506.md
```

Updated reduced response wall:

```text
HeightFluxControl.A / terminal rigidity-residue
ResponseHeightCreationControl.A
NonlinearResponseRotationNoGain.A
```

## 12. Full-Coefficient Drain Update

The response-specific walls were later discharged by the full-coefficient
response drain:

```text
mpp-full-coefficient-response-height-drain-20260506.md
mpp-finite-low-response-control-proof-20260506.md
mpp-response-tpni-to-orthogonal-decorrel-assembly-20260506.md
```

The updated assembly is:

```text
mpp-response-flux-control-after-full-drain-assembly-20260506.md
```

It proves:

```text
FirstHeightCreationDichotomy.A
=> ResponseFluxDerivativeControl.A.
```

So the live response-flux burden is no longer low-response strain or
orthogonal response rotation.  It is the native first-height/height-flux
dichotomy reached through the parabolic-rate strain burst branch.
