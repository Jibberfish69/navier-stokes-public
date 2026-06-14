# MPP Volterra Selector Amplitude Normalization Direct Attempt

## Status

Raw `VolterraSelectorAmplitudeNormalization.A` is not proved by the current
theorem stack.  After the residual refill correction, any live version must be
`ResidualVolterraSelectorAmplitudeNormalization.A`.

This pass tests whether the Volterra selection rule itself forces active-shell
amplitude normalization on selected terminal heat-scale windows.  It does not.
The selector records visibility in the retained far-corona stress readout; it
does not supply an upper bound on the active amplitude.

## Target

The residualized desired theorem is:

```text
ResidualVolterraSelectorAmplitudeNormalization.A
```

meaning:

```math
(j,I)\in\mathcal V_N
\quad\Longrightarrow\quad
\int_I2^{-j}D_j(t)^2\,dt
\text{ is paid by the barrier ledger,}
```

or an equivalent selected square-source estimate strong enough to prove the
selected-family lower-prefix active-square payment.

## Direction check

The Volterra selector is a readout condition.  It says that the packet is seen
by the retained accumulated stress object:

```math
T_r=\int_0^{r/c_1}
\chi_{mid}(\log\ell)\tau_\ell^{H^1}[u]\,\frac{d\ell}{\ell}.
```

Being selected means the packet contributes to the obstruction.  That is lower
or detection information.  The target asks for upper control of

```math
2^{-j}D_j(t)^2.
```

No installed theorem turns this detection condition into an amplitude cap.

## Scaling test

In a local packet model, increasing the active shell amplitude increases both
the stress readout and the active-square cost.  Under the amplitude rescaling
`u_A=A u_1` on a fixed packet template, the model quantities obey:

```math
D_j[u_A]=A^2D_j[u_1],
\qquad
\tau_j^{H^1}[u_A]=A^2\tau_j^{H^1}[u_1],
\qquad
B_r[u_A]=A^3B_r[u_1].
```

on a coherent strain/stress packet.  The selector becomes easier to satisfy as
the amplitude grows.  It does not penalize that growth.

A theorem of the form

```math
\text{selected by }T_r
\Longrightarrow
\int_I2^{-j}D_j^2\text{ is small/summable}
```

therefore needs an additional damping, sign, square-source, or reserve
mechanism.  Selection alone has the wrong monotonicity.

## Heat-scale pulse test

Use the source-balanced heat-scale model:

```math
c_h2^{-2j}\le |I_j|\le C_h2^{-2j},
\qquad
D_j(t)={M_j\over |I_j|}\mathbf 1_{I_j}(t),
\qquad
F_j(t)=c_s\nu D_j(t).
```

Then

```math
\int_{I_j}D_j(t)\,dt=M_j,
```

but

```math
\int_{I_j}2^{-j}D_j(t)^2\,dt
=2^{-j}{M_j^2\over |I_j|}
\ge C_h^{-1}2^jM_j^2.
```

Choosing a coherent lower-prefix packet makes this pulse visible to the
Volterra readout.  The same visibility does not reduce the square density.  It
only marks the pulse as one of the retained far-corona bad packets.

Thus the pulse model is compatible with the selector and still defeats
amplitude normalization.

## Sparsity and bounded overlap

Bounded overlap of selected heat-scale windows is useful after a per-window
reserve estimate has been proved.  It does not prove the per-window estimate.
The obstruction is a square-amplitude cost on each selected window, not an
unbounded covering multiplicity.

## Square-source import

A selected square-source estimate would close this branch, but it is not
installed.  The existing heat-scale square-source attempts fail by the same
active-shell amplitude issue: the nonlinear source is cubic under local
amplitude scaling, and a universal square-source estimate is not a consequence
of smoothness, first-moment dissipation, or the selector.

## Verdict

Raw `VolterraSelectorAmplitudeNormalization.A` is not proved.

More sharply, the current Volterra selector has the wrong direction for this
job.  It detects the retained stress packet; it does not cap the packet.  The
Volterra-specific active-square branch therefore returns to residual/source-
balanced `(LPAS)`, residual `(CTS/FCTS)`, or the already-open source-balanced
pulse wall unless a genuinely new amplitude normalization theorem is added.

The exact next target is no longer another raw Volterra selector label.  The
loop must move to the residual terminal source-time branch:

```math
\textbf{ResidualExternalTerminalTimeThicknessMechanism.A}.
```

This is the mechanism needed to forbid zero-thickness native positive source
concentration in the produced `B_ASAC` terminal source-residue class, or to
replace it with a produced rigid subclass whose source-residue Liouville theorem
is actually paid.

## Closure impact

The current chain becomes:

```math
\text{ResidualVolterraSelectorAmplitudeNormalization.A}
\Longleftarrow
\text{ResidualExternalTerminalTimeThicknessMechanism.A}
```

in the sense that the Volterra-specific selector route is exhausted at current
resolution, and the active loop must continue through the terminal
source-time mechanism branch.  This does not close `(LPAS)`, `(FCTS)`, `(EP)`,
positive affine endpoint mass, the retained affine quotient route, `(L-Flux)`,
retained tail input, Part-row compactness, or PDF finality.
