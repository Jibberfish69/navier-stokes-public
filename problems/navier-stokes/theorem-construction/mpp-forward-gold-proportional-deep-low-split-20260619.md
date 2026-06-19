# MPP Forward Gold Proportional Deep-Low Split

Date: 2026-06-19

## Status

Direct proportional-gap test complete.  The old strict-low packet should not be
treated as one fixed-cutoff coefficient problem.  If the low input frequency is
genuinely below the output frequency in the proportional sense

\[
k\le \frac45 j-\Gamma,
\]

then the gap kernel in the commutator makes that part absorbable by viscosity
from the energy surface alone, after choosing \(\Gamma\) large enough depending
only on the dyadic constants, \(\nu\), and the energy bound.

The surviving part is not truly low-mode.  It is the shallow off-diagonal band

\[
\frac45j-\Gamma<k<j-4.
\]

Inside the old fixed-cutoff strict-low region \(k\le N-4\), this shallow band
can occur only for output shells

\[
N\le j\le \frac54N+O_\Gamma(1).
\]

So the live unpaid object is a high-frequency mesoscopic threshold band, not a
global low-mode coefficient.  It should be routed with the lifted mesoscopic
stress-strain flux / middle-band packet rather than left as the false target
\(\mathcal L_NT_N\).

## 1. Kernel pair estimate

For \(j\ge N\) and \(k<j-4\), the kernel commutator estimate already recorded
in `scale-kernelized-lifted-band-reduction-lemma.md` gives a pair bound of the
form

\[
|I_{j,k}|
\le
C_{\rm comm}
2^{-(j-k)}
2^{3k/2}\|\Delta_k u\|_2
\|\nabla\Delta_j u\|_2
\|\Delta_j u\|_2 .
\tag{PDL.1}
\]

This is the important version.  Collapsing it immediately to the fixed
\(\mathcal L_N\) coefficient throws away the decisive factor
\(2^{-(j-k)}\).

## 2. Deep-low absorption

Let

\[
E=\sup_t\|u(t)\|_2^2.
\]

Then \(\|\Delta_k u(t)\|_2\le E^{1/2}\), and for the deep-low subrange

\[
k\le \frac45j-\Gamma,
\]

the coefficient sum obeys

\[
\sum_{k\le \frac45j-\Gamma}
2^{-(j-k)}
2^{3k/2}\|\Delta_k u\|_2
\le
C E^{1/2}2^j2^{-5\Gamma/2}.
\tag{PDL.2}
\]

Choose \(\Gamma\) so large that

\[
C E^{1/2}2^{-5\Gamma/2}
\le
\frac{\eta\nu c_\nabla}{16},
\]

where \(c_\nabla 2^j\|\Delta_j u\|_2\le\|\nabla\Delta_j u\|_2\).  Combining
\((\mathrm{PDL}.1)\) and \((\mathrm{PDL}.2)\) gives

\[
\sum_{k\le \frac45j-\Gamma}|I_{j,k}|
\le
\frac{\eta\nu}{16}
\|\nabla\Delta_j u\|_2^2 .
\tag{PDL.3}
\]

Summing over \(j\ge N\),

\[
\sum_{j\ge N}
\sum_{k\le \frac45j-\Gamma}|I_{j,k}|
\le
\frac{\eta\nu}{16}D_N .
\tag{PDL.4}
\]

Thus the genuinely deep-low portion is closed on the baseline energy surface.

## 3. The remaining shallow band

The remainder is

\[
\mathcal B_{\rm shallow}
=
\{(j,k): j\ge N,\ \frac45j-\Gamma<k<j-4\}.
\]

This is an off-diagonal high-frequency band.  In the old fixed-cutoff
strict-low sector \(k\le N-4\), it also satisfies

\[
j
<
\frac54(N-4+\Gamma),
\]

so it is confined to the mesoscopic threshold output range.

This is exactly why the old strict-low coefficient target was too blunt:
near the threshold, the fixed low cutoff \(S_{N-4}\) still contains frequencies
that are high relative to the solution and only shallowly separated from the
output shell.

## 4. Consequence for the scale barrier

The strict-low obstruction should be replaced by the split

\[
\text{deep-low}
\quad+\quad
\text{shallow mesoscopic threshold band}.
\]

The first term is absorbed by \((\mathrm{PDL}.4)\).  The second term belongs to
the same family as the lifted middle-band / mesoscopic stress-strain packet.
It still requires a theorem-grade flux or Carleson-type control, but it is no
longer correctly described as a global low-mode coefficient problem.

So the sharpened live packet is:

\[
\boxed{
\text{ShallowLowMesoscopicFluxBound.A}
}
\]

or, if it is merged with the existing lifted packet,

\[
\boxed{
\text{LiftedMesoscopicStressStrainFluxBound.A}
\text{ with the shallow-low band included.}
}
\]

## Result

This note closes the proportional deep-low subpacket.  It does not close the
scale barrier.  It removes one false wall: the fixed-cutoff strict-low loss is
not a single unavoidable \(\mathcal L_N^2T_N\) obstruction.  After the
proportional split, the unpaid term is the mesoscopic shallow band near the
threshold.
