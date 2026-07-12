# Navier–Stokes Physical Ontology

**Status:** canonical hard-fact ontology.

**Development authority:** this is the single cumulative ontology. Numbered
research cycles are evidence and discovery records; only independently checked
facts promoted into this file carry ontology premise weight. The numbered git
checkpoint for each cycle is the minimal progress ledger.

**Authority boundary:** this file contains exact identities, exact operator
properties, or classical proved theorems under the hypotheses stated here. It
contains no proposed pressure sign, cascade direction, alignment law, packet
closure, or regularity conclusion.

**Surface:** unless a narrower scope is stated, let \(u\) be a smooth unforced
incompressible Navier–Stokes solution with fixed \(\nu>0\) on
\(\mathbb R^3\) with sufficient decay or on \(\mathbb T^3\) with periodic
boundary conditions:

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\]

Pressure is understood modulo its additive spatial constant and is signed once
a gauge is fixed. On bounded domains, boundary traction and the boundary or
harmonic part of pressure must be included explicitly.

## Root: participation

**Participation is the root. Every fact below is an expression of one
datum-anchored fluid history obeying the same transport–pressure–viscosity–
incompressibility law.**

Every parcel, localization, derivative, mode, packet, shell, norm, and readout
appearing here is constructed from the same solution \((u,p)\), its initial
datum, or its material flow. Its induced equation may contain coupling, flux,
or commutator terms.

## F1. Participation: one motion, stress, pressure response, and deformation

### F1.1 One momentum and stress law

With

\[
S=\frac12\left(\nabla u+\nabla u^T\right),
\qquad
\sigma=-pI+2\nu S,
\]

the momentum equation is

\[
\partial_tu+\nabla\cdot(u\otimes u)=\nabla\cdot\sigma.
\]

The pressure stress \(-pI\) and viscous stress \(2\nu S\) are respectively the
isotropic and trace-free deviatoric parts of \(\sigma\). A material subregion
exchanges momentum with its complement through the traction \(\sigma n\). The
pressure component of that traction is determined nonlocally by the whole
field.

### F1.2 Whole-field pressure response

For the unforced smooth system,

\[
-\Delta p
=\partial_i\partial_j(u_i u_j)
=\partial_i u_j\,\partial_j u_i
=|S|^2-\frac12|\omega|^2,
\qquad
\omega=\nabla\times u.
\]

The displayed source is local. Pressure is obtained from it through the global
elliptic problem on the declared surface. Its value after gauge fixation, its
gradient, and its Hessian are determined by that same field. The equation
supplies no favorable pointwise sign or alignment.

### F1.3 One volume-preserving material deformation

Let

\[
\dot X(a,t)=u(X(a,t),t),
\qquad
X(a,0)=a,
\qquad
F(a,t)=D_aX(a,t).
\]

Then

\[
\dot F=(\nabla u)(X,t)F,
\qquad
\det F=1.
\]

If \(s_1,s_2,s_3\) are the singular values of \(F\), then

\[
\log s_1+\log s_2+\log s_3=0.
\]

At almost every time at which the logarithmic rates exist,

\[
\sum_{i=1}^3[\partial_t\log s_i]_+
=
\sum_{i=1}^3[-\partial_t\log s_i]_+.
\]

Every positive material shape-growth rate therefore has simultaneous
compression in other directions of the same deformation. This identity does
not locate that compression in a particular surrounding annulus; such spatial
placement requires an additional theorem.

### F1.4 One material pressure--viscous acceleration curvature

Let \(A=\nabla u\) and \(F=D_aX\). The material acceleration and its spatial
gradient are

\[
D_tu=-\nabla p+\nu\Delta u,
\qquad
\mathsf C_{\rm VPI}
:=\nabla(D_tu)
=-\nabla^2p+\nu\Delta A.
\]

Differentiating \(\dot F=AF\) along the same material history and using the
velocity-gradient equation gives the exact recombination

\[
\ddot F=\mathsf C_{\rm VPI}(X,t)F.
\]

Its trace is fixed by incompressibility:

\[
\operatorname{tr}\mathsf C_{\rm VPI}
=\operatorname{tr}(A^2),
\qquad
\frac{d^2}{dt^2}\log\det F=0.
\]

The trace-free nonlocal pressure Hessian and viscous velocity-gradient
curvature jointly determine the anisotropic acceleration of the deformation.
They are two constitutive rows of one material response. For a finite material
chord \(R=X(a,t)-X(b,t)=\rho n\),

\[
\frac{D_tu(X(a,t),t)-D_tu(X(b,t),t)}{\rho}
=\int_0^1
\mathsf C_{\rm VPI}(X(b,t)+\theta R,t)n\,d\theta.
\]

Thus its radial acceleration, turning, and relative-speed change are
contractions of the same whole-field pressure--viscous response. This identity
supplies no favorable sign to any contraction.

### F1.5 The product material map preserves pair volume

The two-endpoint material map

\[
\mathscr X_t(a,b)=(X(a,t),X(b,t))
\]

has unit six-dimensional Jacobian:

\[
(\mathscr X_t)_\#(da\,db)=dx\,dy.
\]

In midpoint--separation coordinates

\[
c=\frac{x+y}{2},
\qquad
R=x-y,
\]

the coordinate change also has unit absolute Jacobian. Hence on
\(\mathbb R^3\), for every bounded \(K\subset\mathbb R^3\) and
\(\delta>0\),

\[
\left|
\left\{(a,b):c_t(a,b)\in K,\ |R_{ab}(t)|<\delta\right\}
\right|
=|K|\,|B_\delta|.
\]

On a normalized torus, two uniformly sampled material labels remain uniform
under the product map, and their relative displacement modulo the lattice
remains Haar distributed. The flow can change which label pairs become close;
it cannot increase the unweighted volume of close pairs. Concentration of a
normalized pair observable on such sets is therefore reweighting of an
invariantly scarce cohort, not material-mass crowding or creation of additional
lineages.

### F1.6 Every terminal pair event has one same-history material ancestry

Fix \(t_0<t_1\) inside the classical lifespan and write
\(X_{\tau,t_0}\) for the material flow from \(t_0\) to \(\tau\). For every
terminal Borel pair set \(D_1\), define

\[
A=(X_{t_1,t_0}\times X_{t_1,t_0})^{-1}(D_1),
\qquad
D_\tau=(X_{\tau,t_0}\times X_{\tau,t_0})(A).
\]

The material diffeomorphism makes \(A\) the unique fixed-label precursor of
\(D_1\), and product-volume preservation gives

\[
|D_\tau|=|A|
\qquad (t_0\le\tau\le t_1).
\]

Equivalently, the indicator of \(D_\tau\) obeys the two-endpoint transport
equation. A cohort selected by its future geometry is therefore an earlier
part of the same fluid history; future selection does not create a new
participant or new pair volume. This ancestry supplies no lower bound for the
cohort's earlier critical weight and no persistence of packet, mode,
vorticity, or spectral support. “Known before selection” is a proof-adaptedness
condition, not a second physical ancestry law.

### F1.7 Critical pair activity is inherited, compressed, or activated

For one distinct material-label pair, put

\[
R=X(a,t)-X(b,t),
\qquad
V=u(X(a,t),t)-u(X(b,t),t),
\qquad
r=|R|,
\qquad
e=\frac{|V|^2}{4\pi^2r^4}.
\]

