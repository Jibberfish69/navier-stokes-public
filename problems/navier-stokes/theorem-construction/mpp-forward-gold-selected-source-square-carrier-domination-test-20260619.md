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

For a selected active shell \(j\), choose the source-square parent index

\[
k=j-C_0,
\qquad C_0\ge5,
\tag{SSC.1a}
\]

so

\[
2^{-k}=2^{C_0}2^{-j}.
\tag{SSC.1b}
\]

Write

\[
D_j(t)=\nu r^{-2}\|w_j(t)\|_2^2
\tag{SSC.2}
\]

with \(r=2^{-j}\) in the packet normalization used in this route.  The square
trace bridge uses the parent-tail density

\[
T_k(t)=\sum_{\ell>k+4}D_\ell(t).
\tag{SSC.3}
\]

Since \(j>k+4\), the selected shell is included:

\[
D_j(t)\le T_k(t).
\tag{SSC.3a}
\]

The normalized source-square density is therefore, after the fixed shift,

\[
G(s)=2^{-k/2}T_k(T+2^{-2k}s),
\qquad
2^{-k/2}=2^{C_0/2}r^{1/2}.
\tag{SSC.3b}
\]

The selected source density has, after the fixed normalization constants used
for this packet, the form

\[
a(s)
=
C_{LP}\,r^{1/2}
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

on the selected source carrier, modulo legal residue, because `(SSC.5)` gives

\[
a(s)
\le
C\,r^{1/2}D_j(T+r^2s)
\le
C\,2^{-k/2}T_k(T+2^{-2k}s)
\tag{SSC.5a}
\]

after absorbing the fixed dyadic shift into the constants.  More generally it
follows from the weighted product estimate

\[
\int
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
dx
\le
C\,T_k(t)
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

The heat-scale coefficient supplement
`mpp-forward-gold-heat-scale-coefficient-throttle-direct-test-20260619.md`
tests the most literal coefficient route.  It shows that energy, enstrophy, and
Bernstein give a constant \(C_B<\infty\) such that

\[
\int_{I_j}\|S_{<j}^{loc}(t)\|_\infty\,dt
\le
C_BA_t^{1/2}
2^{j/2}\nu^{-1}
\left(\int_{I_j}\mathcal D(t)\,dt\right)^{1/2},
\tag{SSC.12a}
\]

so a coefficient residence bound by a fixed constant \(C_0\) requires the
stronger heat-window rate

\[
\int_{I_j}\mathcal D(t)\,dt
\le
\left({C_0\over C_BA_t^{1/2}}\right)^2\nu^2 2^{-j}.
\tag{SSC.12b}
\]

Finite \(L^1_t\) dissipation gives smallness on shrinking windows, but not this
specific \(O(2^{-j})\) rate.  Thus `CoeffBound.A` is not a cheap consequence of
the energy ledger; it needs selected critical strain, selected heat-window
dissipation rate, or direct native product control.

Equivalently, it is supplied by a direct product estimate

\[
\boxed{
NativeTrilinearDefectDomination.A
}
\tag{SSC.13}
\]

or by a no-free signed-carrier theorem only after it is upgraded to a
same-window, square-compatible carrier domination statement.  A theorem that
routes only the total positive selected mass to a retained signed partner, legal
cost, or finite donor depletion gives linear control, not the \(L_s^2\) control
needed here:

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

The finite signed-partner and finite donor cases are paid linearly by the
existing donor-graph reductions.  They are square-paid only if the retained
partner remains on the same heat window with comparable height, or if the
spreading defect is charged to a square/source-Carleson/no-waste ledger.  The
surviving unproved linear case is the infinite terminal Zeno donor chain; the
surviving square upgrade is the square donor no-spreading problem.

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
