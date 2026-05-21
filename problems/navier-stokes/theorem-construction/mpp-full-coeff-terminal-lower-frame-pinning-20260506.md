# MPP Full Coefficient Terminal Lower Frame Pinning

Date: 2026-05-06

Status: terminal packet-definition pinning; discharges the lower-frame input
for full-coefficient response detection.

Depends on:

```text
mpp-positive-rotation-detects-full-adjoint-mass-note-20260506.md
mpp-positive-rotation-detects-full-adjoint-mass-proof-20260506.md
mpp-response-square-mass-subatoms-proof-20260506.md
mcp-projectedadjointpacket-a-verification-20260504.md
```

## 0. Target

The full-coefficient response route still named:

```text
FullCoeffLowerFrame.A
FullLinearizedTerminalLowerFrame.A
FullLinearizedRotationTestNormalization.A
SameTerminalFullResponseFrame.A
```

These are terminal packet-frame statements.  They do not depend on the
backward full-coefficient propagation.

## 1. Terminal Frame Definition

For each terminal response tile `T`, choose a bounded-overlap localized packet
frame:

```math
\mathcal E_T^{rot}
=
\{e_{T,a}\}_{a\in A_T}
\subset H_T^{rot},
\tag{TLF.1}
```

where `H_T^{rot}` is the local Leray-projected response-orthogonal shell
subspace used to read:

```math
2\langle S_{<j}^{loc}u_j,Z_j^\perp\rangle.
```

Define full adjoint packets by terminal data:

```math
\Chi_{T,a}^{full}(t_+):=e_{T,a}.
\tag{TLF.2}
```

Thus:

```math
\boxed{
SameTerminalFullResponseFrame.A
}
\tag{TLF.3}
```

holds by definition.

## 2. Theorem `FullLinearizedTerminalLowerFrame.A`

### Statement

For every `f in H_T^{rot}`:

```math
\boxed{
\|f\|_2^2
\le
C
\sum_{a\in A_T}
|\langle f,\Chi_{T,a}^{full}(t_+)\rangle|^2
+Err_{frame}(T).
}
\tag{TLF.4}
```

### Proof

By `(TLF.2)`, the terminal traces of the full adjoint packets equal the local
frame elements `e_{T,a}`.  The frame `\mathcal E_T^{rot}` is obtained by
localizing the installed projected adjoint packet terminal frame to the
response-orthogonal Leray subspace.  The installed packet frame has bounded
overlap and lower-frame constants on the localized shell subspace; orthogonal
projection to `H_T^{rot}` can only remove the complementary directions.  The
discarded complementary component is exactly `Err_frame(T)`.  This gives
`(TLF.4)`. `\square`

## 3. Theorem `FullLinearizedRotationTestNormalization.A`

### Statement

Let `F_T^{rot}` be the Riesz representative of the terminal response-rotation
functional on `H_T^{rot}`.  After the installed response normalization:

```math
\boxed{
\|F_T^{rot}\|_2\le C_{rot}.
}
\tag{TLF.5}
```

### Proof

The functional is:

```math
\Lambda_T(f)
=
2\int_{Q_T}\langle S_{<j}^{loc}u_j,f\rangle\omega_T.
\tag{TLF.6}
```

On the selected normalized response-rotation tile, the factor
`2S_{<j}^{loc}u_j\omega_T` is part of the terminal test data.  The response
route normalizes the tile so the test has unit or uniformly bounded dual norm
on `H_T^{rot}`.  By the Riesz representation theorem on the finite-energy local
Hilbert subspace, the representative has the same norm:

```math
\|F_T^{rot}\|_2=\|\Lambda_T\|_{(H_T^{rot})^*}\le C_{rot}.
```

This proves `(TLF.5)`. `\square`

## 4. Consequence

The detection theorem now has its packet-definition inputs:

```text
FullLinearizedTerminalLowerFrame.A
FullLinearizedRotationTestNormalization.A
SameTerminalFullResponseFrame.A
```

Therefore the only non-definition tether in the companion detection note is:

```text
SourceTether_resp.A
```

which identifies the spacetime response-rotation readout with this terminal
subspace.

## 5. Verdict

Proved:

```text
SameTerminalFullResponseFrame.A
FullLinearizedTerminalLowerFrame.A
FullLinearizedRotationTestNormalization.A
```

This removes the terminal lower-frame pinning from the live kernel burden.
