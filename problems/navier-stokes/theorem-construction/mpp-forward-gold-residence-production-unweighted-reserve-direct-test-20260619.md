# MPP Forward Gold Residence Production / Unweighted Reserve Direct Test

Date: 2026-06-19

## Status

Direct production test complete.  The remaining forward-gold supplier is not a
new terminal anti-atom label.  It is the production of an unweighted terminal
critical reserve on the actual selected source/residual-refill carrier.

Current Navier-Stokes inputs do not prove that production.  They prove
visibility, fixed-radius payment, finite-chain material accounting, conditional
source-square-to-trace modulus, and CM Part/Field routing of the failure branch.

## 1. The exact production target

For a selected terminal heat-scale packet at frequency \(2^j\), write the
native shell balance in energy currency:

\[
{1\over2}{d\over dt}E_j(t)+c_0\nu D_j(t)
\le \Phi_j^+(t)+Legal_j(t),
\tag{RPU.1}
\]

where

\[
\Phi_j^+(t)
=
\left[
-2^{2j}
\left\langle
\Delta_j\mathbb P\nabla\cdot(u\otimes u),u_j
\right\rangle
\right]_+ .
\tag{RPU.2}
\]

The source-square / residence production theorem would have to give a
same-witness estimate stronger than finite \(L^1_t\) source mass, for example

\[
\int_I 2^{-j}\left(\Phi_j^+(t)\right)^2\,dt
\le
Small_j(I)+Legal_j(I),
\tag{RPU.3}
\]

or the residual-refill version

\[
\int_I2^{-j}\left(D_j^{res}(t;t_0)\right)^2\,dt
\le
Small_j(I)+Legal_j(I).
\tag{RPU.4}
\]

Either estimate is a same-carrier \(L^1\)-to-\(L^2\) upgrade.  It is the
energy-currency form of source-square, super-\(L^1\) residence, terminal strip
modulus, and strict no-waste.

## 2. Why it would close the terminal atom

On a selected packet with normalized time \(s=(t-T)/2^{-2j}\), define

\[
G_j(s)=2^{-j/2}\Phi_j^+(T+2^{-2j}s).
\tag{RPU.5}
\]

Then

\[
\int_{-1}^{0}G_j(s)^2\,ds
=
\int_{T-2^{-2j}}^T
2^{-j}\left(\Phi_j^+(t)\right)^2\,dt.
\tag{RPU.6}
\]

If the actual selected positive source density \(a_j(s)\) is dominated by
\(G_j(s)\) up to legal residue,

\[
a_j(s)\le C\,G_j(s)+\ell_j(s),
\tag{RPU.7}
\]

and \(\ell_j\) has its own terminal strip modulus, while the square density is
uniformly bounded,

\[
\sup_j\int_{-1}^{0}G_j(s)^2\,ds\le C_\square ,
\tag{RPU.7a}
\]

then Cauchy--Schwarz gives

\[
\begin{aligned}
\int_{-\varepsilon}^{0}a_j(s)\,ds
&\le
C\int_{-\varepsilon}^{0}G_j(s)\,ds
+
\int_{-\varepsilon}^{0}\ell_j(s)\,ds \\
&\le
C C_\square^{1/2}\varepsilon^{1/2}
+
\int_{-\varepsilon}^{0}\ell_j(s)\,ds .
\end{aligned}
\tag{RPU.8}
\]

Taking \(\limsup_j\) and then \(\varepsilon\downarrow0\) gives the moving-packet
terminal strip modulus.  Thus the logical chain is:

\[
\boxed{
\text{same-carrier source-square}
+
\text{selected carrier domination}
\Longrightarrow
\text{terminal time-face anti-atom}.
}
\tag{RPU.9}
\]

This implication is paid.  The production of its hypotheses is not paid.

## 3. Heat-scale counter-scaling to production from current inputs

Finite local source mass gives only an \(L^1_t\) statement:

\[
\int_I\Phi_j^+(t)\,dt<\infty.
\tag{RPU.10}
\]

On a heat-scale interval

\[
h_j=2^{-2j},
\qquad
I_j=(T-h_j,T],
\tag{RPU.11}
\]

take the source-balanced model

\[
\Phi_j^+(t)=H_j\,\mathbf 1_{I_j}(t),
\qquad
H_j=2^{3j/2}.
\tag{RPU.12}
\]

