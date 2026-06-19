# MPP Forward Gold Shallow-Low Middle-Band Routing

Date: 2026-06-19

## Status

Routing complete.  The shallow-low remainder left by
`mpp-forward-gold-proportional-deep-low-split-20260619.md` is not a new
independent theorem family.  It is the dyadic form of the existing middle-band
mesoscopic flux problem.

After the proportional split, the unpaid frequency pairs satisfy

\[
\frac45j-\Gamma<k<j-4.
\]

The lower frequency \(k\) is still comparable to the active output frequency
\(j\).  This is exactly the middle-band geometry: neither same-scale finite
collar nor genuinely deep-low transport.

## 1. Identification with the middle-band packet

The middle-band note works with the continuum active scale \(\ell\) and lower
scale \(r\), with

\[
r\ge c_1\ell .
\]

Dyadically, this is the same relation as

\[
k\le j-C_1.
\]

The shallow-low remainder is the subregion where \(k\) is below \(j\), but not
far below it.  In the continuum split from
`middle-band-flux-gap-kernel-theorem.md`, this lands in:

1. the near-corona term, when \(r/\ell\) stays inside a bounded ratio window;
2. the far-corona term, when the ratio is larger and the explicit kernel
   \(\ell/r\) appears.

So the right routing is:

\[
\text{shallow-low dyadic band}
\subset
\text{middle-band mesoscopic flux}.
\]

## 2. What this routing proves

This routing proves that

\[
\text{ShallowLowMesoscopicFluxBound.A}
\]

should not be promoted as a separate fourth scale-barrier child.

It is consumed by the already-existing middle-band package:

\[
\text{moving spill theorem}
\quad+\quad
\text{far-corona two-scale square/Carleson theorem}.
\]

The near-corona side is the moving spill theorem

\[
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\frac{\eta\nu}{16}\int_0^T D_N(t)\,dt
+C_{L,*}2^{-2\delta N}.
\]

The far-corona side is the two-scale density theorem for

\[
\mathcal A_{\ell,r}(t)
=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx,
\qquad r\ge c_1\ell,
\]

with kernel

\[
\frac{\ell}{r}.
\]

The direct continuum sufficient theorem is \((\mathrm{CTS})\).  If it is
collapsed dyadically by the inherited Euclidean estimates, it becomes the
lower-prefix active-square theorem \((\mathrm{LPAS})\).

## 3. What remains open

This note does not prove the middle-band estimate.  It only removes duplicated
frontier language.  The follow-up note
`mpp-forward-gold-moving-spill-weighted-carrier-resolution-20260619.md` proves
that the moving-spill side is controlled on the weighted-carrier surface.

The remaining middle-band burden on that route is therefore:

\[
\boxed{
\text{FarCoronaTwoScaleCarleson.A}
}
\]

or equivalently a direct continuum \((\mathrm{CTS})\) theorem strong enough to
imply the far-corona Carleson estimate.  If the direct continuum theorem is not
proved, the known dyadic fallback is

\[
\boxed{
\text{LPAS}
}
\]

and `lower-prefix-active-square-theorem.md` records why that fallback is not
currently discharged by the inherited Euclidean queue.

## Result

The scale-barrier tree is smaller after this routing:

\[
\text{fixed-cutoff strict-low}
\longrightarrow
\text{deep-low absorption}
+\text{middle-band mesoscopic flux}.
\]

The deep-low term is paid.  The near-corona moving-spill term is controlled on
the weighted-carrier surface.  The remaining unclosed middle-band term is the
far-corona lifted stress-strain / CTS / LPAS family.
