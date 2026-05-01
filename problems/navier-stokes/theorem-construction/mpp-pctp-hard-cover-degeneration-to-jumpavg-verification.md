# PCTP.hard Cover-Degeneration To Jump_avg Verification

## Status

Discharged as a classification theorem for the averaged terminal-cover branch.

The existing surface `mpp-pctp-hard-cover-degeneration-as-jump-avg.md` already proves the required classification. This note records the route-facing verification.

## Definitions

The material bad set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

A terminal same-fluid tail has cover degeneration if

```math
\inf_{\text{finite terminal SCF-good covers}}\min_i R_i=0.
```

The averaged jump face is the loss of a positive SCF-good coherence scale on the terminal tail:

```math
Jump_{avg}(\mathcal T)
\Longleftrightarrow
\mathcal T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
```

with the strict-margin terminal variant included: a sequence of good radii tending to zero at the terminal boundary is the same averaged coherence failure.

## Theorem

For a terminal same-fluid approach tail,

```math
\text{cover-degeneration}\Longrightarrow Jump_{avg}.
```

No separate endpoint face `CoverCollapse_avg` is needed.

## Proof

If the tail lies in the strict SCF-good region with a positive margin, then the SCF-good cylinders form an open cover. On every compact tail piece, compactness selects finitely many cylinders. Since this finite list has positive radii, the minimum radius is positive.

Therefore failure of a uniform positive terminal cover has only two forms:

1. an actual material point lies in `\mathcal B_{\varepsilon_m}^{\Phi}`;
2. all preterminal points may be good, yet the available good radius degenerates to zero along a sequence approaching the terminal boundary.

The first case is `Jump_avg` by the definition of the bad material set. The second case is the strict-margin form of the same averaged coherence failure: no positive terminal SCF-good scale survives on the same-fluid tail. This is exactly the averaged field/jump face, not a new primitive endpoint family.

Thus cover degeneration implies `Jump_avg`.

## Noncircularity

This classification uses only finite-energy local integrability, the SCF-good definition, compactness on strict-good compact pieces, and the grammar lemma `CAVG.J`. It does not use `READ.COVER`, `Field.Read`, `DTC.Read`, old pointwise `DTC.A`, old pointwise `Field`, old `CFI.A`, or `End_NS`.

The removal of `Jump_avg` remains downstream:

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

## Consequence

The terminal-cover branch is now:

```math
\text{strict averaged-good branch}\quad\text{or}\quad Jump_{avg}.
```

On the strict branch, the remaining analytic obligation is the common AACT scheduler on the finite SCF-good cover.