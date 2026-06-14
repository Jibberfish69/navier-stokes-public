# MPP SourceWeightedTerminalAngularDepletion.A Independent Theorem Pass

Date: 2026-05-17

Status: direct pass on the angular-mixing closure door; no unconditional
closure, but the next independent theorem is sharpened to a signed
no-free-sink source-current statement.

Purpose: continue from
`mpp-prd-installed-input-nonderivability-witness-20260516.md`.  The aligned
terminal packet witness proves that installed inputs do not imply independent
PRD.  This note tests the next candidate theorem that could kill that
witness without importing `ScaleCriticalTreeCarleson.A` or
`ZenoSourceResidueRigidity.A`.

## 0. Branch choice

The active-reserve door is not the best first attack.  The May 17 fan-out
already identifies

```math
PositiveActiveCarlesonReserve.A
```

with the active-square / scale-critical tree-Carleson wall at current
resolution.

The reverse-Holder temporal door is also not the best first attack.  The
non-Carleson temporal attempt shows that

```math
TerminalSourceReverseHolder.A
```

would close the Zeno branch, but installed source compactness gives only
`L^1_t` mass.  Super-`L^1_t` residence either returns to square-source control
or needs a new rigid residue class.

The remaining genuinely different door is angular mixing, in the source-weighted
form:

```math
\boxed{
SourceWeightedTerminalAngularDepletion.A.
}
```

This is the theorem that kills the aligned packet by proving that a retained
terminal high direction cannot keep charging the expanding lower-strain
eigenframe without spending a legal source-current, donor, or boundary ledger.

## 1. Target

