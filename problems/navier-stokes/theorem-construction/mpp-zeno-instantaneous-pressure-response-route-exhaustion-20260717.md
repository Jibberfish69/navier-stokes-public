# Zeno route exhaustion: instantaneous pressure supplies coupling, not memory

Date: 2026-07-17

Status: checked obstruction to using instantaneous pressure as the missing
non-reuse memory only; no Gold closure and no Silver consequence.  This note
does not exhaust the Zeno problem.  The earlier description of the returned
known no-recount wall as an "irreducible obstruction" is retracted; continuation
is recorded in
`mpp-zeno-moving-front-autocatalytic-successor-service-direction-20260717.md`.

## 1. Verdict

The conversation's central correction is valid and important: an
incompressible Navier--Stokes strengthening event is a simultaneous whole-field
event, not a local core waiting one turnover time for a remote supplier.  But
that fact cannot itself provide the missing no-Zeno memory.

After gauge fixation, pressure at time \(t\) is reconstructed from the
current velocity by

\[
-\Delta p(t)=\partial_i\partial_j(u_i(t)u_j(t)).
\tag{PZ.1}
\]

It has no independent stored state.  Consequently a "pressure response left
by event \(k\)" and a "pressure response required by event \(k+1\)" at their
common endpoint are either the same whole-field response or two restrictions
chosen by different selectors.  The first comparison has zero defect; the
second measures a change of observation, not an irreversible change of the
fluid.

The genuine history is carried by the velocity and volume-preserving material
deformation.  Once the pressure proposal is corrected to follow that history,
it becomes the existing joined material stress/deformation route.  That route
has an exact critical-scaling obstruction: raw material stress work and
viscous expenditure are datum-finite but radius-discounted, while the
scale-critical normalization required to charge every critical-height
doubling is an uncontrolled inverse-distance moment.

Thus the pressure insight prunes the search rather than closing it:

> Instantaneous pressure proves that every alleged local source is a row of the
> same current field.  It does not create hysteresis, a favorable sign, a
> turnover-time floor, or a datum-finite no-recount action.

## 2. Exact material stress identity

Let

\[
\sigma=-pI+2\nu S,
\qquad S=\tfrac12(\nabla u+\nabla u^T),
\tag{PZ.2}
\]

and let \(\Omega(t)=X(t,\Omega_0)\) be a material region of one smooth
solution.  Since \(D_tu=\operatorname{div}\sigma\), incompressibility and the
divergence theorem give

\[
\boxed{
\frac d{dt}\int_{\Omega(t)}\frac{|u|^2}{2}\,dx
=
\int_{\partial\Omega(t)}u\cdot\sigma n\,dS
-2\nu\int_{\Omega(t)}|S|^2\,dx.
}
\tag{PZ.3}
\]

Pressure appears only inside the joined boundary stress work.  It is not a
positive interior expenditure.  For nested material regions
\(\Omega_0(t)\subset\Omega_1(t)\), with annulus
\(A(t)=\Omega_1(t)\setminus\overline{\Omega_0(t)}\), integration of (PZ.3)
gives

\[
\boxed{
W_0(J)=W_1(J)-\Delta_JE_A
-2\nu\int_J\int_{A(t)}|S|^2\,dx\,dt.
}
\tag{PZ.4}
\]

This is the exact whole-field relay.  Outer stress work, annular storage, and
annular dissipation remain one telescope.  Taking positive parts destroys the
telescope unless an additional bounded-variation or no-return theorem is
proved.

More explicitly, at every shared material interface the velocity trace is
the same and the two outward normals are opposite.  Hence the two traction
powers cancel pointwise:

\[
u\cdot\sigma n+u\cdot\sigma(-n)=0.
\tag{PZ.4a}
\]

Internal pressure--viscous traction is exchange, not a new positive joined
cost.  Replacing it by an absolute value or trace norm breaks this
cancellation and creates a new quantity not controlled by the energy
identity; refining the annuli can then recount the same exchange.

Equation (PZ.4) exhausts the proposed "pressure back-reaction payment" at the
local-energy level.  The elliptic pressure row changes where energy crosses a
material boundary, but it supplies neither a nonnegative charge nor a
one-way sign.

## 3. Why the successor-response defect is degenerate

Let \(\mathcal R[u(t)]\) denote any complete, gauge-fixed whole-field response
constructed from

\[
(u(t),p(t),S(t),X(t),D_aX(t)).
\]

For adjacent first-hit intervals \(J_k=[t_k,t_{k+1}]\) and
\(J_{k+1}=[t_{k+1},t_{k+2}]\), continuity of the same classical history gives

\[
\mathcal R_k^{\rm out}(t_{k+1})
=\mathcal R[u(t_{k+1})]
=\mathcal R_{k+1}^{\rm in}(t_{k+1}).
\tag{PZ.5}
\]