Then the first moment tends to zero:

\[
\int_{I_j}\Phi_j^+(t)\,dt
=H_jh_j
=2^{-j/2}\to0.
\tag{RPU.13}
\]

But the scale-critical square is order one:

\[
\int_{I_j}2^{-j}\left(\Phi_j^+(t)\right)^2dt
=2^{-j}H_j^2h_j
=1.
\tag{RPU.14}
\]

This is not asserted as a Navier-Stokes solution.  It is the exact scaling
obstruction to deriving `(RPU.3)` from finite \(L^1_t\) source mass, local
energy, fixed-radius participation, or finite material-chain accounting.

## 4. What participation supplies

The corrected participation law says the packet is not private.  In heat-scale
variables it is governed by the same coupled interface:

\[
\partial_s v+(v\cdot\nabla)v+\nabla q
 +{1\over2}y\cdot\nabla v+{1\over2}v
=\nu\Delta v,
\qquad
\nabla\cdot v=0.
\tag{RPU.15}
\]

Material packets give the exact stress-work identity

\[
{d\over ds}E_\Lambda(s)
 +2\nu\int_{\Lambda(s)}|S_y(v)|^2
=
\int_{\partial\Lambda(s)}
v\cdot(-qI+2\nu S_y(v))n\,dA
 +{1\over2}E_\Lambda(s).
\tag{RPU.16}
\]

The physical energy is \(e^{-s/2}E_\Lambda(s)\).  Thus physical participation
controls a discounted log-time budget, or equivalently a radius-weighted
physical sum.  It does not control the unweighted normalized square in
`(RPU.3)` or `(RPU.4)`.

## 5. What current source-square notes prove

The installed source-square bridge proves:

\[
\text{SourceSquareReserve.A}
+
\text{SelectedSourceSquareCarrierDomination.A}
\Longrightarrow
\text{TerminalMovingPacketTraceModulus.A}.
\tag{RPU.17}
\]

The selected carrier-domination test shows what the second input means.  For
the native positive carrier

\[
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+,
\tag{RPU.18}
\]

one needs either a same-packet coefficient throttle, a source-weighted product
estimate, or signed/polar saturation of the selected positive carrier.  Trace
free strain, incompressibility, local energy, pressure recovery, and signed
cancellation do not prove this after positive-part selection.

## 6. Branch compression

The fixed-band endpoint branch has already been compressed:

\[
\text{FBE endpoint survivor}
\Longrightarrow
\text{SourceSquareReserve.A pass}
\ \vee\
\neg Pack_Q
\ \vee\
\neg Part_{N,Q}
\ \vee\
\forall r>0\,\neg Field_{N,r,Q}.
\tag{RPU.19}
\]

The low-high source-time branch has also been compressed:

\[
\text{uniform super-}L^1\text{ residence}
\Longrightarrow
\text{atom vanishes},
\tag{RPU.20}
\]

while absence of residence produces an infinite-cost endpoint artifact landing
as \(\neg Pack_Q\) when no positive-scale retained-carrier bridge exists.

So the forward-gold path has one remaining production wall:

\[
\boxed{
\text{produce the same-carrier unweighted reserve}
}
\tag{RPU.21}
\]

or the retained failure goes to the CM Part/Field machinery instead of becoming a
hidden forward-gold terminal atom.

## Verdict

The current inputs prove the conditional no-jump mechanism and the CM readout
of the no-reserve branch.  They do not prove the same-witness \(L^1\)-to-\(L^2\)
production theorem on the actual selected source/residual-refill carrier.

Equivalently:

\[
\boxed{
\text{finite }L^1_t\text{ source/refill}
\not\Rightarrow
\text{same-carrier source-square / strict no-waste}.
}
\tag{RPU.22}
\]

The remaining non-alias gold supplier is exactly:

\[
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{RPU.23}
\]

in one of its equivalent selected-carrier forms:

\[
\text{SourceSquareReserve.A}
,\quad
\text{SelectedCriticalStrainCarleson.A}
,\quad
\text{NormalizedCKNCarleson.A}
,\quad
\text{UnweightedMaterialStressWorkCarleson.A}
,\quad
\text{StrictRescaledNoWasteLyapunov.A}.
\tag{RPU.24}
\]

At present those are not separate solved routes.  They are names for the same
unweighted heat-scale coercive production theorem.
