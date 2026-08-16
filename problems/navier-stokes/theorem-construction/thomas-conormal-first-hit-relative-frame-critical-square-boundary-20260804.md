# Thomas's co-normal first-hit relative-frame critical square boundary

**Date:** 2026-08-04

**Status:** noncanonical exact count-to-square reduction and checked no-gain
boundary inside Thomas Birnie's one-fluid, pressure-explicit binomial/VPI
reversible-intersection method.

This note continues only the corrected co-normal first-hit branch
`(CNR.12)--(CNR.17)` and `(CNR.26)--(CNR.34)`, together with the complete
selector refund `(CIF.16)--(CIF.32)`.  It does not replace the fluid by a
frame model.  There is one continuing fixed-viscosity velocity and pressure
history; the co-normal probe, contracting strain line, material labels,
finite chords, and binomial rows are simultaneous readings of that history.

The exact advance is sharp.  A first loss of alignment before a long
episode spends its prescribed contraction action forces a fixed amount of
the scale-critical relative-frame square

\[
 \int { |\mathcal R_-|^2\over c}\,dt.
\]

Summing disjoint first-hit pieces turns relative-frame episode multiplicity
into one positive joined response-square charge.  The collision-safe formula
for that charge keeps vorticity, the whole-field pressure Hessian, and
viscosity inside one square.

The existing strain/finite-chord and first-binomial identities do not pay the
charge.  The strain invariant annihilates the off-diagonal frame response at
first order.  A moving orientation weight sees that response only linearly,
and the complete finite-chord complement refunds the linear term exactly.
At second objective order the positive square is canceled by the normal
acceleration required by the unit-projector constraint.  Hence no datum
endpoint is produced.  The result is a same-critical exact reduction of
first-hit counting to the selected joined square, not a bound for that square,
not `(TIR.37a)`, and not MPP closure.

## 1. Sharp weighted first-hit consequence

On an adverse material-label episode let

\[
 \operatorname{spec}S=(-c,b,e),
 \qquad b,e>0,
 \qquad c=b+e,
 \tag{CRS.1}
\]

and use the episodewise probe initialized on the unique contracting line as
in `(CNR.26)`.  Suppose the episode has total contraction action at least
\(\ell>0\), and let \(J_*=[\tau_0,\tau_{\rm hit}]\) be its first-hit piece:

\[
 \mu(\tau_0)=1,
 \qquad
 \mu^2>{3\over4}\ \hbox{before }\tau_{\rm hit},
 \qquad
 \mu^2(\tau_{\rm hit})={3\over4}.
 \tag{CRS.2}
\]

The priority stopping rule gives

\[
 a_*:=\int_{J_*}c\,dt\le\ell,
 \tag{CRS.3}
\]

while `(CNR.17)` gives

\[
 \int_{J_*}|\mathcal R_-|\,dt\ge{\pi\over6}.
 \tag{CRS.4}
\]

Since \(c>0\) on the adverse episode, weighted Cauchy--Schwarz yields

\[
 \boxed{
 {\pi^2\over36}
 \le\left(\int_{J_*}|\mathcal R_-|\,dt\right)^2
 \le
 \left(\int_{J_*}{|\mathcal R_-|^2\over c}\,dt\right)
 \left(\int_{J_*}c\,dt\right)
 \le
 \ell\int_{J_*}{|\mathcal R_-|^2\over c}\,dt.}
 \tag{CRS.5}
\]

Therefore every first-hit branch pays

\[
 \boxed{
 \int_{J_*}{|\mathcal R_-|^2\over c}\,dt
 \ge{\pi^2\over36\ell}.}
 \tag{CRS.6}
\]

This constant is sharp from precisely the information `(CRS.3)--(CRS.4)`.
Equality occurs when \(a_*=\ell\), the angular action is exactly \(\pi/6\),
and \(|\mathcal R_-|/c\) is constant almost everywhere on \(J_*\).

For one label, first-hit pieces belonging to distinct active episodes are
disjoint.  If \(N_{{\rm rf},\ell}(a)\) counts the long episodes assigned to
the relative-frame branch, then

\[
 \boxed{
 {\pi^2\over36\ell}N_{{\rm rf},\ell}(a)
 \le
 \sum_{J_*}\int_{J_*}{|\mathcal R_-|^2\over c}\,dt.}
 \tag{CRS.7}
\]

Integrating material labels and using volume preservation gives the exact
global reduction

\[
 \boxed{
 {\pi^2\over36\ell}\int N_{{\rm rf},\ell}(a)\,da
 \le \mathfrak F_{{\rm rf},\ell}(I)
 \le
 \int_I\!\int_{E_{\lambda,L}(t)}
 {|\mathcal R_-(x,t)|^2\over c(x,t)}\,dx\,dt,}
 \tag{CRS.8}
\]

where the smallest selected charge is

