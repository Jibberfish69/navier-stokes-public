# Thomas's helical common-mode completed-action storage obstruction

Status: proved exact helical evolution and algebraic obstruction inside Thomas
Birnie's one-fluid pressure-explicit binomial/VPI reversible-intersection
method. The result classifies the product, minimum, ratio, and nonlinear
adaptive-storage consequences of the two helical critical rows. It proves that
absorbing viscosity into the exact positive helical actions does not create a
bounded-below storage for the first signed prefix. It does not bound that
prefix from the datum and therefore does not prove (TIR.37a) or global
regularity.

The formulas below are the present rigorous development of Thomas's supplied
method; they are not attributed to him as verbatim historical equations.

The governing history is the one smooth decaying Navier--Stokes solution on
\(\mathbb R^3\) with fixed \(\nu>0\). The two helical fields below are
orthogonal readouts of that one velocity field, not separate fluids. This note
extends the fixed-quadratic obstruction in
`thomas-pressure-complete-recruitment-source-mass-and-quadratic-storage-obstruction-20260803.md`
to nonlinear storage built from the exact viscosity-completed helical actions.

## 1. Exact common-source helical rows

Write the pressure-complete equation as

\[
u_t+\nu\Lambda^2u=Q,
\qquad
Q:=-(u\cdot\nabla)u-\nabla p
=-\mathbb P((u\cdot\nabla)u),
\tag{HCA.1}
\]

and let

\[
u=u_++u_-,
\qquad
\nabla\times u_\pm=\pm\Lambda u_\pm .
\tag{HCA.2}
\]

The exact energy and signed-helicity tangencies of the same source are

\[
(Q,u)_2=0,
\qquad
(Q,\nabla\times u)_2=0.
\tag{HCA.3}
\]

Define the two critical stocks and their next spatial rows by

\[
R_\pm:=\|\Lambda^{1/2}u_\pm\|_2^2,
\qquad
D_\pm:=\|\Lambda^{3/2}u_\pm\|_2^2,
\tag{HCA.4}
\]

and put

\[
J:=\mathcal P_{1/2}
=\operatorname{Re}(Q,\Lambda u)_2.
\tag{HCA.5}
\]

If

\[
j_\pm:=\operatorname{Re}(Q_\pm,\Lambda u_\pm)_2,
\tag{HCA.6}
\]

then helicity tangency gives \(j_+-j_-=0\), while (HCA.5) gives
\(j_++j_-=J\). Therefore

\[
j_+=j_-={J\over2},
\tag{HCA.7}
\]

and pairing the two projected equations at critical order yields the exact
common-source laws

