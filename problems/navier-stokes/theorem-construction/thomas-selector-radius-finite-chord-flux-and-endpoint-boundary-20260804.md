# Thomas's selector-radius finite-chord flux and endpoint boundary

**Date:** 2026-08-04

**Status:** noncanonical exact selector-covariance boundary inside Thomas
Birnie's one-fluid, pressure-explicit binomial/VPI reversible-intersection
method.

This note differentiates the fixed-selector covariance of `(FRS.7)--(FRS.12)`
and `(ISR.6)--(ISR.10)` with respect to the selector radius.  The radius
\(\rho\) is a coordinate used to read one physical-time slice; it is not
physical time, material travel, heat age, or a second fluid history.  The
actual finite-chord VPI kernel, the favorable two-contraction face, and every
pressure-complete reconstruction term remain joined.

The exact result is that the continuous radius flux only reallocates the same
signed double-recent current between its infinitesimal first-jet coordinate and
its complete finite-chord defect.  At \(\rho\downarrow0\) the defect returns
\(J_n^{\rm rr}\).  At \(\rho\to\infty\) the separate first-jet and defect
coordinates generally diverge linearly with opposite signs.  The corrected
sum is \(J_n^{\rm rr}\) for every \(\rho\); there is no new datum endpoint and
no physical turn-down.

The physical object and order are unchanged: one fixed-viscosity fluid from
one smooth finite-energy datum, Thomas's pulse or spring winding whose motion
passes through neighboring windings, then the imbalanced stretched vortex and
the perfectly balanced rip-cord, followed by the primitive pressure-explicit
binomial/VPI readouts.  Varying \(\rho\) does not advance that motion.  It only
changes how much of the same neighboring-chord record is written in the local
first-jet column rather than the finite-chord column.

## 1. Differentiate the original finite-chord kernel

At one physical time let

\[
 \delta_w(x,r,n)=w(x)-w(x-rn),
 \qquad
 \mathscr C_w(x,r)
 =\int_{\mathbb S^2}|\delta_w|^2(\delta_w\cdot n)\,d\sigma(n),
 \tag{SRF.1}
\]

and retain the primitive all-pair VPI current

\[
 \mathcal P(w)
 =-{1\over\pi^2}\int_{\mathbb R^3}\int_0^\infty
 r^{-3}\mathscr C_w(x,r)\,dr\,dx.
 \tag{SRF.2}
\]

Fix the same admissible selector profile as in `(FRS.5)` and put

\[
 \zeta_\rho(r)=\zeta(r/\rho),
 \qquad
 \ell_1=\int_0^\infty\zeta(s)\,ds,
 \qquad
 c_1={64\ell_1\over15\pi},
 \qquad
 c_\rho=\rho c_1.
 \tag{SRF.3}
\]

With

\[
 \mathcal T_0(\nabla w)
 =\operatorname{tr}\bigl((\nabla w)^T(\nabla w)S_w\bigr),
 \tag{SRF.4}
\]

the complete finite-chord defect is

\[
 \mathcal E_\rho(w)
 =-{1\over\pi^2}\int\!\int_0^\infty r^{-3}
 \left[
 \mathscr C_w(x,r)
 -\zeta(r/\rho)r^3{8\pi\over15}\mathcal T_0(\nabla w)(x)
 \right]dr\,dx.
 \tag{SRF.5}
\]

The actual increment kernel \(\mathscr C_w\) is independent of \(\rho\).
Only the amount of the first spatial jet subtracted from it changes.  Since

\[
 \int_0^\infty\zeta(r/\rho)\,dr=\rho\ell_1,
 \qquad
 \int\mathcal T_0(\nabla w)\,dx=-8\mathscr Q(w),
 \tag{SRF.6}
\]

where, at each point, the ordered eigenvalues of \(S_w\) are written

\[
 (-a_w-d_w,-a_w+d_w,2a_w),
 \qquad a_w\geq0,
 \qquad0\leq d_w\leq3a_w,
\]

and

\[
 \mathscr Q(w)=\int a_w(d_w^2-a_w^2)\,dx
 =\mathscr Q_+(w)-\mathscr Q_-(w),
 \tag{SRF.7}
\]

equation `(SRF.5)` gives directly

\[
 \boxed{
 \mathcal E_\rho(w)
 =\mathcal P(w)-c_\rho\mathscr Q(w),
 \qquad
 \partial_\rho\mathcal E_\rho(w)
 =-c_1\mathscr Q(w).}
 \tag{SRF.8}
\]

