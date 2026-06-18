# LiftedSkewCommutator.A attempt

## Status

Failed as an unconditional theorem on the current lifted source wall surface.

## Target

Show that the true commutatorized lifted remainder admits an antisymmetric source-current edge representation modulo legal commutator losses:

```math
\mathcal R^{lift}_{j,k,\ell}
=
\sum_{P'}J(P'\to P)+L^{lift}_P,
\qquad
J(P\to P')=-J(P'\to P),
```

with a summable legal ledger.

## Live lifted object

The true lifted remainder is

```math
\mathcal R_{j,k,\ell}^{lift}(t)
=
2^{2j}\left\langle
[\Delta_j,a_k(t)\cdot\nabla]\Delta_\ell u(t),
\Delta_j u(t)
\right\rangle,
```

with

```math
N+M<k<j-4,
\qquad
|\ell-j|\le C_{LP}.
```

The transport cancellation term vanishes by incompressibility before the commutator replacement.  The remaining commutator has principal paraproduct form

```math
2^{2j}\langle \mathcal C_j(S_k,u_j),u_j\rangle,
\qquad
S_k={1\over2}(\nabla a_k+\nabla a_k^T).
```

Wave-packet expansion gives the leading carrier

```math
2^{2j}\sum_P
\langle S_k(x_P,t)e_P,e_P\rangle |c_P(t)|^2.
```

## Obstruction

This leading carrier is a real strain-production term.  Packets aligned with expanding eigen-directions of `S_k` contribute positive source.  Packets aligned with contracting directions contribute negative source.  The commutatorized object therefore carries variable-sign local production rather than a pure edge divergence with an exact signed partner in the same terminal ledger.

The bare dyadic skew exchange lives before the commutator replacement.  After the lift, the leading term is a packet-local strain alignment functional.  Algebraic incompressibility gives trace zero for `S_k`; trace zero still permits positive eigendirection stretching on selected packets.

## Failed proof route

At each packet point one may write the exact spectral split

```math
S_k=\sum_m\lambda_m e_m\otimes e_m,
\qquad
\sum_m\lambda_m=0,
```

and decompose the leading packet contribution into

```math
\sum_m(\lambda_m)_+|\langle u_j,e_m\rangle|^2
-
\sum_m(\lambda_m)_-|\langle u_j,e_m\rangle|^2.
```

The obstruction is not the algebraic split; it is terminal selection.  The
negative branch need not lie in the selected terminal same-fluid ledger.
Bringing it back requires `TerminalSignedSaturation.A`; charging it by
magnitude requires `ScaleCriticalTreeCarleson.A`.

Thus the desired antisymmetric edge representation would need one of:

```math
ActiveStrainAlignmentCost.A,
\qquad
TerminalSignedSaturation.A,
\qquad
ScaleCriticalTreeCarleson.A.
```

Using any of these as an input is circular for the current source-wall branch.

## Conditional replacement

A valid conditional form is

```math
ActiveStrainAlignmentCost.A
+TerminalSignedSaturation.A
\Longrightarrow LiftedSkewCommutator.A.
```

A weaker route is

```math
TangentWeightRigidity.A
+TPNI.A
+SourceTether.A
\Longrightarrow ActiveStrainAlignmentCost.A
\Longrightarrow LiftedSkewCommutator.A.
```

## Verdict

```math
\boxed{LiftedSkewCommutator.A\text{ remains open.}}
```

The live lifted commutator contains the same positive active strain-alignment carrier that defines the source wall.  The first-gate route therefore still needs an independent active-strain or signed-saturation theorem.
