# MPP PRD Installed-Input Nonderivability Witness

Date: 2026-05-16

Status: route-relative negative certificate for
`IndependentPositiveRemainderDepletion.A`; not an absolute impossibility result
for Navier-Stokes.

Purpose: make precise what it means to prove that the current target does not
follow from installed inputs.  The target is not to prove
`PositiveRemainderDepletion.A` false.  The target is to prove that the installed
ledger calculus does not imply it.

## 0. Fixed input system

Let `Gamma_inst` be the currently installed source-wall inputs used in the May
16 PRD run:

```text
incompressibility / trace-free strain,
finite dyadic banding,
same-fluid terminal packet selection,
local energy and first-moment dissipation ledgers,
pressure, cutoff, commutator, and boundary legal-loss routing,
signed dyadic exchange before terminal positive selection,
LocalDonorBalance.A,
EntranceLeafDecay.A,
ASAC.A and post-ASAC one-sided bookkeeping,
L^1_t source residence only.
```

Exclude the endpoint suppliers:

```text
ScaleCriticalTreeCarleson.A,
LocalPositiveSourceCarleson.A,
TemporalNonAtomicSource.A,
ZenoSourceResidueRigidity.A,
PositiveStrainDecorrelation.A,
PositiveActiveCarlesonReserve.A,
TerminalSourceReverseHolder.A.
```

The target is the independent packet estimate

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\sum_{P\in\mathcal F_N}\int_{Q(P)}\mathcal D_P
+\operatorname{Drain}_{parent}(\mathcal F_N)
+\operatorname{Loss}_{legal}(\mathcal F_N)
+o_N(1),
\qquad 0<\theta<1.
```

## 1. Negative theorem shape

A route-relative nonderivability certificate is:

```math
\Gamma_{inst}\nvdash PositiveRemainderDepletion.A.
```

The useful proof method is a model witness: construct a normal-form selected
terminal packet configuration satisfying every clause in `Gamma_inst`, while
the PRD inequality fails.

This is weaker than an actual Navier-Stokes counterexample.  It is strong
enough for route custody: any claimed proof that spends only `Gamma_inst` must
use a hidden endpoint supplier, because `Gamma_inst` itself permits the witness
below.

## 2. The aligned positive-strain packet model

Fix one selected terminal same-fluid packet `P_N` at high shell `j=j_N`.  On its
heat cylinder `Q_N`, take the localized lower strain to be constant to leading
order:

```math
S_{<j}^{loc}
=
\lambda_N
\begin{pmatrix}
1&0&0\\
0&-1/2&0\\
0&0&-1/2
\end{pmatrix},
\qquad \operatorname{tr}S_{<j}^{loc}=0,
```

and take the high packet direction

```math
e_j=(1,0,0),
\qquad w_j=|w_j|e_j.
```

Then the selected positive carrier is

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
\lambda_N |w_j|^2.
```

Normalize the packet so that

```math
\int_{Q_N}\nu|\nabla w_j|^2=1,
\qquad
\lambda_N|w_j|^2\text{ integrates to }1+\kappa
```

for some fixed `\kappa>0`.  Equivalently, choose
`\lambda_N>(1+\kappa)\nu 2^{2j}` on the selected cylinder, with amplitudes
scaled so the local dissipation stays finite.  This is allowed by the installed
packet calculus: the low strain coefficient is not capped on the selected
terminal window by any `L^1_tL^\infty_x`, Carleson, angular-mixing, or
source-residence theorem.

A concrete heat-scale normalization makes the bookkeeping visible.  Let
`|Q_N|:=2^{-5j}` and take the active high amplitude `B_N` so that

```math
\nu 2^{2j}B_N^2|Q_N|=1,
\qquad
B_N^2=\nu^{-1}2^{3j}.
```

Take the lower strain from a shell `k=j-L_0` with fixed dyadic offset `L_0` and
velocity amplitude `A_N:=\lambda_N2^{-k}`.  For
`\lambda_N=(1+\kappa)\nu2^{2j}`, its spatial local energy on a packet ball is
the displayed model quantity

```math
A_N^2\,2^{-3j}
=
(1+\kappa)^2\nu^2 2^{2L_0}2^{-j},
```

so the installed finite-energy and local-energy ledgers do not forbid it.  The
positive source integral is then

