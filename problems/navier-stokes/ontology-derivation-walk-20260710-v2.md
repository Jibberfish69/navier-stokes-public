---
artifact_id: participation-derivation-walk-20260710-v2
created: 2026-07-10
problem: navier-stokes
status: comprehensive-canonical-f1-f7-dependency-walk; truth-tested; candidates-unpromoted; mpp-open
supersedes_for_status:
  - problems/navier-stokes/ontology-derivation-walk-20260710.md
canonical_source: problems/navier-stokes/ontology.md
exact_branch_source: problems/navier-stokes/theorem-construction/mpp-participation-first-dependency-calculus-and-pressure-graph-falsification-20260710.md
completion_truth: >-
  Complete for the declared finite census: all 24 installed F1-F7 facts are
  assigned parents, an exact derivation signature, participant-side structural
  tests, a counterfactual classification, and an honest status. The walk also
  integrates the separately proved view, stress-pressure, spatial-localizer,
  and pressure-graph results and records four direct v2 candidates: the
  pressure size refinement, two further refinements, and one periodic
  extension. It is
  not a claim to enumerate every mathematical consequence of Navier-Stokes.
  No candidate is promoted, no Gold or Silver burden is closed, and the L1-L8
  literature queue from v1 carries no premise weight here.
---

# Participation-first derivation walk, corrected v2

## 1. Root and classification rule

The participant is one datum-anchored smooth solution on decaying
\(\mathbb R^3\) or periodic \(\mathbb T^3\), with fixed \(\nu>0\):

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0.
\tag{V2.0}
\]

Every derivative, parcel, band, localization, norm, pressure row, and material
history below belongs to this one \((u,p)\). The free counterfactual is an
arbitrary vector field whose stress, pressure, derivative rows, and regional
accounts may be posed independently.

The first walk used the sentence “every hard fact deletes a freedom.” That
quantifier is false. The corrected walk has three outcomes:

1. **Deleted freedom:** participation forbids something the free
   counterfactual can do. A matched free-side witness is required.
2. **Surviving freedom or boundary:** exact participants realize competing
   signs or outcomes, so participation leaves the freedom open.
3. **Generic/provenance identity:** the statement is true but does not
   distinguish the participant from generic calculus. It carries no ontology
   novelty by itself.

Some nodes also use a declared analytic or classical theorem beyond formal
PDE algebra. Those inputs are marked rather than laundered into “because one
participant.”

## 2. Dependency graph

The canonical dependency skeleton is

\[
\begin{aligned}
P0&\longrightarrow F1.1,F1.2,F1.3,F2.1,F3.1,\\
(P0,F1.2)&\longrightarrow F2.3,\\
(P0,F1.2,F2.1)&\longrightarrow F2.2,
\qquad F2.1\longrightarrow F2.4,\\
F3.1&\longrightarrow F3.2,
\qquad (P0,F3.1,F5.1)\longrightarrow F3.3,\\
(P0,F1.2,F2.1)&\longrightarrow F4.1\longrightarrow F4.2
\longrightarrow F4.3^{\dagger},\\
P0&\longrightarrow F5.1,
\qquad (P0,F1.1)\longrightarrow F5.2,
\qquad (P0,F1.3)\longrightarrow F5.3,
\qquad (P0,F2.1,F4.1)\longrightarrow F5.4,\\
F4.1&\longrightarrow F6.1,
\qquad (F2.1,F4.1)\longrightarrow F6.2,
\qquad (F1.2,F2.2,F5.1)\longrightarrow F6.3,\\
F2.1&\longrightarrow F7.1,
\qquad (F2.1,F6.1,F7.1)\longrightarrow F7.2,
\qquad (F1.2,F2.1)\longrightarrow F7.3,
\qquad (F1.2,F3.3,F4.1)\longrightarrow F7.4.
\end{aligned}
\tag{V2.1}
\]

The dagger marks BKM as a classical continuation theorem, not a consequence
of differentiation alone. The graph records logical dependence, not section
order.

## 3. Constitutive participation: F1

### F1.1 — one momentum and stress law

**Parents.** P0 and incompressibility.

**Derivation.** With

\[
S=\frac12(\nabla u+\nabla u^T),
\qquad \sigma=-pI+2\nu S,
\]

the identity \(\nabla\cdot(2S)=\Delta u\) gives

\[
\partial_tu+\nabla\cdot(u\otimes u)=\nabla\cdot\sigma.
\tag{V2.2}
\]

Reynolds transport on a material region \(A(t)\) yields

\[
\frac d{dt}\int_{A(t)}u\,dx
=\int_{\partial A(t)}\sigma n\,dS.
\tag{V2.3}
\]

**Truth tests.** On a fixed Eulerian region \(E\), the correct flux is
\((\sigma-u\otimes u)n\); this falsifies the unqualified traction-only claim
in v1. Constant flow gives zero stress divergence. Forcing would add a volume
term, and a bounded domain retains boundary traction.