Where \(V\ne0\), its exact material logarithmic growth is

\[
\frac d{dt}\log e=-4\alpha+2\chi,
\qquad
\alpha=\frac d{dt}\log r,
\qquad
\chi=\frac{V\cdot\delta(D_tu)}{|V|^2},
\]

with the one complete material response

\[
\delta(D_tu)
=-\delta\nabla p+\nu\,\delta\Delta u
=\int_0^1\mathsf C_{\rm VPI}(X(b,t)+\theta R,t)R\,d\theta.
\]

Fix \(K,M>1\) and compare times \(t_0<t_1\). Every terminally active pair is
covered by the following exact alternatives:

\[
\begin{array}{lll}
\text{inherited:}
&r_0\le Kr_1,\quad |V_0|\ge |V_1|/M,
&e_1\le M^2K^4e_0,\\[2mm]
\text{compressed:}
&r_0>Kr_1,
&\displaystyle\int_{t_0}^{t_1}(-\alpha)\,dt>\log K,\\[3mm]
\text{activated:}
&|V_0|<|V_1|/M,
&\displaystyle\int_{t_0}^{t_1}|\delta(D_tu)|\,dt
>(1-M^{-1})|V_1|.
\end{array}
\]

The compressed and activated sets can overlap; their union is exactly the
complement of the inherited set. Compression is directional strain along the
current chord. Activation is relative-velocity change by the joint nonlocal
pressure--viscous material acceleration. Rotation can steer a pair into either
mechanism, but it is not a separate source of the scalar activity \(e\).

For a fixed material cohort \(B\), let

\[
\mathcal H_B(t)=\int_B e(t,a,b)\,da\,db.
\]

If \(I\subset B\) is its inherited part, then

\[
\frac{\mathcal H_I(t_1)}{\mathcal H_B(t_1)}
\le
M^2K^4\frac{\mathcal H_B(t_0)}{\mathcal H_B(t_1)}.
\]

Thus any cohort gain that outruns \(M^2K^4\) is asymptotically carried by
material compression, complete VPI activation, or both. This causal
alternative supplies no datum-finite upper budget for either mechanism and no
license to sum overlapping future-selected cohorts.

### F1.8 Critical height is reciprocal-pair kinetic energy

On decaying \(\mathbb R^3\), define the Kelvin-inverted separation and its
Householder reflection by

\[
Y=\frac{R}{|R|^2}=\frac nr,
\qquad
Q=I-2n\otimes n.
\]

Since \(Q^TQ=I\),

\[
\dot Y
=\frac{QV}{r^2}
=\frac{-\alpha n+\beta}{r},
\qquad
|\dot Y|^2
=\frac{|V|^2}{r^4}
=\frac{\alpha^2+|\beta|^2}{r^2}.
\]

Product-volume preservation therefore gives the exact geometric identity

\[
\mathcal H_{1/2}(t)
=\frac12\|\Lambda^{1/2}u(t)\|_2^2
=\frac1{4\pi^2}
\iint_{\mathbb R^3\times\mathbb R^3}
|\dot Y_{ab}(t)|^2\,da\,db.
\]

The critical height is the \(L^2\) kinetic energy of material-pair motion in
reciprocal-separation geometry. Radial compression and angular turning are
both present in this one speed.

With

\[
a_{\rm rel}
=\frac{\delta(D_tu)}r
=\overline{\mathsf C}_{\rm VPI}n,
\]

the reciprocal acceleration is

\[
\ddot Y
=\frac1r
\left[
Qa_{\rm rel}
+2(\alpha^2-|\beta|^2)n
-4\alpha\beta
\right].
\]

Consequently,

\[
\mathcal H_{1/2}'
=\frac1{2\pi^2}
\left\langle\dot Y,\ddot Y\right\rangle_{L^2_{a,b}},
\]

and pointwise

\[
2\dot Y\cdot\ddot Y
=|\dot Y|^2(-4\alpha+2\chi).
\]

Critical production is therefore alignment between reciprocal-pair velocity
and its complete anisotropic material acceleration. The positive kinetic
reading carries magnitude; its signed evolution carries the directional
compression and the joined pressure--viscous response. On \(\mathbb T^3\),
the exact periodic version uses all lattice lifts of \(R\).

The current pair coordinate

\[
c=\frac{x+y}{2},
\qquad
Y=\frac{x-y}{|x-y|^2}
\]

has the fixed weighted base measure

\[
dx\,dy=dc\,|Y|^{-6}dY.
\]

With

\[
U=\frac{u(x)+u(y)}2,
\qquad
W=\dot Y,
\]

incompressibility becomes

\[
\nabla_c\cdot U
+|Y|^6\nabla_Y\cdot\bigl(|Y|^{-6}W\bigr)=0.
\]

Thus reciprocal motion transports the same endpoint-product volume in a fixed
weighted coordinate. The critical weight is kinetic selection inside that
measure:

\[
\mathcal H_{1/2}
=\frac1{4\pi^2}
\int |W|^2\,dc\,|Y|^{-6}dY,
\qquad
\frac d{dt}\log|Y|=-\alpha.
\]

Accordingly, the nonlinear critical current is outward reciprocal dilation,

\[
j=-4e\alpha
=4e\,\frac d{dt}\log|Y|.
\]

This coordinate is a readout of the one velocity field. Its acceleration
still depends on the surrounding field through the complete nonlocal VPI
response.

## F2. One-field coherence: exact compatibility and nonlocal reconstruction

### F2.1 Strain and vorticity are compatible derivatives of one velocity

\[
\operatorname{tr}S=0,
\qquad
\nabla\cdot\omega=0,
\qquad
-\Delta u=\nabla\times\omega.
\]

On \(\mathbb R^3\) with decay or on \(\mathbb T^3\) after the mean is fixed,
Biot–Savart reconstructs \(u\), and hence \(S\), nonlocally from \(\omega\).
Arbitrary independently posed strain and vorticity fields generally do not
come from one incompressible velocity gradient. A local vorticity vector cannot
select an independently posed local strain or eigenframe.

### F2.2 Complete decompositions are coordinates of the same field

Complete Fourier, dyadic, and Littlewood–Paley decompositions are exact
representations in their convergence classes. Their components remain coupled
by the projected nonlinearity and the common pressure closure.

A finite-dimensional projection solves the full Navier–Stokes equation only
when the projected subspace is invariant for that solution. Otherwise it is an
approximation; comparison or convergence requires a separately proved theorem.
Exceptional exact solutions may themselves have finite Fourier support.

### F2.3 The incompressible viscous model has no finite-propagation principle

The Leray projection is spatially nonlocal. For nonzero compactly supported
data on \(\mathbb R^3\), \(e^{\nu t\Delta}f\) is real analytic and cannot
remain compactly supported for \(t>0\). Localized equations acquire pressure,
flux, or commutator terms. Localization changes the readout; it does not change
the whole-field origin of pressure.

### F2.4 Scoped far-field cancellation on \(\mathbb R^3\)

Let \(\omega\in L^1\) satisfy \(\nabla\cdot\omega=0\), be supported in
\(B(x_0,L)\), and satisfy the curl-neutrality condition
\(\int\omega\,dx=0\). For the associated Biot–Savart velocity, set
\(R=|x-x_0|\). When \(R\ge 2L\),

\[
|\nabla u(x)|
\le
C\frac{L\|\omega\|_{L^1}}{R^4}.
\]

