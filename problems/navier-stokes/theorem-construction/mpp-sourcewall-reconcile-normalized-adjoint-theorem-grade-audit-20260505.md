# MPP SourceWall.Reconcile.A: Normalized-Adjoint Theorem-Grade Audit

## Status

Superseded audit gate.  Resolved by
`mpp-sourcewall-reconcile-a-resolution-and-root-reopen-20260505.md`.

This note corrects the overstrong reading

```text
CM bridge installed => only release/review bureaucracy remains.
```

That reading is false.  The installed CM bridge closes the witness logic,
but the Field/readout side still depends on accepting the normalized-adjoint
source-drain route as theorem-grade.

The reconciliation target was:

```math
\boxed{
SourceWall.Reconcile.A
}
```

meaning:

```math
\text{either accept }
LemmaB.SourceDrain
\Rightarrow SOURCE.NO\text{-}PULSE.A
\text{ as theorem-grade,}
```

or reopen the preserved source-wall inventory:

```math
\boxed{
LocalPositiveSourceCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

## What Is Already Installed

The CM bridge is installed separately:

```math
\left[\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}\right]
\Longrightarrow
Smooth(Q),
```

and hence

```math
NonSmooth(Q)
\Longrightarrow
\exists N\ \forall r>0:
\left(
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}
\right).
```

This is not the source wall.  It only says where a non-smooth occurrence must
exit the CM witness class.

## Selected Source-Drain Candidate

The selected candidate proof is the normalized-adjoint chain:

```math
CoeffStop.A
\Longrightarrow
WeightedAdjBessel.A
\Longrightarrow
WeightedAdjRes.A
\Longrightarrow
GainStop.A
\Longrightarrow
ParentKernel.A
\Longrightarrow
FirstPulseKill.A
\Longrightarrow
LemmaB.SourceDrain.
```

The downstream supplier consequence is:

```math
LemmaB.SourceDrain
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
```

This candidate is recorded in:

- `mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`
- `mpp-source-drain-definition-alignment-and-discharge-20260504.md`
- `mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md`
- `mpp-four-layer-analytic-verification-certificates-20260504.md`

## Theorem-Grade Acceptance Criteria

To accept the normalized-adjoint discharge as theorem-grade, the following five
certificates must be read as proved from installed Navier-Stokes inputs, not as
formal names or proof sketches.

### 1. Exact Normalized Adjoint Identity

The identity

```math
\langle w_j(t_+),\chi_T(t_+)\rangle
=
\langle w_j(t),\chi_T(t)\rangle
+
\int_t^{t_+}g_T(s)^{-1}\langle R,\psi_T\rangle\,ds
+
E_\Gamma
```

must have `E_\Gamma` fully absorbed by the same coefficient/gain budget that
defines `g_T`.  No uncharged positive strain term may remain.

### 2. Uniform Weighted Packet Bessel Bound

The normalized packets

```math
\chi_T(t)=g_T(t)^{-1}\psi_T(t)
```

must satisfy

```math
\left\|\sum_Tc_T\chi_T\right\|_{L_t^2H_x^1}^2
\le
C\sum_T|c_T|^2
```

with constants independent of terminal scale, tile depth, strain gain, and the
number of stopped descendants.  Coefficient stopping must not hide unbounded
flow distortion inside the constants.

### 3. Residual Pairing Bound

The localized residual split

```math
R=R^{comm}+R^{press}+R^{cut}+R^{off}
```

must be proved in the exact final packet equation and must give

```math
\|R\|_{L_t^2H^{-1}}^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

In particular:

- the pressure term must be tied to the localized Leray / pressure-normalized
  object used by the packet equation;
- cutoff losses must be paid at heat scale;
- off-packet terms must really be `o_N(1)` on the terminal tail;
- the estimate must be for the same source residue consumed by
  `SOURCE.NO-PULSE.A`.

### 4. Gain-Stop And Parent-Kernel Contraction

High-gain edges must be stopped and converted to residual charge or earlier
source-pulse ancestry.  Surviving quiet inherited edges must satisfy a genuine
contractive parent kernel:

```math
\sum_{T:P\prec T}\kappa(P,T)S(P)
\le
(1-\delta)S(P).
```

The contraction must occur after gain normalization, not by assuming a uniform
bound on raw strain amplification.

### 5. First-Pulse Compactness And No Diffuse Ancestry Leakage

The first-pulse selection must be measurable, local, and tied to the positive
pre-Cauchy source residue:

```math
d\nu_n
=
r_n^{-1}[F^{src}_{>1/r_n}]_+\,dx\,dt,
\qquad
\nu_n\rightharpoonup\nu_*.
```

The no-earlier-pulse conclusion

```math
\nu_*(\text{threshold source-pulse class in }s<-a)=0
```

must rule out both concentrated and diffuse earlier ancestry.  If diffuse
source-residue ancestry can reappear in the limit, the proof returns to

```math
LocalPositiveSourceCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

## Verdict Of This Audit

The 20260504 normalized-adjoint notes provide a coherent candidate proof and
the current direct-live surfaces may select it.  But the preserved matrix and
source-wall notes still record the alternate source-wall inventory because the
acceptance criteria above have not been independently reconciled against the
older source-wall failures.

## Direct Carleson Branch Update: Chunk 1

The direct `LocalPositiveSourceCarleson.A` branch has now been tested through
the diffuse-parent layer.  The theorem

```math
ParentSquareEmbed.A
```

is installed in
`mpp-parent-square-embed-and-scalecritical-reserve-reduction-20260505.md`.
It proves that the legal parent cloud operator

```math
T a
=
\left(
\sum_{P^-\prec P}
\langle \chi_P,\mathcal M\phi_{P^-}\rangle a_{P^-}
\right)_P
```

is bounded on `\ell^2`, because `T=C\mathcal M B` with `B` and `C` the parent
synthesis and child analysis Bessel maps and `\mathcal M` a bounded localized
source multiplier.

Consequently the positive source estimate reduces to

```math
\theta\sum_P D_P
+
C_\theta\sum_{P^-}|A_{P^-}|^2
+
o_N(1)
+
\mathrm{legal\ losses}.
```

For the actual scale-normalized donor factor,

```math
\sum_{P^-}|A_{P^-}|^2
:=
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2.
```

Thus the direct Carleson branch has not closed
`LocalPositiveSourceCarleson.A`; it has reduced it exactly to

```math
\boxed{ScaleCriticalTreeCarleson.A.}
```

Raw energy / first-moment dissipation only gives

```math
\int\sum_{k>N}D_k(t)\,dt\to0,
```

which does not imply the scale-critical square reserve.

The follow-up Bellman attempt is recorded in
`mpp-scalecritical-tree-carleson-bellman-reserve-attempt-20260505.md`.  It tests
the proposed tree reserve directly.  The exact break is that any Bellman
functional with endpoint values controlled by installed energy/tail ledgers can
pay only first-moment or already-installed cumulative-tail quantities; a
functional whose derivative pays

```math
\sum_{k>N}2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
```

already contains the missing active-window Carleson reserve in its endpoint
size.  Thus the tree-Bellman route is circular unless an independent
`ScaleCriticalTreeCarleson.A`, active-shell amplitude gain, normalized
square-source theorem, branch-reserve theorem, or Zeno rigidity theorem is
installed.

Before the resolution note, the honest theorem state was:

```math
\boxed{
CM\text{ witness bridge installed;}
\quad
SourceWall.Reconcile.A\text{ still live.}
}
```

The next mathematical target is not another CM bridge.  It is:

```math
\boxed{
SourceDrain.TheoremGrade.A:
\text{ prove the five acceptance certificates above from installed inputs.}
}
```

On the direct `LocalPositiveSourceCarleson.A` alternative, Chunk 1 narrows the
next target to:

```math
\boxed{
ScaleCriticalTreeCarleson.A.
}
```

If `SourceDrain.TheoremGrade.A` fails, the root source-wall alternatives reopen:

```math
LocalPositiveSourceCarleson.A
```

or

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A,
```

with supporting targets:

```math
TerminalSourceCoherence.A,\quad
ReverseHolderParentConcentration.A,\quad
ScaleCriticalTreeCarleson.A,\quad
TwoTowerDonorDepletion.A,\quad
RefillTreeWellFounded.A,\quad
FirstPulseKill.A,\quad
LemmaB.SourceDrain.
```

## Release Boundary

Release/review/export refresh is downstream of this reconciliation.  It is not
honest to describe the lane as "only bureaucratic" until
`SourceDrain.TheoremGrade.A` is accepted or one reopened source-wall route is
proved.

## Resolution Update

The follow-up resolution note demotes the normalized-adjoint package to
conditional source-drain support.  The failed unconditional certificate is
`FirstPulseKill.A` as a no-diffuse-ancestry theorem.  The root source wall is
therefore reopened at:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```