\[
 \mathfrak F_{{\rm rf},\ell}(I)
 :=\int\sum_{J_*}\int_{J_*}
 {|\mathcal R_-(X(a,t),t)|^2\over c(X(a,t),t)}\,dt\,da.
 \tag{CRS.9}
\]

Only the first-hit pieces occur in `(CRS.9)`; replacing them by the whole
high-rate set in `(CRS.8)` is a stronger, non-sharp upper target.

## 2. Collision-safe pressure-explicit form of the square

Put

\[
 P_-^\perp=I-e_-\otimes e_-,
 \qquad
 K_-:=(S+cI)|_{e_-^\perp}.
 \tag{CRS.10}
\]

The eigenvalues of \(K_-\) are \(g_2=c+b\) and \(g_3=c+e\), so

\[
 cI\le K_-\le2cI.
 \tag{CRS.11}
\]

Use the objective material derivative already fixed in `(CIF.3)`,

\[
 \mathring D_tA:=D_tA-[\Omega,A].
 \tag{CRS.12}
\]

Because \([\Omega,S]e_-=-(S+cI)\Omega e_-\), the collision-safe eigenline
law `(CNR.12)--(CNR.14)` is exactly

\[
 \boxed{
 \mathcal R_-
 =-K_-^{-1}\mathcal G_-,
 \qquad
 \mathcal G_-:=P_-^\perp(\mathring D_tS)e_-.}
 \tag{CRS.13}
\]

The primitive pressure-explicit strain law gives

\[
 \boxed{
 \mathcal G_-
 =P_-^\perp
 \bigl(\nu\Delta S-\Omega^2-H^\circ-[\Omega,S]\bigr)e_-.}
 \tag{CRS.14}
\]

The scalar part of \(H\) and the term \(S^2\) disappear only because their
off-diagonal projections vanish.  No vorticity, trace-free pressure, or
viscous response has been separated from the remaining expression.

At simple expanding eigenvalues, put \(w_i=\omega\cdot e_i\) and
\(\Omega_{j-}=\langle\Omega e_-,e_j\rangle\).  Then `(CRS.13)--(CRS.14)`
read

\[
 \begin{aligned}
 \mathcal G_j={}&
 \nu\langle\Delta S e_-,e_j\rangle
 -{1\over4}w_-w_j
 -\langle H^\circ e_-,e_j\rangle
 +g_j\Omega_{j-},\\
 \langle\mathcal R_-,e_j\rangle={}&-{\mathcal G_j\over g_j},
 \qquad j=2,3.
 \end{aligned}
 \tag{CRS.15}
\]

Consequently the natural first-hit density is the single joined square

\[
 \boxed{
 \Theta_-:={|\mathcal R_-|^2\over c}
 ={1\over c}|K_-^{-1}\mathcal G_-|^2
 =\sum_{j=2}^3{|\mathcal G_j|^2\over c g_j^2}.}
 \tag{CRS.16}
\]

It remains intrinsic when \(b=e\).  The gap bounds give the useful exact
comparison

\[
 \boxed{
 {|\mathcal G_-|^2\over4c^3}
 \le\Theta_-
 \le{|\mathcal G_-|^2\over c^3}.}
 \tag{CRS.17}
\]

Expanding the square and assigning its cross terms to pressure, vorticity,
or viscosity would destroy the cancellation already present in the actual
relative response.  Equations `(CRS.14)--(CRS.17)` are the governing form.

## 3. Critical scaling and the exact first-order blindness

Under fixed-viscosity Navier--Stokes scaling,

\[
 u_\kappa(x,t)=\kappa u(\kappa x,\kappa^2t),
 \tag{CRS.18}
\]

one has

\[
 c_\kappa=\kappa^2c,
 \qquad
 \mathcal G_{-,\kappa}=\kappa^4\mathcal G_-,
 \qquad
 \mathcal R_{-,\kappa}=\kappa^2\mathcal R_-,
 \qquad
 \Theta_{-,\kappa}=\kappa^2\Theta_-.
 \tag{CRS.19}
\]

Therefore, on corresponding material trajectories,

\[
 \boxed{
 \int_{J_{*,\kappa}}\Theta_{-,\kappa}\,dt
 =\int_{J_*}\Theta_-\,d\tau.}
 \tag{CRS.20}
\]

The first-hit square is scale critical per continuing material label, exactly
like the angle and contraction actions which produced it.  The label-integrated
quantity in `(CRS.8)` and the label count both acquire the same factor
\(\kappa^{-3}\); scaling creates no turn-down.

There is also an exact identity obstruction to paying `(CRS.16)` with the
existing strain-shape response.  Since

\[
 \mathfrak q=-{1\over6}\operatorname{tr}(S^3),
 \qquad
 D_t\mathfrak q=-{1\over2}S^2:D_tS,
 \tag{CRS.21}
\]