This is the kernel-cancellation improvement over the raw cubic far-strain
decay. The support, integrability, and zero-mean hypotheses are sufficient for
the stated bound; suitable first-moment hypotheses can replace compact support.

### F2.5 Pair space is constrained by one-field integrability

For three current points, let

\[
V_{xy}=u(x)-u(y).
\]

Then

\[
V_{xy}+V_{yz}=V_{xz},
\qquad
V_{yx}=-V_{xy}.
\]

Conversely, this cocycle identity reconstructs a one-point field from
\(V_{xy}\) up to a spatial constant, before incompressibility and the
Navier--Stokes law are imposed. A pair field is therefore not an independently
posable six-dimensional fluid.

On \(\mathbb R^3\), or on a fixed periodic lattice lift, put

\[
x=c+\frac R2,
\qquad
y=c-\frac R2,
\qquad
U=\frac{u(x)+u(y)}2,
\qquad
V=u(x)-u(y).
\]

Direct differentiation gives the one-field compatibility identities

\[
\nabla_cU=\nabla_RV,
\qquad
\nabla_cV=4\nabla_RU,
\qquad
\Delta_cV=4\Delta_RV=\Delta u(x)-\Delta u(y).
\]

The exact pair equation is

\[
\left(\partial_t+U\cdot\nabla_c+V\cdot\nabla_R\right)V
+\nabla_c\bigl(p(x)-p(y)\bigr)
=\nu\left(\frac12\Delta_c+2\Delta_R\right)V
=\nu\Delta_cV.
\]

This identity makes the apparent center and separation diffusion one viscous
action on a lawful velocity-increment field.

The same lock survives reciprocal separation. Let

\[
Y=\frac R{|R|^2},
\qquad
\rho=|Y|,
\qquad
Q=I-2\widehat Y\otimes\widehat Y,
\qquad
W=\rho^2QV.
\]

The conjugated separation Laplacian is

\[
\mathcal L_YW
=\rho^2Q\left[
\rho^4\Delta_Y(\rho^{-2}QW)
-2\rho^2Y\cdot\nabla_Y(\rho^{-2}QW)
\right].
\]

For every lawful one-field increment,

\[
\mathcal L_YW=\frac14\Delta_cW,
\qquad
\nu\left(\frac12\Delta_cW+2\mathcal L_YW\right)
=\nu\Delta_cW.
\]

The formal large-\(\rho\) principal part \(\rho^4\Delta_Y\) is therefore a
coordinate expression of the same viscosity. It is not a second brake at high
reciprocal radius, and a weighted-divergence-free \(W\) that violates the
cocycle or these compatibility identities is not a pair representation of one
velocity field.

### F2.6 Every fixed low-frequency coordinate has a whole-field response clock

Let \(\Pi_K=P_{\le K}\) be a scalar Fourier low-pass projection and set
\(v_K=\Pi_Ku\). After transport, pressure, and incompressibility are recombined
through the Leray projection, the exact coordinate equation is

\[
\partial_tv_K
=-\Pi_K\mathbb P\nabla\cdot(u\otimes u)+\nu\Delta v_K.
\]

The kinetic-energy bound and the low-frequency kernel estimate give

\[
\|\partial_tv_K(t)\|_2
\le C_\Omega\left(
\mathcal E_0K^{5/2}
+\nu\mathcal E_0^{1/2}K^2
\right).
\]

Consequently,

\[
\|v_K(t)-v_K(s)\|_2
\le C_\Omega|t-s|\left(
\mathcal E_0K^{5/2}
+\nu\mathcal E_0^{1/2}K^2
\right).
\]

Thus an order-\(\mathcal E_0^{1/2}\) rearrangement of the complete low-pass
coordinate requires at least a constant multiple of the response scale

\[
\tau_K
=
\left(
\mathcal E_0^{1/2}K^{5/2}+\nu K^2
\right)^{-1}.
\]

If at one time a fixed ball contains at least \(c\mathcal E_0\) of filtered
energy, the same ball retains at least \(c'\mathcal E_0\) for a constant
multiple of \(\tau_K\). This is Eulerian persistence of a complete-field coordinate. A
material carrier requires additional control of the full velocity and the
pressure-closed surrounding field.

The unresolved same-field coupling remains explicit:

\[
\partial_tv_K
+\Pi_K\mathbb P\nabla\cdot(v_K\otimes v_K)
=-\Pi_K\mathbb P\nabla\cdot
\bigl(u\otimes u-v_K\otimes v_K\bigr)
+\nu\Delta v_K.
\]

The right-hand stress contains high--high-to-low and cross-scale action. A
time window with small direct low-pass viscous change becomes an Euler window
only after this stress is proved negligible or is retained in the comparison
object. Instantaneous nonlocal pressure is already present in the projected
response; \(\tau_K\) is a velocity-response bound, not a pressure lag.

## F3. Heat scaling: criticality and scale-selective viscosity

### F3.1 Exact fixed-viscosity scaling

On \(\mathbb R^3\), or between correspondingly rescaled domains,

\[
u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),
\qquad
p_\lambda(x,t)=\lambda^2p(\lambda x,\lambda^2t)
\]

solves the same unforced equation with the same viscosity. On one fixed torus
or bounded domain, continuous scaling changes the surface.

### F3.2 Finite energy is supercritical

On \(\mathbb R^3\), or between correspondingly rescaled domains,

\[
\|u_\lambda\|_{L^2}^2
=\lambda^{-1}\|u\|_{L^2}^2,
\qquad
\|u_\lambda\|_{\dot H^{1/2}}
=\|u\|_{\dot H^{1/2}}.
\]

Critical concentration can therefore occur in a rescaled family while its
kinetic energy decreases. Finite kinetic energy alone does not exclude
scaling-critical concentration. This scaling statement does not assert that a
particular datum-anchored history actually concentrates.

### F3.3 Viscosity is scale-selective

At Fourier frequency \(k\), the viscous multiplier is
\(-\nu|k|^2\). At spatial scale \(r\), the corresponding heat time is

\[
t_{\mathrm{heat}}\sim\frac{r^2}{\nu}.
\]

Growth of high frequencies must be supplied by the same-field nonlinear
interaction against this quadratic damping.

Every standard \(L^2\)-orthogonal, divergence-free, energy-preserving
Fourier–Galerkin truncation is a finite-dimensional energy-bounded system and
is globally regular. No one fixed cutoff blows up. An approximation-based
singular limit requires loss of a uniform-in-cutoff continuation bound as the
cutoff tends to infinity.

### F3.4 The same field has an adaptive dissipation boundary

For the Cauchy problem on \(\mathbb R^3\), let \(u_q\) denote its dyadic
Littlewood--Paley shells, with \(\lambda_q=2^q\). For the absolute constant
\(c_0\) in the frequency-localized Navier--Stokes estimate, define

\[
\Lambda(t)=\lambda_{Q(t)},
\qquad
Q(t)=\min\left\{
q\ge0:\ \lambda_p^{-1}\|u_p(t)\|_\infty<c_0\nu
\text{ for every }p>q
\right\}.
\]

Set \(\Lambda(t)=\infty\) when this set is empty.

Above this state-dependent wavenumber, the actual shell amplitudes are small
enough relative to \(\nu\lambda_p\) for the viscous term to absorb the high-mode
nonlinearity in the regularity estimate. The remaining continuation clock is
the low-mode vorticity readout

