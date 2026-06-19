# MPP ScaleCriticalTreeCarleson.A Next Attempt

## Status

Bounded direct attempt on the live direct source-wall root:

```math
\boxed{ScaleCriticalTreeCarleson.A.}
```

The attempt uses the current post-reconcile inputs:

```math
SourceWall.Reconcile.A
\quad\text{resolved by demotion,}
```

```math
ParentSquareEmbed.A
\quad\text{installed,}
```

and the prior Bellman reserve audit for the remaining scalar donor reserve.

Verdict:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\text{ is not proved from the installed inputs in this note.}
}
```

The strongest valid output is an exact reduction of the reserve to a
scale-critical active-window height / donor-tail pairing.  That pairing is not
controlled by the installed first-moment, local-energy, donor-balance,
normalized-adjoint source-drain, active-shell, square-source, branch-reserve, or
Zeno compactness inputs without adding a new theorem.

## Live Target

After `ParentSquareEmbed.A`, the direct positive-source branch is:

```math
ParentSquareEmbed.A
+
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

The remaining theorem is the scalar reserve

```math
\boxed{
ScaleCriticalTreeCarleson.A:
\quad
\int_I
\sum_{k>N}2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt
\le
o_N(1)+Loss_{legal}.
}
\tag{STC}
```

Write

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t).
```

The installed energy layer gives only

```math
\int_I\sum_{\ell>N}D_\ell(t)\,dt=o_N(1),
\tag{E1}
```

up to the accepted legal losses.

## Attempted Hardy Reduction

For nonnegative shell densities `D_\ell(t)`, the dyadic Hardy expansion gives
the following fixed-shift pointwise comparison for an integer `L_0` determined
by the dyadic overlap:

```math
c_H
\sum_{\ell>N+L_0}2^\ell D_\ell(t)
\left(
\sum_{m>\ell+L_0}D_m(t)
\right)
\le
\sum_{k>N}2^kT_k(t)^2
\le
C_H
\sum_{\ell>N}2^\ell D_\ell(t)
\left(
\sum_{m>\ell+L_0}D_m(t)
\right).
\tag{H1}
```

Indeed,

```math
\sum_{k>N}2^kT_k^2
=
\sum_{\ell,m>N+4}
D_\ell D_m
\sum_{N<k<\min(\ell,m)-4}2^k,
```

and for `M:=\min(\ell,m)` the inner geometric sum is exact:

```math
\sum_{N<k<M-4}2^k
=
2^{M-4}-2^{N+1}.
```

In particular, when `M\ge N+6`,

```math
2^{M-5}
\le
\sum_{N<k<M-4}2^k
\le
2^{M-4}.
```

Splitting the double sum at `\ell\le m` gives `(H1)`.

Thus `(STC)` would follow from `(E1)` if one had an independent
scale-critical active-window height bound

```math
H_N(t):=
\sup_{\ell>N}
2^\ell
\sum_{m>\ell+L_0}D_m(t)
\le C_{legal}
\tag{H2}
```

on the terminal active forest, because then

```math
\sum_{k>N}2^kT_k(t)^2
\le C_H
H_N(t)\sum_{\ell>N}D_\ell(t)
\le
C_{legal}\sum_{\ell>N}D_\ell(t).
```

Integrating and using `(E1)` would prove `(STC)`.

This is the strongest clean reduction found here:

```math
\boxed{
\text{first-moment tail}
+
\text{scale-critical active-window height bound}
\Longrightarrow
ScaleCriticalTreeCarleson.A.
}
\tag{R}
```

## Why This Does Not Close From Installed Inputs

The new factor `(H2)` is not installed.  It is a pointwise or active-window
form of the missing scale-critical reserve.

The installed inputs stop as follows.

```math
\textbf{Energy/local energy.}
```

They give `(E1)` and packet-local boundedness on fixed preterminal windows.
They do not give a uniform terminal bound for

```math
2^\ell\sum_{m>\ell+L_0}D_m(t)
```

as `\ell\to\infty` and `t\uparrow T_*`.

```math
\textbf{Donor balance.}
```

`LocalDonorBalance.A` telescopes finite refill trees.  Its terminal boundary is
exactly the uncontrolled high-shell active-window height above, unless a
well-founded branch reserve or Zeno rigidity theorem is added.

```math
\textbf{Normalized-adjoint source-drain.}
```

The normalized-adjoint package is conditional source-drain support after
`SourceWall.Reconcile.A`.  Importing it as an unconditional source-wall proof
would spend the unresolved no-diffuse-ancestry / first-pulse compactness
theorem and would be circular here.

```math
\textbf{Active-shell and square-source continuations.}
```

`ActiveShellAmplitudeGain.A` would imply a bound of the form `(H2)`, and
`SquareSource^{norm}.A` would also pay the active-square reserve.  The current
audits do not install either theorem from `OriginalSmoothData`; both reduce
back to the same source-pulse / scale-critical reserve.

```math
\textbf{Branch reserve or Zeno rigidity.}
```

A branch-reserve theorem would control the terminal donor-tail pairing in
`(H1)`.  The current Zeno compactness extraction supplies an ancient local
suitable source-residue limit, but no produced rigid class `B` and no
applicable residue Liouville theorem are installed.

Therefore the implication `(R)` is valid but conditional on exactly the missing
kind of theorem.

## Scalar Obstruction Rechecked

The obstruction is already present at the scalar ledger level.  Let the only
nonzero shell on `I_m` be

```math
D_{m+5}(t)=A_m h_m^{-1}\mathbf 1_{I_m}(t),
\qquad |I_m|=h_m.
```

Then the first moment paid by energy is

```math
\int_{I_m}D_{m+5}(t)\,dt=A_m.
```

But the `k=m` contribution to `(STC)` is

```math
\int_{I_m}
2^m
\left(
\sum_{\ell>m+4}D_\ell(t)
\right)^2dt
=
2^mA_m^2h_m^{-1}.
```

Choosing terminal heat windows with

```math
h_m:=2^mA_m^2
```

sets this contribution equal to \(1\) while `A_m\to0`.  This does not assert an
actual Navier-Stokes solution; it shows that the installed scalar ledgers
cannot prove `(STC)` without a theorem forbidding source-balanced terminal
active pulses.

Equivalently, for this pulse

```math
H_{N,\mathrm{model}}(t):=2^mA_mh_m^{-1}
```

on `I_m`, so the exact missing input is the active-window height / amplitude
gain in `(H2)`.

## Theorem-Facing Verdict

The direct branch remains:

```math
\boxed{
ParentSquareEmbed.A
\text{ installed,}
\qquad
ScaleCriticalTreeCarleson.A
\text{ open.}
}
```

This note installs no proof of `ScaleCriticalTreeCarleson.A`.

The strongest valid theorem-facing reduction is:

```math
\boxed{
c_H
\int_I
\sum_{\ell>N+L_0}D_\ell(t)
\left[
2^\ell
\sum_{m>\ell+L_0}D_m(t)
\right]dt
\le
\int_I\sum_{k>N}2^kT_k(t)^2dt
\le
C_H
\int_I
\sum_{\ell>N}D_\ell(t)
\left[
2^\ell
\sum_{m>\ell+L_0}D_m(t)
\right]dt.
}
```

Thus the active source wall would close if one independently proved an
active-window height bound, an active-shell amplitude gain, a normalized
square-source theorem, a scale-normalized branch-reserve theorem, or a Zeno
rigidity theorem.  None of those inputs is installed on the current live
authority surfaces.

So the exact remaining obstruction is:

```math
\boxed{
\text{control the scale-critical active-window donor-tail height}
\quad
2^\ell\sum_{m>\ell+L_0}D_m(t)
\quad
\text{on terminal high-shell windows.}
}
```

Until that control, or the alternate rigid Zeno package, is proved, the direct
root theorem `ScaleCriticalTreeCarleson.A` remains open.
