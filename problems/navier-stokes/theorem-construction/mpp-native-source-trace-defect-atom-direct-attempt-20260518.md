# MPP NativeSourceTraceDefectAtom.A direct attempt

Date: 2026-05-18

Status: failed as a production theorem. The trace defect is the terminal atom itself.

## Target

`NativeSourceTraceDefectAtom.A` asks for the terminal native source trace defect to vanish:

```math
\boxed{\mu_*^{src}(B_R\times\{0\})=0.}
```

This discharges the terminal time-face component of `TransportedCylinderNoFlux.A` and activates the local-energy bridge once the displayed anti-atom statement is proved.

## Active model

The current minimal source trace is

```math
d\mu_*^{src}(y,s)=\rho(y)dy\otimes\delta_{s=0}.
```

This is exactly the trace defect. It remains after legal exits, ASAC defect, retained partners, and finite donor trees have been routed.

## Attempt 1: defect-measure splitting

Split the native source measure into interior and terminal trace parts:

```math
\mu_*^{src}=\mu_{int}^{src}+\mu_{tr}^{src},
qquad
\mu_{tr}^{src}=\mu_*^{src}\lfloor\{s=0\}.
```

This identifies the obstruction. It gives no vanishing theorem for `\mu_{tr}^{src}`.

## Attempt 2: local compactness gives trace absolute continuity

Local suitable compactness gives Radon measures. Radon compactness allows mass on closed time faces. It gives no absolute continuity with respect to time-Lebesgue measure.

The atom model is compatible with this compactness.

## Attempt 3: terminal trace as removable defect

A removable-defect theorem requires capacity zero or a test class that sees all native source mass while forcing terminal trace to vanish. The previous capacity and adjoint tests show the terminal face is trace-bearing.

## Attempt 4: source trace absolute continuity

A positive source trace absolute-continuity theorem would need a modulus such as

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0.
```

This is the terminal anti-atom modulus / reverse-Holder content. Current inputs do not supply it.

## Verdict

`NativeSourceTraceDefectAtom.A` fails from installed inputs.

It reduces exactly to one of the already isolated missing source-time production theorems:

```text
TerminalAntiAtomModulus.A;
PositiveSourceTraceAC.A;
TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A.
```

Together with `GoodTransportedShellExhaustion.A`, this completes the requested attempt of both components.