\[
f(t)
=\|u_{\le Q(t)}(t)\|_{B^1_{\infty,\infty}}
\simeq
\|\omega_{\le Q(t)}(t)\|_{B^0_{\infty,\infty}}.
\]

If a weak solution is regular on \([0,T)\) and

\[
\int_0^T f(t)\,dt<\infty,
\]

then it is regular through \(T\). Hence a finite breakdown at this scope
requires divergence of this adaptive low-mode clock. For every Leray--Hopf
solution, \(\Lambda\in L^1(0,T)\); the stronger condition
\(\Lambda\in L^{5/2}(0,T)\) implies regularity. This exact gap quantifies how
often and how strongly the nonlinear range may approach the viscous range. In
particular, a Leray--Hopf breakdown would require

\[
\Lambda\in L^1(0,T)\setminus L^{5/2}(0,T),
\qquad
f\notin L^1(0,T).
\]

The cutoff is a readout of one complete field, not an independently evolving
low-frequency fluid or a universal cascade direction.

## F4. Derivative tower: exact coupled evolution and continuation

### F4.1 The first-rung laws

Write \(A=\nabla u\) and
\(W=\frac12(A-A^T)\). Then

\[
D_tA+A^2+\nabla^2p=\nu\Delta A,
\]

\[
D_tS+S^2+W^2+\nabla^2p=\nu\Delta S,
\]

\[
D_t\omega=S\omega+\nu\Delta\omega.
\]

Strain directly produces or suppresses vorticity. The nonlocal pressure
Hessian directly changes the strain evolution, and therefore changes the
subsequent stretching geometry without any pressure lag. Viscosity diffuses
both fields.

### F4.2 Every higher rung carries the differentiated same law

For a multi-index \(\alpha\),

\[
(D_t-\nu\Delta)\partial^\alpha u
+\nabla\partial^\alpha p
=-[\partial^\alpha,u\cdot\nabla]u.
\]

Higher rungs have no independent data or dynamics. Their evolution contains
the common pressure and viscosity together with exact nonlinear commutators.
The full classical tower exists only while the solution has the corresponding
regularity.

### F4.3 Classical BKM continuation fact

For a smooth solution approaching a finite time \(T_*\),

\[
\int_0^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty
\]

implies continuation of the same smooth solution through \(T_*\). Therefore a
finite-time classical breakdown requires

\[
\int_0^{T_*}\|\omega(t)\|_{L^\infty}\,dt=\infty.
\]

A large terminal snapshot alone is not a breakdown mechanism; the
continuation-grade history must accumulate infinite vorticity action.

### F4.4 A genuine finite blowup has full terminal critical-height divergence

For the unforced Cauchy problem on \(\mathbb R^3\), let the divergence-free
initial datum be smooth and compactly supported, and let an energy solution
have a finite first blowup time \(T_*\). Then Seregin's endpoint theorem gives

\[
\lim_{t\uparrow T_*}\|u(t)\|_{\dot H^{1/2}}=\infty.
\]

Thus a lawful terminal singular history at this scope cannot return through a
bounded critical-height subsequence. The whole terminal limit diverges. This
is a necessary possible-history fact, not a mechanism proving that such a
history exists. The theorem is stated on \(\mathbb R^3\) at the displayed
datum and energy-solution scope; no periodic or bounded-domain extension is
asserted here.

## F5. Energy and irreversibility: global dissipation and local exchange

### F5.1 Global kinetic-energy identity

\[
\frac12\|u(t)\|_{L^2}^2
+\nu\int_0^t\|\nabla u(s)\|_{L^2}^2\,ds
=\frac12\|u_0\|_{L^2}^2.
\]

For Leray–Hopf weak solutions the corresponding statement is an inequality.
Energy is non-increasing, not universally strictly decreasing; constant
periodic flows have zero viscous dissipation.

### F5.2 Local energy and material stress exchange

With \(e=\frac12|u|^2\),

\[
\partial_te
+\nabla\cdot\left((e+p)u-2\nu Su\right)
=-2\nu|S|^2.
\]

Advection carries energy. The globally determined pressure contributes
pressure flux. Viscous stress contributes diffusive flux and a nonnegative
kinetic-energy loss. A localized or material packet has boundary-flux terms and
is not automatically energetically closed.

### F5.3 Material volume is preserved while circulation is viscously mutable

For a smooth material loop \(C(t)\),

\[
\frac{d}{dt}\oint_{C(t)}u\cdot d\ell
=\nu\oint_{C(t)}\Delta u\cdot d\ell.
\]

Pressure and convection contribute no material-loop circulation term. The
viscous defect is signed. Material labels and volume persist. Circulation need
not be conserved; vorticity and material shape evolve under their respective
equations, while Fourier support is a global Eulerian property rather than a
material invariant.

### F5.4 Helicity has no universal monotone sign

When the integral is defined and boundary terms vanish,

\[
\frac{d}{dt}\int u\cdot\omega\,dx
=-2\nu\int\omega\cdot(\nabla\times\omega)\,dx.
\]

The right-hand side is sign-indefinite. Mechanical irreversibility does not
supply a monotone sign to every signed geometric readout.

### F5.5 Reciprocal-pair speed has a finite fourth-power time budget

Let

\[
\mathcal E(t)=\frac12\|u(t)\|_2^2,
\qquad
H(t)=\mathcal H_{1/2}(t),
\qquad
K(t)=\|\nabla u(t)\|_2^2.
\]

Fourier interpolation and the energy identity give

\[
H(t)^2\le\frac12\mathcal E(t)K(t),
\qquad
\mathcal E'(t)+\nu K(t)=0.
\]

Hence, with \(\mathcal E_0=\mathcal E(0)\),

\[
\int_0^T H(t)^2\,dt
\le
\frac{\mathcal E_0^2-\mathcal E(T)^2}{4\nu}
\le\frac{\mathcal E_0^2}{4\nu}.
\]

In the reciprocal-pair coordinate of F1.8, this is

\[
\int_0^T
\|\dot Y(t)\|_{L^2_{a,b}}^4\,dt
\le
\frac{4\pi^4\mathcal E_0^2}{\nu}.
\]

Every level \(M>0\) therefore has the occupancy bound

\[
\left|\{t\in[0,T]:H(t)\ge M\}\right|
\le\frac{\mathcal E_0^2}{4\nu M^2}.
\]

The finite budget forces the time occupied above level \(M\) to vanish as
\(M\to\infty\). At the terminal scope of F4.4 this is a shrinking terminal
tail above an increasing critical-height floor, not a return through bounded
states. Peak control still requires an additional same-participant restriction
on the acceleration or renewal inside that tail.

### F5.6 Critical viscous dissipation is a whole-pair recombination

In the reciprocal coordinates of F1.8, set

\[
d\mu=dc\,|Y|^{-6}dY.
\]

The compatibility in F2.5 and the fractional-increment normalization give

\[
\|\Lambda^{3/2}u\|_2^2
=\frac1{2\pi^2}\int|\nabla_cW|_F^2\,d\mu.
\]

The exact critical balance is therefore

\[
\mathcal H_{1/2}'
=-\frac1{\pi^2}\int\alpha|W|^2\,d\mu
-\frac\nu{2\pi^2}\int|\nabla_cW|_F^2\,d\mu.
\]

