# Door 1 Same-Shadow Super-L1 Residence Attempt

Date: 2026-06-18

Status: direct attempt; not proved from current installed inputs.

Role: test the first child left by
`mpp-forward-gold-door1-terminal-source-cost-dichotomy-20260618.md`:

```math
\boxed{
\text{Door1SameShadowSuperL1Residence.A}.
}
\tag{SR.1}
```

This theorem implies `Door1TerminalSourceTimeAntiAtom.A` by the Holder
calculation in the cost dichotomy note.

## Desired statement

For the selected positive native source marginal carried by the Door 1 shadow
ledger, prove that there exist `p>1` and `C_R<infinity` such that on every
retained same-shadow terminal window `I_N=(T_N-\tau_N,T_N]`,

```math
\int_{I_N}g_N(s)^p\,ds\le C_R.
\tag{SR.2}
```

The same-shadow qualifier matters: the estimate must apply to the exact Door 1
shadow family after retained signed partners, legal exits, ASAC pair-weight
defects, and finite donor trees have been paid.  A generic source-density
estimate for a different family would not close the Door 1 terminal branch.

## Attempt 1: finite signed-current mass

The shadow ledger supplies finite total selected source mass:

```math
\int_{I_N}g_N(s)\,ds\le C_R.
\tag{SR.3}
```

It also supplies the lower mass branch when the terminal atom persists:

```math
\int_{I_N}g_N(s)\,ds\ge M_0>0.
\tag{SR.4}
```

But `(SR.3)` and `(SR.4)` are compatible with

```math
g_N(s)={M_0\over\tau_N}{\bf 1}_{(T_N-\tau_N,T_N]}(s),
\qquad
\tau_N\downarrow0.
\tag{SR.5}
```

For every `p>1`,

```math
\int_{I_N}g_N(s)^p\,ds
=
M_0^p\tau_N^{1-p}
\to\infty.
\tag{SR.6}
```

Thus finite signed-current mass does not prove same-shadow super-`L1`
residence.

## Attempt 2: stress-flux nonzero lower bound

The Door 1 branch has a nonzero stress-flux residue and finite vector selector.
Let

```math
c_{\mathcal L}:=\inf_{|e|=1}\max_{\ell\in\mathcal L}[\ell\cdot e]_+ .
```

The selector gives `c_{\mathcal L}>0`, so

```math
\max_{\ell\in\mathcal L}[\ell\cdot\Phi_0]_+
=
|\Phi_0|\max_{\ell\in\mathcal L}[\ell\cdot(\Phi_0/|\Phi_0|)]_+
\ge c_{\mathcal L}|\Phi_0|.
\tag{SR.7}
```

This gives a lower bound for total selected positive source once the native
carrier identification is paid.  It does not give a time-distribution estimate.
The model `(SR.5)` can carry the selected positive mass while making every
super-`L1_s` residence norm diverge.

So the nonzero flux sign sees the source; it does not spread the source in
time.

## Attempt 3: local energy and pressure currencies

Local energy, pressure recovery, Leray projection, and same-fluid ancestry give
spatial compactness, stress structure, and legal carrier fidelity.  They act at
each time slice or in finite `L^1_s` source currencies.

They do not imply an estimate of the form `(SR.2)` for the selected positive
native source marginal.  The terminal layer `(SR.5)` remains admissible under
the installed `L^1_s` bounds.

## Attempt 4: ASAC and finite donor depletion

ASAC pays retained pair-weight defects, and finite donor trees are paid by
`LocalDonorBalance.A + EntranceLeafDecay.A`.  Those payments remove finite
signed-current mismatch.  They do not create a temporal density improvement on
the remaining terminal Zeno refill branch.

After those payments, the same-shadow family is cleaner, but the time marginal
can still be `(SR.5)`.

## Result

`Door1SameShadowSuperL1Residence.A` is not proved from current installed
inputs.

The direct attempt identifies the exact missing production mechanisms:

```math
\boxed{
\text{Door1PositiveActiveCarlesonReserve.A}
}
\tag{SR.8}
```

or

```math
\boxed{
\text{Door1SourceDensityReverseHolder.A}
}
\tag{SR.9}
```

or a time-priced ledger:

```math
\boxed{
\text{Door1TerminalTimePriceLedger.A}.
}
\tag{SR.10}
```

`Door1TerminalTimePriceLedger.A` would say that carrying mass `M_0` through a
window of length `\tau_N` spends a non-summable price as `\tau_N\downarrow0`
unless the branch exits through an installed legal or rigidity channel.

Absent one of `(SR.8)`--`(SR.10)`, the remaining branch is the rigidity/artifact
side from the cost dichotomy:

```math
\boxed{
\text{StressFluxZenoRefillRigidity.A}
\quad\text{or}\quad
\text{Door1InfiniteCostEndpointArtifact.A}.
}
\tag{SR.11}
```

## Verdict

The Door 1 source-time side is now sharpened to:

```math
\boxed{
\text{Door1PositiveActiveCarlesonReserve.A}
\quad\text{or}\quad
\text{Door1SourceDensityReverseHolder.A}
\quad\text{or}\quad
\text{Door1TerminalTimePriceLedger.A}
}
\tag{SR.12}
```

or the non-density branch:

```math
\boxed{
\text{StressFluxZenoRefillRigidity.A}
\quad\text{or}\quad
\text{Door1InfiniteCostEndpointArtifact.A}.
}
\tag{SR.13}
```

The important negative result is that the same-shadow bookkeeping itself does
not improve finite `L^1_s` source mass to super-`L1_s` residence.