Hence every full-state same-time response distance is identically zero.

If instead \(\mathcal R_k\) and \(\mathcal R_{k+1}\) are restrictions to
different selected material cores, annuli, chord populations, or active
radii, then a quantity

\[
d(\mathcal R_k(t_{k+1}),\mathcal R_{k+1}(t_{k+1}))
\tag{PZ.6}
\]

requires a selector-dependent identification between different domains.
Nonzero (PZ.6) records reassignment of the readout.  Material ancestry says
where each chosen region came from, but does not bound how many later choices
reuse one parent state or give a canonical inverse disintegration.  Thus
(PZ.6) cannot be promoted to physical non-reuse.

There is one lawful repair: follow the same material family between two
different times.  Its change is then encoded by \(D_aX\), the pulled-back
velocity, and the stress-work identity (PZ.3).  This deletes the proposed new
pressure currency and returns to material deformation plus viscous
expenditure.

A traction norm also requires a pressure-gauge quotient.  The power pairing
in (PZ.3) is gauge invariant because a closed material surface has
\(\int_{\partial\Omega}u\cdot n=0\).  A raw norm of \(\sigma n\) is not
automatically gauge invariant and cannot be used as a physical distance
before that quotient is fixed.

## 4. Critical-scaling no-go for raw material payment

Under fixed-viscosity Navier--Stokes scaling,

\[
u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),
\qquad
p_\lambda(x,t)=\lambda^2p(\lambda x,\lambda^2t),
\tag{PZ.7}
\]

one has

\[
\sigma_\lambda=\lambda^2\sigma(\lambda x,\lambda^2t),
\qquad
\Omega_\lambda(t)=\lambda^{-1}\Omega(\lambda^2t).
\tag{PZ.8}
\]

Consequently, on corresponding material intervals,

\[
\boxed{
\int\!\int_{\partial\Omega_\lambda}
u_\lambda\cdot\sigma_\lambda n\,dS\,dt
=\lambda^{-1}
\int\!\int_{\partial\Omega}u\cdot\sigma n\,dS\,dt,
}
\tag{PZ.9}
\]

and

\[
\boxed{
2\nu\int\!\int_{\Omega_\lambda}|S_\lambda|^2\,dx\,dt
=\lambda^{-1}
2\nu\int\!\int_\Omega|S|^2\,dx\,dt.
}
\tag{PZ.10}
\]

The critical height

\[
H=\tfrac12\|\Lambda^{1/2}u\|_2^2
\tag{PZ.11}
\]

is invariant under (PZ.7).  Thus, whenever a smooth base history has an
\(H\)-doubling, every corresponding rescaled history has the same critical
doubling while its raw integrated material stress work and irreversible
expenditure are multiplied by \(\lambda^{-1}\).  The local stress identity
alone therefore cannot supply a datum-independent scale-uniform positive
quantum.  This scaling comparison does not refute a genuinely datum-anchored
same-history theorem; it identifies the extra content that such a theorem
would have to provide.

If the active physical radius is \(r\), then \(r_\lambda=r/\lambda\).
Dividing (PZ.9)--(PZ.10) by \(r_\lambda\) restores critical invariance:

\[
\frac{\mathfrak D_{r_\lambda}}{r_\lambda}
=\frac{\mathfrak D_r}{r}.
\tag{PZ.12}
\]

But the energy identity bounds only \(\sum\mathfrak D_{r_k}\), not
\(\sum\mathfrak D_{r_k}/r_k\).  For a geometric chain
\(r_k=2^{-k}r_0\), the exact heat-scale arithmetic permits

\[
\sum_kr_k<\infty,
\qquad
\sum_k\frac{r_k}{r_k}=\infty.
\tag{PZ.13}
\]

This does not construct a singular Navier--Stokes history.  It proves that
finite raw stress work, finite dissipation, non-reuse of already dissipated
energy, and one heat clock per scale cannot supply the critical no-Zeno sum.
The missing inverse-distance first moment is not an omitted pressure term;
pressure is already present in (PZ.9).

Fixed exterior response traces also fail to observe critical concentration.
Let \(v\in C_c^\infty(B_1;\mathbb R^3)\) be divergence free and put

\[
v_r(x)=r^{-1}v(x/r).
\tag{PZ.13a}
\]

Then \(\|v_r\|_{\dot H^{1/2}}=\|v\|_{\dot H^{1/2}}\).  On a fixed
surface \(\Gamma_R\), \(r<R/2\), both \(v_r\) and its viscous stress vanish.
If \(q\) is the pressure generated by \(v\), then
\(p_r(x)=r^{-2}q(x/r)\); the degree-minus-three far-field pressure kernel
gives