The first term is anisotropic outward reciprocal motion, equivalently
critical-energy-weighted physical pair compression. The pressure work is a
center flux,

\[
-\frac{(u(x)-u(y))\cdot(\nabla p(x)-\nabla p(y))}{|x-y|^4}
=-\nabla_c\cdot
\left(
\frac{(p(x)-p(y))(u(x)-u(y))}{|x-y|^4}
\right),
\]

and cancels only after complete center integration.

The viscous sign also belongs to the recombined field. On the \(2\pi\)-periodic
torus, the exact pressureless heat shear

\[
u=(f(t,y),0,0),
\qquad
f=e^{-\nu t}\sin y+e^{-4\nu t}\sin2y
\]

has, at \(y_\pm=\pm2\pi/3\),

\[
\nu\,\delta u\cdot\delta\Delta u
=3\nu(a-b)(4b-a)>0,
\qquad
a=e^{-\nu t},\quad b=e^{-4\nu t},
\]

exactly when

\[
0<t<\frac{\log4}{3\nu}.
\]

Thus viscosity can temporarily increase the squared relative speed of an
individual material pair while remaining the global critical sink displayed
above. Its dissipative sign cannot be assigned pairwise, directionwise, or to
an independently selected reciprocal cohort.

## F6. Vorticity production and coupled scale interaction

### F6.1 Vortex stretching is enstrophy production

\[
\frac12\frac{d}{dt}\|\omega\|_{L^2}^2
+\nu\|\nabla\omega\|_{L^2}^2
=\int\omega\cdot S\omega\,dx.
\]

The term \(\omega\cdot S\omega\) is three-dimensional vorticity or enstrophy
production. It is not, by itself, the kinetic-energy flux across a selected
scale.

### F6.2 Strain and vorticity share one global signed production account

Under the periodic or decaying surface conditions,

\[
\int|S|^2\,dx
=\frac12\int|\omega|^2\,dx.
\]

Hence the pressure source has zero spatial mean:

\[
\int\left(|S|^2-\frac12|\omega|^2\right)dx=0.
\]

The Betchov identity gives

\[
\int\operatorname{tr}(S^3)\,dx
=-\frac34\int\omega\cdot S\omega\,dx.
\]

Global signed strain self-amplification and global signed vortex stretching
are two readings of the same production account. This signed identity does not
control either positive part or total variation.

### F6.3 Interscale kinetic-energy transfer is a different exact balance

A Fourier or filtered decomposition creates an interscale kinetic-energy flux
through the nonlinear term. Globally,

\[
\int u\cdot(u\cdot\nabla)u\,dx=0.
\]

For an exact orthogonal Fourier split, nonlinear transfers into complementary
mode sets are equal and opposite. The integrated flux across one cutoff need
not vanish.

For a complete divergence-free Fourier mode,

\[
\operatorname{Re}\!\left(
\overline{\widehat u(k)}\cdot ik\,\widehat p(k)
\right)=0,
\]

so pressure does no modal energy work. In physical space, the same globally
generated pressure transports energy through the pressure flux \(pu\).
Spatial pressure transport and spectral nonlinear transfer are distinct
readings of the same history.

More generally, on the decaying \(\mathbb R^3\) or periodic \(\mathbb T^3\)
surface, let \(M=m(D)\) be a time-independent real scalar self-adjoint Fourier
multiplier acting componentwise, and assume all pairings below are finite.
Since \(M\) commutes with gradient and divergence,

\[
\left\langle M\nabla p,Mu\right\rangle=0.
\]

Consequently the unforced global quadratic multiplier balance is

\[
\frac12\frac{d}{dt}\|Mu\|_{L^2}^2
+\nu\|\nabla Mu\|_{L^2}^2
=
-\operatorname{Re}
\left\langle M((u\cdot\nabla)u),Mu\right\rangle.
\]

For \(M=\Lambda^{1/2}\), pressure therefore makes no direct contribution to
the global \(\dot H^{1/2}\) balance. This is a global, constant-coefficient
multiplier statement. Localization, variable coefficients, general
matrix-valued multipliers, or bounded-domain boundary terms can destroy this
orthogonality or introduce pressure flux and commutators. Pressure still
changes the same field and its strain geometry, thereby affecting later
nonlinear transfer.

No universal direction of interscale transfer follows from these identities.

### F6.4 Rising critical height forces the current-producing scales to escape

Let

\[
\mathcal E(t)=\frac12\|u(t)\|_2^2,
\qquad
D(t)=\|\Lambda^{3/2}u(t)\|_2^2,
\]

and let \(u_{\le L}=P_{\le L}u\) be a Fourier low-pass field. Split the exact
critical current into its all-low triads and the complementary triads:

\[
P_{\mathrm{low}}(L)
=-\left\langle
\mathbb P((u_{\le L}\cdot\nabla)u_{\le L}),
\Lambda u_{\le L}
\right\rangle,
\qquad
P_{\mathrm{fine}}(L)=P_H-P_{\mathrm{low}}(L).
\]

Leray orthogonality and Bernstein's inequality give

\[
|P_{\mathrm{low}}(L)|
\le C_\Omega\,\mathcal E(t)^{3/2}L^{7/2}.
\]

At every time when the critical height is nondecreasing,
\(P_H\ge\nu D\). Consequently, with

\[
L_*(t)
=\left(
\frac{\nu D(t)}{2C_\Omega\mathcal E(t)^{3/2}}
\right)^{2/7},
\]

one has the signed lower bound

\[
P_{\mathrm{fine}}(L_*)\ge\frac{\nu D}{2}.
\]

For a sharp cutoff, every triad counted by this complementary current has at
least one frequency above \(L_*\); frequency closure forces a second leg above
\(L_*/2\). It is one collective current of the same field, not a separately
evolving high-frequency fluid. Moment interpolation further gives

\[
L_*(t)
\ge c_\Omega\nu^{2/7}
\frac{\mathcal H_{1/2}(t)^{6/7}}{\mathcal E(0)}.
\]

Therefore an unbounded rising-record history cannot be driven by a
fixed-frequency active base while an arbitrarily fine passive tail merely
raises the viscous loss. The current-producing interactions themselves must
reach unbounded frequency. This fact supplies no persistence, cascade
direction, material-carrier identity, or upper bound for the critical height.

The exponent \(6/7\) is sharp at universal instantaneous, varying-data scope.
There are smooth mean-zero periodic data with uniformly bounded kinetic
energy and frequencies \(L_N\asymp N^{6/7}\ll N\) such that

\[
\mathcal H_{1/2}(u_N)\asymp N,
\qquad
D(u_N)\asymp N^3,
\qquad
P_H(u_N)\asymp N^3,
\qquad
\mathcal H_{1/2}'(u_N)>0,
\]

while every current-producing triad lies in the block at scale \(L_N\), and a
separated mode at scale \(N\) supplies the dominant height and viscous loss
but enters no current triad. The construction uses an \(L^2\)-normalized
periodized concentration, for which \(P_H\asymp L^{7/2}\), plus a
frequency-separated divergence-free shear mode. The full pressure remains the
Poisson response of the combined datum. Hence no larger frequency power can
be forced by a same-time energy argument; any stronger conclusion must use
the evolution of one fixed history.

### F6.5 Every terminal last doubling carries net fine-scale current

Assume the \(\mathbb R^3\) terminal scope of F4.4 and put

\[
B_\nu=\frac{\mathcal E_0^2}{4\nu}.
\]

