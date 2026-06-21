# MPP ParaproductNativeSourceCapture.A Proof

Date: 2026-05-22

Status: theorem proof for the paraproduct native-source-capture subburden inside
`CriticalL3ConcentrationToNativeSourceResidue.A`.

## Statement

On the retained same-ledger `L^3` translator branch,

```math
\boxed{
ParaproductNativeSourceCapture.A
}
```

holds in the CM contrapositive sense:

```math
\text{same-ledger nonlinear Duhamel source work}
\Longrightarrow
\nu_N^{src}(E_N)\ge c
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A
\vee
\text{paid Pack/Part/legal exit.}
```

Here

```math
\nu_N^{src}(E_N)
=
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\langle S^{loc}_{<j_P}w_P,w_P\rangle
\right]_+\,dxdt
```

is the repo-native positive source measure on the same witness ledger.

## Inputs

- `L3DuhamelResponseWorkLocalization.A`, isolated by
  `mpp-duhamel-inverse-native-source-localization-proof-split-20260519.md`.
- `TerminalParaproductSignLocalization.A`, proved in
  `mpp-terminal-paraproduct-sign-localization-proof-20260522.md`.
- `L3AdjointNativeOrthogonalNoCarry.A`, proved in
  `mpp-l3-adjoint-native-orthogonal-no-carry-proof-20260522.md`.
- `TerminalLerayCommutatorLegal_L3.A`, proved in
  `mpp-terminal-leray-commutator-legal-l3-proof-20260522.md`.
- `L3TerminalSignedPartnerNoFreeDefect.A`, proved in
  `mpp-l3-terminal-signed-partner-no-free-defect-proof-20260522.md`.
- The May 21 CM correction that selected
  `ScaleCriticalTreeCarleson.A` failure is Pack-side/source-wall exit and
  zero-radius terminal Zeno residue lands Part-side when the same original-NS
  original participation record remains and true `not Pack_Q` only when that
  record is absent, not retained Field/jump.

## Proof

Start from the same-ledger nonlinear source work produced by the Duhamel
response localization:

```math
-\int (u\otimes u):\nabla P\Phi \ge c_0 .
```

Apply the selected Bony/Leray expansion on the terminal packet family
`\mathcal F_N`.

The off-family, cutoff, collar, pressure, and projection terms are exactly the
legal Pack/Part/localization ledgers. If any of them carries a fixed part of
the lower bound without payment, the branch has paid Pack/Part/legal exit.

The high-high and donor-square refill terms are the selected scale-critical
source-wall channel. If they carry the lower bound, the branch has

```math
\neg_{sel}ScaleCriticalTreeCarleson.A,
```

which is Pack-side CM exit by
`mpp-scalecritical-tree-carleson-pack-side-cm-exit-20260521.md`.

After those alternatives are removed, the remaining retained part is the
terminal Leray coefficient package. The installed pieces give:

```math
L3AdjointNativeOrthogonalNoCarry.A
\Longrightarrow
TerminalAdjointResponseNativeEdgeAnchoring_{L3}.A,
```

so the adjoint response covector is pinned to the same retained native edge;

```math
TerminalLerayCommutatorLegal_{L3}.A,
```

so localized Leray/cutoff commutators are paid; and

```math
L3TerminalSignedPartnerNoFreeDefect.A
\Longrightarrow
TerminalLeraySaturation_{L3}.A,
```

so the signed partner left after one-sided terminal selection is either the
same retained edge after nonnegative packet-amplitude recentering, selected
source-wall failure, or paid Pack/Part/legal exit.

Thus the retained source work reduces to the native high-low square

```math
G_N
=
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\langle S^{loc}_{<j_P}w_P^\sharp,w_P^\sharp\rangle\,dxdt
\ge c_1,
```

where `w_P^\sharp` is the same selected native edge with the stopped
nonnegative scalar partner absorbed into its packet amplitude.

The positive-part sign lemma now applies directly:

```math
\nu_N^{src}(E_N)
=
\sum_P\int_{Q(P)}
\left[
\langle S^{loc}_{<j_P}w_P^\sharp,w_P^\sharp\rangle
\right]_+
\,dxdt
\ge
G_N
\ge c_1.
```

This is the desired native paraproduct source capture.

## Consequence

The exact hard subburden

```math
ParaproductNativeSourceCapture.A
```

is proved. Therefore the nonlinear half of the public `L^3` native-extraction
split has no remaining terminal Leray/paraproduct gap.

This closes only the paraproduct-capture subburden. It does not promote public
critical regularity itself, does not reopen `B_ASAC^closed`, and does not turn
terminal zero-radius Zeno into a retained Field/jump target.