For every bounded-overlap retained same-fluid terminal packet family
`\mathcal F_N`, prove

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\chi_P |w_{j_P}|^2
\left[
e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}
\right]_+
\le
\theta
\sum_{P\in\mathcal F_N}\int_{Q(P)}\mathcal D_P
+\mathrm{Legal}_N(\mathcal F_N)
+o_N(1),
\quad 0<\theta<1.
}
\tag{SWAD.1}
```

By `mpp-prd-completion-attempt-20260517.md`,

```math
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A.
\tag{SWAD.2}
```

So `(SWAD.1)` is enough to close the common hinge noncircularly.

## 2. Material eigenframe split

Write the source coefficient along a terminal packet as

```math
\sigma_P(t)
=
n_P(t)\cdot S_{<j_P}^{loc}(X_P(t),t)n_P(t),
\qquad
\tau_P:=(\nu2^{2j_P})^{-1}.
\tag{SWAD.3}
```

The material-eigenframe covering lemma gives:

```math
\int_{I_P}E_P(t)[\sigma_P(t)]_+\,dt
\le
\eta\tau_P^{-1}\int_{I_P}E_P(t)\,dt
+C E_P^\#\tau_P
\operatorname{Var}_{I_P}
\left(\sigma_P^{>\eta\tau_P^{-1}}\right)
+C\mathsf{Residence}_{P,\eta}.
\tag{SWAD.4}
```

The small-threshold term is drain-absorbable by choosing `\eta` below the
depletion margin.  The residence term is exactly the Zeno/source-residence
branch:

```math
\mathsf{Residence}_{P,\eta}
\leadsto
TerminalSourceResidenceEvacuation.A
\quad\text{or}\quad
TerminalSourceReverseHolder.A.
\tag{SWAD.5}
```

Thus the independent angular route must pay the variation term in `(SWAD.4)`.

## 3. Far-low turnover is legal

Split

```math
S_{<j}^{loc}=S^{far}_{j,L}+S^{near}_{j,L},
\qquad
S^{far}_{j,L}=\sum_{m\le j-L}S_m^{loc},
\quad
S^{near}_{j,L}=\sum_{j-L<m<j}S_m^{loc}.
\tag{SWAD.6}
```

On a high heat window, the far-low coefficient cannot oscillate at the high
packet rate without a parabolic penalty:

```math
\tau_P\int_{I_P}|D_tS^{far}_{j_P,L}|\,dt
\le C_{\mathrm{SWAD}}
2^{-2L}\int_{I_P}\|S^{far}_{j_P,L}\|_\infty\,dt
+\mathrm{Legal}_{cut/proj}.
\tag{SWAD.7}
```

For large fixed `L`, this part is absorbable.  The aligned witness does not live
in the far-low turnover channel; it lives in the near-band source-current
channel.

## 4. Near-band turnover after ASAC

The near-band variation has no parabolic gain.  Expanding the material
derivative gives

```math
D_tS^{near}_{j,L}
=
\nu\Delta S^{near}_{j,L}
-P^{loc}_{j,L}(S^2+\Omega^2+\nabla^2p)
+\mathrm{Comm}_{j,L}.
\tag{SWAD.8}
```

The heat and commutator pieces are legal after the projected cutoff and
boundary ledgers.  The frame-variation piece is paid by the installed ASAC
assembly when it is truly active alignment.  What survives is the signed
near-band material source-current:

```math
\mathcal S_{near}
=
\sum_{P\in\mathcal F_N}
\omega_P\tau_P
\int_{I_P}
Source^{loc}_P(t)b^{near}_P(t)\,dt.
\tag{SWAD.9}
```

This is the same term isolated in
`mpp-nearband-material-source-after-asac-reduction-20260506.md`.  That note
proves the exact conditional reduction:

```math
\boxed{
\begin{aligned}
&ASAC.A\\
&\quad+NearBandBoundaryPack.A\\
&\quad+ProjectedCutoffLedger.A\\
&\quad+TerminalWeightedNoFreeSink.A\\
&\Longrightarrow OneSidedNearBandMaterialStrainBV.A.
\end{aligned}
}
\tag{SWAD.10}
```

Therefore the angular route is not blocked by generic eigenframe language.  It
is blocked by one precise signed source-current theorem.

## 5. The new independent theorem

The theorem that would make angular mixing independent is:

```math
\boxed{
TerminalWeightedNoFreeSink.A_{\mathrm{ind}}
}
\tag{SWAD.11}
```

Meaning: for every selected terminal positive near-band source-current edge,
one of the following must happen without using `ScaleCriticalTreeCarleson.A` or
`ZenoSourceResidueRigidity.A` as an input:

```text
the signed partner remains in the same usable terminal ledger;
the partner exits through boundary / cutoff / off-family legal loss;
the partner is paid by a donor-depletion reserve;
the terminal refill branch is killed by a genuinely independent temporal
anti-atom or rigid-class Liouville theorem.
```

In formula form, this is the one-sided source-current estimate

```math
\boxed{
|\mathcal S_{near}|
\le
\mathrm{Legal}^{signed}_N(\mathcal F_N)+o_N(1)
}
\tag{SWAD.12}
```

for the selected terminal weighted source-current `(SWAD.9)`.

If `(SWAD.12)` is installed, then `(SWAD.10)` gives
`OneSidedNearBandMaterialStrainBV.A`; the material eigenframe split gives
`SourceWeightedTerminalAngularDepletion.A` modulo the separate residence
branch; and `(SWAD.2)` gives `PositiveRemainderDepletion.A`.

## 6. Direct test of `TerminalWeightedNoFreeSink.A_ind`

The unweighted dyadic source graph has signed cancellation.  The terminal graph
after the live operations does not:

```text
one-sided weights,
localized cutoffs,
near-band projection,
same-fluid packet selection,
terminal positive selection.
```

After those operations, a positive selected edge has a signed partner, but that
partner may be:

```text
retained and usable,
off-family legal,
a donor sink,
or a terminal Zeno refill.
```

The first two cases are legal.  The last two are exactly the hard cases.  Donor
sink payment requires a scale-normalized donor depletion theorem.  Terminal
Zeno refill requires temporal anti-concentration or a produced rigid residue
class.

So the direct signed-graph proof currently stops at:

```math
\boxed{
TerminalWeightedNoFreeSink.A_{\mathrm{ind}}
\Longleftarrow
TwoTowerDonorDepletion.A_{\mathrm{ind}}
\quad\text{and}\quad
TerminalSourceReverseHolder.A_{\mathrm{ind}}
\ \text{or rigid-class Liouville.}
}
\tag{SWAD.13}
```

This is not a closure.  It is the honest next theorem split under the angular
mixing door.

The direct independent no-free-sink pass is recorded in
`mpp-terminal-weighted-no-free-sink-independent-attempt-20260517.md`.  It pays
retained partners, legal exits, and finite donor trees, leaving only terminal
Zeno refill as the hard source-current sink.

## 7. Verdict

The angular-mixing branch is the right branch to keep working, but the theorem
is now sharper than the phrase "angular mixing."

The exact new independent theorem is:

```math
\boxed{
TerminalWeightedNoFreeSink.A_{\mathrm{ind}}
}
```

or equivalently a selected one-sided near-band source-current theorem at
terminal weights.  It would close the PRD hinge through:

```math
TerminalWeightedNoFreeSink.A_{\mathrm{ind}}
\Longrightarrow
OneSidedNearBandMaterialStrainBV.A
\Longrightarrow
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A.
```

The direct attempt does not yet prove it.  It localizes the two hard subcases:
donor sink payment and terminal Zeno refill.  Active reserve is the donor sink
version; reverse Holder source control is the terminal Zeno version.  The
common hinge therefore stays open, but the next theorem-facing target is no
longer generic PRD: it is the signed no-free-sink theorem on selected near-band
source-current edges.
