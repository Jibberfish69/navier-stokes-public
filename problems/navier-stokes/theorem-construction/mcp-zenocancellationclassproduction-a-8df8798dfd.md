# ZenoCancellationClassProduction.A failed attempt

## Status

Failed discharge from installed inputs.  The Zeno compactness package produces an ancient local suitable source-residue object, but it does not place that object into a rigid class strong enough for residue Liouville.

## Target

Produce an explicit class `\mathcal B` such that

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_{\mathcal B}.A
```

and

```math
ZenoBoundedClass_{\mathcal B}.A\Longrightarrow ZenoResidueLiouville_{\mathcal B}.A.
```

Class production plus residue Liouville gives `\mu_*^{src}=0`, contradicting the inherited positive source residue from Zeno compactness.

## Extracted object

The installed extraction yields an ancient local suitable object

```math
(u_*,p_*,\mu_*^{src})
```

with local energy and pressure control on every fixed backward cylinder and inherited positive source residue

```math
\mu_*^{src}(Q_1^-)>0.
```

This compactness class is too broad for residue Liouville.

## Candidate class audit

Finite global ancient energy is unavailable because the Zeno rescaling is only locally controlled; global energy expands across larger rescaled domains.

Type I control is unavailable because the branch normalizes source residue rather than amplitude, and source-balanced active pulses are the obstruction to a Type I envelope.

Critical smallness is circular because a class strong enough to force smallness on the selected residue branch would already preclude the inherited residue.

Bounded vorticity or bounded strain is unavailable because original smoothness controls preterminal compact windows, while the rescaled terminal sequence has no uniform bound from installed inputs.

Self-similar, axisymmetric, and two-dimensional classes are unavailable because the same-fluid terminal selection and local suitable compactness impose no such symmetry.

Weak signed source cancellation is insufficient: a signed test identity can coexist with a positive source-residue measure.  Strong native cancellation gives

```math
\int \varphi\,d\mu_*^{src}=0\quad \forall\varphi\ge0,
```

which is exactly the desired vanishing of `\mu_*^{src}` and therefore cannot serve as an independently produced class.

## Verdict

`ZenoCancellationClassProduction.A` is not proved from installed inputs.  The rigid-class route needs a new class `\mathcal B` with both production and residue Liouville.  The remaining viable routes are the non-rigid source controls:

```math
\text{one-sided selected-window negative-part comparison},
\qquad
\text{active-square / scale-critical tree Carleson reserve},
\qquad
\text{reverse-Holder source residence / parent concentration}.
```
