# Thomas's derivative-covector incidence placement and amplitude-duality boundary

**Date:** 2026-08-04

**Status:** noncanonical exact tensor-placement theorem and checked no-gain
boundary inside Thomas Birnie's one-fluid, pressure-explicit binomial/VPI
reversible-intersection method.

This note answers the precise possibility left by (TPR.16b), (TAC.25),
and (ACP.18): perhaps the contracting-line projector was inserted into the
velocity-component slots when it should instead have been inserted into the
radial or Fourier **derivative covector** which makes the signed current.

The exact answer has two parts.

1. The derivative covector does occupy a distinguished slot in every ordered
   Navier--Stokes source term. In the pair law it is the radial covector in
   \(L\); in Fourier variables it is the differentiated-parent frequency
   contracted against the advecting parent. The six assignments retain all
   six placements.
2. Projecting that covector by a symmetric contracting-line projector is
   exactly dual to projecting the advecting amplitude in the slot against
   which it contracts. It gives an exact selected/complementary decomposition,
   but no new angle or sign. The lawful field in
   (TAC.13)--(TAC.25) carries its positive primitive current and its positive
   finite-chord pair entirely in the derivative-covector complement.

Thus the TPR/ACP boundary did not arise from putting the projector on the
wrong side of the contraction. What must not be done is to replace the true
differentiated-parent frequency by the output frequency through
incompressibility and only then project: that projected rewrite has an extra
term and is not the same operation.

The physical object remains one smooth finite-energy datum, one viscosity,
and one continuing velocity-pressure/material history. The radial pair,
Fourier triad, current/recent roles, co-normal, and first-binomial response are
simultaneous readings of that one history. No source, pressure field, or
projector is independently prescribed.

## 1. The radial covector is one symmetric component slot of \(QL\)

Use (BPT.1)--(BPT.3), but write the radial unit covector as \(\rho\) to
distinguish it from the transported material co-normal \(n\):

\[
 v:=\delta_{r,\rho}u(x),\qquad
 Q=|v|^2,\qquad L=v\cdot\rho.
 \tag{DCI.1}
\]

The fully polarized component tensor of the cubic \(QL\) is

\[
 \boxed{
 \mathbb T^\rho_{ijk}
 ={1\over3}\bigl(
 \rho_i\delta_{jk}+\rho_j\delta_{ik}+\rho_k\delta_{ij}
 \bigr),
 \qquad
 \mathbb T^\rho_{ijk}v_iv_jv_k=|v|^2(v\cdot\rho).}
 \tag{DCI.2}
\]

Consequently the radial covector is not outside the three velocity slots. It
occupies each one once in the symmetric polarization, while the other two
slots are paired by the Euclidean metric. This is the physical-space form of
the symmetric tensor in (STK.6a).

Let \(W=W^T\) be any same-history selected-line weight, including

\[
 W=\chi P_-,\qquad P_-=e_-\otimes e_-,\qquad C:=I-W.
 \tag{DCI.3}
\]

The covector/amplitude duality is the pointwise identity

\[
 \boxed{(W\rho)\cdot v=\rho\cdot(Wv).}
 \tag{DCI.4}
\]

It gives the unconditional derivative-slot decomposition

\[
 \boxed{
 QL
 =Q\,\rho\cdot(Wv)+Q\,\rho\cdot(Cv)
 =Q\,(W\rho)\cdot v+Q\,(C^T\rho)\cdot v.}
 \tag{DCI.5}
\]

Thus putting \(W\) on the radial covector is exactly the dual notation for
putting it on the velocity increment against which that covector contracts.
If the two copies inside \(Q\) are also expanded with \(W+C=I\), (DCI.5)
becomes the assignment-resolved version of the three-slot TPR expansion.
Because (DCI.2) cycles the radial covector through the three slots, the
derivative-selected subtotal is a sum of assignment-resolved pieces; it is
not one predetermined TPR pattern.

Incompressibility supplies only the fully recombined spherical cancellation

\[
 \int_{\mathbb S^2}L(x,r,\rho)\,d\sigma(\rho)=0.
 \tag{DCI.6}
\]

It does not separately force the spherical means of \(\rho\cdot Wv\) and
\(\rho\cdot Cv\) to vanish. Therefore the BPT covariance remains

\[
 \mathscr C_u(x,r)
 =\int_{\mathbb S^2}Q\,\rho\cdot Wv\,d\sigma
  +\int_{\mathbb S^2}Q\,\rho\cdot Cv\,d\sigma,
 \tag{DCI.7}
\]

with no sign assigned to either part.

## 2. Exact derivative-covector placement in one ordered Fourier source

At one receiver time use (CDR.12). Let the output be \(\kappa\), the
advecting input be \(\pi\), and the differentiated input be

