# DiffuseParentEntropyCharge.A test

## Status

Failed as an unconditional theorem from installed route inputs.

## Target

Prove that a diffuse positive source-parent measure pays a finite route charge.  The intended model is

```math
\pi_P={1\over M}\sum_{\alpha=1}^{M}\delta_{P^-_\alpha},
\qquad M\to\infty,
```

with total child-feeding positive source normalized to one.  The desired conclusion is that diffusion over many legal parents creates an entropy or overlap cost controlled by the weighted residual square estimate:

```math
\sum_Tg_T^{-2}\left|\int_{I_T}\langle R,\psi_T\rangle dt\right|^2
\le C\int\sum_{q>N}D_q+o_N(1).
```

## Test model

Use the existing Fourier parent countermodel.  Let a high packet `h_j` feed the child window.  Let legal predecessor donors `a_\alpha=M^{-1}b_\alpha`, `1\le\alpha\le M`, have distinct allowed lower frequencies, `\|b_\alpha\|_2=1`, and positive aligned interactions defined by

```math
\mathcal N_\alpha(P^-_\alpha\to P)
:=
\int_{Q_P^\Phi}(h_j\cdot\nabla a_\alpha)\cdot h_j\,\chi_P dxdt>0.
```

Normalize the family so that `\sum_{\alpha=1}^M\mathcal N_\alpha=1`. The parent measure is

```math
\pi_P := {1\over M}\sum_{\alpha=1}^{M}\delta_{P^-_\alpha}.
```

Every selector containing at most `B` parents captures at most `B/M` of this parent measure.

## Entropy charge attempt

A natural entropy is

```math
H(\pi_P)=\log M.
```

The problem is that the installed route has no ledger carrying `H(\pi_P)` with a positive coefficient.  The available analytic charges are quadratic donor energy, local energy, pressure/cutoff losses, and residual square pairings.  For the donor family,

```math
\sum_{\alpha=1}^{M}\|a_\alpha\|_2^2
=M\cdot M^{-2}=M^{-1}.
```

The residual-square charge has the following exact bound for separated legal donor pieces with constant `C_{res}` independent of `M`:

```math
\sum_{\alpha=1}^{M}|\text{residual}_\alpha|^2
\le C_{res}M\cdot M^{-2}=C_{res}M^{-1},
```

while the positive child-feeding source remains exactly normalized by `\sum_{\alpha=1}^M\mathcal N_\alpha=1`.

Thus the putative entropy cost `\log M` is invisible to the installed quadratic ledgers.  Legal parent diffusion can increase entropy while decreasing raw quadratic charge.

## Conclusion

The theorem

```math
DiffuseParentEntropyCharge.A
```

requires a new scale-normalized donor reserve whose density grows with legal parent branching complexity.  The current weighted residual square estimate, finite energy, local energy, pressure/cutoff ledgers, and same-fluid transport do not supply that reserve.

## Consequence

The entropy route does not close `LocalPositiveSourceCarleson.A`.  It sharpens the missing target to

```math
ScaleNormalizedBranchEntropyReserve.A
```

or equivalently

```math
TwoTowerDonorDepletion.A
```

with an explicit branch-complexity term.

## Claimed status

Failed unconditional discharge.  The next viable target is either a genuinely new scale-normalized branch entropy reserve or a Zeno rigidity theorem that uses entropy as an added structure.