and \(S^2\) is diagonal in the strain frame,

\[
 \boxed{
 S^2:\bigl(\mathcal G_-\otimes e_-+e_-\otimes\mathcal G_-\bigr)=0.}
 \tag{CRS.22}
\]

Thus the entire off-diagonal joined response \(\mathcal G_-\), including the
pressure-Hessian and viscous pieces in `(CRS.14)`, lies in the kernel of the
first variation of the scalar strain invariant, now represented in the
correct symmetric strain-tensor space.  The gap-free formula
`(SSR.12)` is consistent with this: it contains only invariant contractions,
not a positive frame square.

The complete finite-chord identity cannot repair that blindness by charging
an orientation selector separately.  If a moving weight follows the
co-normal and contracting line, `(CIF.18)--(CIF.20)` puts
\(\mathcal R_-\) into the weighted strain response linearly, while

\[
 {d\over dt}\mathcal D_{\rho,n}^{W,{\rm rr}}
 ={d\over dt}J_n^{\rm rr}
 -c_\rho{d\over dt}\mathscr Q_W
 \tag{CRS.23}
\]

puts the same term into the complete defect with the opposite coefficient.
The moving-weight first binomial performs the identical refund in
`(CIF.25)--(CIF.32)`.  Recombination returns the original selector-free row.
This is an exact cancellation of the **signed linear frame response**; it is
not an upper bound for the positive square `(CRS.16)`.

## 4. Why the second response gives no hidden endpoint

Let

\[
 P_-:=e_-\otimes e_-.
 \tag{CRS.24}
\]

The objective projector velocity is

\[
 \mathring D_tP_-
 =\mathcal R_-\otimes e_-+e_-\otimes\mathcal R_-,
 \qquad
 |\mathring D_tP_-|^2=2|\mathcal R_-|^2.
 \tag{CRS.25}
\]

Metric compatibility of \(\mathring D_t\), together with
\(P_-:P_-=1\), gives the exact second-response identity

\[
 \boxed{
 P_-:\mathring D_t^2P_-
 =-|\mathring D_tP_-|^2
 =-2|\mathcal R_-|^2.}
 \tag{CRS.26}
\]

Hence

\[
 \boxed{
 \Theta_-
 =-{1\over2c}P_-:\mathring D_t^2P_-.}
 \tag{CRS.27}
\]

Equation `(CRS.27)` does not turn the square into a bounded endpoint.  The
first-order endpoint vanishes identically,

\[
 P_-:\mathring D_tP_-=0,
 \tag{CRS.28}
\]

so integration by parts in `(CRS.27)` simply returns
\(\frac1{2c}|\mathring D_tP_-|^2\), including when the derivative of \(1/c\)
is retained.  Geometrically, the positive tangential frame speed and the
normal acceleration required to stay on the unit-projector manifold cancel
in the second derivative of \(P_-:P_-\).  Dropping the acceleration would
manufacture a false positive reserve.

The primitive next binomial differentiates the full joined response
`(CRS.14)`.  It therefore brings forward the derivative of the same
pressure Hessian, the viscous derivative, vorticity/transport commutators,
and the complete first-binomial source; it does not replace `(CRS.26)` by a
sign.  No datum-finite estimate for that joined next response is supplied by
the kinetic-energy deformation row or by the refunded finite chords.

## 5. Exact verdict and smallest survivor

The corrected first-hit branch proves the sharp disjoint-episode reduction

\[
 \boxed{
 {\pi^2\over36\ell}\int N_{{\rm rf},\ell}(a)\,da
 \le \mathfrak F_{{\rm rf},\ell}(I),}
 \tag{CRS.29}
\]

where the smallest unpaid quantity is not a pressure-only, viscosity-only,
or vorticity-only charge but

\[
 \boxed{
 \mathfrak F_{{\rm rf},\ell}(I)
 =\int\sum_{J_*}\int_{J_*}
 {1\over c}
 \left|K_-^{-1}P_-^\perp
 (\nu\Delta S-\Omega^2-H^\circ-[\Omega,S])e_-\right|^2
 dt\,da.}
 \tag{CRS.30}
\]

The exact obstruction is threefold:

1. the scalar strain response annihilates this off-diagonal frame row;
2. the complete finite-chord and first-binomial refunds cancel only its signed
   linear moving-weight appearance;
3. the second objective response pairs its positive square with the equal
   normal-acceleration term `(CRS.26)`, leaving no endpoint.

Accordingly `(CRS.30)` is a genuine same-critical upper-bound target, not an
already paid datum stock and not a separately owned positive part of the
signed current.  A datum-finite bound for `(CRS.30)`, uniform on the actual
preterminal history and on the selectors required by the record sequence,
would pay the relative-frame episode multiplicity.  The primitive laws and
current refund identities inspected here do not prove that bound.  No bound
for `(TIR.37a)` and no MPP closure follows.
