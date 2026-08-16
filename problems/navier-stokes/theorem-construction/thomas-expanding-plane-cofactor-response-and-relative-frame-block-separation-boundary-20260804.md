# Thomas's expanding-plane cofactor response and relative-frame block-separation boundary

**Date:** 2026-08-04

**Status:** canonical exact identity and checked no-gain boundary inside
Thomas Birnie's one-fluid, pressure-explicit binomial/VPI
reversible-intersection method.

This note continues only the normalized signed-membership identity
`(SLC.21a)--(SLC.21k)` and the co-normal/relative-frame identities
`(CNR.12)--(CNR.17)` and `(CRS.13)--(CRS.30)`.  There is one continuing
fixed-viscosity velocity and pressure history.  The contracting line, its
two-dimensional expanding plane, the co-normal probe, and the signed
membership density are simultaneous readings of that fluid; none is a new
model source or a second evolution.

The proposed expanding-plane identity is true.  On the adverse face,

\[
 \boxed{
 \mathfrak q+D_t\!\left({\mathfrak q\over c}\right)
 ={1\over2}\bigl(eR_{22}+bR_{33}\bigr),
 \qquad
 R=-\Omega^2-\nabla^2p+\nu\Delta S.}
 \tag{EPC.1}
\]

Its governing form is the collision-safe two-dimensional cofactor pairing

\[
 \boxed{
 \mathfrak q+D_t\!\left({\mathfrak q\over c}\right)
 ={1\over2}\operatorname{cof}_{e_-^\perp}(S|_{e_-^\perp})
 :P_-^\perp R P_-^\perp.}
 \tag{EPC.2}
\]

This exposes a real distinction.  The new expression reads the
**plane-to-plane diagonal response**.  The CRS square reads the
**line-to-plane off-diagonal response** of the same objective tensor.  They
have an exact common-tensor representation, but no algebraic sign, coercive
inequality, or cancellation between the two blocks follows from that
representation or the identities inspected here.  In particular, the common
tensor does not itself supply a pointwise or datum payment from either block
to the other.  This does not rule out a new whole-history PDE inequality
joining them; none is proved here.  Spatial-time integration of `(EPC.2)` is
exactly the already-audited SLC remainder \(\mathfrak N_I\), so bounding it
from the datum would pay the adverse action rather than reduce it to a smaller
known stock.  No bound for `(TIR.37a)` and no MPP closure follows.

The physical order remains Thomas's: one smooth datum, one fixed viscosity,
the pulse or spring winding, the imbalanced stretched vortex, the perfectly
balanced rip-cord, and then the primitive pressure-explicit binomial/VPI rows
and their simultaneous intersected readings.

## 1. The expanding plane is intrinsic even at balance

On \(\{\mathfrak q>0\}\), write

\[
 \operatorname{spec}S=(-c,b,e),
 \qquad b,e>0,
 \qquad c=b+e,
 \qquad \mathfrak q={1\over2}cbe.
 \tag{EPC.3}
\]

The negative eigenvalue is simple, including when \(b=e\).  Hence its
projector and complementary plane projector

\[
 P_-:=e_-\otimes e_-,
 \qquad P:=P_-^\perp=I-P_-
 \tag{EPC.4}
\]

are smooth on the adverse face.  Regard

\[
 B:=PSP|_{e_-^\perp}
 \tag{EPC.5}
\]

as an endomorphism of the two-dimensional expanding plane.  It is positive
definite with spectrum \((b,e)\), and its intrinsic two-dimensional cofactor
is

\[
 \boxed{
 C:=\operatorname{cof}_{e_-^\perp}B
 =(\operatorname{tr}_{e_-^\perp}B)P-B
 =cP-B.}
 \tag{EPC.6}
\]

In an expanding eigenbasis, \(B=\operatorname{diag}(b,e)\) and
\(C=\operatorname{diag}(e,b)\).  At the expanding collision,

\[
 b=e={c\over2},
 \qquad B={c\over2}P,
 \qquad C={c\over2}P,
 \tag{EPC.7}
\]

so no choice of the two expanding eigenvectors survives in the formula.

The SLC density is exactly half the determinant of this plane response:

\[
 \boxed{
 \mathsf h={\mathfrak q\over c}
 ={1\over2}be
 ={1\over2}\det_{e_-^\perp}B.}
 \tag{EPC.8}
\]