**Counterfactual.** On \(\mathbb T^3\), let
\(g=e_2\sin x_1\) and pose the free history \(u^{free}=t g\), \(p=0\),
\(\sigma=0\). At \(t=0\), its momentum acceleration is \(g\ne0\) while its
posed stress divergence is zero. Participation deletes this independent
regional momentum and separately owned pressure/viscous stress freedom.

**Status.** Installed exact constitutive identity. Verdict: **caused**.

### F1.2 — whole-field pressure response

**Parents.** P0.

**Derivation.** Taking divergence of `(V2.0)` gives

\[
-\Delta p
=\partial_i\partial_j(u_i u_j)
=\partial_i u_j\,\partial_j u_i
=|S|^2-\frac12|\omega|^2.
\tag{V2.4}
\]

On decaying \(\mathbb R^3\), after gauge fixation,

\[
p=R_iR_j(u_i u_j),
\qquad
\|p\|_{L^q}\le C_q\|u\|_{L^{2q}}^2,
\quad 1<q<\infty.
\tag{V2.5}
\]

The estimate uses the Calderon--Zygmund theorem; it has no asserted strong
endpoint at \(q=1\) or \(q=\infty\).

**Truth tests.** A gauge shift changes \(p\) but not \(\nabla p\) or
\(\nabla^2p\). A shear has zero pressure source. Taylor--Green data give a
sign-changing source. Forcing and boundaries change the elliptic data.

**Counterfactual.** Keeping \(u\) and replacing \(p\) by \(p+\phi\) for a
nonconstant \(\phi\) is available to a free pair and violates `(V2.4)`.
Participation deletes independent pressure ownership. It creates no universal
favorable sign.

**Status.** F1.2 installed; `(V2.5)` is a proved candidate refinement.
Verdict: **caused**.

### F1.3 — one volume-preserving material deformation

**Parents.** P0 and a smooth material flow.

**Derivation.** For \(F=D_aX\),

\[
\dot F=(\nabla u)(X,t)F,
\qquad
\frac d{dt}\det F=(\nabla\cdot u)(X,t)\det F=0.
\tag{V2.6}
\]

Thus \(\det F=1\). If \(s_i\) are its singular values, then

\[
\sum_i\log s_i=0,
\qquad
\sum_i[\partial_t\log s_i]_+
=\sum_i[-\partial_t\log s_i]_+.
\tag{V2.7}
\]

**Truth tests.** Rigid rotation gives \(s_i=1\). Planar trace-free strain
gives reciprocal extension/compression. Repeated singular values do not supply
a named direction. Weak solutions without the required flow map lie outside
scope.

**Counterfactual.** \(X(a,t)=e^{\alpha t}a\) has
\(\det F=e^{3\alpha t}\). Participation deletes parcel-volume change and
simultaneous extension in every material direction.

**Status.** Installed exact material identity. It gives no theorem locating
the compression in a surrounding annulus. Verdict: **prevented** for volume
change.

## 4. One-field coherence and nonlocal reconstruction: F2

### F2.1 — strain and vorticity are compatible derivatives

**Parents.** P0 and the definitions of \(S\) and \(\omega\).

**Derivation.** Vector calculus plus incompressibility gives

\[
\operatorname{tr}S=0,
\qquad \nabla\cdot\omega=0,
\qquad -\Delta u=\nabla\times\omega.
\tag{V2.8}
\]

Biot--Savart reconstructs \(u\), hence \(S\), after decay on
\(\mathbb R^3\) or fixing the torus mean.

**Truth tests.** The torus zero mode is not recovered from \(\omega\). Remote
vorticity can alter \(S(x_0)\) while \(\omega(x_0)\) is fixed. Boundaries
introduce harmonic fields. Planar and Beltrami fields satisfy the same
compatibility in special forms.

**Counterfactual.** The periodic posed pair

\[
S=0,
\qquad \omega=e_3\sin x_1
\]

cannot come from one velocity gradient: a periodic field with \(S=0\) is a
rigid translation and has \(\omega=0\). Participation deletes independent
strain, vorticity, and eigenframe ownership.

**Status.** Installed exact identities plus standard Hodge reconstruction.
Verdict: **prevented** for incompatible pairs.

### F2.2 — decompositions remain coordinates of one field

**Parents.** P0, F1.2, and F2.1.

**Derivation.** For a scalar constant-coefficient view \(A\), set

\[
v=Au,
\qquad q=Ap,
\qquad \tau_A=A(u\otimes u)-v\otimes v.
\]

Then

\[
\partial_tv+\nabla\cdot(v\otimes v)+\nabla q
=\nu\Delta v-\nabla\cdot\tau_A,
\tag{V2.9}
\]

\[
-\Delta(q-\pi_v)=\partial_i\partial_j\tau_{A,ij},
\qquad
-\Delta\pi_v=\partial_i\partial_j(v_iv_j).
\tag{V2.10}
\]

The same tensor owns the evolution and pressure defects.

