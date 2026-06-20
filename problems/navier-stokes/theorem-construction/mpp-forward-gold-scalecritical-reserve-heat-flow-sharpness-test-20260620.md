# MPP Forward-Gold Scale-Critical Reserve Heat-Flow Sharpness Test

Date: 2026-06-20

## Status

Direct heat-flow sharpness test complete.  The heat-scale square-reserve pulse is
not an artifact of scalar notation or a super-heat time compression.  A single
Littlewood-Paley heat packet has the same structure:

```math
\text{first moment }\to0,
\qquad
\text{scale-critical square reserve }\simeq1.
```

Thus viscosity by itself does not supply the missing extra power.  A proof of
`ScaleCriticalTreeCarleson.A`, `SourceSquareReserve.A`, or
`ReserveCreationCharge.A` must charge the birth/source-current history of the
packet, not merely its later heat decay.

## 1. Fixed-scale windows are harmless

If the spatial scale is fixed and the time interval length tends to zero, the
ordinary `L^1_t` dissipation ledger is enough.  For fixed `K`,

```math
D_{\le K}(t):=\sum_{\ell\le K}D_\ell(t)
```

belongs to `L^1_t` on every preterminal smooth interval, and hence

```math
\int_I D_{\le K}(t)dt\to0
\qquad(|I|\to0).
\tag{HF.1}
```

So a terminal pulse at a genuinely positive lower spatial radius cannot retain
order-one first-moment mass over a vanishing time window without being seen by
ordinary absolute continuity.

The live branch is different.  It lets the active scale go to infinity while the
window length follows the heat scale.

## 2. Exact dyadic heat packet

Work on `T^3`.  Let `lambda_m` be a dyadic frequency, choose a divergence-free
Fourier mode `phi_m` with

```math
\|\phi_m\|_2=1,
\qquad
\|\nabla\phi_m\|_2^2\simeq\lambda_m^2,
```

and let

```math
v_m(s,x)=b_m e^{-\nu\lambda_m^2s}\phi_m(x),
\qquad
0\le s\le h_m,
\qquad
h_m:=\lambda_m^{-2}.
\tag{HF.2}
```

This is an exact solution of the linear heat equation on that mode.  Choose

```math
b_m^2:=\lambda_m^{-3/2}.
\tag{HF.3}
```

The dyadic dissipation on the active shell is

```math
D_m(s)
=
\nu\|\nabla v_m(s)\|_2^2
\simeq
\nu\lambda_m^2b_m^2 e^{-2\nu\lambda_m^2s}.
\tag{HF.4}
```

Its first moment on one heat window is

```math
\int_0^{h_m}D_m(s)ds
\simeq
b_m^2
=
\lambda_m^{-3/2}	o0.
\tag{HF.5}
```

But the scale-critical square-reserve contribution is

```math
\int_0^{h_m}\lambda_m D_m(s)^2ds
\simeq
\lambda_m\cdot\lambda_m^4b_m^4\cdot\lambda_m^{-2}
=
\lambda_m^3b_m^4
=
1.
\tag{HF.6}
```

This is exactly the heat-scale first-created reserve profile used in the
forward-gold obstruction notes.

## 3. Meaning for the participation/throttle picture

The fixed-radius speed-limit intuition is correct at fixed scale because
`(HF.1)` kills vanishing time windows.  The heat-scale branch survives because
the admissible heat rate grows like `lambda_m^2` while the window length shrinks
like `lambda_m^{-2}`.  The two factors cancel in the first moment, and the
additional scale-critical multiplier in the square reserve keeps the square
quantity order one.

Equivalently, the packet can have very small `L^2` energy,

```math
\|v_m(0)\|_2^2=b_m^2=\lambda_m^{-3/2},
\tag{HF.7}
```

while still producing order-one reserve in `(HF.6)`.  The missing theorem must
explain why such high-frequency packet energy cannot be born on the same-fluid
terminal branch without a native source-current payment.

## 4. Consequence for the direct route

Any attempted proof using only these currencies cannot close the branch:

```math
\int\sum_{\ell>N}D_\ell(t)dt,
```

fixed-scale temporal absolute continuity,

```math
\partial_t e_m + D_m=0
```

on the active heat packet, or bare viscous decay after the packet already
exists.

The heat packet is a counter-test for that proof class.  It satisfies the
parabolic heat law and still has `(HF.5)` plus `(HF.6)`.  Therefore the direct
forward-gold supplier must contain one of the genuinely stronger statements:

```math
\text{SquareChargeEvolution.A},
\quad
\text{ScaleCriticalTreeCarleson.A},
\quad
\text{SourceSquareReserve.A},
\quad
\text{TerminalParabolicSignedSaturation.A},
\quad
\text{StrictRescaledNoWasteLyapunov.A}.
\tag{HF.8}
```

The sharp interpretation is:

```math
\boxed{
\text{viscosity prices the packet after it exists; the gold gap is pricing its
same-fluid terminal creation.}
}
\tag{HF.9}
```

## 5. Relation to the Zeno branch

The same calculation also explains why the Zeno residue branch keeps returning
to temporal non-atomicity.  The time marginal of the first moment can vanish or
concentrate too weakly to control the square reserve, while the square density
retains a nonzero weak-* defect on a heat-scale window.

Thus `TemporalNonAtomicSource.A` is not supplied by ordinary heat smoothing.  A
successful Zeno proof must add either a genuine source-square integrability
bound or a rigid-class theorem that prevents this heat-packet residue from being
realized by the native positive pre-Cauchy source.

## Verdict

The heat-scale reserve pulse is parabolically legal at the level of local heat
smoothing.  The remaining forward-gold problem is not to show that a fixed
positive-radius packet cannot be fed in zero time; that follows from ordinary
absolute continuity.  The remaining problem is to show that a same-fluid packet
cannot be created along the shrinking heat scale with vanishing first moment and
order-one square reserve.