# MPP Forward Gold Strict-Low Coefficient Preservation Damped Test

Date: 2026-06-19

## Status

Direct strict-low coefficient test complete.  The retained tail damping removes
the old bare-Gronwall obstruction only if the strict-low commutator lands on
the coefficient surface

\[
\mathcal L_N(t)T_N(t).
\]

The current kernel proof does not yet prove that coefficient-preserving form.
It naturally gives either a Lipschitz low-mode coefficient \(K_N(t)T_N(t)\), or
after Young's inequality a squared coefficient \(\mathcal L_N(t)^2T_N(t)\).
Both are too large for the \(2^{2N}\) damping under only the energy surface.

So strict-low is still a live packet theorem.  The corrected statement is not
"strict-low is closed"; it is:

\[
\boxed{
\text{strict-low closes once the commutator is proved on }
\mathcal L_NT_N+\varepsilon Q_N.
}
\]

## 1. The estimate that would be enough

Let

\[
T_N(t)=\|P_{\ge N}u(t)\|_2^2,
\qquad
Q_N(t)=\|\nabla P_{\ge N}u(t)\|_2^2,
\]

and

\[
\mathcal L_N(t)
=
1+\sum_{k\le N-4}2^{3k/2}\|\Delta_k u(t)\|_2.
\]

The desired strict-low estimate is

\[
\mathcal N_{N,{\rm strict}}(t)
\le
C\mathcal L_N(t)T_N(t)
+\varepsilon\nu Q_N(t).
\tag{SLCP.1}
\]

If \((\mathrm{SLCP}.1)\) is true, then the tail damping absorbs it.  Indeed,
the energy bound gives

\[
\mathcal L_N(t)\le 1+C_E^{1/2}2^{3N/2},
\]

while

\[
Q_N(t)\ge c_{\rm LP}2^{2N}T_N(t).
\]

For large \(N\), \(2^{2N}\) dominates \(2^{3N/2}\), so

\[
C\mathcal L_N(t)T_N(t)
\le
\frac{\nu c_{\rm LP}}4 2^{2N}T_N(t)
\le
\frac{\nu}{4}Q_N(t).
\]

Thus the coefficient-preserving form \((\mathrm{SLCP}.1)\) is genuinely enough.

## 2. What the direct commutator gives

For the strict-low transport commutator,

\[
\left\langle
[\Delta_j,S_{N-4}u\cdot\nabla]\Delta_j u,
\Delta_j u
\right\rangle,
\]

the standard kernel estimate gives

\[
\left|
\left\langle
[\Delta_j,S_{N-4}u\cdot\nabla]\Delta_j u,
\Delta_j u
\right\rangle
\right|
\le
C\|\nabla S_{N-4}u\|_\infty
\|\Delta_j u\|_2^2.
\]

The coefficient here is

\[
K_N(t):=\|\nabla S_{N-4}u(t)\|_\infty
\le
C\sum_{k\le N-4}2^{5k/2}\|\Delta_k u(t)\|_2.
\]

Energy alone gives

\[
K_N(t)\le C C_E^{1/2}2^{5N/2}.
\]

This is not absorbable by the tail damping \(2^{2N}\).  The factor is too large
by \(2^{N/2}\).

So the basic Lipschitz commutator estimate is insufficient.

## 3. The fixed-gap trade does not solve it by itself

The attempted fixed-gap rewrite uses

\[
2^{-j}\|\nabla\Delta_k u\|_\infty
\lesssim
2^{3k/2}\|\Delta_k u\|_2
\]

and leaves one high derivative:

\[
\left|
\left\langle
[\Delta_j,\Delta_k u\cdot\nabla]\widetilde\Delta_j u,
\Delta_j u
\right\rangle
\right|
\lesssim
2^{3k/2}\|\Delta_k u\|_2
\|\nabla\Delta_j u\|_2
\|\Delta_j u\|_2.
\]

After summing \(k\le N-4\), this becomes

\[
\mathcal L_N(t)
\|\nabla\Delta_j u\|_2
\|\Delta_j u\|_2.
\]

Young's inequality gives

\[
\mathcal L_N
\|\nabla\Delta_j u\|_2
\|\Delta_j u\|_2
\le
\varepsilon\nu\|\nabla\Delta_j u\|_2^2
+C_{\varepsilon,\nu}\mathcal L_N^2\|\Delta_j u\|_2^2.
\]

Summing in \(j\) yields

\[
\varepsilon\nu Q_N(t)+C_{\varepsilon,\nu}\mathcal L_N(t)^2T_N(t),
\]

not \((\mathrm{SLCP}.1)\).

Under the energy bound,

\[
\mathcal L_N(t)^2\lesssim 2^{3N},
\]

which is again too large for the \(2^{2N}\) tail damping.

## 4. The derivative-trade version also fails pointwise

One may also use

\[
\|\Delta_j u\|_2\lesssim 2^{-j}\|\nabla\Delta_j u\|_2
\]

to get

\[
\mathcal L_N
\|\nabla\Delta_j u\|_2
\|\Delta_j u\|_2
\lesssim
2^{-N}\mathcal L_N
\|\nabla\Delta_j u\|_2^2.
\]

But

\[
2^{-N}\mathcal L_N(t)
\le
C C_E^{1/2}2^{N/2},
\]

which is not a small coefficient.  This does not give pointwise absorption
into \(\nu Q_N\).

## 5. Exact remaining theorem

The strict-low packet is now reduced to a precise coefficient-preservation
problem:

\[
\boxed{
\text{StrictLowModeCoefficientPreservingCommutator.A}
}
\]

meaning a theorem that proves the strict-low contribution in the exact form

\[
\mathcal N_{N,{\rm strict}}
\le
C\mathcal L_NT_N+\varepsilon\nu Q_N
\]

without producing \(K_NT_N\), \(\mathcal L_N^2T_N\), or
\(2^{-N}\mathcal L_NQ_N\).

A stronger low-mode coefficient theorem would also suffice, for example a
terminal estimate forcing

\[
K_N(t)=o(2^{2N})
\]

uniformly on the selected terminal surface.  But this is not supplied by the
energy inequality; it is a half-derivative stronger than the current low-mode
control near the threshold.

## Result

The tail-damping reconciliation remains correct, but it is conditional on a
strict-low commutator estimate that preserves the \(\mathcal L_NT_N\) surface.

The live scale-barrier packet list is therefore:

\[
\text{StrictLowModeCoefficientPreservingCommutator.A},
\]

\[
\text{ThresholdLocalSpillCollarBound.A},
\]

\[
\text{LiftedMesoscopicStressStrainFluxBound.A},
\]

plus aligned same-surface high-high absorption.

The strict-low line is not a solved theorem until the coefficient-preserving
commutator is proved without the squared or Lipschitz coefficient loss.