**Truth tests.** \(A=I\) makes the defect vanish. A two-mode periodic field
creates nonzero projected sum-frequency convection and nonzero cross-pressure.
A shear or invariant single mode is an exceptional exact subspace. Replacing
one complementary component by its negative reverses cross-pressure.

**Counterfactual.** The free triple

\[
v=0,\qquad q=0,\qquad \tau_{11}=\cos x_1
\tag{V2.11}
\]

keeps an evolution-stress defect while omitting the pressure demanded by
\(\partial_i\partial_j\tau_{ij}=-\cos x_1\). Participation deletes that
separation.

**Status.** F2.2 installed. `(V2.9)`--`(V2.10)` are a proved candidate
refinement. Verdict: **caused**; live effect support only.

### F2.3 — no finite propagation or universal packet autonomy

**Parents.** P0, F1.2, viscosity, and the Leray projection.

**Derivation.** A nonzero compactly supported \(f\) cannot leave
\(e^{\nu t\Delta}f\) compactly supported for \(t>0\), because the heat output
is analytic. For a scalar view,

\[
\nabla\cdot(\chi u)=u\cdot\nabla_x\chi.
\tag{V2.12}
\]

Universal divergence preservation inside the scalar-multiplier class gives
\(\chi(t,x)=c(t)\). On \(\mathbb T^3\), requiring the scalar map
\(u\mapsto c(t)u\) to produce another unforced same-viscosity participant for
every \(u\) gives

\[
\dot c\,u+c(c-1)\mathbb P((u\cdot\nabla)u)=0.
\tag{V2.13}
\]

Constant solutions force \(\dot c=0\), and the two-mode nonlinear witness
forces \(c(c-1)=0\). The only universal scalar-multiplier participant maps are
therefore \(\chi\equiv0\) and \(\chi\equiv1\). This says nothing against other
Navier--Stokes symmetries such as spatial translations.

**Truth tests.** Zero data remain zero. A time-only \(c(t)\) preserves
divergence but generally fails the full PDE. A solution-adapted spatial
\(\chi\) may satisfy \(u\cdot\nabla\chi=0\) for one field, while its exact
collar and Leray rows remain. Bounded domains require their own heat and
pressure data.

**Counterfactual.** Pure transport can retain compact support, and an
unconstrained vector field can be cut by an arbitrary scalar window.
Participation deletes universal finite-speed isolation and scalar packet
autonomy.

**Status.** F2.3 installed; `(V2.12)`--`(V2.13)` give a proved candidate
negative fact. Verdict: **prevented**.

### F2.4 — quartic far-strain cancellation

**Parents.** F2.1 plus the stated decaying \(\mathbb R^3\), support, and
integrability hypotheses.

**Derivation.** If the vorticity is supported in \(B(x_0,L)\), then for the
Biot--Savart strain kernel \(K_2\),

\[
\nabla u(x)
=\int\bigl[K_2(x-y)-K_2(x-x_0)\bigr]\omega(y)\,dy.
\tag{V2.14}
\]

The mean term vanishes and the kernel derivative is order \(R^{-4}\), so

\[
|\nabla u(x)|
\le C\frac{L\|\omega\|_1}{R^4},
\qquad R=|x-x_0|\ge2L.
\tag{V2.15}
\]

On this compact-support scope, zero mean is already forced by

\[
\int\omega_j\,dx
=\int\partial_i(x_j\omega_i)\,dx=0.
\tag{V2.16}
\]

**Truth tests.** An unconstrained compact vector source with nonzero mean has
the raw \(R^{-3}\) term. Additional moment cancellation can improve the rate.
Scaling preserves `(V2.15)`. Positive-time Navier--Stokes vorticity is not
automatically compactly supported.

**Counterfactual.** A compact vector source \(g=e_1\phi\) with
\(\int\phi=1\) retains a monopole. It is deliberately outside the
divergence-free vorticity class. Participation plus compatibility deletes the
monopole on the stated compact-support scope.

**Status.** F2.4 installed. `(V2.16)` gives the elementary compact-support
proof; N2 below proves the sharper candidate hypothesis refinement that
\(L^1\) plus distributional divergence freedom already forces zero mean.
Verdict: **caused** at the stated scope.

## 5. Scaling and scale-selective viscosity: F3

### F3.1 — fixed-viscosity parabolic scaling

**Parents.** P0.

**Derivation.** Direct substitution shows

\[
u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),
\qquad
p_\lambda(x,t)=\lambda^2p(\lambda x,\lambda^2t)
\tag{V2.17}
\]

solves the same equation with the same \(\nu\); every term scales by
\(\lambda^3\).

**Truth tests.** Amplitude-only scaling \(cu\) leaves a generic
\(c(c-1)\) nonlinear defect. A fixed torus or bounded domain changes under
continuous scaling. The rescaled field has a different datum and history.

**Counterfactual classification.** The symmetry fixes the relative amplitude,
space, and time exponents. Its substitution is generic PDE algebra; the
fixed-viscosity relation is the participation-specific constraint.

**Status.** Installed exact symmetry. Verdict: **caused** at matching domain
scope.