\[
 \theta:=\kappa-\pi.
 \tag{DCI.8}
\]

For the scalar core mask \(\chi_{\rm core}\), one ordered pressure-complete
source term is

\[
 \widehat Q_{\kappa;\pi,\theta}
 =-i\chi_{\rm core}\,
 \mathbb P_\kappa
 \left[(\widehat A(\pi)\cdot\theta)\widehat B(\theta)\right].
 \tag{DCI.9}
\]

Pair it with a divergence-free critical receiver \(\widehat R(\kappa)\).
Before using self-adjointness of the Leray projector, the exact component
tensor is

\[
 \boxed{
 \mathbb M^{\kappa;\pi,\theta}_{ij\ell}
 =-i\chi_{\rm core}|\kappa|
 (\mathbb P_\kappa)_{i\ell}\theta_j.}
 \tag{DCI.10}
\]

Indeed,

\[
 \begin{aligned}
 &\overline{\widehat R_i(\kappa)}
 \mathbb M^{\kappa;\pi,\theta}_{ij\ell}
 \widehat A_j(\pi)\widehat B_\ell(\theta)\\
 &\qquad
 =-i\chi_{\rm core}|\kappa|
 (\widehat A(\pi)\cdot\theta)
 \overline{\widehat R(\kappa)}\cdot
 \mathbb P_\kappa\widehat B(\theta).
 \end{aligned}
 \tag{DCI.11}
\]

The pressure completion is the \(\mathbb P_\kappa\) in (DCI.10). It may
be removed only from this final scalar pairing because the receiver is
divergence-free; it remains in the source and every differentiated leg. The
opposite parent order interchanges \((\pi,A)\) and \((\theta,B)\). Repeating
the two orders for each of the three geometric outputs is exactly the
six-assignment placement retained by (CDR.13), (DRF.25)--(DRF.26), and
(STK.13)--(STK.19).

For the same symmetric \(W\), projecting the true derivative covector gives

\[
 \boxed{
 \widehat A(\pi)\cdot(W\theta)
 =(W\widehat A(\pi))\cdot\theta.}
 \tag{DCI.12}
\]

Thus the covector-side insertion is exactly the adjoint of the TPR insertion
on the **advecting** amplitude slot of this ordered assignment. In the
material kernel, the same statement is

\[
 \boxed{
 (W_a\mathbin{\cdot_1}K)_{ijk}F_{a,i}G_{b,j}H_{c,k}
 =K_{ijk}(W_aF_a)_iG_{b,j}H_{c,k},}
 \tag{DCI.13}
\]

and analogously in the other slots. This equality is pointwise at the actual
label and remains true when \(W\) varies. Differentiating a moving \(W\)
produces the membership and line-response terms already retained in
(TPR.8)--(TPR.12); selected and complementary responses still refund on
recombination.

There is one essential custody warning. Incompressibility gives

\[
 \widehat A(\pi)\cdot\theta
 =\widehat A(\pi)\cdot\kappa,
 \qquad \pi\cdot\widehat A(\pi)=0.
 \tag{DCI.14}
\]

But after projecting the covector,

\[
 \boxed{
 \widehat A(\pi)\cdot W\theta
 =\widehat A(\pi)\cdot W\kappa
  -\widehat A(\pi)\cdot W\pi,}
 \tag{DCI.15}
\]

and the last term need not vanish because \(W\pi\) need not be parallel to
\(\pi\). Therefore one must project the actual differentiated-parent
frequency \(\theta\), or equivalently the advecting amplitude by (DCI.12).
Projecting the output covector after the incompressibility rewrite is not the
same decomposition.

## 3. Six-assignment recombination gives the STK covector

When the three geometric leg fields are the same divergence-free field, let

\[
 k+p+q=0,\qquad A\perp k,\quad B\perp p,\quad D\perp q.
 \tag{DCI.16}
\]

Suppress the common imaginary normalization and reality completion. The six
output/parent-order placements have the tensor skeleton

\[
 \begin{aligned}
 \mathscr S_6={}&|k|\bigl[(k\cdot B)(A\cdot D)
                         +(k\cdot D)(A\cdot B)\bigr]\\
 &+|p|\bigl[(p\cdot D)(A\cdot B)
                         +(p\cdot A)(B\cdot D)\bigr]\\
 &+|q|\bigl[(q\cdot A)(B\cdot D)
                         +(q\cdot B)(A\cdot D)\bigr].
 \end{aligned}
 \tag{DCI.17}
\]

Put

\[
 m:=|k|k+|p|p+|q|q.
 \tag{DCI.18}
\]

Using only (DCI.16) and grouping the Euclidean pairings gives

