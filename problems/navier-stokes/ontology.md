# Navier–Stokes Physical Ontology

**Status:** canonical hard-fact ontology.

**Current promoted checkpoint:** Cycle 043.

**Development authority:** this is the single cumulative ontology. Numbered
research cycles are evidence and discovery records; only independently checked
facts promoted into this file carry ontology premise weight. The numbered git
checkpoint for each cycle is the minimal progress ledger.

**Physical-story custody:** a numbered cycle is not complete merely because an
identity, estimate, counterexample, or coordinate was derived. It must state
the same-participant physical event before the mathematics, return after the
mathematics to the exact physical story licensed, and name every spatial,
material, temporal, or causal translation not proved. A later fact must
re-audit every earlier picture whose meaning it changes. A cycle lacking that
return is support, countertest, route obstruction, or consolidation rather
than ontology development. The complete compact cycle audit lives in
spine.md.

**Authority boundary:** this file contains exact identities, exact operator
properties, or classical proved theorems under the hypotheses stated here. It
contains no proposed pressure sign, cascade direction, alignment law, packet
closure, or regularity conclusion.

The section titled **Physical picture supplied at Cycle 034** is separately
typed as an open causal synthesis.  It preserves the physical problem that
generates questions for the hard facts; it carries no premise weight.

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

## Physical picture supplied at Cycle 034 — open causal synthesis

The declared datum contains all of the fluid's initial energy.  In the
discussion below, a source, pulse, or injection means the first local
activation or concentration of energy already belonging to that same history.
It never means an external force.

The picture has four physical branches.

1. **A source-centred first pulse.**  A local velocity crest or vortex core
   rises inside surrounding fluid.  The core and the responding transition
   annulus are different regions of one VPI event.  Energy reaching the core is
   supplied by the joined stress work and storage of the surrounding field,
   while viscous expenditure occurs where the same field has strain.  For a
   flat-core pulse that strain is concentrated in the transition annulus; a
   general anisotropic pulse need not be radial.

2. **A later-time, later-place concentration.**  Transport, strain, and the
   whole-field pressure response bring already existing motion into a new
   configuration.  This is not a first-moment injection.  During its positive
   travel and rearrangement time, the viscous row acts continuously and
   dissipates the global Dirichlet/energy account, while local gradients or
   pair amplitudes need not decrease monotonically. Pressure continuously
   supplies the simultaneous nonlocal acceleration and may reorient the same
   field; it has no universal reorientation sign. A dangerous feedback must
   repeatedly rebuild inward, coherently aligned pressure-completed work faster
   than the simultaneous viscous response dissipates or de-aligns that
   configuration.

3. **A maximally rippled field.**  Neighboring crests and troughs owe a
   quadratic gradient cost to their separation.  Constructively aligned waves
   can still produce a large pointwise crest while raw energy and enstrophy stay
   finite, because three-dimensional \(H^1\) control does not bound
   \(L^\infty\).  Positive heat time attenuates each Fourier contribution, but
   the attenuation has no uniform scale-independent gap when the elapsed time
   is allowed to be smaller than the heat time.  Full Navier--Stokes transport
   and slaved pressure can also replenish or reverse the modal alignment.

4. **The vortex analogue.**  A vortex core grows only through strain generated
   by the same global vorticity field.  The surrounding response is generally
   tubular and anisotropic rather than a spherical annulus.  Any radial-growth
   statement must therefore be proved for an admitted geometry; isotropic
   language cannot replace the strain--vorticity and pressure-Hessian
   relations.

The exact first-pulse amplitude laws already show the joined response.  For a
fixed direction \(e\), let \(f=e\cdot u\), and follow a smooth local crest
\(x_+(t)\) and neighboring trough \(x_-(t)\).  At their extrema,

\[
\frac d{dt}\bigl[f(x_+,t)-f(x_-,t)\bigr]
=
-e\cdot\bigl[\nabla p(x_+,t)-\nabla p(x_-,t)\bigr]
+\nu\bigl[\Delta f(x_+,t)-\Delta f(x_-,t)\bigr].
\]

The viscous bracket is nonpositive.  A ripple grows only when the nonlocal
pressure-gradient difference forced by the whole current field overcomes the
simultaneous curvature damping.  Likewise, at a local kinetic-energy maximum,

\[
D_t\frac{|u|^2}{2}
\le -u\cdot\nabla p-\nu|\nabla u|^2.
\]

Local kinetic growth requires inward pressure work and pays viscous gradient
cost in the same record.  For vorticity,

\[
D_t\frac{|\omega|^2}{2}
=\omega\cdot S\omega
+\nu\left(\frac12\Delta|\omega|^2-|\nabla\omega|^2\right).
\]

At a vorticity maximum, stretching by the nonlocally reconstructed strain must
beat viscous gradient loss.  These are the pulse and vortex versions of one
physical question.

The core--annulus relay is the material energy identity in F5.7.  For nested
material regions \(\Omega_0(t)\subset\Omega_1(t)\) and their annulus
\(A(t)\), it reads

\[
W_0(I)
=W_1(I)
-\bigl(E_A(t_2)-E_A(t_1)\bigr)
-2\nu\int_I\int_A|S|^2\,dx\,dt.
\]

Thus central delivery, annular storage, outer stress supply, and annular
dissipation occur in distinct places while remaining rows of one VPI event.
This identity does not yet prove that every dangerous concentration admits a
nested material core--annulus carrier or that a fixed fraction of each record
must appear in its annulus.

The joined VPI response becomes especially explicit in material coordinates.
F1.11 proves that the pressure elliptic operator and the viscous diffusion
operator use the same deformation metric \(C^{-1}\). Material compression
raises the principal viscous coefficient in the compressed label direction,
material expansion lowers it in the expanded direction, and incompressibility
prevents all three principal viscous coefficients from becoming small
together. F7.9 then
identifies critical-height production with signed work between the rate of
that material metric and the whole-field anisotropic relative-motion tensor.
This is the exact physical action whose core--collar incidence remains open.

The two response clocks are also exact.  At scale \(r\),

\[
\tau_\nu(r)=\frac{r^2}{\nu},
\qquad
\tau_{\rm turn}(r,t)=\frac r{\delta_ru(t)},
\qquad
\operatorname{Re}_r(t)=\frac{r\,\delta_ru(t)}{\nu}.
\]

At every fixed smooth time, \(\operatorname{Re}_r(t)\to0\) as \(r\downarrow0\):
below a sufficiently small scale, the viscous clock is faster than the local
turnover clock.  Smooth initial data therefore begins with a bounded classical
response.  A terminal scenario must drive its order-one crossover scale toward
zero through a sequence of later first records.  Finite slope at every
preterminal time is insufficient; the needed control is uniform along that
shrinking history.

Critical scaling explains the obstruction.  For a pulse with dimensionless
amplitude \(A\), speed \(U\sim A\nu/r\), and transition thickness comparable
to \(r\),

\[
E_{\rm core}\sim A^2\nu^2r,
\qquad
\mathcal P_\nu\sim\frac{A^2\nu^3}{r},
\qquad
\mathcal P_\nu\tau_\nu\sim A^2\nu^2r.
\]

The annular viscous power grows as \(r\downarrow0\), while its heat time and
raw energy expenditure shrink.  A geometric chain with \(A\) bounded below can
therefore have finite total time and finite raw expenditure even though its
normalized inverse-distance charge is non-summable.  This is the precise
reason that finite energy, one heat time per scale, or literal non-reuse of
already dissipated energy does not close Gold.

