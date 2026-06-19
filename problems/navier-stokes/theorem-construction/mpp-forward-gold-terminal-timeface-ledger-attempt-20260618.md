# Forward-Gold Terminal Time-Face Ledger Attempt

Date: 2026-06-18

Status: direct time-face attempt; visibility closes, exclusion does not.  The
local-energy ledger detects a terminal source atom as a boundary jump or measure
at `s=0`, but the current installed inputs do not prove absolute continuity of
that terminal trace.  This is the same terminal-layer obstruction in native
local-energy language.

## Target

The point-force capacity route reduces the remaining branch to a time-face
conversion/readout problem:

```math
\boxed{
\text{TerminalTimeFaceResidueToLedger.A}
}
\tag{TF.1}
```

The hoped-for statement is:

```math
\text{terminal source residue on } \{s=0\}
\Longrightarrow
\text{visible local-energy flux/dissipation/pressure defect}
\tag{TF.2}
```

strong enough to rule out a free terminal atom.

## Native local-energy test

For the ancient source-residue limit, the local-energy balance has the form

```math
\partial_s {1\over2}|U|^2
+
\nu|\nabla U|^2
+
\nabla\cdot
\left[
\left({1\over2}|U|^2+\Pi\right)U
-
\nu\nabla {1\over2}|U|^2
\right]
\le
\mu_*^{src}
\tag{TF.3}
```

in distributions, with a nonnegative or selected positive source-residue
measure on the right side.

Test against `\psi(y)\eta_\epsilon(s)`, where `\psi` is compactly supported in
space and `\eta_\epsilon` localizes to `(-\epsilon,0]`.  Then

```math
\mu_*^{src}(\psi\eta_\epsilon)
\ge
\int \eta_\epsilon'(s)
\int {1\over2}|U(s,y)|^2\psi(y)\,dy\,ds
+
\int\eta_\epsilon(s)\mathcal D_\psi(s)\,ds
-
\int\eta_\epsilon(s)\mathcal F_\psi(s)\,ds,
\tag{TF.4}
```

with

```math
\mathcal D_\psi(s)
=
\nu\int |\nabla U|^2\psi\,dy,
\tag{TF.5}
```

and

```math
\mathcal F_\psi(s)
=
\int
\left({1\over2}|U|^2+\Pi\right)U\cdot\nabla\psi\,dy
-
\nu\int {1\over2}|U|^2\Delta\psi\,dy.
\tag{TF.6}
```

The local suitable bounds make the terms in `(TF.5)` and `(TF.6)` locally
integrable in negative time on fixed compact cylinders.  Therefore the
time-face residue is visible as a jump/measure in the scalar local energy
trace

```math
E_\psi(s):=\int {1\over2}|U(s,y)|^2\psi(y)\,dy.
\tag{TF.7}
```

In measure form:

```math
dE_\psi
+
\mathcal D_\psi(s)\,ds
-
\mathcal F_\psi(s)\,ds
\le
d\mu_*^{src,\psi}.
\tag{TF.8}
```

A terminal atom is exactly a terminal jump or terminal singular part of this
measure balance:

```math
\mu_*^{src,\psi}(\{0\})
>
0.
\tag{TF.9}
```

## Why visibility is not exclusion

The model enemy survives this ledger:

```math
g_m(s)={a\over\tau_m}\mathbf 1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{TF.10}
```

It has fixed `L^1_s` mass

```math
\int_{-\tau_m}^0g_m(s)\,ds=a,
\tag{TF.11}
```

and converges weakly to `a\delta_0`.  A bounded-variation local-energy trace can
carry exactly such a terminal jump.  The local integrability of
`\mathcal D_\psi` and `\mathcal F_\psi` does not force

```math
\mu_*^{src,\psi}(\{0\})=0.
\tag{TF.12}
```

To prove `(TF.12)`, one needs an absolute-continuity or monotone-control
statement beyond finite `L^1_s` control:

```math
\boxed{
\lim_{\epsilon\downarrow0}
\sup_N
\mu_{src,N}^+(\psi\mathbf 1_{(-\epsilon,0]})
=0
}
\tag{TF.13}
```

or a stronger super-`L^1` / reverse-Holder / Carleson / monotonicity theorem.

## Exact reduction

The direct local-energy attempt proves only:

```math
\boxed{
\text{terminal time-face residue}
\Longrightarrow
\text{visible BV/jump term in the local-energy ledger.}
}
\tag{TF.14}
```

It does not prove:

```math
\boxed{
\text{terminal time-face residue}
\Longrightarrow
\text{finite-cost contradiction.}
}
\tag{TF.15}
```

The missing theorem is one of:

```math
\boxed{
\text{TerminalLocalEnergyTraceAbsoluteContinuity.A}
}
\tag{TF.16}
```

or

```math
\boxed{
\text{RenormalizedLocalEnergyFrequencyMonotonicity.A}
}
\tag{TF.17}
```

or the earlier source-specific alternatives:

```math
\boxed{
\text{Door1PositiveActiveCarlesonReserve.A}
\quad\text{or}\quad
\text{Door1SourceDensityReverseHolder.A}.
}
\tag{TF.18}
```

## Verdict

`TerminalTimeFaceResidueToLedger.A` closes only as visibility.  It identifies
the terminal source atom with a terminal measure/jump in the local-energy
ledger, but it does not exclude the atom from current inputs.

This explains why the final pivot in the transcript matters.  A monotone or
frequency functional would be useful precisely because it could upgrade
visibility of the terminal jump into a coercive drop:

```math
-{d\over ds}\mathcal M(s)
\ge
\text{terminal source/time-face defect}
+
\text{other positive defects}
-
\text{legal residual}.
\tag{TF.19}
```

Without that stronger structure, the terminal layer remains compatible with
finite local-energy flux and finite `L^1_s` source mass.
