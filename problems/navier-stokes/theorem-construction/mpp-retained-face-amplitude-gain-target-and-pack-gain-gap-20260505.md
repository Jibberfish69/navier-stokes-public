# MPP RetainedFaceAmplitudeGain.A Target And Pack-Gain Gap

## Status

This note tests the proposed CM witness solution of the terminal amplitude
target:

```math
\|U_P\|_2
\le
\varepsilon_N\nu r_P^{1/2},
\qquad
\varepsilon_N\to0.
```

The retained-face idea is correct in shape: amplitude gain is not proved as a
raw finite-energy theorem. Its proof is relative to retained CM Part/Fields.

The proof is theorem-grade conditional on one extra retained-face input:

```math
\boxed{
PackGainLedger.A:
\sup_{P\in\mathcal F_N}
\exp\left(
\int_{I_P}\lambda_{\max}^+
S_{\le j_P-C}(X_P(s),s)\,ds
\right)
\le C_Q.
}
```

Without this gain ledger, current `Pack_Q` as finite deformation gauge does not
by itself control the positive low-strain gain used in the first-crossing
argument.

## Dimensionless Amplitude

For a terminal packet `P` with radius

```math
r_P=2^{-j_P},
```

define

```math
a_P(t)
:=
\frac{\|U_P(t)\|_2}{\nu r_P^{1/2}}.
```

The desired retained-face amplitude theorem is:

```math
\boxed{
RetainedFaceAmplitudeGain.A:
\quad
Part_{N,Q} plus Field-window evidence
\Longrightarrow
\sup_{P\in\mathcal F_N}a_P(t)\to0
\quad(N\to\infty).
}
```

If true, failure of terminal amplitude gain under the selected packet family
would already be a CM witness failure:

```math
\neg Pack_Q\vee\neg Part_{N,Q}.
```

## Packet Envelope

Let `X_P(t)` follow the low same-fluid flow:

```math
\dot X_P=u_{\le j_P-C}(X_P,t).
```

The packet equation has the form

```math
(\partial_t+u_{\le j_P-C}\cdot\nabla-\nu\Delta)U_P
=
-S_{\le j_P-C}U_P+R_P.
```

The dangerous term is linear strain amplification. Define

```math
\Gamma_P(t)
=
\int_{t_0}^{t}
\lambda_{\max}^+
(S_{\le j_P-C}(X_P(s),s))\,ds,
```

```math
G_P(t)=e^{\Gamma_P(t)}.
```

Define the gauged amplitude

```math
\widetilde a_P(t)=G_P(t)^{-1}a_P(t),
```

and the high-tail envelope

```math
\widetilde A_N(t)
=
\sup_{P:j_P\ge N}\widetilde a_P(t).
```

The required packet envelope inequality is:

```math
\boxed{
D^+\widetilde a_P
\le
-c2^{2j_P}\widetilde a_P
+
C2^{2j_P}G_P\widetilde A_N^2
+
\widetilde\ell_P.
}
\tag{Envelope}
```

Here `\widetilde\ell_P` is legal loss, and `Part_{N,Q}` is responsible for
routing pressure, viscous-participation, cutoff, and off-packet pieces into
legal loss plus the quadratic high-tail term.

After heat-time normalization this gives

```math
D_s^+\widetilde A_N
\le
-c\widetilde A_N
+
CG_\ast\widetilde A_N^2
+
o_N(1),
```

where

```math
G_\ast=\sup_{P\in\mathcal F_N}\sup_{t\in I_P}G_P(t).
```

## Conditional First-Crossing Proof

Assume:

```math
G_\ast\le C_Q.
\tag{PackGain}
```

Choose `\delta_Q>0` so that

```math
C C_Q\delta_Q\le c/2.
```

Then whenever

```math
\widetilde A_N\le\delta_Q,
```

the envelope gives

```math
D_s^+\widetilde A_N
\le
-\frac c2\widetilde A_N+o_N(1).
```