### F3.2 — finite energy is supercritical

**Parents.** F3.1 and norm homogeneity.

**Derivation.** Change of variables gives

\[
\|u_\lambda\|_2^2=\lambda^{-1}\|u\|_2^2,
\qquad
\|u_\lambda\|_{\dot H^{1/2}}=\|u\|_{\dot H^{1/2}}.
\tag{V2.18}
\]

**Truth tests.** Letting \(\lambda\to\infty\) decreases energy while
preserving critical size. This is a family test, not concentration along one
history. It does not apply on one fixed torus.

**Counterfactual classification.** Norm homogeneity has no matched free-side
witness; this is a proof-currency boundary. In particular, universal global
regularity from an absolute small-\(L^2\) threshold would scale to every
finite-energy datum and would not be a smaller theorem.

**Status.** Installed exact scaling consequence; generic/provenance rather
than new deleted-freedom ontology.

### F3.3 — viscosity is scale selective

**Parents.** P0, F3.1, and F5.1 for the Galerkin continuation statement.

**Derivation.** Fourier transformation gives the multiplier
\(-\nu|k|^2\) and heat time \(r^2/\nu\). For an energy-preserving
divergence-free Galerkin cutoff, the finite-dimensional ODE inherits the
energy bound; bounded finite-dimensional solutions continue globally.

**Truth tests.** The zero mode is undamped. An isolated shear or helical mode
decays exactly. Higher frequencies pay stronger damping. A non-energy-
preserving truncation lies outside the theorem. No cutoff-uniform
continuation estimate is obtained.

**Counterfactual.** An inviscid or freely prescribed Fourier amplitude can
persist without the quadratic loss. Participation deletes unpriced
high-frequency growth in the unforced equation, while leaving nonlinear
replenishment possible.

**Status.** Installed exact multiplier fact plus finite-dimensional ODE
continuation. Verdict: **prevented** for fixed-cutoff blowup.

## 6. Derivative tower and continuation history: F4

### F4.1 — first-rung laws

**Parents.** P0, F1.2, and F2.1.

**Derivation.** Writing \(A=\nabla u\) and differentiating gives

\[
D_tA+A^2+\nabla^2p=\nu\Delta A.
\tag{V2.19}
\]

Symmetric and curl parts give

\[
D_tS+S^2+W^2+\nabla^2p=\nu\Delta S,
\qquad
D_t\omega=S\omega+\nu\Delta\omega.
\tag{V2.20}
\]

**Truth tests.** Planar fields have \(S\omega=0\). Shears suppress the
nonlinear row. The elliptic pressure Hessian is simultaneous, not delayed.
Affine examples test only local/formal claims unless they meet the global
surface.

**Counterfactual.** Pose \(u=0\), \(p=0\), but an independent gradient row
\(A(t)=t\operatorname{diag}(1,-1,0)\). It cannot equal \(\nabla u\) and does
not satisfy `(V2.19)`. A delayed pressure row gives the same type mismatch.
Participation deletes these independent dynamics.

**Status.** Installed exact evolution. Verdict: **caused**.

### F4.2 — every higher rung carries the same law

**Parents.** F4.1.

**Derivation.** Commuting \(\partial^\alpha\) through the equation yields

\[
(D_t-\nu\Delta)\partial^\alpha u+\nabla\partial^\alpha p
=-[\partial^\alpha,u\cdot\nabla]u.
\tag{V2.21}
\]

**Truth tests.** \(\alpha=0\) returns P0; \(|\alpha|=1\) returns F4.1. The
composition law
\([L,AB]=[L,A]B+A[L,B]\) catches any lost parent commutator.

**Counterfactual.** With \(u=0\), freely prescribe one nominal higher rung as
\(J_\alpha(t,x)=t e_2\sin x_1\). It is not \(\partial^\alpha u\) and need not
obey `(V2.21)`. Participation deletes independent rung data.

**Status.** Installed exact commutator law. Verdict: **caused**.

### F4.3 — BKM continuation

**Parents.** The same classical solution and derivative tower, plus the BKM
continuation theorem.

**Imported theorem.** If

\[
\int_0^{T_*}\|\omega(t)\|_\infty\,dt<\infty,
\]

the same smooth solution continues through \(T_*\). Breakdown therefore
requires the integral to diverge.

**Truth tests.** One large terminal snapshot proves nothing about the time
integral. The implication is sufficient continuation, not an equivalence of
mechanisms. The CLM model is only a family-level contrast and is not a matched
free-side witness for BKM.

**Counterfactual classification.** No exact matched free witness is installed.
This node is a classical analytic theorem about the participant, not a formal
consequence of “one field.”

**Status.** Installed classical theorem. Verdict: **prevented** for breakdown
with finite accumulated vorticity action.

## 7. Energy, material exchange, circulation, and helicity: F5

### F5.1 — global kinetic energy

**Parents.** P0.

**Derivation.** Pair `(V2.0)` with \(u\), integrate transport and pressure
away, and integrate the Laplacian by parts:

\[
\frac12\|u(t)\|_2^2
+\nu\int_0^t\|\nabla u(s)\|_2^2\,ds
=\frac12\|u_0\|_2^2.
\tag{V2.22}
\]

**Truth tests.** Constant periodic flow has zero dissipation, so the correct
word is non-increasing. Forcing or boundary work changes the balance.
Leray--Hopf solutions give an inequality. F3.2 blocks energy-only critical
control.

**Counterfactual.** A freely increasing amplitude \(a(t)v(x)\) can create
unforced energy. Participation deletes unforced global kinetic-energy growth.

**Status.** Installed exact smooth identity. Verdict: **prevented**.

### F5.2 — local energy and material traction work

**Parents.** P0 and F1.1. Global integration recovers F5.1; F5.1 is not a
premise of the local identity.

**Derivation.** Contracting the momentum law with \(u\) gives

\[
\partial_te+\nabla\cdot\bigl((e+p)u-2\nu Su\bigr)
=-2\nu|S|^2.
\tag{V2.23}
\]

For a material region,

\[
\frac d{dt}\int_{A(t)}e\,dx
+2\nu\int_{A(t)}|S|^2\,dx
=\int_{\partial A(t)}u\cdot\sigma n\,dS.
\tag{V2.24}
\]

**Truth tests.** A fixed region retains advective flux. Global integration
recovers F5.1. The interface work has no universal sign. Gauge shifts cancel
because material incompressibility gives zero net volume flux.

**Counterfactual.** Pose a free regional ledger with \(E_A(t)=t\), zero
dissipation, and zero boundary stress work. It violates `(V2.24)` exactly.
Participation deletes packet-energy autonomy.

**Status.** Installed exact local balance. Verdict: **caused** for the
balance; the signed traction work remains **open**.

### F5.3 — material volume persists while circulation is viscously mutable

**Parents.** P0 and F1.3.

**Derivation.** Differentiating a material line integral gives

\[
\frac d{dt}\oint_{C(t)}u\cdot d\ell
=\oint_{C(t)}\left(D_tu+(\nabla u)^Tu\right)\cdot d\ell
=\nu\oint_{C(t)}\Delta u\cdot d\ell.
\tag{V2.25}
\]

Pressure and kinetic terms are exact gradients.

**Truth tests.** \(\nu=0\) recovers Kelvin conservation. Orientation reversal
changes the sign. A viscous shear gives a nonzero signed decay. A fixed loop is
not a material loop. Smooth material-loop existence is required.

**Counterfactual.** Rotational forcing with nonzero loop integral can create
circulation independently. Participation deletes pressure/convection
circulation production, while viscosity leaves the sign free.

**Status.** Installed exact material identity. Verdict: **caused** for the
formula, **open** for its sign.

### F5.4 — helicity retains both signs

**Parents.** P0, F2.1, and the vorticity evolution in F4.1.

**Derivation.** Differentiating helicity and integrating by parts gives

\[
\frac d{dt}\int u\cdot\omega\,dx
=-2\nu\int\omega\cdot(\nabla\times\omega)\,dx.
\tag{V2.26}
\]

**Participant-side truth tests.** On \(\mathbb T^3\),

\[
u_+=(0,\cos x_1,-\sin x_1),
\qquad \nabla\times u_+=u_+,
\]

\[
u_-=(0,\cos x_1,\sin x_1),
\qquad \nabla\times u_-=-u_-.
\tag{V2.27}
\]

The exact solutions \(e^{-\nu t}u_\pm\) have positive helicity decreasing and
negative helicity increasing. A shear supplies the zero case.

**Counterfactual classification.** No deleted freedom and no free-side witness
is needed. Exact participants realize both monotonic directions.

**Status.** Installed surviving-freedom boundary. Verdict: **permitted** for
both signs; no universal helicity monotonicity.

## 8. Production and scale interaction: F6

### F6.1 — vortex stretching is enstrophy production

**Parents.** F4.1.

**Derivation.** Pair the vorticity equation with \(\omega\):

