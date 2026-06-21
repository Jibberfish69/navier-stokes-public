# MPP Vanishing-Ledger Bad Packet Field-Exit Reduction

## Status

Bounded follow-up to
`mpp-native-source-radon-nikodym-decision-criterion-20260516.md`.

This note does not prove `UniformLedgerAC.A`. It proves the CM-facing use of a
failed `UniformLedgerAC.A`: a vanishing-ledger positive-source packet is not a
new fourth face. Once legal, readout, non-selected, Pack, and Part alternatives
are removed, it is a retained Field/source-residue exit.

## Bad Packet

Failure of `UniformLedgerAC.A` gives selected terminal packet sets `E_N` with

```math
\rho_N(E_N)\to0,
\qquad
\nu_N(E_N)\ge c>0,
```

where

```math
d\nu_N
=
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+dxdt
```

and `rho_N` is the installed nonnegative ledger measure on the same selected
same-fluid terminal packet family.

Call such an `E_N` a vanishing-ledger positive-source packet.

## Lemma `VLBP.FaceSort.A`

For a CM-selected source-wall branch, a vanishing-ledger positive-source packet
forces

```math
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
```

Equivalently, on the retained branch:

```math
Pack_Q+Part_{N,Q}
+\text{vanishing-ledger positive-source packet}
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
```

## Proof

First remove the alternatives that are not part of the retained CM branch:
declared legal losses, endpoint/readout escapes, and non-selected source-wall
branches. If the remaining positive source packet cannot be kept on one bounded
same-fluid carrier, the bounded carrier row has failed; this is `not Pack_Q`.

If the packet can be kept on one carrier but the positive source is not a
source/readout term of the same differentiated pressure-viscosity Navier-Stokes
tower, the participation row has failed; this is `not Part_{N,Q}`.

Now assume `Pack_Q` and `Part_{N,Q}` survive. Then the bad packet is an internal
positive source carrier on one retained same-fluid terminal family. Since
`rho_N(E_N)->0` while `nu_N(E_N)>=c`, the packet is not paid by legal losses,
ordinary route ledgers, or non-selected exits. Passing to the terminal
subsequence gives a nonzero native source residue singular to the installed
ledger.

There are two retained residue cases.

1. If the residue persists along an infinite retained source-reserve tree, the
installed theorem `ClassInternalSourceTreeExclusion.A` applies. Under `Pack_Q`
and `Part_{N,Q}`, the local Duhamel response of the positive source reserve
forces a retained neighboring-field defect of size at least a fixed `c_0>0` at
arbitrarily small scales. This contradicts the tail vanishing required by
`Field_{N,r,Q}`.

2. If the residue is terminal Zeno/atomic, the installed theorem
`RetainedZenoAtomFieldExit.A` applies. Under retained Pack and Part, a nonzero
zero-heat-time source residue is an internal source/readout term on the same
carrier, so it is a Field/source-residue exit rather than a new face.

Thus the retained bad packet forces `not Field_{N,r,Q}`. `\square`

## Consequence

The bad branch of the Radon-Nikodym decision has a CM landing:

```math
\neg UniformLedgerAC.A
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}
```

after the branch is selected and legal/readout/non-selected alternatives are
removed.

This proves only the contrapositive sorting use. It does not prove the positive
supplier theorem

```math
OriginalSmoothData=>UniformLedgerAC.A.
```

## Remaining Burden

The source-wall supplier route is still open at exactly:

```math
\boxed{
OriginalSmoothData=>UniformLedgerAC.A
}
```

equivalently

```math
\boxed{
OriginalSmoothData=>NativeTrilinearDefectDomination.A.
}
```

The reason is simple: the repo can now say what a failed domination theorem
would mean inside the CM witnesses, but it still cannot rule out
vanishing-ledger positive-source packets directly from original smooth data.