\[
 \boxed{
 \mathscr S_6
 =(m\cdot A)(B\cdot D)
 +(m\cdot B)(A\cdot D)
 +(m\cdot D)(A\cdot B).}
 \tag{DCI.19}
\]

Restoring the common constant gives the STK vector
\(m_0=ci(k|k|+p|p|+q|q|)\) and (STK.6a). Thus \(m_0\) is not an extra
seventh covector: it is the recombined image of the six actual
differentiated-parent placements.

For the double-recent receiver, the current and recent fields differ, so the
six role assignments must remain explicit as in (DCI.10)--(DCI.11) and
(STK.13). The symmetric scalar mask does not move the derivative slot.
The first pressure-explicit binomial derivative also preserves it:

\[
 DQ(u)[V]
 =-\mathbb P\bigl((V\cdot\nabla)u+(u\cdot\nabla)V\bigr).
 \tag{DCI.20}
\]

Assignment by assignment,

\[
 (V\cdot W\nabla)u=((WV)\cdot\nabla)u,
 \qquad
 (u\cdot W\nabla)V=((Wu)\cdot\nabla)V.
 \tag{DCI.21}
\]

Therefore the derivative-covector split of the complete first-binomial
response is again the advecting-amplitude split, with both ordered
insertions, the output Leray projector, the complete incident source \(V=Q\),
and the viscous row retained. It creates no additional co-normal term.

## 4. The TAC field carries the current entirely in the covector complement

Use the lawful noncollinear triad and polarizations from (TAC.4)--(TAC.12):

\[
 \begin{gathered}
 k=(1,1,1),\quad p=(0,-1,0),\quad q=(-1,0,-1),\\
 A=(0,-1,1),\quad B=(0,0,-1),\quad D=(0,1,0),
 \end{gathered}
 \tag{DCI.22}
\]

with the phase \(iB\), the reality partners, and
\(W=e_1\otimes e_1\). Every possible advecting amplitude in every one of
the six ordered terms lies in \(e_1^\perp\). Hence, for every actual
differentiated-parent frequency \(d\),

\[
 \boxed{A_{\rm adv}\cdot Wd=(WA_{\rm adv})\cdot d=0.}
 \tag{DCI.23}
\]

All six derivative-selected contractions vanish separately, while their
complementary contractions reproduce the full pressure-complete value

\[
 \boxed{(Q(v),\Lambda v)_2=2(\sqrt2-1)>0.}
 \tag{DCI.24}
\]

Thus the all-complement calibration survives before the six terms are
recombined into \(m_0\); it is not an artifact of projecting the wrong
amplitude slot.

The same conclusion is more direct for the physical pair in
(TAC.18)--(TAC.25). There

\[
 R=
 \left(0,-{5\pi\over3},-{\pi\over3}\right),
 \qquad
 V={M\sqrt3\over2}(0,1,-1),
 \qquad e_-=e_1.
 \tag{DCI.25}
\]

Therefore \(WR=WV=0\), while \(V\cdot R<0\). With \(\rho=R/|R|\),

\[
 \boxed{
 Q(W\rho\cdot V)=0,
 \qquad
 Q(C\rho\cdot V)=Q(\rho\cdot V)<0,
 \qquad
 j_{xy}>0.}
 \tag{DCI.26}
\]

The positive chord contraction is carried entirely by the complement of the
contracting derivative covector. If Thomas's episodewise material co-normal
is initialized as \(n=e_-\), the selected co-normal slot is likewise zero at
this frozen slice. This is a lawful same-datum calibration, although it does
not claim to realize a canonical failed double-recent record over a whole
interval.

## 5. Exact verdict

The derivative-slot question is settled at the exact operator level:

\[
 \boxed{
 \begin{gathered}
 QL\text{ places the radial covector successively in the three symmetric
 component slots},\\
 \text{each ordered Fourier source places the true differentiated-parent
 covector in its advecting slot},\\
 \text{the complete six-assignment sum recombines those placements into the
 STK covector }m_0,\\
 \text{covector projection by }W=W^T
 \text{ is exactly dual to advecting-amplitude projection},\\
 \text{and the TAC field carries the full positive current in the
 derivative-covector complement}.
 \end{gathered}}
 \tag{DCI.27}
\]

Hence a derivative-covector projector gives an exact actual-incidence
**decomposition**, but no unconditional selected incidence, favorable sign,
or datum payment. It does not prove (TAC.26), pay the persistent
all-complement block in (ACP.17), establish (TIR.37a), or close the MPP.
A stronger in-method theorem would still have to use the complete causal
history to bound the derivative-covector complement or force a signed
relation with the transported co-normal; frozen tensor placement and
incompressibility alone cannot do it.