For every sufficiently large level \(M\), let \(a_M\) be the last time before
\(T_*\) at which \(\mathcal H_{1/2}=M\), and let \(b_M\) be the first later
time at which \(\mathcal H_{1/2}=2M\). Then

\[
M\le\mathcal H_{1/2}(t)\le2M
\quad (a_M\le t\le b_M),
\qquad
b_M-a_M\le\frac{B_\nu}{M^2}.
\]

Use the fixed-cutoff current decomposition from F6.4 and set

\[
L_M
=\left(
\frac{M^3}{2C_\Omega B_\nu\mathcal E_0^{3/2}}
\right)^{2/7}
=c_\Omega\nu^{2/7}\frac{M^{6/7}}{\mathcal E_0}.
\]

The critical balance and the bounded-frequency ceiling give the exact signed
history consequence

\[
\boxed{
\int_{a_M}^{b_M}P_{\mathrm{fine}}(L_M,t)\,dt
\ge\frac M2.
}
\]

No monotonicity inside the interval is assumed. For dyadic levels
\(M_n=2^nM_0\), these last-doubling intervals are ordered and have disjoint
interiors. Thus a terminal singular history cannot temporally reuse one
bounded-frequency production episode: every dyadic doubling carries new net
current through interactions having at least two frequency legs above a
threshold tending to infinity. The cutoff changes with the level, and no
datum-bounded upper budget for this moving-cutoff signed current is proved;
the statement is a necessary terminal-history law, not Gold closure.

### F6.6 A terminal doubling forces scale advance or concentrated saturation

On the interval \(I_M=[a_M,b_M]\) from F6.5, set

\[
K_M=2L_M,
\qquad
Q_M=C_\Omega\mathcal E_0^{3/2}K_M^{7/2}
=2^{5/2}\frac{M^3}{B_\nu}.
\]

The exact split \(P_H=P_{\mathrm{low}}(K_M)+P_{\mathrm{fine}}(K_M)\)
and \(\int_{I_M}P_H\,dt\ge M\) give the dichotomy

\[
\boxed{
\int_{I_M}P_{\mathrm{fine}}(K_M,t)\,dt\ge\frac M4
}
\]

or

\[
\boxed{
\int_{I_M}P_{\mathrm{low}}(K_M,t)\,dt>\frac{3M}{4}.
}
\]

The first branch advances a positive net current beyond \(2L_M\); for a sharp
cutoff, every complementary triad has a second frequency leg above \(L_M\).

In the second branch, put \(\delta=3/2^{9/2}\). Then

\[
\delta\frac{B_\nu}{M^2}
\le |I_M|\le\frac{B_\nu}{M^2},
\qquad
\frac1{|I_M|}
\int_{I_M}
\frac{[P_{\mathrm{low}}(K_M,t)]_+}{Q_M}\,dt
\ge\delta.
\]

Consequently, on a fixed positive fraction of \(I_M\), the low-pass field
\(v=P_{\le K_M}u\) simultaneously has

\[
\|v\|_2^2\ge c_\Omega\mathcal E_0,
\qquad
\|\Lambda v\|_2^2\ge c_\Omega K_M^2\mathcal E_0,
\qquad
\|v\|_\infty\ge
c_\Omega K_M^{3/2}\mathcal E_0^{1/2}.
\]

A fixed fraction of this filtered energy lies in an annulus adjacent to
\(K_M\), and Bernstein's gradient bound supplies a center \(x_M(t)\) such
that

\[
\int_{B(x_M(t),c_\Omega/K_M)}|P_{\le K_M}u(x,t)|^2\,dx
\ge c_\Omega\mathcal E_0.
\]

This is concentration of a complete-field coordinate. It does not by itself
give local kinetic energy of \(u\), a material carrier, a persistent center,
or a pressure-closed packet: the complementary frequencies may cancel the
low-pass field locally and the center may move. Thus every terminal doubling
either advances the current scale or creates a quantitatively concentrated
filtered engine whose promotion to a material mechanism requires a separate
same-history theorem. Combining this alternative with the global budget in
F5.5 gives the stronger terminal-history law below. The moving-cutoff
scale-advance current remains without a datum-bounded upper budget.

### F6.7 A terminal history outruns every fixed multiple of the instantaneous scale floor

Let \(M_n=2^nM_0\) and use the disjoint last-doubling intervals \(I_{M_n}\)
from F6.5. For any fixed \(A\ge1\), split the current at the larger cutoff
\(A L_M\). The all-low ceiling is

\[
|P_{\mathrm{low}}(A L_M,t)|
\le
A^{7/2}\frac{M^3}{2B_\nu}.
\]

Since every last doubling has \(\int_{I_M}P_H\,dt\ge M\), failure of

\[
\int_{I_M}P_{\mathrm{fine}}(A L_M,t)\,dt
\ge\frac M2
\]

forces

\[
|I_M|>\frac{B_\nu}{A^{7/2}M^2}.
\]

But \(H(t)\ge M\) throughout \(I_M\). Every such failure therefore consumes

\[
\int_{I_M}H(t)^2\,dt
>\frac{B_\nu}{A^{7/2}}.
\]

The dyadic intervals have disjoint interiors and F5.5 gives
\(\int_0^{T_*}H^2\,dt\le B_\nu\). Hence, for each fixed \(A\), fewer than
\(A^{7/2}\) dyadic levels can fail the displayed fine-current lower bound.
Equivalently, for every fixed \(A<\infty\) there is an index \(n_A\) such
that every \(n\ge n_A\) satisfies

\[
\boxed{
\int_{I_{M_n}}
P_{\mathrm{fine}}(A L_{M_n},t)\,dt
\ge\frac{M_n}{2}
}
\]

Write the total critical production on one doubling as

\[
J_M
=\int_{I_M}P_H(t)\,dt
=M+\nu\int_{I_M}D(t)\,dt.
\]

For every \(0<\varepsilon<1\), the same argument applied to the absolute
integrated low current gives

\[
\#\left\{
n:\
\left|
\int_{I_{M_n}}P_{\mathrm{low}}(A L_{M_n},t)\,dt
\right|
\ge\varepsilon J_{M_n}
\right\}
\le\frac{A^{7/2}}{2\varepsilon}.
\]

Consequently, for every fixed \(A<\infty\),

\[
\frac{1}{J_{M_n}}
\int_{I_{M_n}}P_{\mathrm{fine}}(A L_{M_n},t)\,dt
\longrightarrow1.
\]

Diagonalizing \(A=j\) and \(\varepsilon=j^{-1}\) supplies history-dependent
sequences \(A_n\to\infty\) and \(\varepsilon_n\to0\) such that

\[
\left|
\frac{1}{J_{M_n}}
\int_{I_{M_n}}P_{\mathrm{fine}}(A_nL_{M_n},t)\,dt-1
\right|
<\varepsilon_n.
\]

Thus the exponent \(6/7\) is sharp for unrelated instantaneous data, as in
F6.4, while one terminal history forces the net current carrying almost all
late critical production beyond every fixed multiple of that scale floor.

There is also a universal density statement. Fix \(\alpha,\beta>0\) with

\[
\frac72\alpha+\beta<1.
\]

On index blocks \(2^k\le n<2^{k+1}\), put
\(A_k=2^{\alpha k}\) and \(\varepsilon_k=2^{-\beta k}\). All but
\(o(2^k)\) levels in each block satisfy