This derivative follows from the original kernel without assigning one chord
to one Fourier mode.  For a compactly supported smooth selector, or more
generally when \(s\zeta'(s)\in L^1(0,\infty)\), its scale-covariant density is

\[
 \kappa_\rho(r)
 :=\partial_\rho\zeta(r/\rho)
 =-{r\over\rho^2}\zeta'(r/\rho)
 ={1\over\rho}\kappa(r/\rho),
 \qquad
 \kappa(s):=-s\zeta'(s),
\tag{SRF.9}
\]

For compactly supported \(\zeta\), this density is also localized in (r).
The general integrable-derivative class supplies covariance, not compact
scale support.

and integration by parts gives

\[
 \int_0^\infty\kappa_\rho(r)\,dr
 =\int_0^\infty[-s\zeta'(s)]\,ds
 =\ell_1.
 \tag{SRF.10}
\]

Consequently direct differentiation under `(SRF.5)` yields

\[
 \partial_\rho\mathcal E_\rho(w)
 ={8\over15\pi}
 \left(\int\mathcal T_0(\nabla w)\,dx\right)
 \left(\int_0^\infty\kappa_\rho(r)\,dr\right)
 =-c_1\mathscr Q(w).
 \tag{SRF.11}
\]

For the full selector class in `(FRS.5)`, no derivative hypothesis on
\(\zeta\) is needed: the affine identity `(SRF.8)` itself supplies the strong
\(\rho\)-derivative.  Monotonicity of \(\zeta\) would make
\(\kappa_\rho\ge0\), but it would not make `(SRF.11)` positive because
\(\mathscr Q\) is signed.

## 2. The DRF defect has the same continuous covariance

From here specialize \(w=u(t)\) on one fixed preterminal smooth interval and
write \(\mathcal E_\rho:=\mathcal E_\rho(u(t))\) and
\(\mathcal P_{1/2}:=\mathcal P(u(t))\).  Thus every unlabelled quantity below
is read from the same one-fluid slice.

On one canonical record write the pressure-complete reconstruction complement
from `(DRF.33)--(DRF.34)` as

\[
 \begin{aligned}
 \mathcal R_n:={}&J_n^{\rm old}+J_n^{\rm ic}+J_n^{\rm lo}
 +\mathcal P_{1/2}^{\rm ext}+\mathcal P_{1/2}^{\rm bd},\\
 \mathcal P_{1/2}={}&J_n^{\rm rr}+\mathcal R_n,\\
 \mathcal D_{\rho,n}^{\rm rr}:={}&\mathcal E_\rho-\mathcal R_n.
 \end{aligned}
 \tag{SRF.12}
\]

The complete symmetric core mask, all six output/input assignments, all old
and datum-heat parents, and their Leray/pressure completion are contained in
`(SRF.12)`.  They do not depend on the radial selector coordinate.  Combining
`(SRF.8)` and `(SRF.12)` therefore gives

\[
 \boxed{
 \mathcal D_{\rho,n}^{\rm rr}
 =J_n^{\rm rr}-c_\rho\mathscr Q,
 \qquad
 \partial_\rho\mathcal D_{\rho,n}^{\rm rr}
 =-c_1\mathscr Q.}
 \tag{SRF.13}
\]

Thus

\[
 \boxed{
 \partial_\rho
 \left(c_\rho\mathscr Q+
 \mathcal D_{\rho,n}^{\rm rr}\right)=0,
 \qquad
 c_\rho\mathscr Q+
 \mathcal D_{\rho,n}^{\rm rr}=J_n^{\rm rr}.}
 \tag{SRF.14}
\]

The derivative is a selector-coordinate flux, not a loss of physical
finite-chord or pressure response.  Those terms remain inside
\(\mathcal D_{\rho,n}^{\rm rr}\) and reconstruct \(J_n^{\rm rr}\) at every
radius.

## 3. Refund the favorable face before differentiating the clipped coordinate

The exact ISR refund is

\[
 \mathcal D_{\rho,n}^{+,\rm rr}
 :=\mathcal D_{\rho,n}^{\rm rr}-c_\rho\mathscr Q_-.
 \tag{SRF.15}
\]

Using \(\mathscr Q=\mathscr Q_+-\mathscr Q_-\) in `(SRF.13)` gives

\[
 \boxed{
 \mathcal D_{\rho,n}^{+,\rm rr}
 =J_n^{\rm rr}-c_\rho\mathscr Q_+,
 \qquad
 \partial_\rho\mathcal D_{\rho,n}^{+,\rm rr}
 =-c_1\mathscr Q_+.}
 \tag{SRF.16}
\]

Hence the corrected positive-face coordinate is exactly invariant:

\[
 \boxed{
 \partial_\rho
 \left(c_\rho\mathscr Q_+
 +\mathcal D_{\rho,n}^{+,\rm rr}\right)=0,
 \qquad
 c_\rho\mathscr Q_+
 +\mathcal D_{\rho,n}^{+,\rm rr}=J_n^{\rm rr}.}
 \tag{SRF.17}
\]

The unrefunded clipped expression behaves differently:

\[
 \boxed{
 c_\rho\mathscr Q_++\mathcal D_{\rho,n}^{\rm rr}
 =J_n^{\rm rr}+c_\rho\mathscr Q_-,
 \qquad
 \partial_\rho
 \left(c_\rho\mathscr Q_++\mathcal D_{\rho,n}^{\rm rr}\right)
 =c_1\mathscr Q_-\ge0.}
 \tag{SRF.18}
\]

The apparent positive radial accumulation in `(SRF.18)` is exactly the
favorable two-contraction face counted a second time.  It is not a monotone
physical reserve and cannot be used as the pulse's turn-down.

## 4. Both selector-radius endpoints

Although the limiting profile at \(\rho=0\) is no longer one of the admissible
selectors, `(SRF.8)` has the exact finite limit

\[
 \boxed{
 \begin{aligned}
 \lim_{\rho\downarrow0}\mathcal E_\rho&=\mathcal P_{1/2},\\
 \lim_{\rho\downarrow0}\mathcal D_{\rho,n}^{\rm rr}
 &=J_n^{\rm rr},\\
 \lim_{\rho\downarrow0}\mathcal D_{\rho,n}^{+,\rm rr}
 &=J_n^{\rm rr}.
 \end{aligned}}
 \tag{SRF.19}
\]

This endpoint is the actual record current, not a datum stock.  At the other
end,

\[
 \boxed{
 \begin{aligned}
 \mathcal E_\rho&=\mathcal P_{1/2}-\rho c_1\mathscr Q,\\
 \mathcal D_{\rho,n}^{\rm rr}&=J_n^{\rm rr}-\rho c_1\mathscr Q,\\
 \mathcal D_{\rho,n}^{+,\rm rr}&=J_n^{\rm rr}-\rho c_1\mathscr Q_+.
 \end{aligned}}
 \tag{SRF.20}
\]

Thus \(\rho\to\infty\) has no finite separate endpoint unless the relevant
strain-shape reading vanishes.  If \(\mathscr Q_+>0\), the corrected defect
tends to \(-\infty\) while \(c_\rho\mathscr Q_+\) tends to \(+\infty\), and
their sum remains \(J_n^{\rm rr}\).  The formal profile \(\zeta_\infty=1\)
has infinite selector mass and is not admissible; interchanging that pointwise
limit with the chord integral would hide the linear divergence in `(SRF.20)`.

The same calculation holds after integration over any fixed preterminal
record \(I_n\).  With bold symbols denoting physical-time integrals,

\[
 \begin{aligned}
 \mathbf J_n&:=\int_{I_n}J_n^{\rm rr}\,dt,
 &\mathbf Q&:=\int_{I_n}\mathscr Q\,dt,
 &\mathbf Q_+&:=\int_{I_n}\mathscr Q_+\,dt,\\
 \mathbf D_n(\rho)&:=\int_{I_n}\mathcal D_{\rho,n}^{\rm rr}\,dt,
 &\mathbf D_n^+(\rho)&:=\int_{I_n}\mathcal D_{\rho,n}^{+,\rm rr}\,dt,
 \end{aligned}
 \tag{SRF.21}
\]

Because \(\rho=0\) is not an admissible selector, the endpoint notation in
the next display means

\[
 \mathbf D_n(0):=\lim_{\rho\downarrow0}\mathbf D_n(\rho),
 \qquad
 \mathbf D_n^+(0):=\lim_{\rho\downarrow0}\mathbf D_n^+(\rho).
 \tag{SRF.21a}
\]

one has

\[
 \boxed{
 \begin{aligned}
 \mathbf D_n(R)-\mathbf D_n(0)&=-c_R\mathbf Q,\\
 \mathbf D_n^+(R)-\mathbf D_n^+(0)&=-c_R\mathbf Q_+,\\
 c_R\mathbf Q+\mathbf D_n(R)&=\mathbf J_n,\\
 c_R\mathbf Q_++\mathbf D_n^+(R)&=\mathbf J_n.
 \end{aligned}}
 \tag{SRF.22}
\]

Integrating the selector-radius flux from zero to \(R\) therefore does not
produce a new physical-time telescope.  It returns the same
\(\mathbf J_n\) after the face and defect are recombined.  Sending
\(R\to\infty\) generally produces two linearly divergent coordinates, not a
datum endpoint.

## 5. The first pressure-explicit binomial row gives the same flux

The finite-chord heat-age normal form retains the pressure response explicitly.
At one physical slice put

\[
 w_s=e^{-\nu sA}u,
 \qquad
 H_s=e^{-\nu sA}Q_{\rm NS}(u),
 \qquad
 Q_{\rm NS}(u)=-(u\cdot\nabla)u-\nabla p,
 \tag{SRF.23}
\]

and define

\[
 \begin{aligned}
 \mathcal F_\rho(u)&:=\int_0^\infty\mathcal E_\rho(w_s)\,ds,\\
 \mathscr A(u)&:=\int_0^\infty\mathscr Q(w_s)\,ds,\\
 \mathfrak R_\rho^{\rm fc}(u)
 &:=\int_0^\infty D\mathcal E_\rho(w_s)[H_s],ds,\\
 \mathfrak R_{\mathscr A}(u)
 &:=\int_0^\infty D\mathscr Q(w_s)[H_s],ds.
 \end{aligned}
 \tag{SRF.24}
\]

The pressure-complete first-binomial finite-chord identity is

\[
 \mathcal E_\rho(u)
 =-\mathcal F_\rho'(u)+\mathfrak R_\rho^{\rm fc}(u).
 \tag{SRF.25}
\]

On a fixed preterminal smooth interval, heat-age integration and the
derivatives \(\partial_s\), \(\partial_t\), and \(\partial_\rho\) commute in
the displayed identities; the heat factors provide the required integrable
domination.  No terminal-time passage is taken here.

Integrating `(SRF.8)` in heat age and differentiating its complete tangent
give

\[
 \boxed{
 \partial_\rho\mathcal F_\rho=-c_1\mathscr A,
 \qquad
 \partial_\rho\mathfrak R_\rho^{\rm fc}
 =-c_1\mathfrak R_{\mathscr A}.}
 \tag{SRF.26}
\]

Along the same one-fluid solution, the heat characteristic gives the first
binomial row for the strain-shape storage,

\[
 \boxed{
 \mathscr A'
 =\mathfrak R_{\mathscr A}-\mathscr Q(u).}
 \tag{SRF.27}
\]

Therefore differentiating the complete normal form, rather than its endpoint
or pressure source separately, yields

\[
 \boxed{
 \begin{aligned}
 \partial_\rho
 \left(-\mathcal F_\rho'+\mathfrak R_\rho^{\rm fc}\right)
 &=c_1\mathscr A'-c_1\mathfrak R_{\mathscr A}\\
 &=-c_1\mathscr Q(u)
 =\partial_\rho\mathcal E_\rho(u).
 \end{aligned}}
 \tag{SRF.28}
\]

Pressure remains inside \(H_s\) and both response insertions in
`(SRF.24)--(SRF.28)`.  The heat-age endpoint and pressure-complete source move
with \(\rho\) in exactly the combination required to recover the original VPI
kernel flux.  Differentiating in selector radius has not generated a lower
binomial endpoint or a datum-finite source.

## 6. Exact verdict in the neighboring-winding picture

For Thomas's pulse or spring, neighboring windings are actual neighboring
parts of the same moving fluid.  Their finite separation and relative motion
are already present in \(\mathscr C_w(x,r)\), and their pressure--viscous
response is already present in the pressure-complete first-binomial insertion.
Changing \(\rho\) neither moves those windings nor passes the pulse from one
winding to the next.  It repeats the same infinitesimal first-jet subtraction
over a wider band of chord lengths and forces the complete finite-chord defect
to refund the difference.

The exact selector-radius statement is therefore

\[
 \boxed{
 \begin{gathered}
 \partial_\rho\mathcal D_{\rho,n}^{\rm rr}=-c_1\mathscr Q,
 \qquad
 \partial_\rho\mathcal D_{\rho,n}^{+,\rm rr}=-c_1\mathscr Q_+,\\
 \partial_\rho
 \left(c_\rho\mathscr Q_+
 +\mathcal D_{\rho,n}^{+,\rm rr}\right)=0,\\
 \rho\downarrow0:\ \mathcal D_{\rho,n}^{+,\rm rr}\to J_n^{\rm rr},
 \qquad
 \rho\to\infty:\ \text{separate coordinates generally diverge and cancel}.
 \end{gathered}}
 \tag{SRF.29}
\]

Integrating across selector radius simply returns the signed
double-recent current after the favorable-face refund and complete finite
chords are rejoined.  It proves no datum endpoint, no higher-response
turn-down, no bound for `(TIR.37a)`, and no MPP closure.
