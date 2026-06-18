# HFG Continuation, All-Scale, And Carrier Export Result

## Status

This note is a recovery write for the failed MCP artifact
`hfg-continuation-all-scale-and-carrier-export-result.md`.

It records the safe theorem-facing result that follows from the current HFG,
all-scale, and carrier-export surfaces.  It is not a Clay-level proof
promotion and it does not import `HFG/MEG` into the accepted Theorem 2.1 local
release packet.

The result has three parts:

1. `HFG` implies the critical vorticity continuation input.
2. A genuine all-scale transfer theorem would imply `HFG` only if it controls
   the near-diagonal low-mode strain channel, not merely separated
   high-frequency transfer.
3. A carrier-to-classical export theorem can supply the low-mode strain
   suppression route, but it still has to land on the same classical dyadic
   surface and handle the residual low-threshold summation.

## Fixed Classical Surface

Let `u` be a smooth solution of the three-dimensional incompressible
Navier--Stokes equation on `[0,T] x R^3`, and set

```math
\omega:=\nabla\times u.
```

Let `\Delta_j` be the homogeneous dyadic Littlewood-Paley blocks.

The dyadic high-frequency gain packet is

```math
HFG(T):
\qquad
\sum_{j\ge 0}2^{3j/2}\|\Delta_j\omega\|_{L^1_tL^2_x(0,T)}
<\infty.
```

## Theorem 1. `HFG` Exports To Continuation

If `HFG(T)` holds on the classical surface, then

```math
\int_0^T\|\omega(t)\|_{B^0_{\infty,1}}\,dt<\infty.
```

Consequently the critical-vorticity continuation hypothesis is exact on the
same classical surface:

```math
\int_0^T\|\omega(t)\|_{B^0_{\infty,1}}\,dt<\infty.
```

The continuation theorem being spent is the Kozono--Taniuchi / BKM-type
criterion in this Besov endpoint form: a smooth solution can be continued past
`T` when the above integral is finite. Thus the retained classical surface
cannot break down at time `T` through this vorticity channel.

### Proof

For each dyadic shell, Bernstein gives

```math
\|\Delta_j\omega(t)\|_{L^\infty_x}
\le
C\,2^{3j/2}\|\Delta_j\omega(t)\|_{L^2_x}.
```

Therefore

```math
\int_0^T\sum_{j\ge0}\|\Delta_j\omega(t)\|_{L^\infty_x}\,dt
\le
C\sum_{j\ge0}2^{3j/2}
\|\Delta_j\omega\|_{L^1_tL^2_x(0,T)}
<\infty.
```

The finitely many low shells are controlled on the smooth classical interval.
Thus

```math
\int_0^T\|\omega(t)\|_{B^0_{\infty,1}}\,dt<\infty.
```

The installed continuation interface in
`dyadic-high-frequency-gain-theorem.md` and
`mpp-original-smooth-data-production-proof-attempt-and-hfg-reduction.md` then
exports this critical Besov-vorticity control to the classical continuation
readout.  Hence `HFG` is a sufficient continuation packet.

## Theorem 2. All-Scale Transfer Export Requires Diagonal Control

An all-scale frequency-transfer theorem is enough to feed the continuation
route only if its conclusion implies the actual `HFG` cascade estimate, or an
equivalent critical vorticity bound.

In particular, a transfer-loss theorem with only a summable spectral-gap kernel

```math
K(|j-k|),
\qquad
\sum_{m\ge0}K(m)<\infty,
```

does not by itself close `HFG`.

### Proof

The HFG cascade reduction separates high-high, spill, and low-mode pieces.  The
near-diagonal high-high packet is already reduced in
`mpp-hfg-dyadic-cascade-proof-attempt-low-mode-threshold-reduction.md`.

The remaining principal low-high channel contains the strict low-mode strain
coefficient

```math
A_{j-1}(t):=\|\nabla S_{j-1}u(t)\|_{L^\infty_x},
```

and contributes the shell term

```math
A_{j-1}(t)\|\Delta_j\omega(t)\|_2^2.
```

To absorb this term into viscosity at shell `j`, one needs

```math
A_{j-1}(t)\le c\nu 2^{2j}.
```

A kernel depending only on the spectral separation `|j-k|` has no large gap to
spend on this near-diagonal low-high channel.  At the diagonal the gain is
only `K(0)`, not a summable high-frequency improvement.  Thus pure separated
transfer inefficiency can control off-diagonal transfer, but it cannot remove
the strict low-mode coefficient.

This is exactly the no-free-gap conclusion recorded in
`hfg-alt-all-scale-transfer-loss-no-free-gap.md`: all-scale transfer loss is a
valid route broadening only when it also supplies either the low-mode strain
absorption inequality above or the residual mixed enstrophy-gradient primitive

