# Periodic T3 Closed Surface After R3 Conditional Branch

## Status

Discharged boundary note.

The periodic `T^3` branch remains the closed theorem-program surface after the whole-space `R^3` branch analysis.

## Closed periodic surface

The periodic branch proves, in theorem-program form,

```math
u_0\in C^\infty_\sigma(\mathbb T^3),
\qquad
\int_{\mathbb T^3}u_0\,dx=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

Its proof uses the compact periodic terminal-tail route:

```math
OriginalSmoothData_{T^3}
\Longrightarrow
TTU.A_{T^3}
\Longrightarrow
End_{NS}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty
\Longrightarrow
T_*=\infty.
```

The compactness, finite-cover readout, zero-mean pressure normalization, and finite-cover Sobolev patching are all periodic-branch features.

## R3 branch boundary

The `R^3` branch is organized but conditional:

```math
OriginalSmoothData_{R^3}+Tail.Hs_{R^3}
\Longrightarrow
TTU.A_{R^3}
\Longrightarrow
T_*=\infty.
```

The missing whole-space theorem is

```math
OriginalSmoothData_{R^3}\Longrightarrow Tail.Hs_{R^3}
```

or equivalently a noncircular elimination of

```math
TailFace_{R^3}^{Hs}.
```

The attempted exterior cascade theorem `ExtCascade_s_R3` does not close from current inputs.

## Separation rule

R3 conditional notes must not reopen or contaminate the closed periodic theorem surface. They also must not be used as whole-space release evidence without a dedicated R3 matrix containing the high-order tail row.

## Verdict

```math
T^3:\quad closed\text{ theorem-program surface}.
```

```math
R^3:\quad conditional\text{ extension branch, open at high-order spatial-infinity tail control}.
```