On compact preterminal times smoothness gives high-frequency decay:

```math
\widetilde A_N(t_0)\to0.
```

If `\widetilde A_N` had a first upward crossing of `\delta_Q`, then at the
first crossing time `t_N`:

```math
D_s^+\widetilde A_N(t_N)
\le
-\frac c2\delta_Q+o_N(1)<0
```

for `N` large, contradicting first upward crossing. Therefore:

```math
\widetilde A_N\to0.
```

Using `G_\ast\le C_Q`:

```math
A_N(t)
:=
\sup_{P:j_P\ge N}a_P(t)
\le
C_Q\widetilde A_N(t)
\to0.
```

Thus:

```math
\boxed{
PackGainLedger.A+PartEnvelope.A
\Longrightarrow
RetainedFaceAmplitudeGain.A.
}
```

## Why Current `Pack_Q` Does Not Yet Supply `PackGainLedger.A`

The current CM pack face is usually recorded as finite same-fluid carrier and
finite deformation gauge:

```math
\Gamma_{\mathrm{pack},Q}(t)
=
\sup_{a\in A_Q(t)}
\max\{\|F(a,t)\|,\|F(a,t)^{-1}\|\}<\infty.
```

Since

```math
\dot F=\nabla u(X(a,t),t)F,
```

an `L^1` pack-strain ledger implies finite deformation:

```math
\int S_{pack,Q}(t)\,dt<\infty
\Longrightarrow
\Gamma_{\mathrm{pack},Q}\in L^\infty.
```

The converse is not automatic. Finite net deformation does not bound

```math
\int \lambda_{\max}^+S\,dt.
```

Positive and negative strain episodes, or rotating stretching directions, can
leave bounded net deformation while accumulating large positive strain action.
Thus:

```math
\Gamma_{\mathrm{pack},Q}<\infty
\not\Longrightarrow
G_\ast<\infty
```

from the current definitions alone.

This is the exact hidden gap in the proposed retained-face amplitude proof.

## Corrected Witness-Face Statement

The theorem is valid if the Field-window evidence is explicitly strengthened to include the
low-strain gain ledger:

```math
Pack_Q^{gain}
:=
Pack_Q+PackGainLedger.A.
```

Then:

```math
\boxed{
Pack_Q^{gain}+Part_{N,Q}
\Longrightarrow
RetainedFaceAmplitudeGain.A.
}
```

Consequently:

```math
NonSmooth(Q)\wedge Pack_Q^{gain}\wedge Part_{N,Q}
\Longrightarrow
\forall r>0:\neg Field_{N,r,Q}.
```

If the intended CM `Pack_Q` is not strengthened, the honest split is:

```math
\boxed{
\neg RetainedFaceAmplitudeGain.A
\Longrightarrow
\neg PackGainLedger.A\vee\neg PartEnvelope.A.
}
```

The remaining theorem-facing question is whether:

```math
\boxed{
Pack_Q\Longrightarrow PackGainLedger.A
}
```

is part of the Pack definition, already installed by a row bridge, or a new
theorem. Current pack-strain audit notes treat this implication as not
installed.

## Source-Current Consequence

With retained-face amplitude gain, the scale obstruction to heat-action
disappears:

```math
RetainedFaceAmplitudeGain.A
\Longrightarrow
CycleHeatAction.Amp.
```

Then the source-current branch becomes:

```math
TerminalSkewLocalizationLedger.A
+
RetainedFaceAmplitudeGain.A
+
ParabolicNoFreeSink.A
+
ParabolicCycleCoercivity.A
\Longrightarrow
LocalPositiveSourceCarleson.A.
```

But if `RetainedFaceAmplitudeGain.A` is proved only from `Pack_Q^{gain}`, the
route is a CM witness route rather than an unconditional energy theorem:

```math
\text{failure of amplitude gain}
\Rightarrow
\text{failure of the retained Field-window evidence-gain or Part envelope face.}
```