\[
p_r|_{\Gamma_R}=O(rR^{-3}).
\tag{PZ.13b}
\]

Thus the complete fixed-exterior velocity/traction trace tends to zero while
critical height stays fixed.  A surface at distance \(O(r)\) may see the
concentration, but selecting that moving surface and proving that it retains
the critical doubling is exactly the missing localization/tightness theorem.

### 4.1 Comparison-only pressure-free mixing test

The periodic 2D3C class supplies a lawful comparison test, not a live Clay
participant.  On \(\mathbb T^3\), let

\[
u_A(t,x,y,z)
=\bigl(0,Ae^{-\nu t}\sin x,Bw_A(t,x,y)\bigr),
\qquad p=0,
\tag{PZ.13c}
\]

where

\[
\partial_tw_A+Ae^{-\nu t}\sin x\,\partial_yw_A
=\nu\Delta_{x,y}w_A,
\qquad w_A(0,x,y)=\sin y.
\tag{PZ.13d}
\]

This is an exact globally smooth incompressible Navier--Stokes solution.  In
the fast time \(\tau=At\), as \(A\to\infty\),

\[
w_A(\tau/A,x,y)
\longrightarrow
\sin(y-\tau\sin x)
\tag{PZ.13e}
\]

on every bounded \(\tau\)-interval.  The limiting critical-height factor of
this component is

\[
q(\tau)=\sum_{n\in\mathbb Z}\sqrt{n^2+1}\,J_n(\tau)^2.
\tag{PZ.13f}
\]

Using

\[
\sum n^2J_n(\tau)^2=\frac{\tau^2}{2},
\qquad
\sum n^4J_n(\tau)^2=\frac{3\tau^4+4\tau^2}{8},
\tag{PZ.13g}
\]

Paley--Zygmund gives

\[
q(\tau)
\ge\frac{\tau^3}{4(3\tau^2+4)},
\qquad q(50)>4.
\tag{PZ.13h}
\]

Taking \(B=A^2\), the transported component dominates the total critical
height, so for all sufficiently large \(A\) the exact smooth solution has an
\(H\)-doubling before \(50/A\).  Its fraction of kinetic energy dissipated on
that interval is \(O(\nu/A)\), pressure is identically zero, and the normalized
pulled-back transported profile tends to its unchanged initial profile.  The
growth is carried by material shear/mixing geometry.  A response metric that
forgets that geometry misses the doubling; a metric that retains it returns to
the deformation-action/BV problem.

By the active periodic-2D3C quarantine, (PZ.13c)--(PZ.13h) is comparison-only:
it is not decaying-\(\mathbb R^3\) data, a terminal mechanism, or Gold premise
weight.  It does, however, refute any domain-insensitive inference from
"instantaneous pressure response plus small relative viscous loss" to
"critical height cannot double."  An \(\mathbb R^3\)-specific closure would
need additional global tightness not present in the local stress identity.

## 5. Strongest current whole-field balance and its terminal branch

The complete critical chord product developed in the proved Cycle 115
identity and the unpromoted Cycle 159 candidate is the strongest version of
the conversation's whole-field idea present in the current worktree.  With

\[
Y=H\mathscr M,
\qquad
Y'+\nu\mathcal D_Y=\mathcal S_Y,
\qquad
\mathcal D_Y\ge c_Y I^2,
\tag{PZ.14}
\]

the candidate Cycle 159 paraproduct estimate gives

\[
|\mathcal S_Y|
\le C\sqrt{\mathscr M}\,\mathcal D_Y.
\tag{PZ.15}
\]

This yields an exact absorption basin when
\(C\sqrt{\mathscr M}<\nu\).  It does not control the only remaining terminal
branch,

\[
\mathscr M(t)\ge c\nu^2
\quad\hbox{throughout the terminal tail}.
\tag{PZ.16}
\]

In that branch (PZ.15) places the same uncontrolled critical heat on both
sides.  It gives no datum-finite upper bound for
\(\int\mathcal D_Y\) or \(\int[\mathcal S_Y]_+\).

No universal strict improvement

\[
\mathcal S_Y\le(\nu-\delta)\mathcal D_Y
\tag{PZ.17}
\]

can hold on all active smooth states.  For any divergence-free Schwartz seed
\(\phi\) with positive product current
\(s=\mathcal S_Y(\phi)>0\) and heat
\(d=\mathcal D_Y(\phi)>0\), amplitude scaling gives

\[
\mathcal S_Y(a\phi)=a^5s,
\qquad
\mathcal D_Y(a\phi)=a^4d.
\tag{PZ.18}
\]

Choosing \(a=\nu d/s\) produces a smooth same-field initial state with

\[
\mathcal S_Y(a\phi)=\nu\mathcal D_Y(a\phi)>0.
\tag{PZ.19}
\]