```math
MEG:
\qquad
\int_0^T\|\omega(t)\|_2\|\nabla\omega(t)\|_2\,dt<\infty.
```

Therefore the safe implication is

```math
\text{all-scale transfer theorem with diagonal/amplitude control}
\Longrightarrow
HFG
\Longrightarrow
\text{critical continuation}.
```

The unsafe implication

```math
\text{pure spectral-gap transfer kernel}
\Longrightarrow HFG
```

is not installed.

## Theorem 3. Carrier Export Supplies A Conditional Low-Mode-Strain Route

Assume the carrier-to-classical export package lands on one common theorem
surface:

1. frequency-aligned readout of the selector-localized coherent carrier;
2. comparison of the coherent readout with the full classical low-mode band;
3. coherent transport export on persistent support at viscous scale;
4. noncoherent leakage export as a lower-order absorbable remainder.

Then the carrier route supplies the strict low-mode strain estimate

```math
\|\nabla u_{<j_0}(t)\|_{L^\infty_x}
\le
\tilde c\,\nu\,2^{2j_0}
```

at the classical dyadic threshold `j_0`.

### Proof

The carrier export theorem isolates the readout map

```math
\rho:\mathfrak R\to L^2_\sigma(R^3),
\qquad
u:=\rho(X),
```

and the selector-localized coherent readout

```math
\rho(\mathbb S_D(j_0)\mathbb H_DX).
```

Frequency-aligned readout identifies this object with the classical low-pass
band:

```math
\rho(\mathbb S_D(j_0)\mathbb H_DX)
=
P_{\le j_0}u_{\mathrm{coh}}.
```

The coherent transport export assumption bounds the principal carrier
transport at the viscous scale:

```math
\|B_i(X)\mathbb S_D(j_0)\mathbb H_D\|_{\mathrm{op}}
\le
c_0\nu2^{2j_0}.
```

The leakage export assumption places the noncoherent readout in a lower-order
remainder:

```math
\|\nabla\rho(P_\perp Q_i\mathbb P_DN_D(X)e_\beta)\|_{L^\infty_x}
\le
C\Psi(\mathcal E_D(X)).
```

If this remainder is absorbable on the same carrier energy surface, the
principal and remainder pieces combine to give

```math
\|\nabla u_{<j_0}(t)\|_{L^\infty_x}
\le
\tilde c\,\nu\,2^{2j_0}.
```

That is exactly the low-mode strain suppression target required by the HFG
reduction.

## Combined Route Consequence

The safe installed export chain is:

```math
HFG
\Longrightarrow
\int_0^T\|\omega(t)\|_{B^0_{\infty,1}}\,dt<\infty
\Longrightarrow
\text{classical continuation}.
```

The safe all-scale route is:

```math
\text{all-scale transfer law}
+
\text{diagonal low-mode/amplitude control}
\Longrightarrow
HFG
\Longrightarrow
\text{classical continuation}.
```

The safe carrier route is:

```math
\text{carrier export package}
+
\text{residual low-threshold summation control}
\Longrightarrow
HFG
\Longrightarrow
\text{classical continuation}.
```

Equivalently, the carrier export package can attack the `HFG.low` strain wall,
while `MEG` or an equivalent residual summation theorem still controls the
low-threshold shell residue unless the export theorem itself is strengthened to
cover it.

## Honest Boundary

This note proves the downstream exports and records the exact route logic.  It
does not prove unconditional `HFG`.

The still-open theorem-sandbox primitives are:

- a diagonal/amplitude-strengthened all-scale transfer theorem; or
- a carrier export theorem that reaches the full classical low-mode strain
  surface and also handles the residual low-threshold summation; or
- a direct proof of `MEG`.

Thus the correct current status is:

```text
HFG => continuation: installed.
Pure all-scale spectral-gap kernel => HFG: not installed.
Carrier export => low-mode strain suppression: conditional on the export
interfaces.
Full HFG from original smooth data: still open unless the residual primitive is
closed.
```

## Source Surfaces

- `dyadic-high-frequency-gain-theorem.md`
- `mpp-hfg-dyadic-cascade-proof-attempt-low-mode-threshold-reduction.md`
- `hfg-alt-all-scale-transfer-loss-no-free-gap.md`
- `all-scale-frequency-transfer-inefficiency-theorem.md`
- `carrier-frequency-aligned-readout-theorem.md`
- `carrier-to-classical-low-mode-export-theorem.md`
- `carrier-coherence-defect-to-low-mode-strain-suppression.md`
- `residual-threshold-summability-result.md`