\[
\frac12\frac d{dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=\int\omega\cdot S\omega\,dx.
\tag{V2.28}
\]

**Truth tests.** Planar fields have \(S\omega=0\). For any smooth 3D datum
with nonzero production, replacing \(u_0\) by \(-u_0\) reverses the cubic
integral at the initial time. The term is not a selected-scale energy flux.

**Counterfactual.** The free constant pair
\(S=\operatorname{diag}(1,-1,0)\), \(\omega=e_1\) assigns production \(1\)
without being a compatible periodic or decaying velocity gradient.
Participation deletes independence of the factors but preserves the
production sign.

**Status.** Installed exact balance. Verdict: **caused** for the account,
**permitted** for either sign.

### F6.2 — strain and vorticity share one signed global account

**Parents.** F2.1 and F4.1.

**Derivation.** Integration by parts gives

\[
\int|S|^2\,dx=\frac12\int|\omega|^2\,dx,
\qquad
\int\left(|S|^2-\frac12|\omega|^2\right)dx=0.
\tag{V2.29}
\]

The Betchov identity gives

\[
\int\operatorname{tr}(S^3)\,dx
=-\frac34\int\omega\cdot S\omega\,dx.
\tag{V2.30}
\]

**Truth tests.** Planar fields make both cubic sides zero. The trace-free
Newton identity \(\operatorname{tr}(S^3)=3\det S\) checks the strain side.
The identity is signed; it gives no estimate for either positive part or total
variation. Replacing \(u\) by \(-u\) reverses both sides.

**Counterfactual.** On the free periodic counterfactual, take constant
\(S=\operatorname{diag}(2,-1,-1)\) and \(\omega=e_1\). Then
\(\operatorname{tr}(S^3)=6\) while
\(-\frac34\omega\cdot S\omega=-\frac32\), so `(V2.30)` fails. Participation
deletes separate global production accounts.

**Status.** Installed exact integral identities. Verdict: **caused**.

### F6.3 — interscale transfer is a different exact balance

**Parents.** F1.2, F2.2, and F5.1.

**Derivation.** For a real scalar self-adjoint Fourier multiplier \(M\),

\[
\langle M\nabla p,Mu\rangle=0,
\]

\[
\frac12\frac d{dt}\|Mu\|_2^2
+\nu\|\nabla Mu\|_2^2
=-\operatorname{Re}\langle M((u\cdot\nabla)u),Mu\rangle.
\tag{V2.31}
\]

Complementary orthogonal mode sets exchange equal and opposite nonlinear
energy, while physical localization retains pressure flux.

**Truth tests.** \(M=I\) gives zero total nonlinear transfer. A nontrivial
cutoff can have nonzero flux. The map \(u_0\mapsto-u_0\) reverses the cubic
transfer at the initial time, proving no universal direction. Variable,
matrix-valued, localized, or bounded-domain views need extra terms.

**Counterfactual classification.** The free periodic pair
\(u=e_1\sin x_1\), \(p=\cos x_1\) is non-solenoidal and has
\(\langle\nabla p,u\rangle=-\int\sin^2x_1\,dx\ne0\), exhibiting direct global
pressure work once compatibility is deleted. A free two-ledger system can also
assign the same sign to both complementary transfers instead of equal and
opposite signs. Participation deletes those independent accounts and does not
delete transfer-sign freedom.

**Status.** Installed exact balance. Verdict: **caused** for the exchange law,
**permitted** for both directions.

## 9. Relational geometry and model boundary: F7

### F7.1 — nonzero incompressible strain is anisotropic

**Parents.** F2.1.

**Derivation.** \(\operatorname{tr}S=0\). If \(S=\alpha I\), then
\(3\alpha=0\), so a nonzero strain cannot be isotropic.

**Truth tests.** \(\operatorname{diag}(a,-a,0)\) has simultaneous extension
and compression. The zero matrix is the exact exception. Statistical isotropy
does not alter the instantaneous tensor statement.

**Counterfactual.** \(S=\alpha I\), \(\alpha\ne0\), is available to a free
tensor. Participation deletes nonzero isotropic strain.

**Status.** Installed exact linear-algebra consequence. Verdict:
**prevented**.

### F7.2 — the production sign is relational

**Parents.** F2.1, F6.1, and F7.1.

**Derivation.** The spectral theorem gives

\[
\omega\cdot S\omega
=\sum_i\lambda_i|\omega\cdot e_i|^2.
\tag{V2.32}
\]

**Truth tests.** Alignment with a positive or negative eigenspace gives
opposite signs. Replacing \(u_0\) by \(-u_0\) reverses the sign. At repeated
eigenvalues, a named eigenvector basis is arbitrary; only the eigenspace
projector is invariant.

**Counterfactual classification.** The spectral identity is generic linear
algebra. Participation supplies the compatible \((S,\omega)\) pair but leaves
alignment and sign free.

**Status.** Installed relational identity and surviving-freedom boundary.
Verdict: **permitted** for either sign.

### F7.3 — pressure-Hessian global cancellation and local action

**Parents.** F2.1 for the global kinematic cancellation; F1.2 to identify the
localized scalar as the participant's actual slaved pressure.

**Derivation.** Twice integrating by parts and using
\(\partial_i\partial_jS_{ij}=0\) gives

\[
\int S:\nabla^2p\,dx=0.
\tag{V2.33}
\]

For a smooth weight \(\phi\),

\[
\int\phi S:\nabla^2p\,dx
=\int p\left[(\partial_i\partial_j\phi)S_{ij}
+2(\partial_i\phi)(\partial_jS_{ij})\right]dx.
\tag{V2.34}
\]

**Truth tests.** \(\phi=1\) recovers global cancellation. For the periodic
Taylor--Green field

\[
u=(\sin x\cos y,-\cos x\sin y,0),
\qquad
p=\frac14(\cos2x+\cos2y),
\]

the function \(f=S:\nabla^2p=\cos x\cos y(\cos2y-\cos2x)\) is nonzero and
changes sign. Nonnegative bumps supported where \(f>0\) or \(f<0\) realize
both localized signs. Gauge shifts cancel in `(V2.34)`.

**Counterfactual.** Independence must break one of the two kinematic
structures. With compatible incompressible \(S\),
\(\int S:\nabla^2q=0\) for every smooth scalar \(q\), whether or not \(q\) is
slaved. A free tensor pair may instead pose
\(S=\operatorname{diag}(1,-1,0)\) and a symmetric row \(H=S\), yielding
\(\int S:H>0\); here \(H\) is deliberately not a scalar Hessian. Global
cancellation is therefore a compatibility/provenance identity, while
participation through F1.2 realizes the locally sign-indefinite row as the
fluid's actual pressure.

**Status.** Installed exact global/local identity. Verdict: **prevented**
globally by incompressible compatibility and **permitted** locally for either
sign for actual participants.

### F7.4 — reduced models do not inherit full-fluid authority

**Parents.** F1.2, F3.3, and F4.1.

**Derivation.** Restricted Euler replaces the full pressure Hessian by
\(-\frac13\operatorname{tr}(A^2)I\) and deletes \(\nu\Delta A\). Substitution
into `(V2.19)` leaves the omitted full-fluid residual

\[
\mathcal R_{RE}
=\nabla^2p+\frac13\operatorname{tr}(A^2)I-\nu\Delta A.
\tag{V2.35}
\]

A restricted-Euler trajectory is a Navier--Stokes gradient history only when
this residual vanishes along a realized full solution. A Galerkin field has an
analogous escaped-mode residual unless its subspace is invariant.

**Truth tests.** For Galerkin projection, an invariant shear or single helical
mode closes exactly, while the two-mode witness creates an escaped sum
frequency. These are Galerkin tests only. For restricted Euler, \(A=0\) is the
unambiguous overlap; every nontrivial proposed overlap must be tested directly
by `(V2.35)`. Generic restricted-Euler paths have nonzero omitted rows, and a
viscous helical mode has the nonzero residual \(-\nu\Delta A\).

**Counterfactual classification.** The reduced model gains freedom by deleting
nonlocal pressure and viscosity. That freedom has model-only status until an
exact bridge restores the residual.

**Status.** Installed scope boundary. Verdict: **model-only** for generic
reduced trajectories.

## 10. New consequences generated by the corrected walk

These are candidate returns surfaced by this walk without canonical premise
weight. N1 has a matching earlier repo proof; N2 strengthens the compact-
support proof already in the repo to the full \(L^1\) scope; N3 is the direct
global energy--Poincare consequence stated below.

### N1 — shared-interface stress work is antisymmetric

**Parents.** F1.1 and F5.2.

For two smooth subregions sharing an internal interface
\(\Gamma_{\alpha\beta}(t)\), fix the pressure gauge and define the oriented
stress work

\[
W_{\alpha\beta}
=\int_{\Gamma_{\alpha\beta}}u\cdot\sigma n_\alpha\,dS.
\]

The same traces \(u,\sigma\) occur on both sides and
\(n_\beta=-n_\alpha\), hence

\[
W_{\beta\alpha}=-W_{\alpha\beta}.
\tag{V2.36}
\]

The stress part of the interface exchange is antisymmetric for both material
and fixed Eulerian partitions and is unaffected by body forcing, which is a
volume source. A fixed Eulerian total-energy balance additionally carries the
advective interface flux, itself paired with the opposite orientation. An
individual open-face value changes under a pressure-gauge shift; the paired
cancellation is gauge-independent. Nonsmooth weak traces and external
boundaries require separate hypotheses or terms.

The exact periodic shear

\[
u(t,x)=e^{-\nu t}(\sin x_2,0,0),
\qquad p=0,
\]

gives on the face \(x_2=c\)

\[
u\cdot\sigma e_2
=\nu e^{-2\nu t}\sin c\cos c.
\]

Changing \(c\) realizes both work signs, while reversing the face orientation
reverses the value exactly.

**Classification.** Deleted freedom with independently owned or mismatched
regional traces as the free-side witness. **Proved candidate refinement of
F5.2; support only.** The signed cancellation also appears in
`mpp-forward-gold-rectified-force-action-vs-native-material-stack-audit-20260625.md`.

### N2 — integrable divergence-free vorticity is automatically neutral

**Parents.** F2.1 and the \(L^1(\mathbb R^3)\) hypothesis of F2.4.

Let \(\widehat\omega\) be the continuous Fourier transform supplied by
\(\omega\in L^1\). Distributional divergence freedom gives
\(\xi\cdot\widehat\omega(\xi)=0\). Thus, for each coordinate direction and
\(t\ne0\),

\[
e_j\cdot\widehat\omega(te_j)=0.
\tag{V2.37}
\]

Taking \(t\to0\) and using continuity gives

\[
\widehat\omega(0)=\int_{\mathbb R^3}\omega(x)\,dx=0.
\tag{V2.37a}
\]

Compact support is unnecessary for neutrality. It remains one sufficient way
to control the first moment needed for the quartic far-field estimate.
Dropping divergence freedom permits a compact nonzero-mean vector source;
dropping \(L^1\) makes the displayed total integral and Fourier continuity
unavailable.

**Classification.** Deleted monopole freedom. **Proved candidate hypothesis
refinement of F2.4: its separate zero-mean assumption is redundant already
from \(L^1\) plus divergence freedom; support only.** The compact-support
integration-by-parts proof is already present in
`mpp-forward-gold-rigorous-quartic-far-strain-lemma-20260705.md`.

### N3 — mean-free torus energy decays exponentially

**Parents.** F5.1, conservation of the torus mean, and the torus Poincare
inequality.

Let \(\bar u=|\mathbb T^3|^{-1}\int u\,dx\). Integrating `(V2.0)` gives
\(\bar u(t)=\bar u_0\). The mean-free field \(v=u-\bar u_0\) obeys the same
viscous equation with the additional constant drift
\(\bar u_0\cdot\nabla v\). Pairing that equation with \(v\) kills both the
nonlinear and constant-drift transports, so

\[
\frac12\frac d{dt}\|v\|_2^2+\nu\|\nabla v\|_2^2=0.
\]

Using \(\|\nabla v\|_2^2\ge\lambda_1\|v\|_2^2\) gives, for every time in the
smooth lifespan,

\[
\|u(t)-\bar u_0\|_2^2
\le e^{-2\nu\lambda_1t}
\|u_0-\bar u_0\|_2^2.
\tag{V2.38}
\]

Nonzero mean persists rather than decays. Decaying \(\mathbb R^3\) has no
spectral gap; forcing, \(\nu=0\), and boundary work change the conclusion.
The same first-eigenmode shear above has zero mean and attains equality in the
rate `(V2.38)` with \(\lambda_1=1\).

**Classification.** Domain-specific prevented behavior: total mean-free
\(L^2\) energy on the fixed torus cannot persist without decay. **Proved
candidate extension under periodic hypotheses; support only.**

### N4 — exact view, stress-pressure, and graph consequences

The separate proof file establishes:

- the exact linear-view law and energy commutator for every admissible \(A(t)\);
- the stress-pressure lock `(V2.9)`--`(V2.10)`;
- the spatial scalar-localizer and universal periodic scalar-multiplier no-go
  `(V2.12)`--`(V2.13)`;
- an exact two-mode counterexample to weak velocity-pressure and projected-
  nonlinearity graph closure, with convergence stated in distributions;
- sufficient strong \(L^3\) velocity conditions for pressure-value passage,
  and sufficient strong \(L^3\) full-gradient conditions for pressure-source,
  pressure-Hessian, and cubic-strain passage;
- a uniform-velocity counterexample proving that derivative-row passage cannot
  be inferred from strong velocity convergence alone.

These results carry the separate ledger statuses already assigned to them.
They sharpen W7 dependencies and do not close W7, Gold, or Silver.

## 11. What the derivation does not produce

The full canonical walk deletes many independent-owner freedoms. It leaves the
following relations genuinely open:

- a universal pointwise pressure or pressure-Hessian sign;
- a universal direction of interscale transfer;
- persistent strain-vorticity or pressure-strain alignment;
- a universal eigenframe turning direction;
- automatic material or localized packet closure;
- a finite non-recounted resource controlling every global critical-height
  doubling;
- any Part or Field failure for an admitted same-solution terminal obstruction.

F4.3 is the only continuation theorem imported from the canonical fact store.
The L1-L8 list in v1 is quarantined as an unverified literature queue. In
particular, its L5 equality is scaling-critical, L4 needs its \(\mathbb R^3\)
axisymmetric scope, and the signed-height restart does not spend L6/ESS.

## 12. Four-field return

- **Physical verdict:** the derived identities cause the one-owner stress,
  pressure, deformation, derivative, exchange, and production laws; they
  prevent the scoped incompatible or autonomous behaviors stated above; exact
  participants preserve several sign freedoms. The global regularity question
  remains open.
- **Scoped mathematical status:** the 24 installed nodes have complete
  dependency and truth-test records at their canonical scopes. The F1.2
  finite-\(q\) pressure bound and N1--N3 are four direct proved candidates. N4
  is proved or refuted row-by-row in its separate proof surface. No classical
  theorem beyond installed BKM is asserted from citation alone.
- **Live-burden effect:** ontology support and checked route obstruction only.
  Gold receives no sign or finite reserve; Silver receives no admitted
  Part/Field failure.
- **Proposed ontology deltas:** add the finite-\(q\) Riesz pressure bound under
  F1.2; refine F5.2 by shared-interface stress-work antisymmetry; refine F2.4
  by removing the redundant zero-mean assumption already under \(L^1\)
  divergence freedom; add the periodic mean-free exponential-decay consequence
  under F5.1. The periodic scalar-multiplier zero-or-identity theorem remains a
  separately recorded branch candidate. All remain unpromoted pending
  independent review and consumer re-gating.