\[
\left|
\frac{1}{J_{M_n}}
\int_{I_{M_n}}P_{\mathrm{fine}}(A_kL_{M_n},t)\,dt-1
\right|
<\varepsilon_k.
\]

Since \(A_k\asymp n^\alpha\asymp
[\log(M_n/M_0)]^\alpha\), every \(\alpha<2/7\) gives a predetermined
logarithmic scale gain on a density-one set of terminal doublings. Signed
cutoff current need not be monotone in the cutoff, so all statements apply at
their displayed cutoffs. The all-level factor \(A_n\) remains
history-dependent, and no larger fixed power follows.

For the particular split in F6.6, failure of its \(M/4\) scale-advance bound
forces at least

\[
\delta B_\nu,
\qquad
\delta=\frac3{2^{9/2}},
\]

of the global \(H^2\) budget. It can therefore fail on at most seven dyadic
levels. Indefinitely repeated bounded-band saturation is excluded. The
surviving statement is integrated signed scale escape; material packet
identity, monotone cascade direction, and a datum-finite cumulative bound for
the moving fine current remain open.

### F6.8 Scale-escaping current requires an active same-field tail

For the sharp-cutoff current in F6.4, put

\[
u_{>R/2}=P_{>R/2}u,
\qquad
\tau_R=\|\Lambda^{1/2}u_{>R/2}\|_2,
\qquad
K_R=\|\nabla u_{>R/2}\|_2^2,
\qquad
D=\|\Lambda^{3/2}u\|_2^2.
\]

Then

\[
\boxed{
|P_{\mathrm{fine}}(R)|
\le C_\Omega D^{1/2}K_R
\le C_\Omega\tau_R D
\le \frac{C_\Omega}{R}D^{3/2}.
}
\]

The first estimate is the cancellation left by incompressibility, rather than
a generic cubic bound. Every complementary triad has two frequency legs above
\(R/2\). After the transported and tested legs are symmetrized, its multiplier
contains

\[
(p\cdot\widehat u(k))(|q|-|p|),
\qquad k+p+q=0,
\]

whose size is at most the smallest triad frequency times the largest. The two
high legs therefore supply \(K_R\), while the remaining leg supplies
\(D^{1/2}\). Fourier Cauchy--Schwarz and high-frequency support give

\[
K_R\le\tau_R\|\Lambda^{3/2}u_{>R/2}\|_2,
\qquad
\tau_R\le\frac2R\|\Lambda^{3/2}u_{>R/2}\|_2.
\]

Apply this to the diagonal sequence in F6.7, with
\(R_n=A_nL_{M_n}\). Its total production satisfies

\[
(1-\varepsilon_n)J_{M_n}
\le C_\Omega\int_{I_{M_n}}\tau_{R_n}D\,dt
\le\frac{C_\Omega}{R_n}
\int_{I_{M_n}}D^{3/2}\,dt.
\]

Since \(J_{M_n}\ge\nu\int_{I_{M_n}}D\,dt\), every sufficiently late
doubling contains a time at which

\[
\tau_{R_n}\ge c_\Omega(1-\varepsilon_n)\nu.
\]

Moreover,

\[
\int_{I_{M_n}}D^{3/2}\,dt
\ge c_\Omega(1-\varepsilon_n)R_nJ_{M_n}
\ge c_\Omega(1-\varepsilon_n)
\frac{A_n\nu^{2/7}}{\mathcal E_0}M_n^{13/7}.
\]

Thus the escaping interactions carry a quantitatively active critical tail;
an arbitrarily fine but critically negligible passive tail cannot produce the
terminal current. The estimate exposes critical dissipation, not a finite
cumulative upper budget for it.

### F6.9 Fixed energy permits arbitrarily large short-time fine current

There is a smooth anisotropic divergence-free datum \(\phi\) on
\(\mathbb R^3\), a cutoff \(\rho>0\), and constants \(T,c>0\) such that the
viscosity-\(\varepsilon\) solutions \(w_\varepsilon\) from \(\phi\) obey

\[
P_{\mathrm{fine}}(\rho,w_\varepsilon(s))\ge c
\qquad(0\le s\le T)
\]

uniformly for all sufficiently small \(\varepsilon\). One explicit seed uses
the centers \(p=(1,0,0)\), \(q=(0,1,0)\), \(k=p+q\), with central
coefficients \((0,1,1)\), \((1,0,0)\), and \(-i(1,-1,1)\), respectively,
plus their reality conjugates. Its central current is strictly positive. Narrow
smooth Fourier packets followed by Leray projection preserve that sign, and
uniform local well-posedness and continuous dependence preserve it for the
displayed short interval.

For fixed \(\nu>0\), the two-parameter field

\[
u_{\mu,\lambda}(x,t)
=\mu\lambda\,
w_{\nu/\mu}(\lambda x,\mu\lambda^2t)
\]

is an exact fixed-viscosity Navier--Stokes solution. On
\(0\le t\le T/(\mu\lambda^2)\), its same-field quantities scale as

\[
\int P_{\mathrm{fine}}(\lambda\rho,u_{\mu,\lambda})\,dt
\ge c\mu^2,
\qquad
\mathcal E(0)=\frac{\mu^2}{\lambda}\mathcal E(\phi),
\]

\[
\int H^2\,dt\asymp\frac{\mu^3}{\lambda^2},
\qquad
\nu\int K\,dt\asymp\frac{\nu\mu}{\lambda},
\qquad
\nu\int D\,dt\asymp\nu\mu.
\]

Choosing \(\lambda=\mu^2\mathcal E(\phi)/E_*\) fixes the kinetic energy at
any declared \(E_*>0\). With \(M\asymp\mu^2\), the cutoff and integrated
fine current are both of order \(M\), while

\[
\int H^2\,dt\asymp M^{-1/2},
\qquad
\nu\int K\,dt\asymp\nu M^{-1/2},
\qquad
\nu\int D\,dt\asymp\nu M^{1/2}.
\]

Hence fixed kinetic energy, its dissipated amount, and the finite \(H^2\)
occupancy budget permit unbounded signed current at an increasingly fine
scale. Critical dissipation records the growing cost. This is a varying-data,
short-history possibility theorem. It does not supply a terminal history for
one datum and does not defeat a same-history VPI or material restriction.

## F7. Anisotropic, directional, relational geometry

### F7.1 Nonzero incompressible strain is necessarily anisotropic

\[
\operatorname{tr}S=0.
\]

If \(S=\alpha I\), then \(\alpha=0\). Every nonzero instantaneous strain
therefore contains directional extension and compression. Statistical isotropy
or an isotropic pressure-Hessian component does not remove this instantaneous
anisotropic deformation.

### F7.2 The vorticity-production sign is relational

For strain eigenpairs \((\lambda_i,e_i)\),

\[
\omega\cdot S\omega
=\sum_i\lambda_i|\omega\cdot e_i|^2.
\]

The sign depends jointly on the strain eigenvalues and the distribution of
vorticity among their eigenspaces. At repeated eigenvalues, a named eigenframe
is not unique; the invariant object is the eigenspace or spectral projector.

### F7.3 Pressure-Hessian global cancellation and localized nonlocal action

Globally,

\[
\int S:\nabla^2p\,dx=0.
\]

The pressure Hessian does no net work in the global strain-energy balance. It
can change strain locally with either sign while its displayed global pairing
remains zero.