Choose any material-time orthonormal frame of the moving plane.  The
connection terms in the derivative of its matrix for \(B\) form a commutator.
Because \(C\) is a polynomial in \(B\), its contraction with that commutator
vanishes.  Equivalently, differentiating the moving projectors directly uses
\(P(D_tP)P=0\).  The collision-safe Jacobi formula is therefore

\[
 \boxed{
 D_t\mathsf h={1\over2}C:P(D_tS)P.}
 \tag{EPC.9}
\]

No differentiability of separately named expanding eigenvectors is required.

## 2. Exact proof of the proposed response identity

The primitive pressure-explicit strain law is

\[
 D_tS=-S^2+R,
 \qquad
 R:=-\Omega^2-\nabla^2p+\nu\Delta S.
 \tag{EPC.10}
\]

On the expanding plane, \(PS^2P=B^2\), and the two-dimensional identity

\[
 C:B^2=e b^2+b e^2=be(b+e)=cbe=2\mathfrak q
 \tag{EPC.11}
\]

gives, directly from `(EPC.9)`,

\[
 \boxed{
 D_t\mathsf h=-\mathfrak q+{1\over2}C:PRP.}
 \tag{EPC.12}
\]

This proves `(EPC.2)`.  When \(b\ne e\), its component form is

\[
 {1\over2}C:PRP={1\over2}(eR_{22}+bR_{33}),
 \tag{EPC.13}
\]

which proves `(EPC.1)`.  At the expanding-eigenvalue collision \(b=e\), the
right side becomes

\[
 \boxed{
 {c\over4}\operatorname{tr}_{e_-^\perp}(PRP),}
 \tag{EPC.14}
\]

so `(EPC.1)` has an invariant meaning at the perfectly balanced rip-cord and
does not split the expanding-eigenvalue collision.

## 3. Pressure, vorticity, and viscosity remain in one response

Put

\[
 \mathcal E
 :=\mathfrak q+D_t\mathsf h
 ={1\over2}C:P(-\Omega^2-\nabla^2p+\nu\Delta S)P.
 \tag{EPC.15}
\]

Writing \(w_i=\omega\cdot e_i\), the algebraic vorticity contribution is

\[
 \boxed{
 \begin{aligned}
 \mathcal E_\omega
 &:={1\over2}C:P(-\Omega^2)P\\
 &={1\over8}\left[
 c w_-^2+bw_2^2+ew_3^2
 \right]\ge0.
 \end{aligned}}
 \tag{EPC.16}
\]

The remaining two contractions are

\[
 \boxed{
 \mathcal E_p=-{1\over2}(eH_{22}+bH_{33}),
 \qquad
 \mathcal E_\nu={\nu\over2}
 \left(e(\Delta S)_{22}+b(\Delta S)_{33}\right),
 \quad H=\nabla^2p.}
 \tag{EPC.17}
\]

Neither has a sign.  In particular, integration by parts in the viscous term
differentiates the moving cofactor \(C\); it does not produce a square.  The
governing quantity is the recombined sum

\[
 \mathcal E=\mathcal E_\omega+\mathcal E_p+\mathcal E_\nu,
 \tag{EPC.18}
\]

not three independently acting mechanisms.

There is an exact finite-energy one-fluid sign calibration on the periodic
Navier--Stokes equation.  On the standard three-torus, for an integer
\(k\ge1\) and amplitude \(A>0\), let

\[
 \begin{aligned}
 U_k(x):={}&(\sin kz+\cos ky,\ \sin kx+\cos kz,\
                 \sin ky+\cos kx),\\
 u(x,t):={}&A e^{-\nu k^2t}U_k(x),\\
 p(x,t):={}&-{A^2e^{-2\nu k^2t}\over2}|U_k(x)|^2.
 \end{aligned}
 \tag{EPC.19}
\]

Because \(\nabla\times U_k=kU_k\) and \(\Delta U_k=-k^2U_k\), `(EPC.19)`
is one exact fixed-viscosity solution.  At the stationary material point

\[
 x_*=y_*=z_*={3\pi\over4k},
 \tag{EPC.20}
\]

one has \(U_k(x_*)=0\), while \(\nabla U_k(x_*)\) has zero diagonal and every
off-diagonal entry equal to \(-k/\sqrt2\).  Thus the point remains fixed, the
vorticity vanishes, and the strain eigenvalues at \(t=0\) are
\((-\sqrt2Ak,Ak/\sqrt2,Ak/\sqrt2)\).  In particular, the strain is perfectly
balanced and