The open causal theorem generated by this picture is a same-event statement:
\`MaterialCriticalWorkCoreCollarIncidence.A\`. On each first critical-height
doubling, construct from entry-time information a bounded-overlap family of
fixed-label, deformation-adapted material cores and collars that captures the
signed net work in F7.9 up to a strict remainder, and attach every captured
core through the exact stress--storage--dissipation relay in F5.7. The
separate next theorem must then prove a datum-finite inverse-distance or
parent-mass/no-recount bound preventing the same participation from financing
infinitely many later records. F1.9's
pair-separation annulus, F6.13's global action bound, and the spectral
centroid/width facts F6.19--F6.21 do not provide this attachment.  They are
global readouts or countertests until such a bridge is proved.

## F1. Participation: one motion, stress, pressure response, and deformation

At each time, the current participant has one simultaneous
transport--pressure--viscosity--incompressibility tangent. Current-time language
belongs to that complete tangent. Pressure is its nonlocal elliptic constraint
row, while viscosity is its local second-order, scale-selective row. Neither row
is an independently timed cause.

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

### F1.9 Critical pair height has unavoidable separation width

On decaying \(\mathbb R^3\), write

\[
H_{<r}(t)
=\frac1{4\pi^2}
\int_{|h|<r}
\frac{\|u(\cdot+h,t)-u(\cdot,t)\|_2^2}{|h|^4}\,dh,
\qquad
H(t)=\mathcal H_{1/2}(t),
\qquad
K(t)=\|\nabla u(t)\|_2^2.
\]

The translation estimate

\[
\|u(\cdot+h)-u\|_2^2\le |h|^2K
\]

gives the exact radial-density bound

\[
H_{<r}\le\frac r\pi K,
\qquad
q(r,t):=\frac{dH_{<r}}{dr}
=\frac1{4\pi^2r^2}
\int_{S^2}\|u(\cdot+r\theta)-u\|_2^2\,d\theta
\le\frac K\pi.
\]

The finite energy \(\mathcal E_0=\frac12\|u_0\|_2^2\) also gives

\[
H_{>R}(t)\le\frac{8\mathcal E_0}{\pi R}.
\]

Consequently, whenever \(H,K>0\), at least half of the critical height is
carried by material pairs whose current separations lie in

\[
r_-(t)\le |X(a,t)-X(b,t)|\le r_+(t),
\qquad
r_-:=\frac{\pi H}{4K},
\qquad
r_+:=\frac{32\mathcal E_0}{\pi H}.
\]

With \(D=\|\Lambda^{3/2}u\|_2^2\), log-convexity and F5.5 give the exact
global cross-coordinate bounds

\[
\frac DK
\ge\frac{K}{2H}
=\frac{\pi}{8r_-},
\qquad
\frac DK
\ge\frac{H}{\mathcal E_0}
=\frac{32}{\pi r_+}.
\]

Thus the whole-field viscous first moment sees at least the inverse of the
pair-height width.  Both sides are global marginals; this identity does not
prove that the spectral component paying \(D/K\) is the material-pair carrier
that raises \(H\).

More generally, every radial separation set carrying \(H/2\) has Lebesgue
width at least \(\pi H/(2K)\). Product-volume preservation makes this a
statement about one material-pair population throughout the smooth history.
It is an annulus in pair separation over all centers and directions, not a
physical collar around one selected source.

The energy identity also yields the fixed-distance spacetime throughput laws

\[
\nu\int_0^T H_{<r}(t)\,dt
\le\frac{\mathcal E_0r}{\pi},
\qquad
\nu\int_0^T q(r,t)\,dt
\le\frac{\mathcal E_0}{\pi}
\quad\text{for a.e. }r.
\]

Thus finite enstrophy forbids a zero-width atom of critical height at zero
pair separation at each smooth time. A terminal sequence with \(H\to\infty\)
forces the outer half-height scale \(r_+\to0\), while the allowed radial
density \(K/\pi\) can itself diverge. These bounds supply width and occupancy,
not the sign of critical production, a source center, or a no-recount law
along a shrinking sequence.

### F1.10 Material ancestry does not distribute parent mass among later readouts

F1.6 gives every specified terminal pair cohort a unique earlier material
precursor.  It does not bound how many different future-selected cohorts may
overlap or reuse that precursor, and it does not distribute a finite charge
on one parent event among its later observational readouts.

The measure-theoretic distinction is exact.  A measurable ancestry map

\[
\pi:\mathcal Y\longrightarrow\mathcal A
\]

pushes a child measure on \(\mathcal Y\) forward to a parent measure on
\(\mathcal A\).  A parent measure \(\mu\) does not have a canonical inverse
pushforward through a many-to-one \(\pi\). To encode the intensity of selected
child readouts, one must first define a child incidence measure \(\nu\) on
\(\mathcal Y\). If \(\pi_\#\nu\ll\mu\), its disintegration relative to
\(\mu\) has the form

\[
\nu(dI)=\kappa(a,dI)\,\mu(da),
\qquad
\operatorname{supp}\kappa(a,\cdot)\subseteq\pi^{-1}\{a\}.
\]

The actual descendant intensity is

\[
m(a)
=\kappa\!\left(a,\pi^{-1}\{a\}\right)
=\frac{d\pi_\#\nu}{d\mu}(a).
\]

Bounded descendant multiplicity is the additional estimate \(m(a)\le C\)
for \(\mu\)-almost every \(a\). It is not a consequence of the parent label.
If \(\pi_\#\nu=\mu\), then the conditional kernels are probability kernels and
\(m=1\); that normalized disintegration alone says nothing about the total
linear readout intensity that had to be placed in \(\nu\).

Orthogonal first admission does not supply this missing linear bound.  In
\(\ell^2\), let

\[
j=\sum_{n\ge1}\frac1n e_n,
\qquad
\Phi_n=e_n,
\qquad
\mathcal E_{<n}=\operatorname{span}\{e_1,\ldots,e_{n-1}\}.
\]

Every \(\Phi_n\) is a new orthogonal direction and
\(\sum_n|\langle j,\Phi_n\rangle|^2<\infty\), while

\[
\sum_n|\langle j,\Phi_n\rangle|
=\sum_n\frac1n
=\infty.
\]

Assigning all \(n\) the same parent label changes none of these facts.
Therefore square/Bessel admission, physical material ancestry, and bounded
linear readout multiplicity are three different statements.  Any no-recount
use of a parent measure must construct the same-history descendant kernel and
prove its fibre bound before positive readout.

### F1.11 Pressure and viscosity use the same material deformation metric

Let \(X(a,t)\) be the smooth volume-preserving flow map,

\[
F=D_aX,
\qquad
C=F^TF,
\qquad
U(a,t)=u(X(a,t),t),
\qquad
P(a,t)=p(X(a,t),t).
\]

Then \(\det F=1\), \(\det C=1\), and the complete VPI system pulls back to

\[
\partial_tU+F^{-T}\nabla_aP
=\nu\,\operatorname{div}_a(C^{-1}\nabla_aU),
\]

\[
-\operatorname{div}_a(C^{-1}\nabla_aP)
=\left(|S|^2-\frac12|\omega|^2\right)\!\circ X,
\qquad
\operatorname{div}_a(F^{-1}U)=0.
\]

The divergence in the viscous row acts componentwise. The pressure constraint
and viscous diffusion therefore use the same inverse material metric
\(C^{-1}\); incompressibility is the same deformation's Piola constraint.
Their material geometry is not independently assigned. Pressure remains
instantaneous and elliptic, while viscosity remains parabolic.

If \(s_1,s_2,s_3\) are the singular values of \(F\), the principal
coefficients of the pulled-back viscous operator are

\[
\nu s_1^{-2},\qquad \nu s_2^{-2},\qquad \nu s_3^{-2},
\qquad
\prod_{i=1}^3\nu s_i^{-2}=\nu^3.
\]

Compression strengthens the viscous coefficient in that material direction;
expansion weakens it. Volume preservation prevents all three coefficients
from becoming smaller than \(\nu\) simultaneously. These are eigenvalues of
the label-space principal symbol, not three decoupled heat rates: the frame and
coefficients vary, their derivatives remain in the divergence-form operator,
and Eulerian viscosity is still isotropic. A proposed lag mechanism must
therefore specify the orientation of the active variation relative to the
evolving material frame. There is no scalar viscosity-delay variable
independent of that anisotropic deformation.

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
object. The same-time projected response already contains the nonlocal elliptic
pressure row; \(\tau_K\) is a velocity-response bound, not a pressure-row lag.

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

This gives an exact vortex-core alternative without treating circulation as a
conserved budget. Let \(C(t)=\partial\Sigma(t)\) be a smooth contractible
material loop and its advected smooth spanning surface, and write

\[
\Gamma(t)=\oint_{C(t)}u\cdot d\ell
=\int_{\Sigma(t)}\omega\cdot n\,dA,
\qquad
A_\Sigma(t)=|\Sigma(t)|.
\]

Stokes and Cauchy--Schwarz give

\[
\int_{\Sigma(t)}|\omega|^2\,dA
\ge\frac{|\Gamma(t)|^2}{A_\Sigma(t)},
\qquad
\|\omega(t)\|_{L^\infty(\Sigma(t))}
\ge\frac{|\Gamma(t)|}{A_\Sigma(t)}.
\]

The surface area and circulation obey

\[
A_\Sigma'(t)
=-\int_{\Sigma(t)}n\cdot Sn\,dA,
\qquad
\Gamma'(t)=\nu\oint_{C(t)}\Delta u\cdot d\ell.
\]

Thus, whenever \(\Gamma\ne0\),

\[
\frac d{dt}\log\frac{\Gamma^2}{A_\Sigma}
=\frac{2\nu}{\Gamma}\oint_C\Delta u\cdot d\ell
+\frac1{A_\Sigma}\int_\Sigma n\cdot Sn\,dA.
\]

For \(t_0<t_1\) and \(0<\theta<1\), either

\[
|\Gamma(t_1)|\ge\theta|\Gamma(t_0)|
\quad\Longrightarrow\quad
\int_{\Sigma(t_1)}|\omega|^2\,dA
\ge\frac{\theta^2|\Gamma(t_0)|^2}{A_\Sigma(t_1)},
\]

or

\[
\left|
\nu\int_{t_0}^{t_1}\oint_{C(t)}\Delta u\cdot d\ell\,dt
\right|
\ge(1-\theta)|\Gamma(t_0)|.
\]

An anisotropically contracting material cross-section therefore either retains
circulation and forces surface vorticity concentration, or records an
accumulated signed viscous circulation change. The latter is not a positive
dissipation payment and has no datum-finite reserve supplied by the energy
identity. No theorem here says that every critical-height or blowup candidate
admits such a material surface. Pressure has no separate closed-loop term
because its gradient integrates to zero, but it remains part of the same VPI
history determining \(S\), \(u\), and the future material geometry.

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

### F5.7 Finite viscous expenditure has a parabolic distance rate and an uncontrolled inverse-distance moment

Kinetic energy has a balance law, not an independently transported material
identity.  For a region \(\Omega(t)\) whose boundary has normal speed \(V_n\),
the stress \(\sigma=-pI+2\nu S\) gives

\[
\frac d{dt}\int_{\Omega(t)}\frac{|u|^2}{2}\,dx
=
\int_{\partial\Omega(t)}u\cdot\sigma n\,dS
+\int_{\partial\Omega(t)}\frac{|u|^2}{2}
\bigl(V_n-u\cdot n\bigr)\,dS
-2\nu\int_{\Omega(t)}|S|^2\,dx.
\]

For a material region the middle term vanishes.  Its kinetic energy can then
change only through the joined pressure--viscous stress work of the same fluid
and the positive interior viscous expenditure.  For a shrinking, expanding,
or otherwise selected region, the middle term records recruitment or
abandonment by the observational boundary and cannot be called fluid
transfer.

A source core and its responding annulus are different regions of this one
event.  Let material volumes \(\Omega_0(t)\subset\Omega_1(t)\) enclose the
core, let \(A(t)=\Omega_1(t)\setminus\overline{\Omega_0(t)}\), and let
\(W_j\) be the outward-boundary stress work on \(\Omega_j\).  Integration on
the annulus gives the exact relay identity

\[
W_0(I)
=W_1(I)
-\bigl(E_A(t_2)-E_A(t_1)\bigr)
-2\nu\int_I\int_A|S|^2\,dx\,dt.
\]

Thus energy delivered to the core is not dissipated at the source by
definition.  It can be supplied through outer stress work or depletion of
kinetic energy already stored in the annulus, while annular viscosity removes
part of that relay.  Adding successive annuli adds their dissipation and
storage changes to the same telescope.  A wider responding field is therefore
more dissipative only after outer replenishment and annular storage release
are kept in the same account.  The location of the viscous expenditure is
determined by the strain field: a flat-core pulse places it mainly in the
transition annulus, whereas a general vortex or anisotropic packet need not.

Radius alone supplies no increasing annular cost. As an exact scalar
countertest, for \(0<r<R\), among \(H^1\) functions on \(r<|x|<R\) with
constant full-sphere traces \(A\) at \(|x|=r\) and \(0\) at \(|x|=R\), the
harmonic radial profile minimizes Dirichlet energy and

\[
\inf\int_{r<|x|<R}|\nabla f|^2\,dx
=4\pi A^2\frac{rR}{R-r}.
\]

For fixed \(A,r\), this quantity decreases to \(4\pi A^2r\) as \(R\) grows.
Thus “more surrounding fluid” becomes a larger storage or dissipation burden
only when the same event is proved to retain comparable amplitude, strain, or
stress work through that added region. The scalar condenser is not itself a
divergence-free Navier--Stokes pulse; it refutes only the geometric
radius-implies-cost inference.

The positive irreversible expenditure measure is

\[
d\mathfrak d_\nu=2\nu|S|^2\,dx\,dt,
\qquad
\mathfrak d_\nu(\mathbb R^3\times[0,T])
=\mathcal E(0)-\mathcal E(T)
\le\mathcal E_0,
\]

with the analogous periodic identity.  Viscosity also redistributes kinetic
energy across a fixed cutoff boundary.  If
\(\phi_r(x)=\phi((x-x_0)/r)\), with its derivatives supported in a collar
\(A_r\), the viscous exchange row in the localized energy identity is

\[
V_r(t)
=\frac\nu2\int |u|^2\Delta\phi_r\,dx,
\qquad
|V_r(t)|
\le C\frac\nu{r^2}\int_{A_r}|u|^2\,dx.
\]

Thus \(r^2/\nu\) is the characteristic viscous time across distance \(r\).
It is not a finite propagation time: the heat kernel is nonzero at every
distance for every positive time. At each participant time, the pressure row is
recovered nonlocally from the whole current field by the elliptic constraint.

There are consequently two different rate questions.  For a smooth
source-centered first response, the core height and the same-material annular
stress/strain response begin in one bounded classical record.  For a later or
displaced concentration, incoming stress work and nonlinear focusing can
build a new core, and the dangerous question is whether the annular response
can lag that growth on the shrinking active scale.

The system is unforced.  “Source” or “injection” in this description means the
first local activation or record of energy already belonging to the declared
datum-anchored history; it is not an external addition of energy.

This distinction is already visible in the local clock ratio.  Put

\[
\delta_ru(t)
=\sup_{|x-y|\le r}|u(x,t)-u(y,t)|,
\qquad
\operatorname{Re}_r(t)=\frac{r\,\delta_ru(t)}\nu.
\]

At every fixed smooth time,

\[
\operatorname{Re}_r(t)
\le\frac{r^2}{\nu}\|\nabla u(t)\|_\infty
\longrightarrow0
\qquad(r\downarrow0).
\]

Equivalently, the local turnover clock \(r/\delta_ru\) is longer than the
viscous clock \(r^2/\nu\) at sufficiently small radii.  This is a clock
comparison, not a local regularity theorem: the surrounding strain and the
nonlocal pressure remain in the VPI response.  A later terminal scenario
represented by this admitted core--annulus mechanism must drive the crossover
radius where \(\operatorname{Re}_r\) is order one toward zero while preserving
the corresponding normalized record.  This does not assert that every
terminal scenario already has that representation.

Normalize one heat-scale region by

\[
U(y,s)
=\frac r\nu
u\!\left(t_0+\frac{r^2}{\nu}s,x_0+ry\right),
\qquad
Q(y,s)
=\frac{r^2}{\nu^2}
p\!\left(t_0+\frac{r^2}{\nu}s,x_0+ry\right).
\]

The normalized pair solves the viscosity-one Navier--Stokes system.  On a
unit normalized interval, the physical storage, integrated interior
expenditure, and integrated joined boundary work all obey the same exact
scaling:

\[
E_r=\nu^2r\,\widetilde E,
\qquad
\mathfrak D_r=\nu^2r\,\widetilde{\mathfrak D},
\qquad
\mathfrak J_r=\nu^2r\,\widetilde{\mathfrak J}.
\]

The corresponding power unit is \(\nu^3/r\).  Dividing the physical
expenditure by \(r\) is therefore the scale-critical valuation of one
smallest heat step.  Raw expenditure is radius-discounted; critical
expenditure is its inverse-distance moment.

This distinction is sharp.  On \(\mathbb T^3\), for every integer \(N\),

\[
u_N(t,x)
=A e^{-\nu N^2t}\sin(Nx_2)e_1,
\qquad p_N=0,
\]

is an exact anisotropic Navier--Stokes shear and

\[
\mathcal E_N(t)=\mathcal E_N(0)e^{-2\nu N^2t},
\qquad
-\mathcal E_N'(0)=2\nu N^2\mathcal E_N(0).
\]

At fixed initial energy the instantaneous viscous expenditure rate is
therefore unbounded across smooth data as \(N\to\infty\).  In one heat time
\((\nu N^2)^{-1}\), the same shear spends the fixed fraction \(1-e^{-2}\).
It creates no rising critical-height record.

The same inverse-length gap appears in the exact spectral expenditure
measure.  With the mean-free field \(v\) of F6.10, set

\[
d\mathfrak d_\nu^{\rm sp}(\rho,t)
=\nu\rho^2
\int_{|\xi|=\rho}|\widehat v(\xi,t)|^2\,d\sigma_\rho
\,d\rho\,dt,
\]

and read this as a shell sum on \(\mathbb T^3\).  Then

\[
\int d\mathfrak d_\nu^{\rm sp}
=\nu\int_0^T K(t)\,dt
\le\mathcal E_0,
\qquad
\int\rho\,d\mathfrak d_\nu^{\rm sp}
=\nu\int_0^T D(t)\,dt.
\]

Shellwise Cauchy--Schwarz in F6.11 gives the measure domination

\[
\nu\,d\mu_{\rm rad}
\le d\mathfrak d_\nu^{\rm sp}.
\]

Thus the datum-finite radial current-alignment measure is financed by the raw
viscous-expenditure measure, while its Gold-relevant action
\(\nu J_{\rm rad}\,dt=\int\rho\,\nu d\mu_{\rm rad}\) is an
inverse-distance first moment.  The equality \(\rho=r^{-1}\) here is the
scale correspondence; it is not an exact localization of a Fourier shell in
one material region.

First critical-height records have a separate exact, fully joined material
cost.  With the pair density \(e_{ab}\) from F1.7 and

\[
d\Pi_t(a,b)=\frac{e_{ab}(t)}{\mathcal H_{1/2}(t)}\,da\,db,
\qquad
g_{ab}=-4\alpha_{ab}+2\chi_{ab},
\]

F1.7--F1.8 give

\[
\frac d{dt}\log\mathcal H_{1/2}
=\int g_{ab}\,d\Pi_t.
\]

Every first doubling interval \(I\) consequently satisfies

\[
\int_I\int g_{ab}\,d\Pi_t\,dt=\log2,
\qquad
\int_I\int[g_{ab}]_+\,d\Pi_t\,dt\ge\log2.
\]

Here \(g\) contains material compression and the complete nonlocal
pressure--viscous relative acceleration.  No proved theorem identifies this
action with the expenditure of a selected material heat cell or bounds it by
the inverse-distance moment above.

For a geometric scale chain \(r_j=2^{-j}r_0\), both
\(\sum_jr_j^2/\nu\) and \(\sum_j\nu^2r_j\) are finite, while

\[
\sum_j\frac1{r_j}\,\nu^2r_j=\infty.
\]

This is exact scale arithmetic, not the construction of a terminal
Navier--Stokes history.  It proves that finite time, finite raw energy
expenditure, literal non-reuse of dissipated energy, and one heat clock per
scale do not control the normalized number of critical steps.  Gold requires
two joined scale-uniform facts.  First, the actual core record must be attached
to the same-history annular stress/strain return before positive selection.
Second, the response must have a uniform normalized modulus or a strict
same-carrier annular share between consecutive microscopes.  The minimal
nonconcentration statement is weaker: same-carrier nested-core tightness; a
fixed-fraction annular share is one sufficient reverse-doubling route to it,
not an automatic consequence of finite mass or non-atomicity.  The retained
material-annulus identity supplies the first fact only after the annular
record is admitted; it does not prove uniform retention, nested-core
tightness, the stronger annular-share lower bound, or the inverse-distance
first-admission moment.

A finite slope at each preterminal time is not enough: a family of smooth
response curves can concentrate its rise into intervals whose slopes diverge
as the active radius tends to zero.  Even a fixed normalized heat-time window
at every geometric scale has summable physical duration.  Excluding Zeno
therefore requires core-to-annulus incidence, a uniform response modulus, and
a datum-finite bounded-overlap or no-recount measure for those normalized
events; an integrable logarithmic growth clock or a strict response ratio
already carried by such a measure would suffice.  Establishing that joined
bound from the original smooth datum is continuation-strength and is not
asserted here.

### F5.8 Ripple steepness has quadratic viscous cost; coherent height is a separate linear alignment

For every absolutely continuous scalar trace \(f\) on an interval
\([a,b]\),

\[
|f(b)-f(a)|^2
\le (b-a)\int_a^b|f'(s)|^2\,ds.
\]

Summing this inequality over disjoint neighboring crest--trough intervals of a
one-dimensional shear profile shows that jumps \(\Delta_j\) across spacings
\(\ell_j\) force

\[
\int |F'|^2
\ge \sum_j\frac{\Delta_j^2}{\ell_j}
\]

The same chord inequality holds for a general vector field and becomes a
volumetric lower bound only after integration over a positive-measure family
of transverse chords.  For comparable amplitude \(A\) and wavelength
\(\ell\) across such a fixed region, the gradient-energy density is of order
\(A^2/\ell^2\), and the global viscous expenditure rate is of order
\(\nu A^2/\ell^2\).  On the declared boundary/decay surfaces,
\(\|\nabla u\|_2^2=2\|S\|_2^2\), so this aggregate gradient cost is exactly
the global viscous dissipation row.  It belongs to the Dirichlet form of the
one incompressible field; individual crests do not own separate viscous
accounts.

The statement is exact in the anisotropic shear sector.  On \(\mathbb T^3\),

\[
u(t,x)=F(t,x_2,x_3)e_1,
\qquad p=\text{constant},
\]

solves Navier--Stokes precisely when \(F_t=\nu\Delta_{x_2,x_3}F\).  In
unitary Fourier coordinates,

\[
F(t,z)=\sum_{k\ne0}a_ke^{-\nu|k|^2t}e^{ik\cdot z},
\qquad
\frac12\frac d{dt}\|F\|_2^2
=-\nu\|\nabla F\|_2^2
=-\nu\sum_{k\ne0}|k|^2|a_k|^2.
\]

At a point where the phases align, the visible crest obeys

\[
|F(t,z_*)|
\le\sum_{k\ne0}|a_k|e^{-\nu|k|^2t}.
\]

Two equal frequency-\(k\) contributions of initial amplitude \(A\) therefore
produce at most \(2Ae^{-\nu|k|^2t}<2A\) after any positive time.  There is no
scale-independent strict fraction when \(\nu|k|^2t\) is allowed to approach
zero.  Heat has infinite propagation speed, so this is attenuation over an
elapsed response time rather than literal finite-speed wave travel.
The quantifier is essential: positive elapsed time alone gives no uniform
fraction, whereas a proved lower bound
\(\nu|k|^2t\ge c_*>0\) gives the uniform homogeneous attenuation factor
\(e^{-c_*}\).  F6.16 distinguishes such a normalized heat window from a
physical dwell-time theorem for the nonlinear participant.

Quadratic cost alone does not bound constructive pointwise height in three
dimensions.  Let \(N_j=2^j\), take \(M_j\asymp N_j^2\) transverse Fourier
modes in a dyadic block with all phases and polarizations aligned at the
origin, and give each mode amplitude

\[
a_j=\frac1{jN_j^2}.
\]

The finite truncations are smooth divergence-free exact shears and satisfy

\[
\sup_J\|u_J\|_2^2<\infty,
\qquad
\sup_J\|\nabla u_J\|_2^2
\lesssim\sum_{j\ge1}\frac1{j^2}<\infty,
\qquad
|u_J(0)|\asymp\sum_{j\le J}\frac1j\longrightarrow\infty.
\]

The next frequency moment does see the pileup:

\[
D_J:=\|\Lambda^{3/2}u_J\|_2^2
\asymp\sum_{j\le J}\frac{N_j}{j^2}
\longrightarrow\infty.
\]

Every one of these shears subsequently decays by the heat law.  The family
proves that finite kinetic energy and finite instantaneous viscous square cost
do not impose a universal pointwise maximum-spikiness bound across smooth
data. It also proves that the inverse-distance critical viscous moment detects
the displayed coherent shear pileup missed by the finite raw dissipation
budget; it is not a theorem about every spatial ripple. In
this shear sector the pressure-completed nonlinear production is zero and the
critical balance is \(\mathcal H_{1/2}'=-\nu D_J\), so the same large moment
destroys rather than feeds the crest.  In the full three-dimensional system,
nonlinear triads and the slaved pressure response can change modal amplitudes
and phases; linear heat superposition supplies no strict full-VPI peak
inequality.  Whenever a full-VPI ripple also lies on a rising critical-height
record, the joined balance forces the exact instantaneous condition
\(P_H\ge\nu D\).  Maintaining the coherent ripple then requires the
pressure-completed nonlinear current of the same field to replenish at least
the critical viscous moment it creates.

The installed global critical height is a different readout:

\[
\mathcal H_{1/2}
=\frac12\sum_k|k|\,|\widehat u(k)|^2.
\]

At fixed Fourier magnitudes it is unchanged by phase alignment.  A visible
constructive spike becomes a critical-height event only when the same-field
nonlinear current changes the magnitudes or when an exact localized carrier
bridge proves that the local event raises this global record.  The resulting
square-versus-linear obstruction has the same algebraic shape as the installed
WLF half-tail: a finite quadratic reserve need not control a positively
selected linear sum.  No theorem currently identifies the physical ripple
amplitudes with the WLF detector carrier, bounds the coherent sum by
\(A_H\) or \(J_{\rm rad}\), or supplies the required datum-finite no-recount
measure.

## F6. Vorticity production and coupled scale interaction

### F6.1 Vortex stretching is enstrophy production

\[
\frac12\frac{d}{dt}\|\omega\|_{L^2}^2
+\nu\|\nabla\omega\|_{L^2}^2
=\int\omega\cdot S\omega\,dx.
\]

The term \(\omega\cdot S\omega\) is three-dimensional local
vorticity-magnitude amplification or suppression, and its spatial integral is
global enstrophy production. It is not net vector-vorticity birth and is not,
by itself, the kinetic-energy flux across a selected scale.

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

### F6.10 Critical growth uses the spectral-shape direction actually activated by the same field

On \(\mathbb R^3\), put \(v=u\). On \(\mathbb T^3\), first pass to the
Galilean frame moving with the conserved spatial mean and let \(v\) denote the
resulting mean-zero velocity. Define the pressure-completed nonlinear
transport vector

\[
B(v)=\mathbb P((v\cdot\nabla)v),
\qquad
\partial_t v+B(v)+\nu\Lambda^2v=0.
\]

At each participant time, the Leray projection in \(B\) supplies the
whole-field elliptic pressure row required by incompressibility. Introduce

\[
R=\|\Lambda^{1/2}v\|_2^2=2\mathcal H_{1/2},
\qquad
K=\|\Lambda v\|_2^2,
\qquad
D=\|\Lambda^{3/2}v\|_2^2,
\]

and

\[
f=\Lambda^{-1/2}B(v),
\qquad
z=\Lambda^{1/2}v,
\qquad
g=\Lambda^{3/2}v.
\]

All quotient-defined quantities below are set to zero at the zero state.
Otherwise \(R,K,D>0\).

Kinetic-energy conservation by the pressure-completed transport is the exact
tangency

\[
\langle f,z\rangle=\langle B(v),v\rangle=0.
\]

Consequently the only part of the critical radial direction seen by the
nonlinearity is its component orthogonal to \(z\):

\[
g_{\mathrm{sh}}
=g-\frac KRz,
\qquad
S_H
=\|g_{\mathrm{sh}}\|_2^2
=D-\frac{K^2}{R}
\ge0.
\]

Equivalently, for the critical spectral probability measure

\[
d\mu_H(\xi)
=\frac{|\xi|\,|\widehat v(\xi)|^2}{R}\,d\xi,
\]

with the corresponding discrete sum on \(\mathbb T^3\),

\[
S_H=R\operatorname{Var}_{\mu_H}(|\xi|).
\]

The exact critical current and the complete critical balance are

\[
P_H
=-\langle B(v),\Lambda v\rangle
=-\langle f,g_{\mathrm{sh}}\rangle,
\]

\[
\boxed{
\mathcal H_{1/2}'
=-\langle f,g_{\mathrm{sh}}\rangle
-\nu\left(S_H+\frac{K^2}{R}\right).
}
\]

Thus pressure-completed transport can raise the critical height only by acting
through spectral-shape deformation, while viscosity damps both that deformation
and the mean radial frequency of the same field. These are terms in one exact
derivative, not separately owned accounts.

The part of the available shape direction actually used by the nonlinear
current is

\[
A_H
=
\begin{cases}
\displaystyle
\frac{P_H^2}{\|\Lambda^{-1/2}B(v)\|_2^2},
&B(v)\ne0,\\[1.2ex]
0,&B(v)=0.
\end{cases}
\]

This quotient is exactly a squared projection inside the one field:

\[
A_H
=\left\|
\operatorname{Proj}_{\operatorname{span}\{f\}}g_{\mathrm{sh}}
\right\|_2^2,
\qquad
0\le A_H\le S_H\le D.
\]

It does not assign separate ownership to its numerator and denominator. The
current retains its actual, non-free sign:

\[
P_H
=\operatorname{sgn}(P_H)
\|\Lambda^{-1/2}B(v)\|_2\sqrt{A_H}.
\]

The critical product estimate

\[
\|\Lambda^{-1/2}B(v)\|_2
\le C_\Omega\|v\|_3\|\nabla v\|_3
\le C_\Omega\sqrt{RD}
\]

therefore gives

\[
\mathcal H_{1/2}'
\le
\frac{C_\Omega^2}{2\nu}\mathcal H_{1/2}A_H.
\]

For every \(0\le s<t\) in the classical lifespan,

\[
\mathcal H_{1/2}(t)
\le
\mathcal H_{1/2}(s)
\exp\!\left(
\frac{C_\Omega^2}{2\nu}
\int_s^tA_H(\tau)\,d\tau
\right).
\]

In particular, every first doubling interval satisfies

\[
\int_s^tA_H(\tau)\,d\tau
\ge\frac{2\nu\log2}{C_\Omega^2}.
\]

This active action has an exact finite-mass time factorization. With zero
densities at the zero state, define

\[
d\mu_{\mathrm{cur}}
=\frac KD A_H\,dt.
\]

Then

\[
\mu_{\mathrm{cur}}([0,T])
\le\int_0^TK(t)\,dt
\le\frac{\mathcal E_0}{\nu},
\qquad
A_H\,dt=\frac DK\,d\mu_{\mathrm{cur}}.
\]

Here \(D/K\) is the enstrophy-weighted mean frequency of the whole velocity
field. The measure is supported in time only where the complete nonlinear
current uses the available spectral shape. It does not locate that current in
frequency: a passive high-frequency component of the same field can raise
\(D/K\) without contributing to \(P_H\). Thus this factorization alone does
not turn the finite mass into frequency-local current control. F6.11 gives the
exact radial-current refinement.

The distinction between available and used shape is exact. A mean-zero
two-frequency shear \(v=(F(y,t),0,0)\) has \(B(v)=P_H=A_H=0\) while
\(S_H>0\) whenever both heat modes are present. Thus \(S_H\) alone counts
passive spectral width and cannot serve as active-current control. Conversely,
\(S_H=0\) forces \(P_H=A_H=0\); a one-shell state can only decrease its
critical height instantaneously under viscosity.

The action is scale critical: \(A_H\,dt\) is invariant under the
Navier--Stokes scaling in F3.1. On a finite candidate terminal interval,
\(\int A_H\,dt<\infty\) bounds \(\mathcal H_{1/2}\), hence the
\(L_t^\infty L_x^3\) norm, and the endpoint regularity criterion gives
continuation. A classical continuation has \(\int A_H\,dt<\infty\) because
\(A_H\le D\). Universal datum-only finiteness of this action is therefore a
regularity-equivalent criterion at this scope, not a proved smaller Gold
theorem. No material carrier, localized Carleson measure, monotone cascade, or
datum bound for \(\int A_Hdt\) follows from this fact.

### F6.11 The pressure-completed nonlinear current has an exact angular, radial, and coherent hierarchy

Retain the mean-free field \(v\) and the pressure-completed transport \(B(v)\)
from F6.10. In unitary Fourier coordinates, define the signed modal critical
current and its nonlinear weight by

\[
c(\xi)
=-\operatorname{Re}\!\left(
\overline{\widehat B(\xi)}\cdot |\xi|\widehat v(\xi)
\right),
\qquad
b(\xi)=|\xi|^{-1}|\widehat B(\xi)|^2.
\]

Both are coordinates of the same simultaneous field; pressure is already
included in \(B\). Set every quotient density to zero where its denominator
vanishes. On \(\mathbb R^3\), use coarea to define

\[
C(\rho)=\int_{|\xi|=\rho}c(\xi)\,d\sigma_\rho,
\qquad
\mathcal B(\rho)=\int_{|\xi|=\rho}b(\xi)\,d\sigma_\rho.
\]

On \(\mathbb T^3\), the corresponding objects are the sums over each lattice
shell \(|k|=\rho\), and every Fourier or radial integral below is read as a
sum. Then

\[
P_H=\int_0^\infty C(\rho)\,d\rho,
\qquad
\|\Lambda^{-1/2}B\|_2^2
=\int_0^\infty\mathcal B(\rho)\,d\rho.
\]

The signed function \(C\) is the exact radial critical-current profile. It
keeps the anisotropic interaction inside each shell and sums the angular
directions before any positive readout is taken.

Three nested positive actions distinguish modal angular activity, radial-shell
activity, and the coherent net critical current:

\[
J_{\mathrm{sp}}
=\int_{\mathbb R^3}\frac{c(\xi)^2}{b(\xi)}\,d\xi,
\qquad
J_{\mathrm{rad}}
=\int_0^\infty\frac{C(\rho)^2}{\mathcal B(\rho)}\,d\rho,
\qquad
A_H
=\frac{\left(\int C\right)^2}{\int\mathcal B}.
\]

They obey the exact hierarchy

\[
0\le A_H\le J_{\mathrm{rad}}\le J_{\mathrm{sp}}\le D.
\]

Put \(a(\xi)=c(\xi)/b(\xi)\), let
\(a_\rho=C(\rho)/\mathcal B(\rho)\), and let
\(\bar a=P_H/\|\Lambda^{-1/2}B\|_2^2\). Weighted variance gives the exact
orthogonal decomposition

\[
\begin{aligned}
J_{\mathrm{sp}}-A_H
={}&\int_0^\infty\int_{|\xi|=\rho}
b(\xi)|a(\xi)-a_\rho|^2\,d\sigma_\rho\,d\rho\\
&+\int_0^\infty
\mathcal B(\rho)|a_\rho-\bar a|^2\,d\rho.
\end{aligned}
\]

The first term is angular heterogeneity and cancellation within one radius. It
can be positive while every radial Sobolev norm has zero instantaneous
nonlinear production. The second is cancellation or unequal response between
different radii. The remainder \(A_H\) is the globally coherent part that
appears in the critical-height estimate. An exact equal-shell anisotropic
triad has \(A_H=S_H=J_{\mathrm{rad}}=0\) and
\(J_{\mathrm{sp}}>0\), proving that modal activity can be pure angular
redistribution rather than radial critical growth.

The radial action is the first moment of a datum-finite same-history measure:

\[
d\mu_{\mathrm{rad}}(\rho,t)
=\frac{C(\rho,t)^2}{\rho\,\mathcal B(\rho,t)}\,d\rho\,dt,
\qquad
J_{\mathrm{rad}}(t)\,dt
=\int_0^\infty\rho\,d\mu_{\mathrm{rad}}(\rho,t),
\]

and shellwise Cauchy--Schwarz gives

\[
\mu_{\mathrm{rad}}([0,T]\times(0,\infty))
\le\int_0^TK(t)\,dt
\le\frac{\mathcal E_0}{\nu}.
\]

Let

\[
c_*=\frac{2\nu\log2}{C_\Omega^2}.
\]

If a candidate terminal history has infinitely many disjoint first-doubling
intervals \(I_n\), F6.10 forces

\[
\int_{I_n}J_{\mathrm{rad}}(t)\,dt\ge c_*.
\]

Writing \(m_n=\mu_{\mathrm{rad}}(I_n\times(0,\infty))\), one has
\(\sum_nm_n\le\mathcal E_0/\nu\), hence \(m_n\to0\), and

\[
\int_{I_n}\int_{\rho\ge c_*/(2m_n)}
\rho\,d\mu_{\mathrm{rad}}(\rho,t)
\ge\frac{c_*}{2}.
\]

Thus repeated critical-height renewal forces a fixed amount of radial
current-alignment action beyond arbitrarily large frequencies. Equivalently,
for every fixed \(L<\infty\), a candidate terminal history obeys

\[
\int_0^{T_*}\int_{\rho>L}
\rho\,d\mu_{\mathrm{rad}}(\rho,t)=\infty,
\]

while the contribution below \(L\) is at most
\(L\mathcal E_0/\nu\).

The signed physical object remains \(C\), and its sign is never supplied by
the positive measures above. The normalization in \(\mu_{\mathrm{rad}}\) can
also retain a strongly aligned receiver when the amplitude of its nonlinear
forcing is small. Hence \(J_{\mathrm{rad}}\) is a coherence majorant, not a
signed current magnitude. It is spectral rather than material localization.
Finiteness of \(\int J_{\mathrm{rad}}dt\) is another
regularity-equivalent criterion, not a datum bound, a Carleson theorem, or
Gold closure.

### F6.12 Viscosity lowers the whole-field mean frequency; nonlinear radial moments can renew it independently

For

\[
M_q=\|\Lambda^{q/2}v\|_2^2,
\qquad
N_q=-\langle B(v),\Lambda^qv\rangle,
\]

the joined pressure--transport--viscosity evolution is

\[
M_q'=2N_q-2\nu M_{q+2}.
\]

For \(K>0\), the enstrophy-weighted mean frequency is

\[
\kappa=\frac DK=\frac{M_3}{M_2}.
\]

Its exact derivative is

\[
\kappa'
=\frac2K\left(N_3-\kappa N_2\right)
-\frac{2\nu}{K}\left(M_5-\kappa M_4\right).
\]

For the enstrophy spectral probability measure

\[
d\varrho_K(\xi)
=\frac{|\xi|^2|\widehat v(\xi)|^2}{K}\,d\xi,
\]

with \(\rho=|\xi|\),

the viscous term is

\[
\frac{M_5-\kappa M_4}{K}
=\operatorname{Cov}_{\varrho_K}(\rho,\rho^2)
=\frac12\mathbb E[(\rho-\rho')^2(\rho+\rho')]
\ge0.
\]

The viscous part therefore lowers \(\kappa\), strictly unless the velocity
spectrum lies on one radius. Any upward renewal of the full \(\kappa\) is
created by the simultaneous pressure-completed nonlinear transport.

The radial current profile in F6.11 gives every nonlinear Sobolev moment:

\[
N_q=\int_0^\infty\rho^{q-1}C(\rho)\,d\rho.
\]

In particular,

\[
N_0=\int\rho^{-1}C(\rho)\,d\rho=0,
\qquad
P_H=N_1=\int C(\rho)\,d\rho,
\]

whereas mean-frequency renewal uses the centered higher moment

\[
N_3-\kappa N_2
=\int_0^\infty\rho(\rho-\kappa)C(\rho)\,d\rho.
\]

These two responses are algebraically independent. On \(\mathbb T^3\), let

\[
\psi=2\cos x+2\cos2y+2\cos(x+2y),
\qquad
U=(\partial_y\psi,-\partial_x\psi,0).
\]

Its exact currents are

\[
N_q(U)=-4+16\,2^q-12(\sqrt5)^q.
\]

Put \(U_8(x,y,z)=U(8x,8y,z)\). The Fourier supports of \(U\) and \(U_8\)
have no mixed triads, so for every scalar \(\alpha\),

\[
N_q(U+\alpha U_8)
=\left(1+\alpha^3 8^{q+1}\right)N_q(U).
\]

Consequently

\[
W=U-\frac14U_8
\]

has \(P_H=A_H=0\) and \(N_3-\kappa N_2>0\). Multiplying \(W\) by a
sufficiently large amplitude makes \(\kappa'(0)>0\) at any fixed
\(\nu>0\). Conversely,

\[
Z=U-\frac1{16}U_8
\]

has \(N_3-\kappa N_2=0\) while \(P_H>0\) and \(A_H>0\). These are smooth
finite-Fourier Navier--Stokes data, so the separation is a same-solution fact,
not a reduced-model shadow.

Thus \(D/K\) cannot identify the frequencies carrying critical growth, and no
pointwise centroid law can replace the signed radial current. A relation that
controls repeated renewal must use the one field's material-time history or
additional exact structure; neither the viscous covariance nor velocity
moments alone supplies it.

### F6.13 A rising critical record has a global pair-separation heat-rate lower bound, with no uniform efficiency margin

Retain the mean-free variables of F6.10--F6.12 and put

\[
R=2\mathcal H_{1/2},
\qquad
F=\|\Lambda^{-1/2}B(v)\|_2^2.
\]

At every nonzero rising time, \(R'>0\), the joined critical balance gives

\[
P_H=\nu D+\frac{R'}2>0.
\]

The product estimate \(F\le C_\Omega^2RD\), the definition of \(A_H\), and
the hierarchy in F6.11 therefore give

\[
D\ge J_{\rm sp}\ge J_{\rm rad}\ge A_H
\ge
\frac{(\nu D+R'/2)^2}{C_\Omega^2RD}
\ge
\frac{\nu^2D}{C_\Omega^2R}.
\]

Optimizing the middle expression in \(D\) also yields

\[
A_H,\ J_{\rm rad},\ J_{\rm sp}
\ge
\frac{2\nu}{C_\Omega^2}\frac{R'}R.
\]

This recovers the fixed \(2\nu\log2/C_\Omega^2\) action quantum on every
first critical-height doubling.  It does not produce a larger quantum at
higher records.

The pair-width bridge in F1.9 sharpens the instantaneous rate:

\[
A_H,\ J_{\rm rad},\ J_{\rm sp}
\ge
\frac{1024\nu^2}
{\pi^2C_\Omega^2r_+^2}
\qquad\text{whenever }R'>0.
\]

Thus the global coherent-action readout required at a rising time grows at
least like the viscous heat rate associated algebraically with the outer
half-height scale of the all-center pair-separation distribution. This
\(r_+\) is not a spatial collar, a localized ripple width, or a material
carrier. Under Navier--Stokes scaling, the rate grows like \(r_+^{-2}\), the
corresponding heat scale shrinks like \(r_+^2\), and their product remains
scale invariant.

The terminal packing has the same parabolic form.  Under the terminal scope
of F4.4, let \(M_n=2^nM_0\), let \(I_n\) be the last-doubling intervals of
F6.5, and set

\[
r_{+,n}=\frac{32\mathcal E_0}{\pi M_n}.
\]

Then

\[
|I_n|
\le\frac{\pi^2}{4096}\frac{r_{+,n}^2}{\nu},
\qquad
\sum_{j\ge n}|I_j|
\le\frac{\pi^2}{3072}\frac{r_{+,n}^2}{\nu}.
\]

This is exact time-length packing, not an action upper bound.  On a first
doubling from \(M\) to \(2M\), with
\(G=\{t:\mathcal H_{1/2}'(t)>0\}\), one also has

\[
\int_GD\,dt\ge\frac{\sqrt M}{2C_\Omega},
\qquad
\int_GF\,dt\ge\frac{\nu^2\sqrt M}{2C_\Omega}.
\]

These are growing record charges with no datum-finite upper budget.

Energy tangency makes radial current strictly more informative than global
coherence at every rising time.  With

\[
I_j=\int_0^\infty\rho^{-j}\mathcal B(\rho)\,d\rho,
\qquad I_0=F,
\]

and the displayed inverse moments finite, the constraint
\(\int\rho^{-1}C(\rho)\,d\rho=0\) gives

\[
P_H^2
\le
J_{\rm rad}\left(I_0-\frac{I_1^2}{I_2}\right),
\qquad
J_{\rm rad}>A_H.
\]

The strict gap has no uniform factor because the inverse-moment correction is
state dependent.

This loss of uniform efficiency is sharp.  On the normalized torus, let

\[
u_{a,\varepsilon}
=a\bigl(0,2\cos(x+\varepsilon),-2\cos y-2\cos(x+y)\bigr).
\]

It is an exact smooth triangular Navier--Stokes datum with constant pressure,
and

\[
P_H=2(\sqrt2-1)a^3\sin\varepsilon,
\qquad
D=4(1+\sqrt2)a^2,
\]

\[
J_{\rm rad}=2(1+\sqrt2)a^2\sin^2\varepsilon,
\qquad
A_H=
\frac{2(\sqrt2-1)^2}{1+\sqrt2+1/\sqrt5}
a^2\sin^2\varepsilon.
\]

Taking

\[
a=\frac c{\sin\varepsilon},
\qquad
c>2\nu(3+2\sqrt2),
\]

makes \(\mathcal H_{1/2}'>0\), while \(D\) and the aligned crest
\(|u_3(0)|=4a\) diverge and \(A_H,J_{\rm rad}\) stay fixed as
\(\varepsilon\downarrow0\).  The cubic pressure-completed production can
balance quadratic viscosity with an orientation defect tending to zero.
This varying-data family disproves every datum-independent instantaneous
action-efficiency gap based on these global quantities. Its diverging aligned
crest is a separate pointwise countertest; no theorem identifies that crest
with \(r_+\), the critical-current carrier, or a general spatial spikiness
law. The family is globally smooth and does not construct a fixed-datum
terminal history.

### F6.14 Global critical-current agreement acquires three defects on a material cohort

On decaying \(\mathbb R^3\), define the moving material-pair transform

\[
\mathcal I_tF(a,b)
=\frac1{2\pi}
\frac{F(X(a,t),t)-F(X(b,t),t)}
{|X(a,t)-X(b,t)|^2}.
\]

Product-volume preservation and the fractional bilinear identity give

\[
2\mathcal I_t^*\mathcal I_t=\Lambda.
\]

For the mean-free field \(v\), retain the notation of F6.10--F6.13 and set

\[
m_H=\frac KR,
\qquad
h_t=\mathcal I_t(-\Lambda^{-1}B(v)),
\qquad
g_t=\mathcal I_t((\Lambda-m_H)v).
\]

Energy tangency then gives the exact global identities

\[
2\iint h_t\cdot g_t\,da\,db=P_H,
\qquad
2\iint|h_t|^2\,da\,db=F,
\qquad
A_H=2\|\operatorname{proj}_{h_t}g_t\|_2^2.
\]

There is an exact positive current-state material-pair action before the global
correlation is summed.
Define

\[
d\sigma_B=2|h_t|^2\,da\,db,
\qquad
\eta_H=
\begin{cases}
\displaystyle\frac{h_t\cdot g_t}{|h_t|^2},&h_t\ne0,\\[1ex]
0,&h_t=0.
\end{cases}
\]

Then

\[
\sigma_B(\text{all pairs})=F,
\qquad
P_H=\int\eta_H\,d\sigma_B.
\]

The additive pre-correlation pair action

\[
J_{\rm pair}
=\int\eta_H^2\,d\sigma_B
=\iint
\frac{k_{\rm shape}^2}{2|h_t|^2}\,da\,db,
\]

with zero integrand where \(h_t=0\), obeys

\[
A_H\le J_{\rm pair}\le S_H,
\qquad
J_{\rm pair}-A_H
=\int\left(\eta_H-\frac{P_H}{F}\right)^2d\sigma_B.
\]

For \(F>0\), the density \((P_H/F)^2d\sigma_B\) also integrates exactly to
\(A_H\); set it to zero when \(F=0\).  It uses the already formed global
current \(P_H\), so it is a post-correlation redistribution.  The local
positive current-state object available before that global correlation is
\(J_{\rm pair}\), which is stronger and has no installed datum-finite time
bound.  Neither density supplies first-admission ancestry.

The native material-pair current from F1.8 is

\[
j=-4e\alpha.
\]

With \(k_{\rm shape}=2h_t\cdot g_t\), the two signed densities have the same
complete-space integral:

\[
\iint j\,da\,db
=\iint k_{\rm shape}\,da\,db
=P_H.
\]

This equality is global.  Let \(A\) be a smooth fixed-label pair cohort
bounded away from the diagonal and, on \(\mathbb R^3\), from infinity, and
put

\[
L_{A,t}=2\mathcal I_t^*\mathbf1_A\mathcal I_t.
\]

Writing

\[
J_A=\iint_Aj\,da\,db,
\qquad
K_A=\iint_Ak_{\rm shape}\,da\,db,
\]

one has

\[
\begin{aligned}
J_A-K_A
={}&\int_{\partial A}\widetilde Q_{\rm VPI}\cdot N\,dS\\
&+\langle\Lambda^{-1}B,[L_{A,t},\Lambda]v\rangle\\
&+m_H\langle\Lambda^{-1}B,(\Lambda-L_{A,t})v\rangle.
\end{aligned}
\]

The first row is the material pullback of the pair transport--pressure
boundary flux.  In current pair variables \((x,y)\), with
\(c_\Lambda=1/(2\pi^2)\), it is generated by

\[
Q_{\rm VPI}
=\left(
e\,v(x)+c_\Lambda|x-y|^{-4}\delta p\,\delta v,
e\,v(y)+c_\Lambda|x-y|^{-4}\delta p\,\delta v
\right).
\]

The second row is the fractional derivative-placement commutator created by
cohort localization.  The third is leakage of the globally energy-tangent
row into the cohort complement.  All three disappear only after the complete
pair space is restored.  A moving cohort has its additional entry--exit flux.
For cohorts meeting the diagonal or infinity, the formula is first applied
with cutoffs and the corresponding flux trace is retained in the limit.  The
periodic statement uses the periodic fractional kernel, equivalently all
lattice lifts.

Carrier mass alone cannot control these rows.  On \(\mathbb T^3\), the
one-shell field

\[
v=(\sin z,\sin x,\sin y)
\]

has \(R=K=D\), hence \(m_H=1\) and \(g_t=0\), while

\[
B=(\sin y\cos z,\sin z\cos x,\sin x\cos y)
\]

is nonzero.  There are pairs with \(\delta v=0\) and
\(\delta B\ne0\), so the localized source is not absolutely continuous with
respect to critical pair mass.  Other cohorts carry nonzero localized source
rows even though the complete critical production is zero.

Thus native material current and pressure-completed spectral-shape current are
two exact coordinates of one participant, with equality only after all
part--whole exchanges are recombined.  A historical Gold incidence law that
converts localized native current into localized spectral-shape current must
retain their joined localization residual.  A bridge built directly on the
positive \(J_{\rm pair}\) measure does not make that coordinate conversion and
does not inherit those rows automatically.  It must instead prove that every
unpaid read belongs to the shape-changing component seen by
\(J_{\rm pair}\), route the shape-null component, and construct actual
first-admission ancestry, bounded fibre multiplicity, and parent size.  Pair
mass, pair width, a parent label, or an abstract coupling of marginals supplies
neither bridge.

### F6.15 The localized current mismatch is one joined signed residual, and its use is route-specific

Fix the minimum-shape coordinate of F6.14 and let \(\mathfrak M\) denote the
smooth material-pair space.  The localized mismatch defines a finite signed
measure

\[
d\mathfrak d_{\rm loc,t}
=(j-k_{\rm shape})\,da\,db,
\qquad
\mathfrak d_{\rm loc,t}(\mathfrak M)=0.
\]

For a smooth pair selector \(\varphi\), put

\[
L_{\varphi,t}=2\mathcal I_t^*\varphi\mathcal I_t.
\]

The F6.14 decomposition can be written as three linear signed functionals:

\[
\begin{aligned}
\mathfrak B_t(\varphi)
&=-\iint \widetilde Q_{\rm VPI}\cdot\nabla_{a,b}\varphi\,da\,db,\\
\mathfrak C_t(\varphi)
&=\langle\Lambda^{-1}B,[L_{\varphi,t},\Lambda]v\rangle,\\
\mathfrak E_t(\varphi)
&=-m_H\langle\Lambda^{-1}B,L_{\varphi,t}v\rangle,
\end{aligned}
\]

and

\[
\mathfrak d_{\rm loc,t}(\varphi)
=\mathfrak B_t(\varphi)
+\mathfrak C_t(\varphi)
+\mathfrak E_t(\varphi).
\]

The complement form in F6.14 is equivalent to the last row because
\(\langle B,v\rangle=0\).  For every finite partition of unity
\(\sum_i\varphi_i=1\),

\[
\sum_i\mathfrak B_t(\varphi_i)
=\sum_i\mathfrak C_t(\varphi_i)
=\sum_i\mathfrak E_t(\varphi_i)
=\sum_i\mathfrak d_{\rm loc,t}(\varphi_i)=0.
\]

Internal boundary normals, commutators, and complement exchanges therefore
cancel when the parts are restored.  Charging
\(|\mathfrak B|+|\mathfrak C|+|\mathfrak E|\) part by part before that
recombination is a sufficient but generally stronger operation that counts
the same internal exchange twice.

The weak material history makes the joined object explicit.  Let
\(\chi_{\rm VPI}=\zeta\cdot a_{\rm rel}/s\), use the zero-safe form at
\(s=0\), and set

\[
H_\varphi=\iint\varphi e,
\qquad
K_\varphi=\iint\varphi k_{\rm shape}.
\]

For an adaptive selector \(\varphi_t\),

\[
\boxed{
\frac d{dt}H_{\varphi_t}
=K_{\varphi_t}
+2\iint\varphi_t e\chi_{\rm VPI}
+\mathfrak R_{\varphi_t},
}
\]

where

\[
\mathfrak R_{\varphi_t}
=\mathfrak d_{\rm loc,t}(\varphi_t)
+\iint(\partial_t\varphi_t)e.
\]

The last integral is entry--exit for the particular carrier \(e\); it is not
an independently owned fourth measure.  For a moving partition
\(\sum_i\varphi_i(t)=1\), one has
\(\sum_i\mathfrak R_{\varphi_i}=0\).  The exact transform evolution

\[
\frac d{dt}\mathcal I_tF
=\mathcal I_t(D_tF)-2\alpha\mathcal I_tF
\]

shows why differentiating a localized current also brings the full pair
generator and the selector derivative.  A spacetime incidence measure may use
the weak law without proving bounded variation of every split row.

The split is tied to the declared coordinate.  Adding a divergence to the
local shape density shifts mass between the boundary and remainder rows, and
replacing \(m_H\) by another scalar shifts a zero-total density into the
leakage row.  The installed choice is distinguished by

\[
m_H=\frac KR
=\underset{m\in\mathbb R}{\operatorname{argmin}}
\|\Lambda^{3/2}v-m\Lambda^{1/2}v\|_2^2.
\]

Thus the joined residual is the smallest signed object for the declared
minimum-shape coordinate; its individual rows are not separate physical
ledgers.

There is a second positive coordinate.  The spacetime pair-action measure

\[
d\lambda_{\rm pair}
=\eta_H^2\,d\sigma_B\,dt
=\frac{k_{\rm shape}^2}{2|h_t|^2}\,da\,db\,dt
\]

has time marginal \(J_{\rm pair}\,dt\).  A causal kernel from fixed
material-pair events to later shape reads would avoid comparing
\(k_{\rm shape}\) to \(j\), but the measure is quadratic in the response
ratio.  The corresponding linear absolute shape-current measure is

\[
d\lambda_{\rm lin}=|\eta_H|\,d\sigma_B\,dt
=|k_{\rm shape}|\,da\,db\,dt.
\]

On \(\{|\eta_H|\ge\delta\}\),

\[
d\lambda_{\rm lin}\le\delta^{-1}d\lambda_{\rm pair}.
\]

There is no bounded comparison on the near-null branch
\(0<|\eta_H|<\delta\).  Routing only the exact zero set therefore does not
turn the quadratic action into a linear source or detector measure.

For the one-shell field in F6.14, \(g_0=0\) and

\[
J_{\rm pair}(t)=O(t^2),
\qquad
\int_0^\tau J_{\rm pair}(t)\,dt=O(\tau^3),
\]

while a backward source detector aligned with \(B(v_0)\ne0\) has response

\[
\tau\|B(v_0)\|_2^2+O(\tau^2).
\]

Arbitrary source work therefore cannot be charged to \(J_{\rm pair}\).
F6.17 sharpens the reason: the source that is tangent to the present critical
height can be the source that creates the next shape direction.  Thus
instantaneous nullity does not license a paid, legal, or stop routing, and a
selected positive readout does not remove the near-null half-tail.  A bound on
the full spacetime mass \(\int J_{\rm pair}dt\) remains a valid direct Gold
criterion, but it is already Gold-strength because \(A_H\le J_{\rm pair}\).
A WLF bridge must upgrade F6.18's exact signed Eulerian ancestry into
first admission by a material parent carrying the full signed current, then
prove a positive common disintegration, bounded fibre variation, the selected
linear near-null bound, and separate datum-finite parent mass.  None follows
from \(d\lambda_{\rm pair}\).

### F6.16 Normalized viscous age, material dwell, and terminal heat comparison are different facts

For a high-pass field supported on \(|\xi|\ge\lambda=\ell^{-1}\), homogeneous
viscous inheritance obeys

\[
\|e^{\nu\tau\Delta}f\|_{\dot H^s}
\le e^{-\nu\tau\lambda^2}\|f\|_{\dot H^s}.
\]

Its dimensionless viscous age is

\[
q=\nu\tau\lambda^2=\frac{\nu\tau}{\ell^2}.
\]

A scale-uniform homogeneous attenuation gap requires \(q\ge c_*>0\).
Interpreted as a physical event, this is a retention theorem: the same
admitted carrier must remain coherent for at least \(c_*\) heat times.  For
travel across one length at speed \(U\), it is the local-Reynolds condition

\[
q\sim\frac{\nu}{U\ell}=\operatorname{Re}_\ell^{-1}.
\]

No such floor holds for every active same-field episode, even at fixed kinetic
energy.  The exact F6.9 family

\[
u_{\mu,\lambda}(x,t)
=\mu\lambda w_{\nu/\mu}(\lambda x,\mu\lambda^2t)
\]

has positive pressure-completed fine current for a duration
\(\tau=T/(\mu\lambda^2)\) at scale \(\ell=\lambda^{-1}\), so

\[
q=\frac{\nu T}{\mu}\longrightarrow0.
\]

Choosing \(\lambda=\mu^2\mathcal E(\phi)/E_*\) fixes the kinetic energy.
Thus the one VPI participant can perform genuine nonlinear work on a
sub-heat interval.  This varying-data family does not rule out a dwell theorem
for a more narrowly admitted retained carrier in one terminal history.

An assumed unbounded terminal critical record supplies a different fixed gap.
Let

\[
R_n=\|\Lambda^{1/2}u(\tau_n)\|_2^2\longrightarrow\infty
\]

at first-record times, put \(\mathsf E_0=\|u_0\|_2^2\), and choose

\[
\lambda_n=\frac{R_n}{4\mathsf E_0},
\qquad
v_n=P_{\ge\lambda_n}u(\tau_n),
\qquad
\theta_n=\frac c{\nu\lambda_n^2},
\qquad c\ge\frac12.
\]

For all sufficiently large \(n\), \(\sigma_n=\tau_n-\theta_n>0\).  Energy
and the record property give

\[
\|v_n\|_{\dot H^{1/2}}^2\ge\frac{3R_n}{4}.
\]

With the future-fitted backward heat probe

\[
w_n(s)=e^{\nu(\tau_n-s)\Delta}v_n,
\]

the normalized heat age of the comparison window is exactly
\(\nu\theta_n\lambda_n^2=c\), and

\[
|\langle u(\sigma_n),\Lambda w_n(\sigma_n)\rangle|
\le\frac{e^{-c}R_n}{4}.
\]

The exact same-field Duhamel pairing therefore forces

\[
\boxed{
\int_{\sigma_n}^{\tau_n}
-\langle B(u(s)),\Lambda w_n(s)\rangle\,ds
\ge c_0R_n,
\qquad
c_0=\frac{3-e^{-c}}4>\frac12.
}
\]

It also forces the high-frequency source action

\[
\boxed{
\int_{\sigma_n}^{\tau_n}
\|P_{\ge\lambda_n}B(u(s))\|_{\dot H^{-1/2}}^2\,ds
\ge2\nu c_0^2R_n.
}
\]

This is a scale-independent heat-comparison and late-reconstruction theorem:
homogeneous inheritance cannot account for the endpoint high-frequency state,
so the same pressure-completed nonlinear history must rebuild or reconfigure
it on the selected window.  The window is chosen from the endpoint and is not
a material dwell interval. It gives terminal-fitted late Eulerian
reconstruction, while material
co-carriage, WLF first admission, bounded descendant multiplicity, and a
datum-finite parent measure remain separate relations.

### F6.17 A source tangent to the present critical height can create the next spectral shape

Let \(v(t)\) be a smooth mean-free solution and suppose that at one time

\[
\Lambda v_0=\lambda v_0.
\]

Then \(m_H(0)=\lambda\), the spectral-shape vector

\[
G_H=\Lambda^{1/2}(\Lambda-m_H)v
\]

vanishes, and hence \(S_H(0)=P_H(0)=A_H(0)=J_{\rm pair}(0)=0\).  Put
\(B_0=B(v_0)\), with the whole-field pressure response already included.
Energy tangency and the complete Navier--Stokes equation give

\[
m_H'(0)=0,
\qquad
G_H'(0)=-\Lambda^{1/2}(\Lambda-\lambda)B_0,
\]

and therefore

\[
S_H''(0)
=2\|\Lambda^{1/2}(\Lambda-\lambda)B_0\|_2^2,
\qquad
P_H'(0)=\langle B_0,(\Lambda-\lambda)B_0\rangle.
\]

The viscous part of the same equation preserves the original shell at this
instant and cancels from the transverse derivative.  The pressure-completed
nonlinear row creates shape precisely when it has off-shell support.  The
shape creation has no free sign: source confined above the original shell gives
positive critical current, source confined below it gives negative current,
and mixed source can cancel in \(P_H'\) while still giving \(S_H''>0\).

The exact same-field example

\[
v_0=(\sin z,\sin x,\sin y),
\qquad
B_0=(\sin y\cos z,\sin z\cos x,\sin x\cos y)
\]

has \(\lambda=1\), \(\Lambda B_0=\sqrt2 B_0\), and, for normalized Haar
measure on \(\mathbb T^3\), \(\|B_0\|_2^2=3/4\).  As \(t\downarrow0\),
the initial pressure is constant, so this example tests the complete
pressure-projected nonlinear row without assigning the shape creation to
pressure alone.  One has

\[
P_H(t)=\frac34(\sqrt2-1)t+O(t^2),
\]

and

\[
S_H(t),\ A_H(t),\ J_{\rm pair}(t)
=\frac{3\sqrt2}{4}(\sqrt2-1)^2t^2+O(t^3).
\]

The three quadratic quantities have the same leading coefficient: the new
shape is asymptotically fully aligned with the source.  Nevertheless,

\[
\int_0^\tau J_{\rm pair}(t)\,dt=O(\tau^3),
\]

while the backward source detector with endpoint dual \(-B_0\) reads

\[
\langle P_{\sqrt2}v(\tau),-B_0\rangle
=\tau\|B_0\|_2^2+O(\tau^2)>0.
\]

Thus source admission, linear shape current, and quadratic pair action occur
at different Taylor orders. A positive density may be available before the
global correlation is summed and still be available only after the response
direction has formed.  Only a source component whose propagated pairing with
every later unpaid detector vanishes, or which is already in a proved paid,
legal, or stop span, is historically shape-null.  Constructing and bounding
the first nonzero material parent-to-future-shape admission remains open.  The example
does not prove immediate critical-height growth: at \(t=0\), viscosity makes
\(\mathcal H_{1/2}'=-3\nu/2<0\). It proves next-order global spectral-shape
creation and the failure of instantaneous null routing; it does not prove a
spatial or material causal carrier.

### F6.18 Spectral shape is a signed same-history state

Retain the mean-free field, pressure-completed transport, and critical-shape
variables of F6.10.  Write

\[
m=m_H=\frac KR,
\qquad
G=\Lambda^{1/2}(\Lambda-m)v,
\qquad
\mathcal S_m=\Lambda^{1/2}(\Lambda-m)B(v).
\]

The centering gives \(\langle G,\Lambda^{1/2}v\rangle=0\).  Along the one
Navier--Stokes history, the exact moving-center equation is

\[
\partial_tG+\nu\Lambda^2G
=-\mathcal S_m-m'\Lambda^{1/2}v.
\]

The last term is the connection produced by moving the mean frequency of the
same field.  It preserves the centering constraint and cancels from the exact
shape balance:

\[
\boxed{
\frac12S_H'
+\nu\|\Lambda G\|_2^2
=-\langle G,\mathcal S_m\rangle
=N_3-2mN_2+m^2N_1.
}
\]

Thus the source row, heat row, and moving center describe one evolving shape
state.  The identity controls their signed net effect.  Replacing the signed
source work by its positive part or total variation discards the cancellation
and receives no bound from this identity.

The terminal-fitted Eulerian Duhamel attribution is also exact. Fix a terminal
time \(T\), put
\(m_T=m(T)\), and set

\[
G^T(t)=\Lambda^{1/2}(\Lambda-m_T)v(t),
\qquad
\mathcal S_T(t)=\Lambda^{1/2}(\Lambda-m_T)B(v(t)).
\]

For every earlier \(s<T\),

\[
\boxed{
G(T)
=e^{-\nu(T-s)\Lambda^2}G^T(s)
-\int_s^T e^{-\nu(T-t)\Lambda^2}\mathcal S_T(t)\,dt.
}
\]

The inherited term carries the exact terminal-centering mismatch

\[
\|G^T(s)\|_2^2
=S_H(s)+(m(s)-m_T)^2R(s).
\]

Pairing with any terminal covector gives a signed backward detector on the
same pressure-completed source history.  Every nonzero source-generated
terminal shape read therefore has nonzero signed incidence at earlier times.
This is detector-relative Eulerian ancestry.  Its terminal center and detector
are future-fitted, and the formula distributes one terminal read across a
continuum of earlier source points.  A material parent, a unique first
admission, a positive common parent measure, and bounded descendant fibres
require additional theorems; the Duhamel formula supplies none of those
relations by itself.

Shape variation cannot replace critical-height action.  For the exact
finite-Fourier datum from F6.12,

\[
\psi=2\cos x+2\cos2y+2\cos(x+2y),
\qquad
U=(\partial_y\psi,-\partial_x\psi,0),
\qquad
v_0=bU,
\]

one has

\[
\begin{aligned}
&M_1=18+10\sqrt5,\quad M_2=84,\quad
M_3=66+50\sqrt5,\quad M_4=380,\quad
M_5=258+250\sqrt5,\\
&N_1=28-12\sqrt5>0,\qquad N_2=0,\qquad
N_3=124-60\sqrt5.
\end{aligned}
\]

With \(m=M_2/M_1\), the nonlinear shape production and centered viscous
shape rate are

\[
C=N_3-2mN_2+m^2N_1
=\frac4{121}(311569-139407\sqrt5)<0,
\]

\[
Q=M_5-2mM_4+m^2M_3
=\frac4{121}(-40107+18010\sqrt5)>0.
\]

The two signs are certified exactly by

\[
5(139407)^2-(311569)^2=96316484,
\qquad
5(18010)^2-(40107)^2=13229051.
\]

Consequently

\[
\mathcal H_{1/2}'(0)
=b^2\bigl[bN_1-\nu M_3\bigr]>0
\]

whenever

\[
b>\frac{\nu M_3}{N_1}
=\frac\nu4(303+137\sqrt5),
\]

whereas

\[
S_H'(0)=2b^2(bC-\nu Q)<0.
\]

Moreover

\[
S_H(0)
=\frac4{11}(2166-965\sqrt5)b^2>0.
\]

Here \(N_1>0\) follows from \(7^2-5\,3^2=4\), and the last sign follows
from \(2166^2-5\,965^2=35431\).

By smooth time continuity, the same solution has a positive interval on which
its critical height rises while both \(S_H\) and \(\sqrt{S_H}\) decrease.
Spectral shape is therefore a state that the participant can create, retain,
recenter, and consume.  Its positive variation misses lawful critical growth;
the active signed current in F6.10 still sees that growth.  This is a
same-fluid pressure-completed Navier--Stokes counterexample, not a reduced
model or a freely prescribed source history.

### F6.19 Critical height rises through energy-centroid lift faster than viscous depletion

Let

\[
E=M_0=\|v\|_2^2,
\qquad
d\mu_E(\xi)=\frac{|\widehat v(\xi)|^2}{E}\,d\xi,
\qquad
\bar\rho=\mathbb E_{\mu_E}|\xi|=\frac{M_1}{M_0}.
\]

The critical height is the product

\[
\mathcal H_{1/2}=\frac12M_1=\frac12E\bar\rho.
\]

Thus it rises only when the energy-weighted mean frequency rises fast enough
to outrun the simultaneous loss of kinetic energy.  Since

\[
E'=-2\nu M_2,
\qquad
M_1'=2N_1-2\nu M_3,
\]

one has the exact centroid equation

\[
\boxed{
\bar\rho'
=\frac{2N_1}{E}
-2\nu\operatorname{Cov}_{\mu_E}(\rho,\rho^2),
}
\]

where

\[
\operatorname{Cov}_{\mu_E}(\rho,\rho^2)
=\frac12\mathbb E[(\rho-\widetilde\rho)^2(\rho+\widetilde\rho)]
\ge0.
\]

Viscosity therefore lowers this spectral centroid or leaves it fixed.  The
only upward row is the signed pressure-completed nonlinear current \(N_1\).
Writing

\[
\sigma_E^2
=\operatorname{Var}_{\mu_E}(\rho)
=\frac{M_2}{E}-\bar\rho^2,
\]

the product identity gives the exact rising condition

\[
\boxed{
\mathcal H_{1/2}'>0
\quad\Longleftrightarrow\quad
\frac{\bar\rho'}{\bar\rho}
>2\nu\frac{M_2}{E}
=2\nu(\bar\rho^2+\sigma_E^2).
}
\]

At an exact shell, energy tangency gives \(N_q=0\) for every \(q\), the heat
flow preserves that shell, and \(\bar\rho'=0\).  The critical height then
decreases. F6.17 supplies the next Taylor-order spectral-shape fact: off-shell
support can be created by the same pressure-completed source before a signed
upward centroid current appears. This is not a spatial transport or material
ancestry statement.

There is no pointwise lower bandwidth for a rising event.  On the normalized
torus, choose any Pell pair \((h,n)\) with

\[
h^2-3n^2=1
\]

and put

\[
\begin{aligned}
k_0&=(2n,0),\\
k_-&=(-n+1,h),\\
k_+&=(n+1,h)=k_0+k_-,
\end{aligned}
\qquad
\psi_n=2\sum_{j\in\{0,-,+\}}\cos(k_j\cdot x),
\]

\[
U_n=(\partial_y\psi_n,-\partial_x\psi_n,0).
\]

Its three radii are

\[
\rho_0=2n,
\qquad
\rho_-=\sqrt{4n^2-2n+2},
\qquad
\rho_+=\sqrt{4n^2+2n+2},
\]

so \(\rho_+/\rho_-\to1\) along the infinite Pell sequence.  Direct
Fourier calculation gives the three shell currents

\[
T_0=-16n^2h,
\qquad
T_-=8nh(n+1),
\qquad
T_+=8nh(n-1),
\]

and hence \(N_q(U_n)=\sum_jT_j\rho_j^q\).  In particular,
\(N_2(U_n)=0\) and

\[
N_1(U_n)=4hn\,\beta_n,
\]

\[
\beta_n
=(2n-2)\rho_+ +(2n+2)\rho_- -8n^2
=-\frac14+O(n^{-2}).
\]

In fact \(\beta_n<0\) for every \(n>1\).  The sign reduces to

\[
(n-1)\rho_+ +(n+1)\rho_-<4n^2,
\]

After squaring, this reduces to
\(\rho_+\rho_-<2(2n^2+1)\), whose strict square certificate is

\[
4(2n^2+1)^2-\rho_+^2\rho_-^2=4n^2>0.
\]

Hence \(N_1(U_n)<0\) for every nontrivial Pell solution.  For
\(v_0=-bU_n\),

\[
\mathcal H_{1/2}'(0)
=b^2\left[-bN_1(U_n)-\nu M_3(U_n)\right]>0
\]

whenever

\[
b>\frac{\nu M_3(U_n)}{-N_1(U_n)}.
\]

These are anisotropic, divergence-free, finite-Fourier Navier--Stokes data;
the pressure response is already contained in \(N_1\).  Their relative shell
width tends to zero while their critical height initially rises.  Large
amplitude lets the derived cubic current beat the quadratic viscous drain;
the pressure sign remains fixed by that same field. Thus a scale-independent
relative spectral-bandwidth floor is false. This says nothing by itself about
pointwise spatial spikiness. It is a varying-data instantaneous result and
supplies no terminal history for one fixed datum.

There is a separate proved history-level restriction.  For viscosity one on
\(\mathbb R^3\), Miller's Laplacian-eigenshell criterion states that a finite
maximal time forces, for \(2\le\alpha\le5/2\) and
\(p=2/(\alpha-1/2)\),

\[
\int_0^{T_{\max}}
\left(
M_{2\alpha}
-\frac{M_{2\alpha-2}^2}{M_{2\alpha-4}}
\right)^{p/2}dt
=\infty.
\]

The integrand is the optimally centered
\(\dot H^{\alpha-2}\) norm of \((\Lambda^2-\lambda)v\).  It measures
variance of squared frequency, whereas F6.10 measures variance of frequency
through \(S_H\).  The theorem rules out cumulatively finite high-order
eigenshell deficit along an actual breakdown history.  It supplies neither a
pointwise bandwidth floor nor a datum-finite upper bound; finiteness of its
integral is itself an alternative regularity criterion.  This coordinate
leaves open whether one fixed history can sustain centroid acceleration above
the viscous rate through infinitely many critical-height records.  Instantaneous
spectral width alone does not decide that question.

### F6.20 Finite energy forces fast centroid lift and absolute off-shell width at every rising time

Retain the complete pressure-completed variables of F6.10 and put

\[
m_H=\frac KR,
\qquad
s_H^2=\frac{S_H}{R}
=\operatorname{Var}_{\mu_H}(\rho).
\]

Here \(m_H\) and \(s_H\) are respectively the mean and standard deviation of
frequency under the critical spectral probability measure.  At a time when
the critical height strictly rises,

\[
R'=2(P_H-\nu D)>0,
\]

so \(P_H>\nu D\).  The exact current projection and product estimate give

\[
P_H^2
\le
\|\Lambda^{-1/2}B(v)\|_2^2S_H
\le C_\Omega^2RDS_H.
\]

Since \(D=R(m_H^2+s_H^2)\), every rising state therefore obeys the sharp
state inequality supplied by these inputs,

\[
\boxed{
s_H^2
>
\frac{\nu^2m_H^2}{C_\Omega^2R-\nu^2}.
}
\]

In particular \(C_\Omega^2R>\nu^2\): below this critical-height threshold,
the pressure-completed nonlinear current cannot beat viscosity.  Moment
log-convexity gives

\[
DR\ge K^2,
\qquad
R^2\le EK,
\qquad
E(t)=\|v(t)\|_2^2\le E_0=\|v(0)\|_2^2.
\]

Hence the normalized current-activated shape component and the full critical
spectral variance satisfy

\[
\boxed{
\frac{S_H}{R}
\ge\frac{A_H}{R}
>
\frac{\nu^2D}{C_\Omega^2R^2}
\ge
\frac{\nu^2m_H}{C_\Omega^2E(t)}
\ge
\frac{\nu^2m_H}{C_\Omega^2E_0}.
}
\]

Since the energy centroid of F6.19 obeys

\[
\bar\rho=\frac RE\le\frac KR=m_H,
\]

one also has \(s_H^2>\nu^2\bar\rho/(C_\Omega^2E_0)\).  Thus a fixed
finite-energy participant cannot raise its critical height at arbitrarily
large mean frequency while its complete critical spectrum retains bounded
absolute width.  This does not identify which frequencies or material
cohorts carry the signed current; F7.7 supplies exact same-field null sectors
that prevent that inference.

The simultaneous rate is also exact.  F6.19 and moment convexity give

\[
R'\ge0
\quad\Longrightarrow\quad
\frac{\bar\rho'}{\bar\rho}
\ge2\nu\frac{M_2}{E}
\ge2\nu\bar\rho^2.
\]

On every connected interval \([a,b]\) on which \(R\) is nondecreasing,

\[
\bar\rho(b)^{-2}
\le
\bar\rho(a)^{-2}-4\nu(b-a),
\qquad
b-a\le\frac1{4\nu\bar\rho(a)^2}.
\]

This is an upper bound on the duration of uninterrupted rise, not a material
dwell-time lower bound or a finite propagation speed.  If \(R(b)=2R(a)\),
the endpoint product identity is

\[
\frac{\bar\rho(b)}{\bar\rho(a)}
=2\frac{E(a)}{E(b)}\ge2.
\]

The new width floor is datum- and state-dependent.  Its relative form

\[
\frac{s_H^2}{m_H^2}
>
\frac{\nu^2}{C_\Omega^2R-\nu^2}
\ge0
\]

has no universal positive lower constant as \(R\) ranges over large data.
The Pell and triangular counterfamilies in F6.19 and F6.13 reach narrow
relative width by increasing their energy and critical height; they do not
violate this bound.  F6.9 and F6.16 still rule out a universal normalized
dwell or attenuation gap.  For one fixed datum, however, any sequence of
rising times with \(m_H\to\infty\) must also satisfy \(s_H\to\infty\).

This excludes bounded-absolute-width high-centroid rising histories.  It
supplies no datum-finite upper bound for \(A_H\), \(J_{\rm pair}\), or
\(J_{\rm rad}\), and the permitted intervals can shrink on a summable
parabolic clock.  Gold therefore remains open; the fact is a necessary
same-history state constraint rather than a regularity theorem.  It derives no
Part or Field failure, so Silver is unchanged.

### F6.21 Rising-frequency occupancy is datum-finite, while fixed energy permits fixed relative critical gain in vanishing raw cost

Retain the complete pressure-completed variables of F6.10 and the datum bound

\[
E_0=\|v(0)\|_2^2.
\]

Let

\[
G=\{t:R'(t)>0\},
\qquad
d\mu_{\rm cur}=\frac KD A_H\,dt.
\]

On \(G\), the critical balance and product estimate give

\[
A_H>\frac{\nu^2D}{C_\Omega^2R}.
\]

The exact finite-mass factorization from F6.10 therefore yields

\[
\frac{d\mu_{\rm cur}}{dt}
=\frac KD A_H
>\frac{\nu^2}{C_\Omega^2}\frac KR
=\frac{\nu^2}{C_\Omega^2}m_H.
\]

Since the kinetic-energy identity gives

\[
\mu_{\rm cur}([0,T])
\le\int_0^T K(t)\,dt
\le\frac{E_0}{2\nu},
\]

every classical interval satisfies the datum-finite rising-frequency
occupancy law

\[
\boxed{
\int_G m_H(t)\,dt
\le\frac{C_\Omega^2E_0}{2\nu^3}.
}
\]

Because the energy centroid obeys \(\bar\rho\le m_H\), the same right-hand
side bounds \(\int_G\bar\rho\,dt\).  In particular,

\[
\big|\{t\in G:m_H(t)\ge L\}\big|
\le\frac{C_\Omega^2E_0}{2\nu^3L}
\qquad(L>0).
\]

This is a global time--frequency occupancy law for the complete same field.  It
does not count spatial packets, locate the separated frequencies, or give a
positive amount of occupancy to each rise.

There is an exact counterfamily to event quanta based solely on the raw
quantities listed below on \(\mathbb R^3\).
Choose a divergence-free Schwartz field \(\psi\) with

\[
P_H(\psi)>0.
\]

For the three exact centers and coefficients displayed in F6.9, direct
convolution gives

\[
P_H=2(\sqrt2-1)>0
\]

under that coefficient normalization.  Replacing the six point masses by
sufficiently narrow smooth Fourier packets supported away from zero, followed
by Leray projection and the reality reflection, produces a real
divergence-free Schwartz field and preserves the strict sign.  Let
\(v^\varepsilon\) be the viscosity-\(\varepsilon\) Navier--Stokes solution
from this \(\psi\), and let \(v^0\) be the Euler solution from the same datum.
Standard common-interval high-regularity estimates give, for some sufficiently
large \(m\) and \(\tau_0>0\),

\[
\sup_{0\le\tau\le\tau_0}
\|v^\varepsilon(\tau)-v^0(\tau)\|_{H^{m-1}}
\le C\varepsilon.
\]

Since \(R'(0)=2P_H(\psi)>0\) for the Euler solution, equivalently
\(\mathcal H_{1/2}'(0)=P_H(\psi)>0\),
there are fixed \(\tau_0,\delta>0\) such that, for all sufficiently small
\(\varepsilon\),

\[
\mathcal H_{1/2}(v^\varepsilon(\tau_0))
\ge(1+\delta)\mathcal H_{1/2}(\psi).
\]

Fix \(\nu>0\).  For \(A\) sufficiently large put

\[
u_A(x,t)=A^3v^{\nu/A}(A^2x,A^5t),
\qquad
p_A(x,t)=A^6q^{\nu/A}(A^2x,A^5t).
\]

Direct substitution shows that every \((u_A,p_A)\) is an exact unforced
viscosity-\(\nu\) incompressible Navier--Stokes history.  The pressure remains
the simultaneous nonlocal response of that rescaled velocity field.  With

\[
\mathcal M_s(u)=\|\Lambda^su\|_2^2,
\qquad
T_A=\tau_0A^{-5},
\]

the exact three-dimensional scalings are

\[
\|u_A(0)\|_2^2=\|\psi\|_2^2=:E_*,
\qquad
\mathcal M_s(u_A(t))
=A^{4s}\mathcal M_s(v^{\nu/A}(A^5t)),
\]

and

\[
\mathcal H_{1/2}(u_A(T_A))
\ge(1+\delta)\mathcal H_{1/2}(u_A(0)).
\]

Thus the initial physical kinetic energy \(E_*/2\) and a positive fractional
critical-height gain stay fixed
while \(T_A\to0\).  The physical kinetic-energy loss and every fixed
energy-interpolation occupancy with \(0<s\le1\) obey

\[
\frac12\|u_A(0)\|_2^2-\frac12\|u_A(T_A)\|_2^2
=\frac{\nu}{A}\int_0^{\tau_0}K(v^{\nu/A})\,d\tau
=O(A^{-1}),
\]

\[
\int_0^{T_A}\mathcal M_s(u_A(t))^{1/s}\,dt
=\frac1A\int_0^{\tau_0}
\mathcal M_s(v^{\nu/A}(\tau))^{1/s}\,d\tau
=O_s(A^{-1}).
\]

Every base spatial length in this exact dilation is multiplied by
\(\ell_A=A^{-2}\), so the corresponding normalized viscous age also vanishes:

\[
\frac{\nu T_A}{\ell_A^2}=\frac{\nu\tau_0}{A}\longrightarrow0.
\]

Likewise \(m_H\) scales as \(A^2\), and, with \(G_A\) the rising set of
\(u_A\),

\[
\int_{G_A\cap[0,T_A]}m_H(t)\,dt=O(A^{-3}).
\]

Critical dissipation has the opposite scaling,

\[
\nu\int_0^{T_A}D(u_A(t))\,dt\asymp\nu A,
\]

with constants fixed by the nonzero seed and common interval.  The fixed
fractional rise is cheap only in physical time, raw kinetic-energy loss, and
the subcritical energy-interpolation occupancies.  The critical-height
dissipation row becomes larger.

This family varies the datum with \(A\) and proves no repeated-event history
for one datum.  The dilation is exact on decaying \(\mathbb R^3\); a fixed
normalized torus requires a separate concentration-periodization theorem.  The
frequency identities make no claim about spatial co-location, annuli, beats,
or envelopes.

Consequently no positive lower bound depending only on
\((\nu,E_*,\delta)\) can hold for elapsed time, physical energy loss, or any
fixed \(0<s\le1\) energy-interpolation occupancy during a fixed relative
critical-height gain.  Those quantities cannot close Gold.  The same-history
critical action and material ancestry burdens remain open.  No Part or Field
failure is derived, so Silver is unchanged.

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

### F7.8 Local ripple growth and global critical growth are distinct relational events

Fix a unit direction \(e\) and put \(f=e\cdot u\).  Let \(x_+(t)\) and
\(x_-(t)\) be smooth curves of a local crest and neighboring trough of \(f\).
At those extrema, \(\nabla f=0\), so transport and the motion of the selected
extrema make no instantaneous contribution.  The exact amplitude law is

\[
\frac d{dt}\bigl[f(x_+,t)-f(x_-,t)\bigr]
=-e\cdot\bigl[\nabla p(x_+,t)-\nabla p(x_-,t)\bigr]
+\nu\bigl[\Delta f(x_+,t)-\Delta f(x_-,t)\bigr].
\]

The viscous bracket is nonpositive.  A component ripple can grow only when
the same-field nonlocal pressure-gradient difference overcomes that negative
curvature.  In particular, a constant-pressure shear cannot increase its
crest--trough amplitude.

For the kinetic density \(q=|u|^2/2\), at a local maximum,

\[
\partial_tq
=-u\cdot\nabla p+\nu\Delta q-\nu|\nabla u|^2
\le -u\cdot\nabla p-\nu|\nabla u|^2.
\]

Local kinetic growth likewise requires inward pressure work from the same
whole-field configuration.

The triangular family in F6.13 separates this local event from global
critical growth.  Its vertical crest satisfies

\[
\partial_t(-u_3)(0)=-6\nu a<0
\]

while \(\mathcal H_{1/2}'>0\).  Replacing \(\varepsilon\) by
\(-\varepsilon\) leaves every Fourier magnitude, Sobolev moment, vertical
ripple profile, and velocity value at the crest unchanged, while it reverses
the sign of \(P_H\).  The sign is selected by the oriented phase of the
surrounding advecting mode and its unequal-shell relation to the ripple, not by
the crest height or its local alignment.

Any finite passive vertical ripple depending only on \(x\) can be added to
this same triangular participant.  It can increase pointwise multiplicity and
\(D\) while leaving \(B,P_H,A_H\), and \(J_{\rm rad}\) unchanged.  Thus a
count or height of constructively aligned crests has no production sign until
the surrounding anisotropic VPI relation and the active current carrier are
identified.

### F7.9 Critical production is signed work in the material deformation metric

Use the volume-preserving material map and metric \(F,C\) from F1.11. Pull the
all-chord relative-energy tensor of F7.5 back to label space:

\[
\Theta(a,t)
=F^{-1}\mathsf T_u(X(a,t),t)F^{-T},
\qquad
\Theta_C^\circ
=\Theta-\frac{C:\Theta}{3}C^{-1}.
\]

Since

\[
\dot C=2F^T(S\circ X)F,
\qquad
C^{-1}:\dot C=0,
\]

the exact critical production becomes

\[
P_H
=-\int S:\mathsf T_u\,dx
=-\frac12\int \dot C:\Theta_C^\circ\,da.
\]

Consequently the complete critical-height balance is

\[
\mathcal H_{1/2}'
=-\frac12\int \dot C:\Theta_C^\circ\,da
-\nu\|\Lambda^{3/2}u\|_2^2.
\]

Critical production is therefore signed work between the changing material
metric and the pulled-back anisotropic distribution of relative kinetic energy
across all chords of the same surrounding field. The \(C\)-isotropic part is
annihilated by volume preservation. This is an instantaneous kinematic and
nonlinear identity evaluated on the same VPI solution, not a pressure account,
a viscosity account, or a spectral-width history. The joined critical balance
appears only after the global viscous term is restored. The pullback remains a
global all-chord tensor, not a transport, local-collar, or material-ancestry
law; the viscous term \(D\) also remains global here.

On every interval \(I=[t_0,t_1]\) with
\(\mathcal H_{1/2}(t_1)=2\mathcal H_{1/2}(t_0)>0\),

\[
\int_I\frac{P_H}{\mathcal H_{1/2}}\,dt
=\log2
+\nu\int_I
\frac{\|\Lambda^{3/2}u\|_2^2}{\mathcal H_{1/2}}\,dt.
\]

In particular,

\[
\int_I\int
\frac{\left[-\frac12\dot C:\Theta_C^\circ\right]_+}
{\mathcal H_{1/2}}\,da\,dt
\ge\log2.
\]

This positive material critical-work action is an exact post-readout majorant.
It is not yet a datum-finite currency: no proved theorem attaches its selected
positive density to bounded-overlap fixed-label cores and collars, prevents
future phase selection, or controls repeated reuse along a shrinking history.
That missing incidence theorem is the open
\(MaterialCriticalWorkCoreCollarIncidence.A\) named above.

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
- `theorem-construction/mpp-forward-gold-heat-lag-fresh-linear-service-half-tail-obstruction-20260629.md`, Section 11 Cycle 036 incidence audit
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
- Evan Miller, [*Global regularity for solutions of the Navier--Stokes equation sufficiently close to being eigenfunctions of the Laplacian*](https://arxiv.org/abs/2005.14152), Proceedings of the AMS, Series B 8 (2021), 129--144. F6.19 records the exact interpolation-deficit criterion and its boundary: it constrains a possible breakdown history but supplies no datum bound for the action in F6.10.
- Gaurav Dar, Mahendra K. Verma, and V. Eswaran, [*A new approach to study energy transfer in turbulence*](https://arxiv.org/abs/physics/0006012). Its signed modal and triadic transfers are the classical adjacent coordinates for the signed profile in F6.11; the radial normalization and finite-mass action used here are derived directly above.
- J. D. Gibbon and Charles R. Doering, [*Intermittency and regularity issues in 3D Navier--Stokes turbulence*](https://arxiv.org/abs/math/0406146), Archive for Rational Mechanics and Analysis 177 (2005), 115--150. Its good/bad interval analysis is an adjacent proved renewal framework; it leaves the number and arrangement of dangerous intervals uncontrolled and supplies no datum bound for F6.10 or F6.11.
- Luis Escauriaza, Gregory Seregin, and Vladimír Šverák, [*\(L_{3,\infty}\)-solutions of Navier--Stokes equations and backward uniqueness*](https://www.mathnet.ru/eng/rm609), Russian Mathematical Surveys 58 (2003), 211--250.