For \(\phi\in C_c^\infty(\mathbb R^3)\), or smooth periodic \(\phi\) on
\(\mathbb T^3\),

\[
\int\phi S:\nabla^2p\,dx
=
\int p\left[(\partial_i\partial_j\phi)S_{ij}
+2(\partial_i\phi)(\partial_jS_{ij})\right]dx.
\]

This term need not vanish and has no universal sign. It remains a localized
reading of the globally generated, nonlocal pressure response. Localization
exposes collar and commutator terms; it does not make pressure local.

### F7.4 Reduced models do not inherit full-fluid authority

The standard restricted-Euler model replaces \(\nabla^2p\) by

\[
-\frac13\operatorname{tr}(A^2)I
\]

and drops \(\nu\Delta A\). It is therefore a different evolution equation; a
restricted-Euler trajectory satisfies Navier–Stokes only when it separately
satisfies the omitted full-PDE terms.

### F7.5 Critical production is an all-chord anisotropic relation

On decaying \(\mathbb R^3\), define the complete-field relative-energy tensor

\[
\mathsf T_u(z)
=\frac1{\pi^2}\int_0^1\int_{\mathbb R^3}
\frac{|u(z+(1-s)r)-u(z-sr)|^2}{|r|^4}
\widehat r\otimes\widehat r\,dr\,ds.
\]

It is symmetric and positive semidefinite, and

\[
\int\operatorname{tr}\mathsf T_u\,dz
=4\mathcal H_{1/2}.
\]

The exact nonlinear critical current from F5.6 is

\[
P_H
=-\frac1{\pi^2}\iint
\alpha(x,y)\frac{|u(x)-u(y)|^2}{|x-y|^4}\,dx\,dy
=-\int S:\mathsf T_u\,dz
=-\int S:\mathsf T_u^\circ\,dz.
\]

The second equality follows by integrating the strain along every straight
chord:

\[
\alpha(x,y)
=\int_0^1
\widehat r\cdot S(y+sr)\widehat r\,ds,
\qquad
r=x-y.
\]

At every time when \(\mathcal H_{1/2}'\ge0\), the global balance in F5.6
therefore forces

\[
-\int S:\mathsf T_u^\circ\,dz
\ge
\nu\|\Lambda^{3/2}u\|_2^2.
\]

Thus critical production is the signed correlation between local trace-free
strain and the anisotropic distribution of relative kinetic energy across all
directions and separations of the same field. The isotropic part of that
distribution makes no contribution. Neither a strain eigenvalue, one chord,
one packet, nor one scale owns the production sign. On \(\mathbb T^3\), the
same identity uses the periodic fractional kernel, equivalently all lattice
lifts.

### F7.6 Vortex stretching is a nonlocal all-chord orientation relation

On decaying \(\mathbb R^3\), where \(\omega(x)\ne0\), put
\(\xi=\omega/|\omega|\) and \(\alpha_\omega=\xi\cdot S\xi\). The
Biot--Savart representation of strain gives the exact principal-value identity

\[
\alpha_\omega(x)
=\frac{3}{4\pi}\operatorname{p.v.}
\int_{\mathbb R^3}
(\widehat y\cdot\xi(x))
\det\!\bigl(\widehat y,\xi(x+y),\xi(x)\bigr)
\frac{|\omega(x+y)|}{|y|^3}\,dy.
\]

Thus the stretching rate seen by the vorticity at \(x\) is an oriented
relation among the chord direction, the local vorticity direction, and the
surrounding vorticity direction. A surrounding vorticity vector parallel or
antiparallel to \(\xi(x)\) contributes zero through that chord. Spatial
directional coherence therefore depletes this singular contraction, while the
Navier--Stokes law supplies no theorem forcing such coherence to persist.

### F7.7 Participation permits exact orientation-selected null sectors

The exact periodic 2D3C class

\[
u=(0,U(x,t),W(x,y,t))
\]

forces spatially constant pressure and obeys

\[
\partial_tU=\nu\partial_x^2U,
\qquad
\partial_tW+U\partial_yW=\nu\Delta W.
\]

A vertical heat mode

\[
h_N=(0,0,e^{-\nu N^2t}\cos Nx)
\]

can belong to this same velocity field, change material vertical motion, and
contribute to its Sobolev moments and viscous loss while every cross-transport
row vanishes and the mode contributes exactly zero to \(P_H\). In an explicit
same-moment comparison, rotating the tail's wavevector--polarization relation
activates mixed transport, a nonconstant whole-field pressure response, and a
different next-current tangent.

Participation therefore fixes object identity without forcing every
coordinate to act in every observable. Instantaneous and persistent causal
activity depend on the component's oriented relation to the rest of the
field. A null sector is lawful only when the complete Navier--Stokes equation
proves the corresponding decoupling or invariant subspace; scalar moments and
same-field membership alone do not prove it.

## Hard boundary: claims excluded from the ontology

The following are not hard facts and carry no premise weight here:

- global regularity or global uniqueness of three-dimensional weak solutions;
- a favorable pressure sign or a universal pressure-Hessian brake;
- a universal forward cascade or fixed sign of interscale transfer;
- persistent strain–vorticity or pressure–strain alignment;
- a universal eigenframe turning or restoring direction;
- material conservation of circulation, vorticity content, packet shape, or
  frequency support;
- automatic no-flux closure of a localized or material packet;
- direction coherence alone controlling the full strain operator;
- a reduced-model mechanism promoted to the full fluid without a bridge.

## Checked repo derivations and audits

- `ontology-participation-deepening-20260711.md`
- `theorem-construction/mpp-forward-gold-incompressible-singular-value-participation-identity-20260625.md`
- `theorem-construction/mpp-shared-participation-and-tower-coherence-law.md`
- `theorem-construction/mpp-forward-gold-betchov-strain-vorticity-net-vs-rectified-clock-test-20260625.md`
- `theorem-construction/mpp-forward-gold-strain-pressure-cancellation-global-local-audit-20260622.md`
- `theorem-construction/mpp-forward-gold-c0-pressure-hessian-global-triad-zero-localized-commutator-reduction-20260707.md`
- `theorem-construction/mpp-forward-gold-circulation-impulse-coercion-direct-test-20260620.md`
- `theorem-construction/r3-cm-contrapositive-vorticity-bkm-strain-20260528.md`
- `theorem-construction/mpp-forward-gold-rigorous-quartic-far-strain-lemma-20260705.md`
- `ontology-participation-hierarchy-20260711.md`, Cycles 025--027
- `theorem-construction/codex-goal-ontology-cycle-027-anisotropic-passive-high-centroid-positive-time-no-go-20260711.md`
- Gregory Seregin, [*Necessary conditions of potential blow up for Navier--Stokes equations*](https://arxiv.org/abs/1101.1869), Theorem 1.1.
- Hugo Beirão da Veiga and Luigi C. Berselli, [*On the regularizing effect of the vorticity direction in incompressible viscous flows*](https://doi.org/10.57262/die/1356060864), Differential and Integral Equations 15 (2002), equation (2.3).
- Alexey Cheskidov and Roman Shvydkoy, [*A unified approach to regularity problems for the 3D Navier--Stokes and Euler equations: the use of Kolmogorov's dissipation range*](https://arxiv.org/abs/1102.1944), Theorem 3.1, Corollary 3.3, and Lemma 4.1.