\[
 c=\sqrt2Ak,
 \qquad b=e={Ak\over\sqrt2},
 \qquad \mathsf h={A^2k^2\over4},
 \qquad \mathfrak q={\sqrt2A^3k^3\over4}.
 \tag{EPC.21}
\]

Moreover, \(D_t\mathsf h=-2\nu k^2\mathsf h\).  Hence

\[
 \boxed{
 \mathcal E(x_*,0)
 ={A^2k^3\over4}(\sqrt2A-2\nu k).}
 \tag{EPC.22}
\]

For the same \(\nu\) and \(k\), this is negative when
\(A<\sqrt2\nu k\), zero at \(A=\sqrt2\nu k\), and positive when
\(A>\sqrt2\nu k\).  At this point \(-H=S^2\) and \(\Delta S=-k^2S\), so
the two nonzero pieces are exactly

\[
 \mathcal E_p=\mathfrak q,
 \qquad
 \mathcal E_\nu=-2\nu k^2\mathsf h.
 \tag{EPC.23}
\]

Thus the full pressure--vorticity--viscous combination has no pointwise sign,
including on the balanced branch.  This exact periodic calibration tests the
identity and its sign only; it is not a replacement proof route.

## 4. The spacetime response is exactly the SLC remainder

Since \(\mathfrak q=c\mathsf h\), the same identity can be read without
eigenvalue components:

\[
 \boxed{
 \mathcal E
 ={D_t\mathfrak q\over c}
 -{\mathfrak q\over c^2}(D_tc-c^2).}
 \tag{EPC.24}
\]

This is exactly the integrand defining \(\mathfrak N_I\) in `(SLC.21g)`.
For the following spatial identity, extend \(\mathcal E\) by zero off the
adverse face in the same distributional sense as SLC.  The extension
\(\mathsf h=\mathfrak q_+/c\) has no interface atom at \(\mathfrak q=0\), as
proved there.  Volume preservation therefore gives

\[
 \boxed{
 \begin{aligned}
 \int_I\!\int\mathcal E\,dx\,dt
 &=\int_I\mathscr Q_+(t)\,dt+\mathsf H(t)-\mathsf H(s)\\
 &=\mathfrak N_I,
 \qquad
 \mathsf H(t):=\int\mathsf h(x,t)\,dx.
 \end{aligned}}
 \tag{EPC.25}
\]

Equivalently,

\[
 \int_I\mathscr Q_+\,dt
 =\mathsf H(s)-\mathsf H(t)+\int_I\!\int\mathcal E.
 \tag{EPC.26}
\]

At the initial left endpoint, the endpoint term is genuinely datum-sized,

\[
 0\le\mathsf H(0)\le{1\over16}\|\nabla u_0\|_2^2,
 \tag{EPC.27}
\]

and the terminal endpoint in `(EPC.26)` is favorable.  But an upper bound for
the remaining spacetime response is precisely sufficient to bound the adverse
action.  The cofactor formula has geometrically identified the SLC remainder;
it has not supplied a new datum-finite estimate for it.

The scaling confirms the absence of a lower-order gain.  Under
\(u_\kappa(x,t)=\kappa u(\kappa x,\kappa^2t)\),

\[
 C_\kappa=\kappa^2C,
 \qquad R_\kappa=\kappa^4R,
 \qquad \mathcal E_\kappa=\kappa^6\mathcal E,
 \qquad \int\!\int\mathcal E_\kappa=\kappa\int\!\int\mathcal E.
 \tag{EPC.28}
\]

This is the same scaling as the adverse spacetime action and the initial
normalized endpoint.  No kinetic-energy or deformation-row estimate inspected
in SLC, CNR, or CRS bounds `(EPC.25)`.

## 5. Exact common tensor with CRS, and why it does not pay the square

Define the objective joined response tensor

\[
 \boxed{
 \mathcal A
 :=R-[\Omega,S]
 =\mathring D_tS+S^2.}
 \tag{EPC.29}
\]

Because \(C\) is a polynomial in \(B\),

\[
 C:P[\Omega,S]P=0.
 \tag{EPC.30}
\]

Consequently the expanding-plane response and the CRS response do have the
following exact common-tensor representation:

\[
 \boxed{
 \begin{aligned}
 \mathcal E&={1\over2}C:P\mathcal A P,\\
 \mathcal G_-&=P\mathcal A e_-,\\
 \Theta_-&={1\over c}|K_-^{-1}\mathcal G_-|^2,
 \qquad K_-=B+cP.
 \end{aligned}}
 \tag{EPC.31}
\]