\[
\boxed{
R_+'+2\nu D_+=J,
\qquad
R_-'+2\nu D_-=J.}
\tag{HCA.8}
\]

Thus the complete nonlinear source moves the two critical stocks in the same
diagonal direction. Viscosity is the only term that separates their two
instantaneous rates.

Put

\[
S:=R_++R_-,
\quad
K:=R_+-R_-,
\quad
D:=D_++D_-,
\quad
L:=D_+-D_-.
\tag{HCA.9}
\]

Then

\[
\boxed{
S'+2\nu D=2J,
\qquad
K'+2\nu L=0.}
\tag{HCA.10}
\]

Here \(K=(u,\nabla\times u)_2\) is the signed helicity. Equation
(HCA.10) is the exact common-mode/difference-mode split: the Euler source
appears only in \(S\), while signed helicity changes only through differential
viscous loss.

## 2. Product and minimum do not create a new payment

For the cross product

\[
C:=R_+R_-={S^2-K^2\over4},
\tag{HCA.11}
\]

direct differentiation of (HCA.8) gives

\[
\boxed{
C'+2\nu(D_+R_-+D_-R_+)=JS.}
\tag{HCA.12}
\]

The product therefore multiplies the same signed current by the total critical
stock. It does not cancel it.

The minority critical stock is

\[
m:=\min\{R_+,R_-\}={S-|K|\over2}.
\tag{HCA.13}
\]

The function \(m\) is absolutely continuous. Away from crossings, and hence
almost everywhere after choosing the sector that is smaller, it satisfies

\[
\boxed{m'+2\nu D_{\min}=J,}
\tag{HCA.14}
\]

where \(D_{\min}=D_+\) on \(\{R_+<R_-\}\) and
\(D_{\min}=D_-\) on \(\{R_-<R_+\}\). On any positive-measure equality set,
absolute continuity of \(K\) and (HCA.10) give \(D_+=D_-\) almost everywhere,
so the definition is unambiguous there. Consequently

\[
\boxed{
\int_0^tJ(s)\,ds
=m(t)-m(0)+2\nu\int_0^tD_{\min}(s)\,ds.}
\tag{HCA.15}
\]

Thus the minimum is not an invariant-side payment. Its completed value is
exactly the still-open signed primitive.

## 3. Ratio and imbalance entropy lose the balanced common mode

Where \(R_+R_->0\), the raw helical ratio obeys

\[
\boxed{
{d\over dt}\log{R_+\over R_-}
=J\left({1\over R_+}-{1\over R_-}\right)
-2\nu\left({D_+\over R_+}-{D_-\over R_-}\right).}
\tag{HCA.16}
\]

The nonlinear coefficient vanishes at exact balance. The viscous term has no
fixed sign: \(D_\sigma/R_\sigma\) is the critical spectral mean of
\(|\xi|^2\) in sector \(\sigma\), and placing the plus sector above or below
the minus sector reverses the sign while leaving \(R_+\) and \(R_-\) fixed.

The nonnegative ratio entropy

\[
\Phi(R_+,R_-)
:=\log{(R_++R_-)^2\over4R_+R_-}\ge0
\tag{HCA.17}
\]

has the exact evolution

\[
\boxed{
\Phi'
=-J{(R_+-R_-)^2\over R_+R_-(R_++R_-)}
+2\nu{R_--R_+\over R_++R_-}
\left({D_+\over R_+}-{D_-\over R_-}\right).}
\tag{HCA.18}
\]

The nonlinear part of positive critical work consumes scalar helical imbalance
through the first term, but only until the two stocks balance. The coefficient
is exactly zero on \(R_+=R_-\), and the viscosity term is sign-indefinite away
from that line. Therefore \(\Phi\) cannot pay the perfectly balanced
common-mode branch.

This is a statement about helical critical-stock balance, not an identification
of helicity balance with geometric balance of a vortex.

## 4. Viscosity-completed positive actions

Absorb each complete critical viscous row into its own causal action:

\[
\boxed{
N_\pm(t)
:=R_\pm(t)+2\nu\int_0^tD_\pm(s)\,ds.}
\tag{HCA.19}
\]

Equation (HCA.8) becomes

\[
\boxed{
N_+'=N_-'=J,
\qquad
N_\pm(t)=R_\pm(0)+I(t),
\qquad
I(t):=\int_0^tJ(s)\,ds.}
\tag{HCA.20}
\]

In particular,

\[
\boxed{N_+(t)-N_-(t)=K(0).}
\tag{HCA.21}
\]

These variables already include viscosity and remain nonnegative. Their
elementary combinations are nevertheless only algebraic rewritings of the
same prefix:

\[
\begin{aligned}
N_+N_-&=(R_+(0)+I)(R_-(0)+I),\\
\min\{N_+,N_-\}&=\min\{R_+(0),R_-(0)\}+I,\\
{N_+\over N_-}&={R_+(0)+I\over R_-(0)+I}.
\end{aligned}
\tag{HCA.22}
\]

If \(K(0)\ne0\), then

\[
{d\over dt}\log{N_+\over N_-}
=-{K(0)J\over N_+N_-}.
\tag{HCA.23}
\]

As an upper prefix grows, the completed-action ratio tends to one. A bound
keeping that ratio away from one is therefore equivalent to a prefix bound,
not its producer. If \(K(0)=0\), the ratio is identically one for every value
of the common action.

## 5. Exact nonlinear adaptive-storage obstruction

On the mixed-helicity region, let \(F\in C^1((0,\infty)^2)\) be any
instantaneous nonlinear function of the two viscosity-completed actions. Its
complete current contribution is

\[
{d\over dt}F(N_+,N_-)\Big|_J
=\bigl(F_{N_+}+F_{N_-}\bigr)J.
\tag{HCA.24}
\]

For \(F\) to cancel one unweighted copy of the signed prefix, it must satisfy

\[
F_{N_+}+F_{N_-}=-1.
\tag{HCA.25}

\]

Use the common and difference coordinates

\[
q:={N_++N_-\over2},
\qquad
k:=N_+-N_-.
\tag{HCA.26}
\]

Since \(\partial_{N_+}+\partial_{N_-}=\partial_q\), every solution of
(HCA.25) is

\[
\boxed{
F(N_+,N_-)
=-{N_++N_-\over2}+\Psi(N_+-N_-)}
\tag{HCA.27}
\]

for some \(C^1\) function \(\Psi\). Along the actual invariant leaf
\(N_+-N_-=K(0)\),

\[
F=-q+\Psi(K(0))\longrightarrow-\infty
\qquad(q\to\infty).
\tag{HCA.28}
\]

Therefore

\[
\boxed{
\begin{gathered}
\text{no bounded-below nonlinear storage depending only on }(N_+,N_-)
\\
\text{can cancel the unweighted complete critical current }J.
\end{gathered}}
\tag{HCA.29}
\]

The obstruction also covers one-sided domination. If
\(F_{N_+}+F_{N_-}\le-c<0\) along an unbounded common-mode ray, then
\(F(q,k)\le F(q_0,k)-c(q-q_0)\), so \(F\) is again unbounded below. A bounded
saturation necessarily loses its current coefficient somewhere on that ray.

Explicit time dependence or an auxiliary history parameter with no direct
\(J\)-component does not alter the pointwise common-direction equation: at each
fixed value of that parameter, the storage still falls linearly in \(q\). Such
a parameter can evade the global obstruction only if one proves an independent
causal relation forcing its contribution to grow along the actual common-mode
ray. If an added history parameter has its own \(J\)-response, that response
must instead supply the missing transverse cancellation. Either relation is
new theorem content, not a consequence of energy, helicity, or viscosity
completion.

## 6. The invariant-only coercivity obstruction is visible algebraically

Any source-free scalar of the instantaneous critical stocks solves

\[
G_{R_+}+G_{R_-}=0,
\tag{HCA.30}
\]

and hence has the form

\[
G(R_+,R_-)=\Theta(R_+-R_-).
\tag{HCA.31}
\]

It is constant on the balanced ray \(R_+=R_-=r\), where the total critical
stock \(S=2r\) is arbitrary. The lower invariant pair has the same defect.
On \(\mathbb R^3\), at fixed kinetic energy place matching equal kinetic
masses in the two helical sectors in smooth narrow annuli centered at radial
frequency \(\kappa\). Their signed helicities cancel exactly, while
\(R_+=R_-\) and \(S\) grow like \(\kappa\). Thus energy and signed helicity do
not coerce the unsigned critical stock, even before an evolution estimate is
attempted.

This is the finite-dimensional common-mode face of the full helical-triad
classification: fixed quadratic Euler invariants are kinetic energy plus
signed helicity, and no combination is positive with critical weight on both
helicities.

## 7. Narrow surviving lemma

The completed-action obstruction does not reject Thomas's history method. It
identifies what that history must retain. A successful bounded-below storage
cannot be a function only of the two critical stocks, their product, minimum,
ratio, helicity difference, or their separately accumulated viscous actions.
All of those variables have compressed the complete pressure-coupled source to
the single translation \((J,J)\).

The exact invariant-transverse identity from
`thomas-pressure-complete-invariant-transverse-recruitment-reduction-20260803.md`
is

\[
J
=\bigl(\Lambda^{-1/2}Q,\mathfrak d(u)\bigr)_2,
\tag{HCA.32}
\]

where \(\mathfrak d(u)\) is the part of the critical gradient orthogonal to
the kinetic-energy and signed-helicity directions. Consequently the narrowest
surviving storage lemma has to retain a causal frequency-, phase-, pressure-,
or material-history coordinate of this same transverse recruitment and prove

\[
\boxed{
J+{d\over dt}\mathcal S_{\rm tr}\le g,
\qquad
\inf_{t<T}\mathcal S_{\rm tr}(t)\ge-C_0(u_0,\nu,T),
\qquad
\int_0^Tg(t)\,dt\le C_1(u_0,\nu,T).}
\tag{HCA.33}
\]

Neither \(\mathcal S_{\rm tr}\) nor the datum bounds in (HCA.33) are proved
here. Equation (HCA.29) proves that they cannot be manufactured after the
helical rows have been compressed to their two completed scalar actions. The
remaining theorem must use the uncollapsed signed pressure-complete
recruitment history before that common-mode compression.