```math
\lambda_NB_N^2|Q_N|=1+\kappa,
```

while the selected high-shell drain is normalized to `1`.

Set the legal losses and parent drains on this selected packet family to
`o_N(1)` in the model.  Then

```math
\sum_P\int_{Q(P)}[\mathcal R_P^{main}]_+
=1+\kappa,
\qquad
\sum_P\int_{Q(P)}\mathcal D_P=1,
\qquad
\operatorname{Drain}_{parent}+\operatorname{Loss}_{legal}=o_N(1).
```

For every `0<\theta<1`, the PRD conclusion fails for large `N`:

```math
1+\kappa
\nleq
\theta+o_N(1).
```

## 3. Compatibility with installed clauses

The witness is compatible with incompressibility because the lower strain is
trace-free.  Pressure recovery enforces the constraint and routes elliptic
terms into legal ledgers, but it does not change the sign of
`e_j\cdot S_{<j}^{loc}e_j` on the selected packet.

It is compatible with finite banding because only one lower strain shell and
one high active shell are needed.  Same-fluid transport preserves the packet
identity; it does not impose angular decorrelation.

It is compatible with energy and local energy because the selected packet has
finite dissipation.  Any signed energy balance can be restored outside the
selected positive window by a negative or unselected exchange partner.  The
installed estimates are signed before terminal localization and positive-part
extraction, so they do not control this selected positive measure.

It is compatible with signed dyadic cancellation for the same reason.  The
cancellation can occur before applying one-sided weights, cutoffs, same-fluid
selection, terminal active selection, and positive-part extraction.  After those
operations the negative partner is no longer available to pay
`[\mathcal R_P]_+`.

It is compatible with `LocalDonorBalance.A` and `EntranceLeafDecay.A` because
those theorems telescope finite and non-Zeno donor trees.  The witness sits on
the terminal positive source carrier that remains after those trees have been
paid.

It is compatible with the post-ASAC package because ASAC pays active alignment
and one-sided pair-weight pieces only up to the terminal Zeno/source-residue
branch.  Without an independent `ZenoSourceResidueRigidity.A` or temporal
anti-concentration theorem, that branch is still permitted.

## 4. What this proves

Within the installed ledger calculus:

```math
\boxed{
\Gamma_{inst}\nvdash IndependentPositiveRemainderDepletion.A.
}
```

Equivalently, the installed inputs do not force

```math
UniformLedgerAC.A
```

for the native source measure

```math
d\nu_N=
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+dxdt
```

relative to the installed ledger measure `d\rho_N`.  The aligned packet is the
normal-form reason why vanishing-ledger positive-source packets remain possible
in the route logic.

## 5. What would kill the witness

The witness is killed exactly by adding one genuinely new endpoint supplier:

```math
\boxed{PositiveStrainDecorrelation.A}
```

or

```math
\boxed{PositiveActiveCarlesonReserve.A}
```

or

```math
\boxed{TerminalSourceReverseHolder.A\Longrightarrow TemporalNonAtomicSource.A}
```

or the fresh material-eigenframe supplier

```math
\boxed{OneSidedNearBandMaterialStrainBV.A}
```

equivalently, in the pressure formulation,

```math
\boxed{TerminalPressureHessianNoSustain.A}
```

or an independently proved

```math
\boxed{ZenoSourceResidueRigidity.A}
```

that does not import `PositiveRemainderDepletion.A` or the square-source
Carleson route.

Each of these adds information not present in `Gamma_inst`: angular mixing on
source-weighted terminal packets, a scale-critical active reserve on the same
packets, super-`L^1` temporal source residence, one-sided near-band material
strain BV / pressure no-sustain, or a rigid ancient residue class plus
Liouville exclusion.

## 6. Verdict

The May 16 common-hinge failure can be strengthened from "the proof attempt did
not close" to the route-relative negative theorem:

```math
\boxed{
\text{Installed inputs permit an aligned selected terminal positive-strain
packet, so they do not imply independent PRD.}
}
```

This is the right level of "unprovability" for the current source-wall work.  A
stronger absolute claim would require a theorem that the packet model is
realizable by an actual Navier-Stokes solution sequence, or a formal
metamathematical independence result for a fully axiomatized PDE theory.  The
repo-facing conclusion is already decisive: another proof from the same
installed inputs is only repackaging unless it installs one of the endpoint
suppliers listed above.
