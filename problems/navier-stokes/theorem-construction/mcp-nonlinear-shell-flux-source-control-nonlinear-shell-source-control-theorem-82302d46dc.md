# Nonlinear shell-flux source control theorem — bounded solve attempt

## Target

Prove a source theorem strong enough to yield active-shell amplitude gain, hence scale-normalized `nu_SCF` Carleson control.

A shell model for the desired result is

```math
E_j'(t)+c\nu D_j(t)\le F_j(t),
```

with source control ruling out active terminal pulses.

## Available structure

The unweighted dyadic exchange has antisymmetry:

```math
\langle \Delta_j(a_k\cdot\nabla\Delta_\ell u),\Delta_j u\rangle
+
\langle \Delta_\ell(a_k\cdot\nabla\Delta_j u),\Delta_\ell u\rangle=0.
```

This cancellation is useful before weights and lifted reductions enter.

## Attempt

After shell weights, cutoffs, projectors, and lifted packets are inserted, the
live terminal record becomes a weighted lifted remainder. A source-control theorem must
control that weighted lifted remainder directly, for example through

```math
\int_0^T G_N^{lift,\sigma}(t)\,dt\le C2^{-2\delta N},
```

or an equivalent signed reserve estimate for the true weighted remainder.

The available algebra gives the reduction, while it supplies no sign law for the true weighted object. The principal lifted remainder can align with expanding strain directions. One-sided shell weights preserve a positive active-square burden after absolute values are taken.

The square-source path also fails as a universal theorem from smooth data. At fixed shell, the nonlinear source scales cubically with amplitude:

```math
F_j(0;Au_0)=A^3F_j(0;u_0).
```

The proposed fixed-shell square-source right side is amplitude independent. Large-amplitude smooth data violate that estimate unless an additional amplitude normalization or structural cancellation theorem is supplied.

## Verdict

The source theorem remains open. The exact reduced targets are:

```math
\boxed{\text{signed weighted lifted-remainder cancellation with reserve}}
```

and

```math
\boxed{\text{active-square residual-tail control}.}
```

Equivalently, a direct monotone/source-dominance law for the nonlinear shell
source closes this target once supplied.

Claimed status: failed bounded solve attempt with exact subtargets isolated.