In an instantaneous eigenframe, put
\(\gamma_j:=\langle\mathcal A e_-,e_j\rangle=(\mathcal G_-)_j\) for
\(j=2,3\), and write the relevant blocks as

\[
 \mathcal A=
 \begin{pmatrix}
 *&\gamma_2&\gamma_3\\
 \gamma_2&a_{22}&a_{23}\\
 \gamma_3&a_{23}&a_{33}
 \end{pmatrix}.
 \tag{EPC.32}
\]

Then `(EPC.31)` is exactly

\[
 \boxed{
 \mathcal E={1\over2}(ea_{22}+ba_{33}),
 \qquad
 \Theta_-={\gamma_2^2\over c(c+b)^2}
           +{\gamma_3^2\over c(c+e)^2}.}
 \tag{EPC.33}
\]

The first reads the plane-to-plane diagonal block linearly.  The second reads
the line-to-plane block quadratically.  The plane off-diagonal entry
\(a_{23}\) enters neither.  Multiplying \(\Theta_-\) by \(c^2\) makes its
scaling match \(\mathcal E\), but does not by itself relate or control these
algebraically independent tensor blocks.

The independence is not merely formal.  Consider the exact affine local
Navier--Stokes calibration

\[
 S(t)=O(t)\operatorname{diag}(-2a(t),a(t),a(t))O(t)^T,
 \qquad
 u(x,t)=S(t)x,
 \tag{EPC.34}
\]

with

\[
 p(x,t)=-{1\over2}x\cdot(S'(t)+S(t)^2)x.
 \tag{EPC.35}
\]

For every \(\nu>0\), \(\Delta u=0\) and `(EPC.34)--(EPC.35)` solve the
equation exactly wherever this affine field is used.  In its instantaneous
eigenframe, if

\[
 \xi_j:=\langle D_te_-,e_j\rangle,
 \qquad j=2,3,
 \tag{EPC.36}
\]

then

\[
 \boxed{
 \mathcal E=a^3+aa',
 \qquad
 \Theta_-={\xi_2^2+\xi_3^2\over2a}.}
 \tag{EPC.37}
\]

Choosing \(a'=-a^2\) and a rotation for which the contracting line genuinely
moves, equivalently \(\xi_2^2+\xi_3^2>0\), gives \(\mathcal E=0\) while
\(\Theta_->0\).  (Rotation only inside the degenerate expanding plane does
not meet this condition.)  Choosing \(O\) fixed gives
\(\Theta_-=0\) while \(a'\) makes \(\mathcal E\) positive, zero, or negative.
This affine solution has infinite whole-space kinetic energy and is used only
as an exact local algebraic calibration: it rules out a pointwise identity or
coercive inequality between the two response blocks, not a global
finite-energy theorem.

At the balanced ABC point `(EPC.20)`, which is a finite-energy periodic
one-fluid record, \(\Theta_-=0\) while `(EPC.22)` can be nonzero with either
sign.  Therefore the CRS square neither equals nor pointwise controls the
cofactor response.  Conversely, CRS remains a genuine positive first-hit
charge, but `(EPC.31)` supplies no upper bound for it.

## 6. Exact verdict

The proposed formula is proved, with its collision-safe content fixed by the
two-dimensional cofactor:

\[
 \boxed{
 \mathfrak q+D_t(\mathfrak q/c)
 ={1\over2}\operatorname{cof}_{e_-^\perp}(S|_{e_-^\perp})
 :P_-^\perp(-\Omega^2-\nabla^2p+\nu\Delta S)P_-^\perp.}
 \tag{EPC.38}
\]

What it proves is exact and limited:

1. the normalized SLC response is the diagonal response of the actual
   expanding strain plane;
2. the vorticity part of that diagonal contraction is nonnegative, but the
   recombined pressure--vorticity--viscous response has no sign;
3. its spacetime integral is exactly \(\mathfrak N_I\), hence no new
   datum-finite stock has appeared;
4. it and the CRS square are distinct blocks of the same objective response
   tensor, with no algebraic payment from one to the other.

Thus `(EPC.38)` sharpens Thomas's one-fluid geometry and preserves the
perfectly balanced case, but it remains a same-critical identification.  A
new whole-history inequality would still be required to bound either the SLC
response in `(EPC.25)` or the selected CRS square.  `(TIR.37a)` remains the
unpaid theorem, and no MPP closure is claimed.