Thus instantaneous whole-field source--heat matching is lawful.  Any closure
must be temporal and same-history: it must prove that such matching cannot be
renewed indefinitely from one datum.  The instantaneous elliptic pressure
constraint cannot prove that by itself.

Cycle 159 is presently an unpromoted theorem-construction surface.  Equations
(PZ.14)--(PZ.16) state the consequence relevant to this route without giving
that surface canonical ontology status.

## 6. Exact obstruction to pressure as the missing memory

Every first critical-height doubling already has the exact complete-pair
charge

\[
\int_{J_k}\int [g_{ab}]_+\,d\Pi_t(a,b)\,dt\ge\log2,
\tag{PZ.20}
\]

where \(g_{ab}\) contains material compression and the joined nonlocal
pressure--viscous relative acceleration.  What is missing is not another
positive event identity.  It is a theorem converting the future-selected
pair incidences in (PZ.20) into a datum-finite, scale-critical measure with
bounded descendant multiplicity.

Precisely, a successful pressure-completed no-Zeno proof must construct a
nonnegative measure \(\mu_*\) on the one original material history such that

\[
\boxed{
\mu_*([0,T_*])\le C(u_0,\nu),
\qquad
\mu_*(J_k)\ge c_*>0
\quad\hbox{for every first-hit doubling }J_k,
}
\tag{PZ.21}

and prove that the event restrictions are one bounded-multiplicity
disintegration of \(\mu_*\), not separately normalized future selectors.
The measure must be scale critical.  Raw kinetic-energy expenditure cannot be
\(\mu_*\) by (PZ.9)--(PZ.13); the inverse-distance valuation has the right
scale but no datum-finite total; pressure has no independent positive measure;
and material ancestry alone has no multiplicity bound.

Equivalently, the unresolved theorem is a same-history stopping-time/trace or
Carleson-capacity inequality that prevents successive pair-dependent
first-entry families from hiding a fresh unit of (PZ.20) in ever shorter,
ever finer windows.

This is not a new reduction created by the present note.  In the repo's
parent--child language it is the already isolated
`CriticalWeightedParentChildResetCarleson.A`: raw reset distance admits the
orthogonal half-tail

\[
\nu_\ell=\frac{2^{-\ell}}{\ell+1},
\qquad
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{PZ.21a}
\]

The critical weight kills that countertest locally but moves the entire
burden into its original-history Carleson root bound.  Defining the weight
from future selected descendants is circular.  The exact prior audit is
`mpp-forward-gold-parent-child-reset-critical-weight-countertest-20260627.md`;
the shrinking-core physical form is
`mpp-forward-gold-shrinking-core-critical-reset-carleson-sharpener-20260704.md`.
The instantaneous-pressure proposal therefore returns to a named open wall
rather than making that wall smaller.

The same defect appears in compactness form.  A shrinking critical
\(\dot H^{1/2}\) profile can converge weakly to zero while its fixed exterior
response traces vanish as in (PZ.13a)--(PZ.13b).  Therefore a zero-cost limit
does not retain the factor-two record automatically.  Proving record retention
requires compactness modulo scale and location plus material-surface
observability.  Assuming that passage inside a rigidity argument assumes the
missing bridge.

This is the exact implication failure exposed by the instantaneous-pressure
proposal:

\[
\boxed{
\text{whole-field instantaneous coupling}
\not\Rightarrow
\text{datum-finite critical temporal non-recounting}.
}
\tag{PZ.22}
\]

Proving (PZ.21) would solve the Zeno problem.  Deriving it from the pressure
response alone would be circular, because the pressure response supplies
only the current-state constraint already contained in the event charge.

## 7. Consequence for the pressure-memory proposal

The pressure-response route is exhausted only in its proposed form:

1. A same-time full response defect vanishes identically.
2. A selector-restricted response defect charges observation changes.
3. A same-material two-time repair is genuine but reduces to stress work and
   deformation.
4. Raw stress/deformation expenditure is datum-finite but subcritical.
5. Its critical inverse-distance valuation has no known datum-finite total.
6. Pointwise source absorption cannot cover the super-threshold active branch.
7. The only remaining closure is the already open scale-critical
   bounded-multiplicity stopping-time/trace inequality (PZ.21), equivalently
   `CriticalWeightedParentChildResetCarleson.A`; the proposed pressure defect
   supplies no new estimate toward its root bound.

This list does not exhaust the Zeno problem and does not license stopping at
the already known Carleson/no-recount wall.  It removes one proposed carrier:
instantaneous pressure cannot itself store historical non-reuse.  The physical
no-reset conclusion remains fixed, and the search must continue in the actual
successor dynamics of the velocity field.  The moving-front continuation note
tests that dynamics before any claim of irreducibility or completion.
