# MPP Forward Gold Selected Source-Square Carrier Domination Test

Date: 2026-06-19

## Status

Direct carrier-domination test complete.  The bridge needed by
`mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md` is not a
formal consequence of the source-square tail alone.

The missing comparison is exactly the native positive trilinear carrier
problem:

\[
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+.
\tag{SSC.1}
\]

To dominate this carrier by the square-reserve density, the low-strain
coefficient must be controlled on the same selected packet, or the product
itself must be charged by a source-weighted theorem.

## 1. The needed domination

For a selected packet with \(r=2^{-j}\), write

\[
D_j(t)=\nu r^{-2}\|w_j(t)\|_2^2
\tag{SSC.2}
\]

up to the fixed Littlewood--Paley constants used in the route.  The square
trace bridge uses the normalized tail density

\[
G(s)=r^{1/2}T_j(T+r^2s),
\qquad
T_j(t)=\sum_{\ell>j+4}D_\ell(t).
\tag{SSC.3}
\]

The selected source density has the schematic normalized form

\[
a(s)
\sim
r^{1/2}
\int
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
\,dx .
\tag{SSC.4}
\]

Thus \(a(s)\le C G(s)+\ell(s)\) follows from a same-packet coefficient throttle

\[
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
\le
C\nu r^{-2}
\tag{SSC.5}
\]

on the selected source carrier, modulo legal residue.  More generally it
follows from the weighted product estimate

\[
\int
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
dx
\le
C\,T_j(t)
+\operatorname{Legal}_j(t)
\tag{SSC.6}
\]

on the same selected moving packet.

These are the concrete meanings of
`SelectedSourceSquareCarrierDomination.A`.

## 2. What current inputs supply

Energy gives the high-shell square amplitude through \(D_j\).  It does not
bound the low-strain coefficient in `(SSC.5)`.

Incompressibility gives

\[
\operatorname{tr}S_{<j}^{loc}=0,
\tag{SSC.7}
\]

but a trace-free symmetric matrix may still have a positive expanding
eigendirection.  If

\[
S_{<j}^{loc}e_j=\lambda_j e_j,
\qquad
\lambda_j>0,
\qquad
w_j\parallel e_j,
\tag{SSC.8}
\]

then the selected carrier is

\[
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
\lambda_j |w_j|^2.
\tag{SSC.9}
\]

So the sign structure gives redistribution, not a one-sided domination after
positive-part selection.

Local energy sees the same carrier as the refill/source term:

\[
\partial_tE_P+D_P
\le
\langle S_{<j}^{loc}w_j,w_j\rangle
+\operatorname{div}J_P
+\operatorname{Legal}_P.
\tag{SSC.10}
\]

It does not absorb the positive part unless one already has

\[
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
\le
\theta D_P+\operatorname{legal/source\ charge},
\qquad
0<\theta<1.
\tag{SSC.11}
\]

That is the same source-balanced heat-scale problem.

## 3. Exact reduction

The carrier-domination theorem is therefore equivalent, at this route
resolution, to one of the existing native source controls:

\[
\boxed{
SelectedSourceSquareCarrierDomination.A
\Leftarrow
CoeffBound.A
\quad\text{or}\quad
ActiveAmplitudeCarleson.A
\quad\text{or}\quad
AlignmentDecorrel.A
}
\tag{SSC.12}
\]

provided the chosen face is strong enough on the same selected source-weighted
packet.

Equivalently, it is supplied by a direct product estimate

\[
\boxed{
NativeTrilinearDefectDomination.A
}
\tag{SSC.13}
\]

or by a no-free signed-carrier theorem that routes all positive selected mass
to a retained signed partner, legal cost, or finite donor depletion:

\[
\boxed{
SelectedPositivePolarSaturation.A
\quad\text{/}\quad
TerminalSignedSaturation.A
\quad\text{/}\quad
NoFreeTerminalZenoDonorChain.A.
}
\tag{SSC.14}
\]

The finite signed-partner and finite donor cases are paid by the existing
donor-graph reductions.  The surviving unproved case is the infinite terminal
Zeno donor chain.

## 4. Consequence for the source-square route

The chain now has three distinct steps:

\[
\boxed{
SourceSquareReserve.A
+SelectedSourceSquareCarrierDomination.A
\Longrightarrow
TerminalMovingPacketTraceModulus.A.
}
\tag{SSC.15}
\]

The first step supplies an \(L_s^2\) bound for the normalized square density.
The second identifies the selected positive source with that density on the
same packet.  The third is only Cauchy--Schwarz and gives the
\(\varepsilon^{1/2}\) terminal strip modulus.

Thus the remaining mathematical work is not the Cauchy--Schwarz strip estimate.
It is either:

\[
\text{prove the square reserve and the carrier domination,}
\tag{SSC.16}
\]

or

\[
\text{admit the surviving unsaturated positive carrier as a CM Pack/Part/Field
face witness.}
\tag{SSC.17}
\]

## Boundary

This note does not close the gold route.  It prevents a hidden overclaim:
`SourceSquareReserve.A` kills the time-face atom only after the selected native
positive source is actually dominated by the source-square density.  Current
inputs do not prove that domination from trace-free strain, incompressibility,
local energy, pressure recovery, or signed cancellation alone.
