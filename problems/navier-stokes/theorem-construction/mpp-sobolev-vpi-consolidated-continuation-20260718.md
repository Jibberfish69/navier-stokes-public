---
theorem_id: sobolev-vpi-consolidated-continuation-20260718
date: 2026-07-18
updated_on: 2026-07-22
problem: navier-stokes
route: forward-gold / VPI / Sobolev continuation / carrier consolidation
status: exact consolidation and sharpened carrier-level frontier; no continuation bound proved
authority_state: theorem-construction; no canonical frontier promotion
parents:
  - mpp-vpi-moving-band-throughput-lifetime-law-20260718.md
  - mpp-zeno-moving-front-autocatalytic-successor-service-direction-20260717.md
  - codex-goal-ontology-cycle-090-eigenshell-all-point-heat-curvature-complete-source-law-20260714.md
  - codex-goal-ontology-cycle-155-instantaneous-active-full-incidence-transverse-coercivity-20260714.md
  - codex-goal-ontology-cycle-157-radial-gauge-integrability-complete-all-chord-residual-20260714.md
  - codex-goal-ontology-cycle-158-active-likelihood-material-action-scalar-holonomy-exhaustion-20260714.md
completion_truth: >-
  This note consolidates the normalized heat--Sobolev rows, their derivative-depth
  receiver chain, the Abel critical diagonal, the same-field heat commutator, and
  the labelled all-material-pair VPI carrier into one exact object.  It proves the
  Gamma--Poisson duality of the two depth coordinates, the general Mellin
  reconstruction formula, the critical eigenfunctional law, a sharp
  shape-versus-location countertest, the fixed-label vector-valued Hilbert lift of
  the Abel diagonal with its complete material tangent, its integrated critical
  limit, and the dual component-covariance/chord-incidence contraction identity.
  It also identifies precisely which earlier receiver, slow-loss, source-square,
  affine-descent, and first-record conclusions remain valid and which proposed
  fast/refill/edge error decomposition is superseded.  These results do not bound
  the record-positive Abel variation, the Hilbert-tangent square, or the active
  likelihood tilt.  They therefore do not prove bounded critical height or
  continuation.  Sections 75--77 of the parent construction now perform the
  spatial adjacent-face cancellation on a canonical translated heat grid,
  pay first-receiving square-root delivery, and reduce the concentrated fast
  active square without scale recounting to a selected
  \(L_t^2\dot H^{-1/2}\) nonlinear source square.  They also rewrite that
  source square exactly as the joined Eulerian-time row, critical viscous row,
  and the target record increment.  This resolves the spatial bookkeeping
  part of the former upper-packing target, but not its temporal concentration:
  only the \(L_t^1\dot H^{-1/2}\) source norm is datum-paid, the receiver-upcrossing
  intervals have not been aligned with the global critical record set, and no
  absorption returning the target record with coefficient strictly below
  \(2\nu\) is proved.  Sections 78--82 then keep the descent at the selected
  projection.  They prove the centered next-depth law, the exact radial--transverse
  Pythagoras identity, and the simultaneous donor trough; translation averaging
  shows that scale depth alone returns exactly the same \(2\nu\) record coefficient.
  On an already-selected concentrated receiver they prove the quantitative local
  alternative of a strict transverse deficit or an exterior donor trough, and
  identify that donor, for one fixed projector, with a restricted version of the
  old nested heat-face current.  Sections 83--84 then prove exact finite
  adaptive-projector cancellation by a common Boolean atom refinement and show
  that critical weighting leaves only genuine signed scale work.  They do not
  construct a record-covering complex, map record-positive face work to a
  concentrated positive band eligible for the transverse/donor dichotomy,
  cancel the derivative-depth stock, define or bound the nonnegative terminal
  valuation in an infinite exhaustion, pay the positive squared tangent rows,
  or classify the nonconcentrated allocation.  If that terminal scale-work
  packing cannot be proved directly, an additional
  concentration--compactness theorem must classify a countersequence as
  diffuse or tight while preserving the same history.  Only an extracted
  tight profile may enter the candidate same-daughter Abel--VPI block route;
  its ancestry license, compactness bridge from vanishing paid block costs to
  vanishing complete all-chord residual, and handoff-and-return theorem remain
  open.  Null rigidity after a decaying finite-energy all-chord limit is
  already proved in Cycle 157.
---

# Sobolev--VPI consolidated continuation: one nested material heat family, two depth coordinates, one critical diagonal

## 1. Corrected goal and verdict

The goal is not to force the schematic recurrence proposed before the full
Sobolev construction was assembled.  It is to recover the most informative
continuation object already latent in the repository, sharpen the exact
connections between its representations, delete false multiplicities, and state
the exact proof obligations which remain.

Work on one smooth, decaying, divergence-free Navier--Stokes solution on a
compact classical interval, with one fixed viscosity \(\nu>0\) and no forcing.
All Eulerian, heat-scale, Fourier, and material-label quantities below are
readouts of this one history.

Throughout,

\[
E_s(t):=\frac12\|\Lambda^su(t)\|_2^2,
\qquad
H(t):=E_{1/2}(t),
\qquad
E:=E_0(0),
\qquad
S:=\frac12(\nabla u+\nabla u^{\mathsf T}).
\]

If \(E=0\), then \(u\equiv0\) and continuation is immediate.  Every later
division by \(E\) is therefore made under the standing nontrivial assumption
\(E>0\).

The consolidated verdict is:

\[
\boxed{
\begin{gathered}
\text{the normalized Sobolev tower is the complete scale-derivative tower}\\

\text{of one bounded nested all-material-pair heat stock }\mathcal Q_a;\\
\text{the fixed-heat derivative-depth ladder and the log-heat-scale ladder}\\

\text{are the Poisson and Gamma readings of the same frequency variable;}\\
\text{their Abel square-root diagonal is a fixed-label vector VPI carrier}\\

\text{whose critical marginal is exactly the original }H\text{ carrier.}
\end{gathered}
}
\tag{SC.1}
\]

Finite kinetic energy controls the total mass of this family, every normalized
row, every translation-invariant scale-shape derivative, and the total
irreversible loss.  It does not control the location of that mass along the
critical half-moment.  The exact current determines how location changes, but
its scalar receiver algebra admits non-fluid Zeno schedules.  What distinguishes
the actual fluid is the one-field commutator and its complete vector/tensor
material tangent.

Accordingly, the older proposed source list

\[
B^{\rm fast}+B^{\rm refill}+B^{\rm edge}
\]

is no longer the right continuation object.  Refill is internal shared-face
transfer, fast transit is the same shared current entering the next receiver,
and the simultaneous terminal diagonal is the critical record current itself.
The current has not yet been proved to define one inherited lineage: it may
branch into fresh/passive and autocatalytic roles.  The layer collar and
upcrossing charge act on this diagonal before any appeal to daughter ancestry.
The parent construction now forms adjacent heat-face differences before
positive selection, pays common first delivery, and isolates the concentrated
fast source square.  What remains is no longer unnamed spatial edge packing.
The centered next-depth calculation proves that pure scale descent returns the
target coefficient exactly.  The only carrier-native strictness channels now
visible on a concentrated receiver are its retained transverse tangent and its
simultaneous donor trough.  Section 81 gives a local quantitative alternative
between them, and Section 82 returns the fixed-projector donor to the old heat
current.  Sections 83--84 show that every finite projector refinement cancels
inside one common stopped complex; applying the critical weight then leaves
the genuine scale-valuation work.  The remaining temporal and stopping-time
problem is to construct the receiver cover, align it with the global critical
record, map positive face work to an eligible concentrated band, cancel the
next-depth stock, and bound the terminal transverse/diagonal valuation without
returning the target to its own right-hand side.  Any defect left
after that calculation still requires a diffuse-versus-tight profile
classification and, on the tight branch, an ancestry-extraction theorem before
any same-daughter selection is licensed.

This is an exact consolidation and a sharper frontier map.  It is not yet a
strict theorem reduction or a proof of a global \(H\) bound: receiver/global-
record alignment, face-to-band transverse/donor assignment, derivative-depth
endpoint cancellation, terminal scale-work packing, positive joined-row
payment, nonconcentrated-profile control, and the material compactness bridge
below remain open proof obligations.

## 2. The literal one-history object

Let \(X(\ell,t)\) be the volume-preserving material flow and, for every fixed pair
of datum labels \((\ell,m)\), put

\[
R_{\ell m}=X(\ell,t)-X(m,t),
\qquad
V_{\ell m}=u(X(\ell,t),t)-u(X(m,t),t),
\tag{SC.2}
\]

\[
A_{\ell m}=\dot V_{\ell m}
=-\delta_{\ell m}\nabla p+\nu\,\delta_{\ell m}\Delta u.
\tag{SC.3}
\]

The critical carrier and its complete logarithmic rate are

\[
e_{\ell m}=\frac1{4\pi^2}\frac{|V_{\ell m}|^2}{|R_{\ell m}|^4},
\qquad
g_{\ell m}=-4\alpha_{\ell m}+2\chi_{\ell m},
\tag{SC.4}
\]

where

\[
\alpha_{\ell m}=\frac{R_{\ell m}\cdot V_{\ell m}}{|R_{\ell m}|^2},
\qquad
\chi_{\ell m}=\frac{V_{\ell m}\cdot A_{\ell m}}{|V_{\ell m}|^2}.
\tag{SC.5}
\]

Here \(\chi_{\ell m}\) is defined by the quotient on \(\{|V_{\ell m}|>0\}\)
and set to zero when \(V_{\ell m}=0\).  The pair formulas are understood
almost everywhere off the label diagonal \(\ell=m\).  The invariant quantity
actually used is the product

\[
\chi_{\ell m}e_{\ell m}
=\frac{V_{\ell m}\cdot A_{\ell m}}
{4\pi^2|R_{\ell m}|^4},
\]

which extends without dividing by \(|V_{\ell m}|^2\).

Thus

\[
H=\iint e_{\ell m}\,d\ell\,dm,
\qquad
H'=\iint g_{\ell m}e_{\ell m}\,d\ell\,dm.
\tag{SC.6}
\]

Pressure cancels in the global derivative only after the full
divergence-free pair contraction.  It remains part of \(A_{\ell m}\), hence part
of the future of every labelled pair.  Viscosity, deformation, transport,
pressure, and surrounding-field response have not become separate sources.

For a heat length \(a>0\), write

\[
h_a(r)=(4\pi a)^{-3/2}e^{-|r|^2/(4a)},
\qquad G_a=e^{-a\Lambda^2},
\tag{SC.7}
\]

and define the bounded nested all-pair stock

\[
\boxed{
\mathcal Q_a(t)
=\iint h_a(R_{\ell m})|V_{\ell m}|^2\,d\ell\,dm
=2\langle u,(I-G_a)u\rangle .
}
\tag{SC.8}
\]

It obeys

\[
0\le \mathcal Q_a\le 4E_0(0),
\qquad
(-1)^{k-1}\partial_a^k\mathcal Q_a
=2\|\Lambda^kG_{a/2}u\|_2^2\ge0,
\qquad k\ge1.
\tag{SC.9}
\]

So the same family is bounded, increasing, and Bernstein-complete in its heat
length.  Its material derivative keeps the same labels:

\[
\mathcal Q_a'
=4\langle (u\cdot\nabla)u,G_au\rangle
+2\iint h_a(R_{\ell m})V_{\ell m}\cdot A_{\ell m}\,d\ell\,dm.
\tag{SC.10}
\]

The pressure row in the second integral vanishes only after the complete pair
trace, and the viscous row is

\[
\iint h_a(R)V\cdot\delta\Delta u
=-2\langle\Lambda u,(I-G_a)\Lambda u\rangle.
\tag{SC.11}
\]

Write

\[
\mathcal L_a^{\rm pair}(t)
:=\langle\Lambda u,(I-G_a)\Lambda u\rangle\ge0.
\]

This is the physical object underneath every construction below.  Higher
Sobolev depth does not introduce a new reserve or a new population.  It asks
the same nested pair stock a sharper question in heat length.

## 3. Exact observer atlas

Put \(G_\tau=e^{-\tau\Lambda^2}\), \(\sigma=\log\tau\), and

\[
\rho_n(\sigma,t)
=\frac{2^{n-1}}{\Gamma(n)}\tau^n
\|\Lambda^nG_\tau u(t)\|_2^2,
\qquad n\ge1.
\tag{SC.12}
\]

The following are not analogous objects.  They are exact transforms of one
another:

| Readout | Exact relation | What it resolves |
|---|---|---|
| nested material heat stock | \(\mathcal Q_a=\iint h_a(R)|V|^2\) | the Gaussian-weighted aggregate of all labelled pairs at heat length \(a\) |
| unresolved kinetic stock | \(K(\tau)=\mathcal Q_{2\tau}/4\) | kinetic energy removed by \(G_\tau\) |
| log-scale Sobolev row | \(\rho_n=\dfrac{2^{n-2}\tau^n}{\Gamma(n)}(-1)^{n-1}\partial_a^n\mathcal Q_a|_{a=2\tau}\) | a Gamma-localized heat-scale derivative |
| first-row Hardy stock | \(R(\sigma)=\int_{-\infty}^{\sigma}\rho_1(s)ds=\mathcal Q_{2e^\sigma}/4\) | the fine-side cumulative of the same row |
| fixed-heat depth stock | \(a_n=\rho_n/n\) | a Poisson-localized derivative order |
| total fixed-heat stock | \(\sum_{n\ge1}a_n=K(\tau)\) | the same bounded unresolved energy |
| Abel diagonal | \(M_\tau=\sum_{n\ge1}\sqrt n\,a_n\) | the critical square-root depth moment |
| critical carrier | \(\tau^{-1/2}M_\tau\to\sqrt2H\) as \(\tau\to\infty\) | the original \(\dot H^{1/2}\) height |

The row masses are all the same:

\[
\int_{\mathbb R}\rho_n(\sigma,t)\,d\sigma
=E_0(t)\le E_0(0).
\tag{SC.13}
\]

### 3.1 Gamma--Poisson duality

Let

\[
\lambda=2\tau|\xi|^2,
\qquad
p_n(\lambda)=e^{-\lambda}\frac{\lambda^n}{n!}.
\tag{SC.14}
\]

Then

\[
\boxed{
a_n(\tau,t)
=\frac12\int p_n(2\tau|\xi|^2)|\widehat u(\xi,t)|^2\,d\xi,
\qquad
\rho_n=n a_n.
}
\tag{SC.15}
\]

At fixed \(\tau\) and \(\xi\), derivative order \(n\) is Poisson with mean
\(\lambda\).  Define the spectral row density

\[
r_n(\sigma,\xi,t)
:=\frac12\frac{\lambda^ne^{-\lambda}}{\Gamma(n)}
|\widehat u(\xi,t)|^2,
\qquad
\rho_n(\sigma,t)=\int r_n(\sigma,\xi,t)\,d\xi.
\]

At fixed \(n\) and \(\xi\), changing logarithmic heat scale gives

\[
\boxed{
 r_n(\sigma,\xi,t)\,d\sigma
=\frac12
\frac{\lambda^{n-1}e^{-\lambda}}{\Gamma(n)}\,d\lambda
\,|\widehat u(\xi,t)|^2.
}
\tag{SC.16}
\]

Thus each modewise log-scale row is Gamma with shape \(n\).  Both observers concentrate
on the same incidence relation

\[
n\simeq\lambda=2\tau|\xi|^2.
\tag{SC.17}
\]

This makes a connection which the separate q-adic constructions obscure:
the log-heat ladder and the derivative-depth ladder are dual samplings of the
same frequency valuation.  Increasing \(n\) sharpens the observer because the
relative Gamma/Poisson width is \(O(n^{-1/2})\); it does not add stock.

### 3.2 Every row reconstructs every lower Sobolev moment

For every real \(s<n\) for which \(E_s\) is finite,

\[
\boxed{
E_s(t)
=2^{-s}\frac{\Gamma(n)}{\Gamma(n-s)}
\int_{\mathbb R}e^{-s\sigma}\rho_n(\sigma,t)\,d\sigma.
}
\tag{SC.18}
\]

This follows from one Gamma integral and contains both the common mass
identity \(s=0\) and the critical reconstruction \(s=1/2\):

\[
H(t)=c_n\int e^{-\sigma/2}\rho_n(\sigma,t)\,d\sigma,
\qquad
c_n=\frac{\Gamma(n)}{\sqrt2\,\Gamma(n-1/2)}.
\tag{SC.19}
\]

The tower is therefore a redundant compatible atlas of the same field.  The
redundancy gives resolution and exact cross-checks, not independent payment.

## 4. The critical functional is the invariant eigen-direction of the tower

Let

\[
J_1(\sigma,t)
:=\Phi(e^\sigma,t)+\nu L(e^\sigma,t),
\]

where

\[
\Phi(\tau,t)=\int\mathcal R_\tau:S(G_\tau u)\,dx,
\qquad
L(\tau,t)=\|\nabla u\|_2^2-\|\nabla G_\tau u\|_2^2.
\]

This is the completed same-field scale current from the fixed-scale receiver,
not an independently prescribed flux.  The row recurrence is

\[
\rho_{n+1}=\rho_n-\frac1n\partial_\sigma\rho_n,
\qquad
J_{n+1}=J_n-\frac1n\partial_\sigma J_n,
\tag{SC.20}
\]

with

\[
\partial_t\rho_n+\partial_\sigma J_n=0.
\tag{SC.21}
\]

Define

\[
\mathscr L_s[f]=\int_{\mathbb R}e^{-s\sigma}f(\sigma)\,d\sigma.
\tag{SC.22}
\]

If

\[
\left[e^{-s\sigma}\partial_\sigma^jf(\sigma)\right]_{-\infty}^{+\infty}=0,
\qquad 0\le j<r,
\]

then repeated integration by parts gives

\[
\mathscr L_s[\partial_\sigma^r f]
=s^r\mathscr L_s[f].
\tag{SC.23}
\]

Hence,

\[
\mathscr L_s[\rho_{n+1}]
=\left(1-\frac{s}{n}\right)\mathscr L_s[\rho_n],
\tag{SC.24}
\]

and the Gamma coefficient in (SC.18) compensates this factor exactly.  At the
critical exponent,

\[
\mathscr L_{1/2}[\rho_{n+1}]
=\left(1-\frac1{2n}\right)\mathscr L_{1/2}[\rho_n],
\qquad
\frac{c_{n+1}}{c_n}
=\left(1-\frac1{2n}\right)^{-1}.
\tag{SC.25}
\]

For the currents, the required weighted endpoint conditions hold at the
critical exponent \(s=1/2\) on compact classical intervals, first under the
parent's decay assumptions and then by smooth approximation.  No unweighted
decay of \(J_1\) is asserted.  The same weighted statement therefore holds
for \(H'\).  In particular,

\[
\boxed{
\int e^{-\sigma/2}\partial_\sigma^2J_1\,d\sigma
=\frac14\int e^{-\sigma/2}J_1\,d\sigma.
}
\tag{SC.26}
\]

This resolves the exact status of the older phrase "one scale derivative
short."  The second derivative was genuinely missing for the local affine
descent: it collapses a signed affine interior to endpoint stock.  But after
the global critical weight is restored, the critical functional is an
eigen-direction of that derivative.  Second descent removes recounting; it
cannot attenuate the genuine critical current.

The two facts are simultaneous:

\[
\boxed{
\begin{aligned}
\text{local affine interior}
&\xrightarrow{\ \partial_\sigma^2\ }
\text{boundary stock},\\
\text{global critical valuation}
&\xrightarrow{\ \partial_\sigma^2\ }
\tfrac14\text{ of the same critical current}.
\end{aligned}
}
\tag{SC.27}
\]

This is why Sections 60--61 repair the old coordinate without closing the
terminal record estimate.

## 5. What higher derivatives buy: shape, not location

Repeated use of (SC.20) writes every \(\partial_\sigma^m\rho_1\) as a finite
signed combination of positive rows.  Thus

\[
\|\partial_\sigma^m\rho_1(t)\|_{L^1_\sigma}
\le C_mE_0(0).
\tag{SC.28}
\]

These are strong scale-shape bounds.  They control oscillation, sharpen
frequency localization, and license signed higher affine descent.  They do
not locate the finite mass on the logarithmic scale axis.

The distinction has a sharp static countertest.  For a divergence-free
Schwartz field \(v\), define the energy-preserving dilation

\[
u_\kappa(x)=\kappa^{3/2}v(\kappa x).
\tag{SC.29}
\]

Then

\[
\|u_\kappa\|_2=\|v\|_2,
\qquad
\rho_n^{u_\kappa}(\sigma)
=\rho_n^v(\sigma+2\log\kappa),
\tag{SC.30}
\]

so every row mass and every translation-invariant derivative norm in
(SC.28) is unchanged, while

\[
H(u_\kappa)=\kappa H(v).
\tag{SC.31}
\]

This is a countertest for snapshot estimates, not a Navier--Stokes history and
not a dynamical obstruction.  It proves exactly that no combination of
translation-invariant scale-shape bounds can control the critical location.
The continuation theorem must use the signed one-history law which moves the
shape along the scale axis.

The same distinction appears at fixed heat depth:

\[
\sum_na_n=K,
\qquad
\sum_n\sqrt n\,a_n=M_\tau,
\qquad
\sum_n n a_n=2\tau E_1.
\tag{SC.32}
\]

These are the zeroth, half, and first moments of one positive depth measure.
Finite zeroth and spacetime first moments do not, by themselves, bound an
instantaneous half-moment record.

## 6. The Abel diagonal has an exact fixed-label vector Hilbert lift

Let

\[
c_\Psi=\frac1{2\sqrt\pi},
\qquad
\eta_{\tau,\zeta}=\tau(1-e^{-\zeta}),
\qquad \zeta>0.
\tag{SC.33}
\]

The Poisson square-root symbol is

\[
\Psi(\lambda)
=e^{-\lambda}\sum_{n\ge1}\sqrt n\frac{\lambda^n}{n!}
=c_\Psi\int_0^\infty
\left[1-e^{-\lambda(1-e^{-\zeta})}\right]
\zeta^{-3/2}\,d\zeta,
\qquad
\Psi_\tau:=\Psi(2\tau\Lambda^2).
\]

The Bernstein representation of the Poisson square-root symbol gives

\[
\boxed{
M_\tau(t)
=c_\Psi\int_0^\infty
\zeta^{-3/2}K(\eta_{\tau,\zeta},t)\,d\zeta
=\frac{c_\Psi}{4}\int_0^\infty
\zeta^{-3/2}\mathcal Q_{2\eta_{\tau,\zeta}}(t)\,d\zeta.
}
\tag{SC.34}
\]

With

\[
\mathfrak p_a(t):=\langle(u\cdot\nabla)u,G_au\rangle,
\]

the two Abel rows are

\[
\mathcal P_\tau
=c_\Psi\int_0^\infty\zeta^{-3/2}
\mathfrak p_{2\eta_{\tau,\zeta}}\,d\zeta,
\qquad
\mathcal L_\tau
=\nu c_\Psi\int_0^\infty\zeta^{-3/2}
\mathcal L_{2\eta_{\tau,\zeta}}^{\rm pair}\,d\zeta.
\]

Define, at fixed \(\tau\), the vector-valued material Hilbert lift

\[
\boxed{
\Theta_\tau(\zeta,\ell,m,t)
=\left[
\frac{\zeta^{-3/2}}{8\sqrt\pi}
h_{2\eta_{\tau,\zeta}}(R_{\ell m}(t))
\right]^{1/2}V_{\ell m}(t).
}
\tag{SC.35}
\]

Then, in
\(L^2((0,\infty)_\zeta\times\mathbb R^3_\ell\times
\mathbb R^3_m;\mathbb R^3)\),

\[
\boxed{\|\Theta_\tau(t)\|_2^2=M_\tau(t).}
\tag{SC.36}
\]

"Hilbert lift" is the exact claim.  No closed, convex, or ordered cone has
been proved, so cone language is not used as a theorem.

For fixed \(\tau\) and fixed \(\zeta\), the complete material tangent is

\[
\boxed{
D_t\Theta_\tau
=\left[
\frac{\zeta^{-3/2}}{8\sqrt\pi}
h_{2\eta}(R)
\right]^{1/2}
\left[
A_{\ell m}-\frac{R_{\ell m}\cdot V_{\ell m}}{8\eta}V_{\ell m}
\right],
\qquad \eta=\eta_{\tau,\zeta}.
}
\tag{SC.37}
\]

Consequently

\[
\boxed{
\begin{aligned}
2\langle\Theta_\tau,D_t\Theta_\tau\rangle
&=\iiint w_\tau
\left[
2V\cdot A-\frac{R\cdot V}{4\eta}|V|^2
\right]d\zeta\,d\ell\,dm\\
&=M_\tau'
=\mathcal P_\tau-\mathcal L_\tau,
\end{aligned}
}
\tag{SC.38}
\]

where

\[
w_\tau(\zeta,R)
=\frac{\zeta^{-3/2}}{8\sqrt\pi}h_{2\eta_{\tau,\zeta}}(R).
\tag{SC.39}
\]

The Gaussian-weight drift in (SC.38) is exactly \(\mathcal P_\tau\).  The
complete acceleration row is \(-\mathcal L_\tau\): pressure cancels only
after the whole pair contraction, while viscosity gives the positive loss.

This is the material meaning of the exact commutator

\[
\mathcal P_\tau
=-\frac12\langle[\Psi(2\tau\Lambda^2),u\cdot\nabla]u,u\rangle.
\tag{SC.40}
\]

It also identifies what scalarization deletes.  If \(M_\tau>0\), put

\[
R_\tau=\|\Theta_\tau\|_2=\sqrt{M_\tau},
\qquad
\widehat\Theta_\tau=\Theta_\tau/R_\tau,
\tag{SC.41}
\]

then

\[
\boxed{
\|D_t\Theta_\tau\|_2^2
=\frac{(M_\tau')^2}{4M_\tau}
+M_\tau\|D_t\widehat\Theta_\tau\|_2^2.
}
\tag{SC.42}
\]

The record scalar keeps only the radial term.  The second term is the
directional/material-pair phase motion needed to distinguish the actual VPI
history from a freely prescribed scalar receiver.  No datum-finite upper
bound for either the full left side or the active record-weighted transverse
term is proved here.

### 6.1 The critical limit is a concentrating marginal, not pointwise Hilbert convergence

For \(R\ne0\),

\[
\boxed{
\tau^{-1/2}\int_0^\infty
w_\tau(\zeta,R)\,d\zeta
\longrightarrow
\frac{\sqrt2}{4\pi^2|R|^4}.
}
\tag{SC.43}
\]

Therefore

\[
\boxed{
\tau^{-1/2}\int_0^\infty
|\Theta_\tau(\zeta,\ell,m,t)|^2\,d\zeta
\longrightarrow
\sqrt2\,e_{\ell m}(t).
}
\tag{SC.44}
\]

For every fixed \(\zeta>0\), the normalized density instead tends to zero;
its mass concentrates at \(\zeta\asymp |R|^2/\tau\).  Hence (SC.44) is an
integrated marginal/measure limit.  It is not pointwise convergence in
\(\zeta\), and it does not give strong convergence of \(\Theta_\tau\) in the
unrescaled Hilbert space.

The tangent limit has the same scope.  The second kernel asymptotic is

\[
\tau^{-1/2}\int_0^\infty
\frac{w_\tau(\zeta,R)}{4\eta_{\tau,\zeta}}\,d\zeta
\longrightarrow
\frac{\sqrt2}{\pi^2|R|^6}.
\tag{SC.45}
\]

After the \(\zeta\)-integration and the complete pair integration,

\[
\boxed{
\tau^{-1/2}2\langle\Theta_\tau,D_t\Theta_\tau\rangle
\longrightarrow
\sqrt2H'
=\frac{\sqrt2}{4\pi^2}
\iint \frac{|V|^2}{|R|^4}(2\chi-4\alpha)\,d\ell\,dm.
}
\tag{SC.46}
\]

The global limit in (SC.46) is licensed by the already proved spectral limit
TL.761 and domination by higher spectral moments on each compact classical
interval.  The pointwise pair-kernel asymptotics (SC.43) and (SC.45) alone do
not justify interchanging the singular pair integration with the limit.

Thus, where \(H>0\),

\[
d\mathbb Q_t(\ell,m)=\frac{e_{\ell m}(t)}{H(t)}\,d\ell\,dm.
\]

\[
\frac{2\langle\Theta_\tau,D_t\Theta_\tau\rangle}
{\|\Theta_\tau\|_2^2}
\longrightarrow
\frac{H'}H
=\mathbb E_{\mathbb Q_t}[-4\alpha+2\chi].
\tag{SC.47}
\]

The factor \(2\) is essential.  The finite-layer local rate

\[
2\chi-\frac{R\cdot V}{4\eta}
\]

is not pointwise the critical rate \(-4\alpha+2\chi\).  The latter emerges
only after the Bernstein integration and critical concentration.  Likewise,
the tangent (SC.37) is exact for fixed \(\tau\).  If a proof makes
\(\tau=\tau(t)\) move, it must add the scale-motion term
\(\dot\eta\,\partial_\eta\Theta\).

## 7. The same transfer has two exact tensor readings

At heat depth \(\eta\), define the component covariance

\[
\mathcal R_\eta
=G_\eta(u\otimes u)-G_\eta u\otimes G_\eta u
\tag{SC.48}
\]

and the Gaussian chord-incidence tensor

\[
\mathsf C_u(z,a)
=\int_0^1\int_{\mathbb R^3}
h_a(r)
|u(z+(1-\theta)r)-u(z-\theta r)|^2
\widehat r\otimes\widehat r\,dr\,d\theta.
\tag{SC.49}
\]

Let \(B=\mathbb P(u\cdot\nabla u)\).  The fixed-scale joined transfer from
Section 54 and the chord bridge from Cycle 90 give the exact global identity

\[
\boxed{
\begin{aligned}
\Phi(\eta)
&=\int \mathcal R_\eta:S(G_\eta u)\,dx\\
&=\langle B,(I-G_{2\eta})u\rangle\\
&=\int S(u):\mathsf C_u(2\eta)\,dx.
\end{aligned}
}
\tag{SC.50}
\]

This is a sharper VPI identification.  The first line is component-velocity
covariance contracted against resolved strain.  The last line is
separation-direction incidence contracted against the actual strain.  They
are different pointwise tensor constructions and are not pointwise
identical; the one-field commutator makes their complete global strain
contractions identical.

With the signs of Sections 54 and 68,

\[
\boxed{
\mathcal P_\tau
=-c_\Psi\int_0^\infty
\zeta^{-3/2}\Phi(\eta_{\tau,\zeta})\,d\zeta.
}
\tag{SC.51}
\]

So the Abel source is the signed positive-Bernstein superposition of this
same dual tensor contraction.  It is neither an arbitrary shell source nor a
new material mechanism.

The matrix exterior from Section 67 is also now placed exactly.  Summing the
unweighted depth matrices

\[
\mathbf a_n(\tau,t)
:=\frac{2^{n-1}}{n!}\tau^n
\int(\Lambda^nG_\tau u)\otimes(\Lambda^nG_\tau u)\,dx,
\qquad
\operatorname{tr}\mathbf a_n=a_n,
\]

first gives

\[
\sum_{n\ge1}\mathbf a_n
=\frac12\int\mathcal R_\tau\,dx,
\tag{SC.52}
\]

whose component-energy exterior is datum-finite.  But the critical Abel
source requires the spatial alignment
\(\int\mathcal R_\eta:S(G_\eta u)\,dx\) before the critical half-moment is
taken.  Globally integrating the covariance matrix before preserving that
strain alignment loses the internal transfer.  This is the structural reason
the unweighted matrix identity cannot pay the critical diagonal.

## 8. Exact information-loss boundaries

The representations can now be ordered by what they retain:

| Representation | Retains | Loses if used alone |
|---|---|---|
| \(\rho_n\), \(a_n\) | positive scale/depth occupancy and exact current compatibility | Fourier phase, material labels, component and chord direction |
| \(\sum_n a_n=K\) | the whole bounded unresolved stock | where it sits in critical depth |
| \(\mathbf a_n\), \(\int\mathcal R_\tau\) | global component anisotropy | spatial strain alignment and pair ancestry |
| \(\mathcal R_\eta(x)\) | local component covariance | explicit persistent pair labels and separation-direction incidence |
| \(\mathsf C_u(z,a)\) | chord orientation weighted by relative speed | relative-velocity vector phase |
| \(\mathcal Q_a\) | one aggregate same-label scalar pair stock | individual labels/ancestry, the direction of \(V\), and its transverse tangent |
| \(\Theta_\tau\) with \(D_t\Theta_\tau\) | every scalar/vector term entering the Abel finite-layer tangent | explicit chord orientation and cross-layer geometry; no paid tangent norm is known |
| \(M_\tau=\|\Theta_\tau\|^2\) | radial Abel stock and its signed record change | directional/projective motion |
| material-pair escort \(\mathbb Q_t\) from (SC.47) | relative likelihood of critical pair participation | common amplitude \(H\) and radial stock |
| record-positive projection | causal first-record gain | the signed cancellation before the record unless applied last |

The lawful order is therefore

\[
\boxed{
\text{same-field signed evolution}
\longrightarrow
\text{shared-face cancellation}
\longrightarrow
\text{fixed-label/vector lift}
\longrightarrow
\text{first-record selection}.
}
\tag{SC.53}
\]

Taking trace, normalization, or a positive part earlier deletes the exact
structure which separates the actual field from the scalar schedule below.

## 9. What the existing paid quantities do and do not pay

The repository has several genuine finite resources:

\[
E_0(t)+\nu\int_0^t\|\nabla u\|_2^2\,ds=E_0(0),
\tag{SC.54}
\]

\[
\int_0^T H(t)^2\,dt
\le\frac{E_0(0)^2}{2\nu},
\tag{SC.55}
\]

\[
 d\mu_n(\sigma,t)
:=\frac{n\nu}{e^\sigma}\rho_{n+1}(\sigma,t)
\,d\sigma\,dt,
\qquad
\int_0^T\int_{\mathbb R}d\mu_n
=E_0(0)-E_0(T),
\tag{SC.56}
\]

and the material affine action

\[
\mathscr A_C
=2\nu\int_0^T\int|S|^2\,dx\,dt
\le E_0(0).
\tag{SC.57}
\]

The source-square identity, translated affine descent, and fixed-row receiver
law additionally prove:

1. shared interfaces cancel before valuation;
2. a slow receiver with loss fraction \(\delta\) contracts by
   \(1-\delta\), hence by \(q(1-\delta)\) after one critical q-step;
3. first-record stopping is causal and non-recounting;
4. finite-time common depth occupancy is already included in the energy
   payment through (SC.32) and (SC.54):

   \[
   \int_0^T\sum_{n\ge1}n\,a_n(\tau,t)\,dt
   =2\tau\int_0^TE_1(t)\,dt
   \le\frac{\tau E}{\nu}.
   \]

None of these facts bounds an unbounded active likelihood applied to the
finite base measure.  Spectrally, the Abel loss is

\[
\mathcal L_\tau\,dt
=\int \Psi(2\tau|\xi|^2)
\,\nu|\xi|^2|\widehat u|^2\,d\xi\,dt.
\tag{SC.58}
\]

The base measure on the right is finite, but the record law weights it by the
critical multiplier, the active super-threshold factor, and the record set.
Cycle 158 finds the same burden in material coordinates: the finite action
\(d\mathscr A_C\) is read through an active likelihood which need not be
bounded.  The material Abel lift places both likelihood burdens on the same
material history, but no identification or quantitative comparison between
the active spectral and material likelihoods has been proved.

This explains why "finite energy pays every row" is true but insufficient.
It pays the base measure.  Continuation requires control of the actual
same-history likelihood with which the critical record selects that measure.

### 9.1 Fixed layers cannot reset indefinitely, and genuine upcrossings have scale collars

Sections 71--72 of the parent construction add a stronger one-history fact
which must be used before passing to material block rigidity.  At fixed pair
heat length \(a>0\), recall \(\mathfrak p_a\) from Section 6 and put

\[
\mathfrak e(J)
=\nu\int_J\|\nabla u\|_2^2\,dt.
\tag{SC.58a}
\]

For every physical-time interval \(J\),

\[
\boxed{
\int_J|\mathfrak p_a|\,dt
\le
C a^{-1/2}E_0(0)^{3/4}|J|^{1/4}
\nu^{-3/4}\mathfrak e(J)^{3/4}.
}
\tag{SC.58b}
\]

Combining this with the complete pair balance gives

\[
\boxed{
\int_J|\partial_t\mathcal Q_a|\,dt
\le
C a^{-1/2}E_0(0)^{3/4}|J|^{1/4}
\nu^{-3/4}\mathfrak e(J)^{3/4}
+4\mathfrak e(J).
}
\tag{SC.58c}
\]

Thus every fixed \(a>0\) has finite BV and a solution-specific
absolute-continuity modulus on each compact classical interval.  No
datum-uniform modulus is claimed.  A nonvanishing terminal reset
sequence cannot stay at one fixed material heat length.  Any unresolved Zeno
chain must move down the actual scale-time diagonal \(a\downarrow0\).

The scale geometry is simultaneously stronger than positivity.  Since

\[
\partial_a\mathcal Q_a\ge0,
\qquad
\partial_a^2\mathcal Q_a\le0,
\qquad
\mathcal Q_0=0,
\tag{SC.58d}
\]

the critically normalized layer

\[
q_a(t)=\frac{\mathcal Q_a(t)}{\sqrt a}
\tag{SC.58e}
\]

has the exact logarithmic collar property

\[
\boxed{
q_b(t)\ge\frac12q_a(t)
\qquad\text{whenever}\qquad
\frac a4\le b\le4a.
}
\tag{SC.58f}
\]

A critical layer is therefore never a point mass in scale.  The same pair
loss is coercive on it:

\[
\boxed{
\mathcal L_a^{\rm pair}(t)
\ge\frac{\mathcal Q_a(t)^2}{8E_0(0)a}
=\frac{q_a(t)^2}{8E_0(0)}.
}
\tag{SC.58g}
\]

If \(J=[s,t]\) is a connected first upcrossing at scale \(a\),

\[
q_a(s)=\frac h2,
\qquad
q_a(t)=h,
\qquad
\frac h2\le q_a(r)\le h\quad(r\in J),
\]

then the actual joined deformation--residence law yields

\[
\boxed{
\mathfrak e(J)
\ge c\min\left\{
h\sqrt a,
\frac\nu{E_0(0)}a h^{3/2}
\right\}.
}
\tag{SC.58h}
\]

Moreover the complete collar remains occupied throughout \(J\), and

\[
\boxed{
\nu\int_J\int_{a/4}^{4a}
\mathcal L_b^{\rm pair}(r)\,\frac{db}{b}\,dr
\ge c\frac\nu{E_0(0)}h^2|J|.
}
\tag{SC.58i}
\]

The collar is not merely compatible with the Sobolev tower.  It is its exact
Hardy primitive.  Put

\[
R(\sigma,t)=\int_{-\infty}^{\sigma}\rho_1(s,t)\,ds,
\qquad a=2e^\sigma.
\tag{SC.58j}
\]

Then

\[
\boxed{
\mathcal Q_{2e^\sigma}=4R(\sigma),
\qquad
q_{2e^\sigma}=2\sqrt2\,e^{-\sigma/2}R(\sigma).
}
\tag{SC.58k}
\]

Consequently the critical height is the exact logarithmic \(L^1\) mass of the
pair-layer profile:

\[
\boxed{
H(t)
=\frac1{8\sqrt\pi}\int_{\mathbb R}q_{2e^\sigma}(t)\,d\sigma
=\frac1{8\sqrt\pi}\int_0^\infty
\frac{\mathcal Q_a(t)}{a^{3/2}}\,da.
}
\tag{SC.58l}
\]

The same Hardy representation gives

\[
0\le q_a(t)\le4\sqrt\pi H(t),
\qquad
\int_{\mathbb R}q_{2e^\sigma}(t)^2\,d\sigma
\le32\pi H(t)^2,
\tag{SC.58m}
\]

and therefore the datum-finite spacetime collar occupancy

\[
\boxed{
\int_0^T\int_{\mathbb R}
q_{2e^\sigma}(t)^2\,d\sigma\,dt
\le\frac{16\pi E_0(0)^2}{\nu}.
}
\tag{SC.58n}
\]

For any family of crossing components with disjoint physical-time intervals,
the fixed logarithmic collars then give

\[
\boxed{
\sum_k h_k^2|J_k|
\le C\frac{E_0(0)^2}{\nu}.
}
\tag{SC.58o}
\]

The fast part has an equally exact directional reading.  Whenever
\(\mathcal Q_a>0\), define

\[
d\pi_{a,t}(\ell,m)
=\frac{h_a(R_{\ell m})|V_{\ell m}|^2}{\mathcal Q_a(t)}
\,d\ell\,dm
\tag{SC.58q}
\]

and the normalized longitudinal contraction

\[
\mathfrak c_a(t)
=-\frac1{2a}\int R_{\ell m}\cdot V_{\ell m}\,d\pi_{a,t}(\ell,m).
\tag{SC.58r}
\]

The increment and pair laws give

\[
\frac{4\mathfrak p_a}{\mathcal Q_a}=\mathfrak c_a,
\qquad
\boxed{
\partial_t\log q_a
+4\nu\frac{\mathcal L_a^{\rm pair}}{\mathcal Q_a}
=\mathfrak c_a.
}
\tag{SC.58s}
\]

On the upcrossing \(J\) above,

\[
\int_J\mathfrak c_a\,dt
\ge\log2+\frac{\nu h}{4E\sqrt a}|J|.
\tag{SC.58t}
\]

Cauchy--Schwarz and optimization in \(|J|\) remove the heat-length factor
from the active square:

\[
\boxed{
\int_J\mathfrak c_a^2\,dt
\ge\frac{\nu h\log2}{E\sqrt a},
\qquad
\int_J\mathcal Q_a\mathfrak c_a^2\,dt
\ge\frac{\nu\log2}{2E}h^2.
}
\tag{SC.58u}
\]

This active square is exactly the state-aligned source-square of the same
pair layer.  Since \(\mathfrak p_a=-\Phi(a/2)\),

\[
\boxed{
\mathcal Q_a\mathfrak c_a^2
=16\frac{\mathfrak p_a^2}{\mathcal Q_a}
=16\frac{\Phi(a/2)^2}{\mathcal Q_a}.
}
\tag{SC.58u1}
\]

Jensen also gives the carrier-level upper representation

\[
\mathcal Q_a\mathfrak c_a^2
\le
\iint h_a(R_{\ell m})|V_{\ell m}|^2
\left(\frac{R_{\ell m}\cdot V_{\ell m}}{2a}\right)^2
\,d\ell\,dm.
\tag{SC.58u2}
\]

The right side is the longitudinal deformation square read through the
active Gaussian pair likelihood.  It is not a new action and has no proved
datum-finite all-scale integral.  This is the exact splice between Section
56's signed source-square principle, Section 74's fast passage law, and Cycle
158's active-likelihood burden.

Thus a disjoint terminal record sequence with \(h_k\to\infty\) forces

\[
\boxed{
\sum_k\int_{J_k}
\mathcal Q_{a_k}(t)\mathfrak c_{a_k}(t)^2\,dt
=\infty.
}
\tag{SC.58v}
\]

This is the amplitude-record branch.  Since (SC.58l) is an \(L^1\) identity,
unbounded \(H\) could instead arise through logarithmic scale-width escape
while \(\sup_aq_a\) stays bounded.  No selection lemma reducing that diffuse
branch to \(h_k\to\infty\) has been proved.

These estimates materially refine the frontier.  They pay every fixed-scale
exterior, forbid scale-point concentration, charge every actual layer
upcrossing, pay all ordinary-time collar residence, and show that fast passage
cannot remove the charge: it converts it into the scale-independent active
contraction-square (SC.58u).  They still do not close the critical sum.
The quantity \(\mathcal Q_a\mathfrak c_a^2\) has no proved datum-finite
all-scale upper bound; summing it positively over receiving collars may count
the same longitudinal transfer repeatedly.  Because (SC.21) gives

\[
\partial_tR(\sigma,t)=-J_1(\sigma,t),
\tag{SC.58p}
\]

its endpoint change is the signed common face current of the normalized
Sobolev tower.  At the end of Section 74, the immediate analytic burden was
therefore to express and sum the active contraction-square through those
adjacent signed faces before taking its record-positive part.  Sections
75--77 resolve the spatial part of that burden and expose the sharper temporal
one below.

### 9.2 The adjacent-face square is exact; temporal concentration remains

Sections 75--77 of the parent construction sharpen the preceding conclusion.
Fix a translated geometric heat grid

\[
\alpha_j=2e^{s_j},
\qquad
k_j=\alpha_j^{-1/2},
\qquad
\alpha_{j+1}=q^{-2}\alpha_j,
\]

and form the positive adjacent heat difference before taking any positive
record part:

\[
\mathsf D_j:=G_{\alpha_{j+1}}-G_{\alpha_j}\ge0,
\qquad
e_j:=\|\mathsf D_j^{1/2}u\|_2^2,
\qquad
A_j:=k_je_j,
\qquad
U_j:=k_j^{-1}e_j.
\]

Equivalently, \(U_j=\alpha_jA_j\).

Because \(\sum_j\mathsf D_j=I\) strongly on \(L^2\), this is not a new
packet population.  It is the canonical discrete derivative of the same
nested all-pair stock.  Indeed, (SC.8) and (SC.58j) give

\[
\boxed{
\begin{aligned}
e_j
&=\frac12\bigl(\mathcal Q_{\alpha_j}-\mathcal Q_{\alpha_{j+1}}\bigr)
=2\int_{s_{j+1}}^{s_j}\rho_1(\sigma,t)\,d\sigma,\\
\sum_jA_j&\asymp_q H,\\
A_j
&=\frac12\left(q_{\alpha_j}-q^{-1}q_{\alpha_{j+1}}\right).
\end{aligned}
}
\tag{SC.58w}
\]

Thus the ordinary heat-band stock is exactly a first-row Sobolev band mass,
and \(A_j\) is its critical valuation.  Let

\[
\mathfrak d_j:=\|\Lambda\mathsf D_j^{1/2}u\|_2^2,
\qquad
b_j:=-\operatorname{Re}\langle
\mathsf D_j^{1/2}B,\mathsf D_j^{1/2}u\rangle,
\]

retaining \(B=\mathbb P(u\cdot\nabla u)\), and put
\(\phi_j:=\Phi(\alpha_j/2)\).  The band balance and the commutator identity
(SC.50) yield

\[
\boxed{
\begin{aligned}
\frac12e_j'+\nu\mathfrak d_j&=b_j,\\
b_j
&=\phi_{j+1}-\phi_j
=\frac14\left(
\mathcal Q_{\alpha_j}\mathfrak c_{\alpha_j}
-\mathcal Q_{\alpha_{j+1}}\mathfrak c_{\alpha_{j+1}}
\right),\\
\gamma_j:=\frac{2b_j}{e_j}
&=4\frac{\phi_{j+1}-\phi_j}
{\mathcal Q_{\alpha_j}-\mathcal Q_{\alpha_{j+1}}},\\
\mathfrak d_j
&=\mathcal L_{\alpha_j}^{\rm pair}
-\mathcal L_{\alpha_{j+1}}^{\rm pair}.
\end{aligned}
}
\tag{SC.58x}
\]

These are exact *linear* adjacent-face identities for stock, source, and loss.
They do not by themselves show that an upcrossing of one cumulative layer
\(q_\alpha\) produces an upcrossing of one band \(A_j\), or conversely.  That
layer-to-band selection bridge remains open.

This exposes the precise relation between the continuous active square and
the non-recounting band square:

\[
\boxed{
\mathcal Q_a\mathfrak c_a^2
=16\frac{\Phi(a/2)^2}{\mathcal Q_a},
\qquad
U_j\gamma_j^2
=8k_j^{-1}
\frac{(\phi_{j+1}-\phi_j)^2}
{\mathcal Q_{\alpha_j}-\mathcal Q_{\alpha_{j+1}}}
\le4k_j^{-1}\|\mathsf D_j^{1/2}B\|_2^2.
}
\tag{SC.58y}
\]

The first expression is the cumulative heat-layer source square.  The second
is its discrete Dirichlet, or adjacent-face, version: the signed source
difference is formed before it is squared and divided by the stock difference.
That ordering is what removes shared-face scale multiplicity.  It replaces,
rather than proves a positive scale sum of, the cumulative quantity
\(\mathcal Q_a\mathfrak c_a^2\).

The same differences have the exact negative-half-order square resolution

\[
\boxed{
\sum_j \alpha_j^{1/2}\|\mathsf D_j^{1/2}f\|_2^2
\asymp_q\|f\|_{\dot H^{-1/2}}^2.
}
\tag{SC.58z}
\]

The ordinary band balance also gives, with the standard zero-stock
regularization,

\[
\left[\frac d{dt}\sqrt{U_j}\right]_+
\le\alpha_j^{1/4}\|\mathsf D_j^{1/2}B\|_2.
\]

Consequently, for pairwise disjoint first-receiving intervals \(J_m\), with
one fixed selected band \(j_m\) on each interval,

\[
\boxed{
\sum_m
\bigl[\sqrt{U_{j_m}(t_m)}-\sqrt{U_{j_m}(s_m)}\bigr]_+
\le\frac{C_qE}{\nu}.
}
\tag{SC.58aa}
\]

For band doublings it gives the sharper displayed payment

\[
\sum_m\sqrt{\alpha_{j_m}A_{j_m}(s_m)}
\le\frac{C_qE}{(\sqrt2-1)\nu}.
\]

Thus, for any already-selected pairwise disjoint fixed-band doubling family,
common first delivery and refill are datum-finite on the canonical heat grid;
they are not part of the remaining fast obstruction.  This estimate does not
itself construct a family covering all dangerous critical records.

On the concentrated branch \(A_j\ge\theta H\), the exact logarithmic band
balance is

\[
(\log A_j)'=\gamma_j-\delta_j,
\qquad
\delta_j:=\frac{2\nu\mathfrak d_j}{e_j}.
\]

More precisely, on each \(J_m=[s_m,t_m]\) assume

\[
A_{j_m}(s_m)=h_m,
\quad
A_{j_m}(t_m)=2h_m,
\quad
h_m\le A_{j_m}\le2h_m,
\quad
A_{j_m}\ge\theta_mH
\quad\text{throughout }J_m.
\]

Section 76 then proves the genuine spectral gap and the selected lower/upper
sandwich

\[
\boxed{
\begin{gathered}
\mathfrak d_j\ge c_q\theta^2k_j^2e_j,
\qquad
\delta_j\ge2c_q\theta^2\nu k_j^2,\\
\int_{J_m}U_{j_m}\gamma_{j_m}^2\,dt
\ge8c_q\theta_m^2\nu h_m\log2,\\
\sum_m\int_{J_m}U_{j_m}\gamma_{j_m}^2\,dt
\le C_q\int_{\cup_mJ_m}
\|B(u,u)\|_{\dot H^{-1/2}}^2\,dt.
\end{gathered}
}
\tag{SC.58ab}
\]

The lower sum diverges when
\(\sum_m\theta_m^2h_m=\infty\), in particular along a fixed-\(\theta\)
unbounded concentrated record sequence.  Infinitely many arbitrary intervals
alone do not imply that divergence.  More importantly, energy pays only

\[
\int_0^T\|B(u,u)\|_{\dot H^{-1/2}}\,dt
\le\frac{CE}{\nu},
\]

not the square on the right of (SC.58ab).  Spatial recounting has been removed;
temporal concentration has not.

The source square is nevertheless not an independent forcing norm.  With

\[
P_H:=-\langle B,\Lambda u\rangle,
\qquad
\mathcal D:=\|\Lambda^{3/2}u\|_2^2,
\qquad
H'+\nu\mathcal D=P_H,
\]

the one projected Navier--Stokes tangent gives

\[
\boxed{
\|B(u,u)\|_{\dot H^{-1/2}}^2
=\|u_t\|_{\dot H^{-1/2}}^2+\nu^2\mathcal D+2\nu H'.
}
\tag{SC.58ac}
\]

On the global critical record set
\(\mathcal R_H(T)=\{H=H^*,\ H'>0\}\), this becomes

\[
\boxed{
\int_{\mathcal R_H(T)}\|B\|_{\dot H^{-1/2}}^2dt
=\int_{\mathcal R_H(T)}
\bigl(\|u_t\|_{\dot H^{-1/2}}^2+\nu^2\mathcal D\bigr)dt
+2\nu\bigl[H^*(T)-H(0)\bigr].
}
\tag{SC.58ad}
\]

This is one joined Hilbert-space triangle, not three fluids.  If

\[
W_t:=\Lambda^{-1/2}u_t,
\qquad
W_\nu:=\Lambda^{-1/2}(\nu\Delta u),
\qquad
W_B:=\Lambda^{-1/2}B,
\]

then \(W_B=W_\nu-W_t\).  Each vector has the same purely spatial normalized
observer tower

\[
\boxed{
\rho_n[W](\sigma,t)
:=\frac{2^{n-1}}{(n-1)!}\tau^n
\|\Lambda^nG_\tau W(t)\|_2^2,
\qquad
\int_{\mathbb R}\rho_n[W]\,d\sigma
=\frac12\|W\|_2^2,
\qquad
\rho_{n+1}[W]
=\rho_n[W]-\frac1n\partial_\sigma\rho_n[W].
}
\tag{SC.58ae}
\]

This is the exact time--Sobolev tripod latent in Section 77.  For
\(W=W_t,W_\nu,W_B\), the three row masses are respectively one half of the
first, second, and left-hand terms in (SC.58ac).  The construction gives
scale compatibility for each instantaneous tangent vector; it does **not**
give a new conservation law \(\partial_t\rho_n[W]+\partial_\sigma J_n[W]=0\).
That current law belongs to the evolving velocity row unless another evolution
is derived.  Also, \(u_t\) is the Eulerian projected time tangent, not the
material-label acceleration \(D_tu\); it remains tied to the VPI history only
through the complete Navier--Stokes identity above.

The viscous member is already a higher Mellin reading of the original tower:

\[
\boxed{
\nu^2\mathcal D
=\frac{\nu^2}{\sqrt{2\pi}}
\int_{\mathbb R}e^{-3\sigma/2}\rho_2(\sigma,t)\,d\sigma.
}
\tag{SC.58af}
\]

By (SC.23), pure scale differentiation multiplies this Mellin functional by
\(3/2\), while the row recurrence gives, for \(n\ge2\),

\[
\int e^{-3\sigma/2}\rho_{n+1}\,d\sigma
=\left(1-\frac{3}{2n}\right)
\int e^{-3\sigma/2}\rho_n\,d\sigma.
\]

The reconstruction constants in (SC.18) compensate this factor, so every
admissible row still reconstructs the same \(\mathcal D\).  Changing derivative
depth therefore creates no new datum payment.  Any successful second-depth
descent must keep the local signed face cancellation and the joined tangent
until after stopping, rather than globally positivizing the viscous row.

Two domain bridges are still missing.  The upper estimate in (SC.58ab) lives
on whole selected band-upcrossing intervals \(J_m\), whereas the telescope in
(SC.58ad) lives only on \(\mathcal R_H(T)\).  No theorem shows that the lower
fast charge survives restriction to \(J_m\cap\mathcal R_H(T)\), that dangerous
global record growth is covered by such concentrated band doublings, or that
the selected interval graph lies in the global record graph.  After that
alignment, the positive \(W_t\) and \(W_\nu\) rows must be paid with a
coefficient which leaves the \(2\nu[H^*(T)-H(0)]\) term strictly absorbable.
The complementary nonconcentrated allocation remains a separate full-tower
branch.  It points toward diffuse scale-width escape, but no theorem has yet
classified it as diffuse.

### 9.3 Centered depth exposes the transverse-or-donor strictness channel

Sections 78--81 go one level deeper without returning to the full source-norm
upper envelope.  On one fixed band, write

\[
\mathfrak f_j:=\|\Lambda^2\mathsf D_j^{1/2}u\|_2^2,
\qquad
b_j^{(1)}:=-\operatorname{Re}\langle
\Lambda\mathsf D_j^{1/2}B,
\Lambda\mathsf D_j^{1/2}u\rangle,
\]

and, on \(e_j>0\), define the occupied squared frequency, its centered
variance, and the centered source projection by

\[
\kappa_j^2:=\frac{\mathfrak d_j}{e_j},
\qquad
\mathcal V_j:=\frac{\mathfrak f_j}{e_j}-\kappa_j^4\ge0,
\qquad
\mathcal C_j:=\frac{b_j^{(1)}-\kappa_j^2b_j}{e_j}.
\]

They are conditional moments of the same band spectral measure, not new
reserves; zero bands contribute zero and are excluded from the quotients.  The
first two derivative balances give the exact centered law

\[
\boxed{
\frac12e_j'+\nu\mathfrak d_j=b_j,
\qquad
\frac12\mathfrak d_j'+\nu\mathfrak f_j=b_j^{(1)},
\qquad
(\kappa_j^2)'=2\mathcal C_j-2\nu\mathcal V_j.
}
\tag{SC.58ag}
\]

For \(y_j:=\sqrt{U_j}\), the selected radial fast action factors before any
Cauchy upper bound:

\[
\boxed{
\begin{aligned}
U_j\gamma_j^2
&=4\bigl(y_j'+\nu\kappa_j^2y_j\bigr)^2\\
&=4|y_j'|^2
+4\nu\partial_t(\kappa_j^2U_j)
-8\nu\mathcal C_jU_j
+8\nu^2\mathcal V_jU_j
+4\nu^2\kappa_j^4U_j,\\
\kappa_j^2U_j&=\frac{\mathfrak d_j}{k_j}.
\end{aligned}
}
\tag{SC.58ah}
\]

The derivative is therefore the critically valued next Sobolev stock in the
same band.  It cancels across consecutive intervals only when the physical
band endpoint is actually shared; no such cancellation has been proved across
a changing selected-band chain.

Now put

\[
v_j:=\mathsf D_j^{1/2}u,
\qquad
z_j:=\mathsf D_j^{1/2}B,
\qquad
w_j:=(\Lambda^2-\kappa_j^2)v_j,
\]

and remove the radial amplitude change from the band time tangent:

\[
\mathfrak s_j:=\partial_t v_j-\frac{e_j'}{2e_j}v_j.
\]

Then \(v_j\perp w_j\), \(\|w_j\|_2^2=e_j\mathcal V_j\), and

\[
\boxed{
\begin{aligned}
\mathcal C_j
&=-\frac{\operatorname{Re}\langle z_j,w_j\rangle}{e_j},\\
\mathfrak T_j
&:=4k_j^{-1}\left(\|z_j\|_2^2-\frac{b_j^2}{e_j}\right)
=4k_j^{-1}\|\mathfrak s_j+\nu w_j\|_2^2\ge0,\\
\mathfrak s_j+\nu w_j
&=-\left(z_j+\frac{b_j}{e_j}v_j\right),\\
U_j\gamma_j^2+\mathfrak T_j
&=4k_j^{-1}\|\mathsf D_j^{1/2}B\|_2^2.
\end{aligned}
}
\tag{SC.58ai}
\]

Thus \(\mathfrak T_j\) is the complete band tangent left after radial strengthening
is removed.  It contains the centered frequency-shape direction used by
\(\mathcal C_j\), but is not an independently evolved mechanism.

Combining (SC.58ah) and (SC.58ai) gives a further exact completion which is
useful for locating all signs.  When \(\mathcal V_j=0\), set both
\(\mathcal C_j^2/\mathcal V_j\) and
\(\mathcal C_j/\sqrt{\mathcal V_j}\) equal to zero; this is consistent because
\(w_j=0\) then forces \(\mathcal C_j=0\).  Set

\[
\Xi_j:=\mathfrak T_j-
4U_j\frac{\mathcal C_j^2}{\mathcal V_j}\ge0.
\]

Then

\[
\boxed{
\begin{aligned}
U_j\gamma_j^2+\mathfrak T_j
={}&4|y_j'|^2
+4\nu\partial_t(\kappa_j^2U_j)
+4\nu^2\frac{\mathfrak f_j}{k_j}\\
&+\Xi_j
+4U_j\left(
\frac{\mathcal C_j}{\sqrt{\mathcal V_j}}
-\nu\sqrt{\mathcal V_j}
\right)^2.
\end{aligned}
}
\tag{SC.58aj}
\]

The inequality \(\Xi_j\ge0\) is Cauchy--Schwarz between the transverse source
and \(w_j\).  Formula (SC.58aj) shows exactly why the centered signed term is
not a new obstruction once the full transverse remainder is retained.  The
only unsigned difficulty left inside this identity is the moving next-stock
boundary and the absence of a datum-finite time integral for the displayed
positive rows.

Translation averaging proves that pure scale depth cannot manufacture a
strict record coefficient.  With \(L=2\log q\), Sections 79--80 give

\[
\boxed{
\begin{aligned}
\int_0^L\sum_jk_j^{-1}
\|\mathsf D_j^{1/2}g\|_2^2\,dr
&=\sqrt\pi(q-1)\|g\|_{\dot H^{-1/2}}^2,\\
\int_0^L\sum_j\frac{\mathfrak d_j}{k_j}\,dr
&=2\sqrt\pi(q-1)H,\\
\int_0^L\sum_j(U_j\gamma_j^2+\mathfrak T_j)\,dr
&=4\sqrt\pi(q-1)
\left(
\|u_t\|_{\dot H^{-1/2}}^2
+\nu^2\mathcal D+2\nu H'
\right).
\end{aligned}
}
\tag{SC.58ak}
\]

The derivative of the middle line is precisely the \(2\nu H'\) term in the
last line.  The scale recurrence has recovered the target with exact
coefficient, not a smaller one.  Any strict contraction must therefore retain
\(\mathfrak T_j\) or an equivalent signed donor payment; dropping the transverse
row returns the circular joined-tangent identity (SC.58ac).

The donor is already present simultaneously in the same heat-band family.
With \((x)_-:=\max\{-x,0\}\), before any positive selection,

\[
\boxed{
\sum_je_j=\|u\|_2^2,
\qquad
\sum_j\mathfrak d_j=\|\Lambda u\|_2^2,
\qquad
\sum_jb_j=0,
\qquad
\sum_j(b_j)_+=\sum_j(b_j)_-.
}
\tag{SC.58al}
\]

When \(\|u(t)\|_2>0\), if \(c_j=b_j/e_j\) and
\(d\varpi_j=e_j/\|u\|_2^2\), then
\(\mathbb E_\varpi c=0\) and

\[
\sum_jk_jb_j
=\|u\|_2^2\operatorname{Cov}_\varpi(k,c).
\]

Critical production is therefore a scale--growth-rate covariance inside one
energy-conserving redistribution.  Quantitatively, for every real \(\lambda\),

\[
\boxed{
4\left|\sum_jk_jb_j\right|^2
\le
\left(\sum_jU_j\gamma_j^2\right)
\left(\sum_je_jk_j(k_j-\lambda)^2\right).
}
\tag{SC.58am}
\]

The minimizing center is the time- and translation-dependent quantity

\[
\lambda_{q,r}(t)
:=\frac{\sum_je_jk_j^2}{\sum_je_jk_j}.
\]

The
second factor is the discrete shape-width defect complementary to scale
location, tying Section 80 directly back to the shape/location split in
(SC.29)--(SC.31).  It identifies the nonconcentrated branch's native
coordinate but does not bound it.

Finally, Section 81 makes the concentrated strictness alternative
quantitative.  For a selected band with \(A_j\ge\theta H\), a relative annulus
projector \(\Pi_j^{\rm core}\) carries at least half its stock.  More
explicitly, for constants
\(0<\varepsilon_{q,\theta}<1<M_{q,\theta}\), put

\[
\Omega_j^{\rm core}
:=\{\varepsilon_{q,\theta}k_j
\le|\xi|\le M_{q,\theta}k_j\},
\qquad
\Pi_j^{\rm core}:=\mathbf1_{\Omega_j^{\rm core}}(D),
\]

so that

\[
\int_{\Omega_j^{\rm core}}
\left(e^{-\alpha_{j+1}|\xi|^2}-e^{-\alpha_j|\xi|^2}\right)
|\widehat u(\xi)|^2\,d\xi
\ge\frac12e_j.
\]

Define

\[
\eta_{q,\theta}
:=\inf_{\xi\in\Omega_j^{\rm core}}
\left(e^{-\alpha_{j+1}|\xi|^2}-e^{-\alpha_j|\xi|^2}\right)>0.
\]

Let
\(\Pi_j^{\rm out}=I-\Pi_j^{\rm core}\) and
\(\lambda_j=-b_j/e_j\).  Then

\[
\|\mathsf D_j^{1/2}(B-\lambda_ju)\|_2^2
=\frac{k_j}{4}\mathfrak T_j,
\]

and, whenever \(b_j>0\),

\[
\boxed{
\mathfrak T_j\ge\frac{\eta_{q,\theta}}8U_j\gamma_j^2
\quad\text{or}\quad
\langle \Pi_j^{\rm out}B,\Pi_j^{\rm out}u\rangle
\ge\frac14b_j.
}
\tag{SC.58an}
\]

The first branch gives the pointwise strict radial deficit

\[
U_j\gamma_j^2
\le\left(1+\frac{\eta_{q,\theta}}8\right)^{-1}
(U_j\gamma_j^2+\mathfrak T_j).
\]

Its local source-envelope factor is
\(8/(8+\eta_{q,\theta})<1\); after a valid selected/global-record alignment,
the returned record coefficient from this branch would be strictly below
\(2\nu\).  This is not yet a global absorption: the same envelope still
contains the positive \(W_t\) and \(W_\nu\) square rows, neither of which is
datum-paid.

Uniform strictness requires fixing \(q>1\) and
\(\theta_0\in(0,1)\), and restricting this branch to
\(A_j\ge\theta_0H\).  The annular cutoffs and
\(\eta_{q,\theta_0}>0\) may then be chosen uniformly.  Allowing
\(\theta\downarrow0\) would destroy the claimed uniform coefficient gap and
belongs to the nonconcentrated branch.

The lower quantum in (SC.58ab) may be restricted to the positive receiver set
\(J_m\cap\{b_{j_m}>0\}\).  Indeed,
\(\int_{\{\gamma>0\}}\gamma\ge\int_J\gamma\), and Cauchy--Schwarz on the
smaller set preserves the same lower minimization.  Therefore

\[
\int_{J_m\cap\{b_{j_m}>0\}}
U_{j_m}\gamma_{j_m}^2\,dt
\ge8c_q\theta_m^2\nu h_m\log2.
\]

The dichotomy (SC.58an) consequently applies pointwise on the part carrying
the integrated fast lower charge.  It may nevertheless switch branches in
time; no measurable stopped assignment with bounded multiplicity has been
proved.

The second branch identifies an actual simultaneous ordinary-energy withdrawal
outside the receiver's genuine annulus.  Section 82 identifies it locally with
a restricted canonical heat-face current; the adaptive switching problem is
separated below.

### 9.4 The donor is a restricted old current, not a new shell source

Section 82 closes the *fixed-projector* representation gap.  Define the
unrestricted heat face

\[
\mathfrak p_j^{\rm face}
:=\langle B,G_{\alpha_j}u\rangle=-\phi_j.
\]

Then the existing adjacent-band input and both true exteriors obey

\[
\boxed{
b_j=\mathfrak p_j^{\rm face}-\mathfrak p_{j+1}^{\rm face},
\qquad
\mathfrak p_j^{\rm face}=\sum_{\ell\ge j}b_\ell,
\qquad
\sum_jk_jb_j
=(1-q^{-1})\sum_jk_j\mathfrak p_j^{\rm face},
\qquad
\mathfrak p_{-\infty}^{\rm face}
=\mathfrak p_{+\infty}^{\rm face}=0.
}
\tag{SC.58ao}
\]

The corresponding fine-tail stock and loss are exactly the old nested pair
objects:

\[
K_j^{\rm tail}:=\sum_{\ell\ge j}e_\ell
=\langle u,(I-G_{\alpha_j})u\rangle
=\frac12\mathcal Q_{\alpha_j},
\qquad
L_j^{\rm tail}=\mathcal L_{\alpha_j}^{\rm pair}.
\]

Hence, with the grid translation held fixed,

\[
\boxed{
\int_{t_0}^{t_1}\mathfrak p_j^{\rm face}(\vartheta)\,d\vartheta
=\frac12\bigl[K_j^{\rm tail}(t_1)-K_j^{\rm tail}(t_0)\bigr]
+\nu\int_{t_0}^{t_1}L_j^{\rm tail}(\vartheta)\,d\vartheta
=\frac14\bigl[
\mathcal Q_{\alpha_j}(t_1)-\mathcal Q_{\alpha_j}(t_0)
\bigr]
+\nu\int_{t_0}^{t_1}
\mathcal L_{\alpha_j}^{\rm pair}(\vartheta)\,d\vartheta.
}
\tag{SC.58ap}
\]

This is the q-grid form of the same labelled all-pair stock law, not an
independent donor ledger.

For one selected band \(j\), keep its sharp exterior projector
\(\Pi_j^{\rm out}\) fixed on the selected interval and define

\[
\begin{aligned}
\mathfrak p_{\ell\mid j}^{\rm out}
&:=\langle B,G_{\alpha_\ell}\Pi_j^{\rm out}u\rangle,\\
b_{\ell\mid j}^{\rm out}
&:=-\langle B,\mathsf D_\ell\Pi_j^{\rm out}u\rangle,\\
e_{\ell\mid j}^{\rm out}
&:=\langle u,\mathsf D_\ell\Pi_j^{\rm out}u\rangle,\\
\mathfrak d_{\ell\mid j}^{\rm out}
&:=\langle\Lambda u,
\mathsf D_\ell\Pi_j^{\rm out}\Lambda u\rangle.
\end{aligned}
\]

Commutation of the fixed Fourier multipliers gives

\[
\boxed{
b_{\ell\mid j}^{\rm out}
=\mathfrak p_{\ell\mid j}^{\rm out}
-\mathfrak p_{\ell+1\mid j}^{\rm out},
\qquad
\frac12\partial_te_{\ell\mid j}^{\rm out}
+\nu\mathfrak d_{\ell\mid j}^{\rm out}
=b_{\ell\mid j}^{\rm out}.
}
\tag{SC.58aq}
\]

Its coarse face is zero and its fine face is precisely
\(\langle\Pi_j^{\rm out}B,\Pi_j^{\rm out}u\rangle\); recombining the annular
core and exterior cancels their fine faces by \(\langle B,u\rangle=0\).
Thus the Section 81 donor is locally a restricted terminal face of the same
nested heat current.

At the end of Section 82 this was not yet a global donor packing theorem:
successive selected events change the sharp projector, so their restricted
stocks do not cancel pairwise.  Sections 83--84 solve that finite switching
bookkeeping by refining every projector into one common atom complex.  They do
not yet prove the record cover or terminal estimate.

### 9.5 Finite adaptive cancellation is exact; critical scale work remains

Fix a finite family of selected annular projectors and let \(\mathfrak B_N\)
be the Boolean algebra they generate.  Its nonzero orthogonal atoms
\(\mathsf A_\beta\in\operatorname{At}(\mathfrak B_N)\) satisfy

\[
\mathsf A_\beta\mathsf A_{\beta'}=0\quad(\beta\ne\beta'),
\qquad
\sum_{\beta\in\operatorname{At}(\mathfrak B_N)}\mathsf A_\beta=I.
\]

For every heat band define

\[
\begin{aligned}
e_{\ell,\beta}
&:=\langle u,\mathsf D_\ell\mathsf A_\beta u\rangle,\\
\mathfrak d_{\ell,\beta}
&:=\langle\Lambda u,
\mathsf D_\ell\mathsf A_\beta\Lambda u\rangle,\\
b_{\ell,\beta}
&:=-\langle B,\mathsf D_\ell\mathsf A_\beta u\rangle,\\
\mathfrak p_{\ell,\beta}^{\rm atom}
&:=\langle B,G_{\alpha_\ell}\mathsf A_\beta u\rangle.
\end{aligned}
\]

Every atom is only a simultaneous readout of the same field.  Positivity,
commutation, and the one Navier--Stokes equation give

\[
\boxed{
\frac12\partial_te_{\ell,\beta}
+\nu\mathfrak d_{\ell,\beta}
=b_{\ell,\beta}
=\mathfrak p_{\ell,\beta}^{\rm atom}
-\mathfrak p_{\ell+1,\beta}^{\rm atom}.
}
\tag{SC.58ar}
\]

Summing over all atoms recovers \((e_\ell,\mathfrak d_\ell,b_\ell,
\mathfrak p_\ell^{\rm face})\).  When a new annulus is inserted, every old
atom is replaced by its two orthogonal core/exterior children and, at every
time and heat face,

\[
(e,\mathfrak d,b,\mathfrak p)_\mathsf A
=(e,\mathfrak d,b,\mathfrak p)_{
\mathsf A\Pi^{\rm core}}
+(e,\mathfrak d,b,\mathfrak p)_{
\mathsf A\Pi^{\rm out}}.
\]

Refinement therefore creates neither stock nor current.

An admissible finite stopped incidence complex \(\mathscr C_N\) consists of
space--time--scale atom cells with pairwise-disjoint interiors and complete
face matching: each internal face has exactly two opposite incidences, or one
parent incidence matched to its full family of children.  Time refinement is
at fixed heat band and scale continuation is at fixed atom.  Summing
(SC.58ar) over such a complex gives the exact finite divergence theorem

\[
\boxed{
\begin{aligned}
&\frac12\sum_{F\in\partial_t^+\mathscr C_N}e_F
-\frac12\sum_{F\in\partial_t^-\mathscr C_N}e_F
+\nu\sum_{C\in\mathscr C_N}\int_{J_C}\mathfrak d_C\,dt\\
&\qquad=
\sum_{G\in\partial_\sigma\mathscr C_N}
\epsilon_G\int_{J_G}\mathfrak p_G^{\rm atom}\,dt.
\end{aligned}
}
\tag{SC.58as}
\]

All matched time, refinement, and scale faces cancel before any critical
weight or positive record part is applied.  This exactly resolves finite
adaptive-projector mismatch once an admissible complex has been supplied; it
does not construct a global record-covering complex or pass to infinitely many
refinements.

Now give each cell its critical value \(k_C\).  Define

\[
\begin{aligned}
\mathfrak H_N^\pm
&:=\frac12\sum_{F\in\partial_t^\pm\mathscr C_N}k_Fe_F,\\
\mathfrak L_N
&:=\sum_{C\in\mathscr C_N}k_C
\int_{J_C}\mathfrak d_C\,dt,\\
\mathfrak E_N
&:=\sum_{G\in\partial_\sigma\mathscr C_N}
\epsilon_Gk_G\int_{J_G}\mathfrak p_G^{\rm atom}\,dt,\\
\mathfrak W_N
&:=\sum_{G\in\operatorname{Int}_\sigma\mathscr C_N}
(k_{G,+}-k_{G,-})
\int_{J_G}\mathfrak p_G^{\rm atom}\,dt,
\end{aligned}
\]

where \(+\) is the finer receiving side and \(-\) the coarser side.  Hence

\[
k_{G,+}-k_{G,-}=(q-1)k_{G,-},
\]

and weighting the cells before summation gives

\[
\boxed{
\mathfrak H_N^+-\mathfrak H_N^-
+\nu\mathfrak L_N
=\mathfrak E_N+\mathfrak W_N.
}
\tag{SC.58at}
\]

The signed \(\mathfrak W_N\) is genuine scale work: it is the change in
critical value when the same ordinary-energy current crosses to a finer scale.
It is the stopped-complex version of (SC.58ao), and the discrete commutator of
the q-weight with the scale boundary.  In the continuum it is exactly the
Mellin eigenfunctional effect in (SC.23): unweighted faces cancel, while the
derivative of the critical weight survives.  It is not an edge error or a
positive payer.

The parent construction next proposes to assign record-positive scale work to
first receivers and write transverse plus donor parts.  That assignment is not
yet an identity.  The work \(\mathfrak W_N\) is built from face currents
\(\mathfrak p_G^{\rm atom}\), whereas (SC.58an) classifies band strengthening
\(b_j=\mathfrak p_j^{\rm face}-\mathfrak p_{j+1}^{\rm face}>0\).  No theorem
maps every admitted positive face-work cell to an eligible concentrated band
cell.  A measurable tie-broken transverse/donor partition, control of its new
time faces, and the nonconcentrated remainder are also still missing.

After those definitions, the natural candidate terminal estimate would be

\[
\boxed{
\sup_N\left(
\mathfrak W_{N,+}^{\rm tr}
+\mathfrak E_{N,+}^{\rm terminal}
\right)
\le C(u_0,\nu),
}
\tag{SC.58au}
\]

where the supremum must run over one specified nested, nonrecounting class of
admissible first-record complexes, and both displayed quantities must be
defined as nonnegative record-admitted valuations.  These definitions, their
sufficiency for a strict recurrence, the \(N\to\infty\) limit, and the estimate
itself are open.  Thus (SC.58au) is a candidate terminal theorem schema, not a
proved strict reduction.  Sections 83--84 remove finite adaptive-projector
recounting and isolate the exact q-weight work; they do not pay the terminal
diagonal.

## 10. Scalar saturation deletes the listed receiver-budget closure

Section 69 of the parent construction gives an exact scalar receiver schedule
with

\[
\partial_ta_n+d_n=F_n-F_{n+1},
\qquad
\sum_na_n<\infty,
\qquad
\sum_n\int d_n<\infty,
\tag{SC.59}
\]

finite scalar analogues of \(L_t^2\) critical height and state-aligned
residence, shared-face cancellation, and one fixed scalar cone coefficient,
while its square-root depth moment makes infinitely many records in finite
time.  Denote that comparison-model moment by
\(H_{\rm sc}:=\sum_n\sqrt n\,a_n\).

It is explicitly not a Navier--Stokes history: its currents are freely
prescribed and need not satisfy the commutator (SC.40), the pair law (SC.10),
or the vector tangent (SC.37).

Within the scalar receiver class, the construction proves the logical
boundary

\[
\boxed{
\begin{gathered}
\text{finite stock + finite loss + finite }L_t^2H_{\rm sc}
+\text{ source-square residence}\\
+\text{ shared-face cancellation + a common scalar cone bound}\\
\not\Longrightarrow\text{ critical record packing}.
\end{gathered}
}
\tag{SC.60}
\]

The July 17 comparison tests sharpen the same boundary under the repository's
hard periodic quarantine.  A periodic 2D3C comparison event can transfer more
than one half into a finer passive daughter, so there is no universal
one-interface sub-half rule.  A periodic triad comparison can make a new
daughter enter the next advecting leg immediately, so there is no pointwise
universal deficit in the autocatalytic fraction.  Neither comparison is the
live decaying finite-energy \(\mathbb R^3\) participant or an indefinitely
repeating same-history construction.  They falsify universal local rules; they
do not license a periodic-to-Gold bridge.

Therefore:

- a universal one-interface contraction is false;
- a scalar receiver recurrence is too large a class to distinguish the
  fluid;
- the actual fluid now supplies the fixed-layer collar law, the adjacent-face
  first-delivery payment, and the selected concentrated source-square absent
  from that scalar schedule;
- the first remaining concentrated-branch theorem must align that selected
  receiver graph with the global \(H\)-record graph and carry the quantitative
  transverse-or-donor alternative through adaptive heat faces; the full joined
  time/viscous square is only an alternate envelope;
- if its packing fails, diffuse-versus-tight profile classification remains
  open; only after tightness, nested-profile extraction, and an ancestry
  license are proved may a tight branch pass to a same-daughter theorem.

## 11. What survives and what is superseded

### 11.1 Proved structures which survive

1. **Signed affine second descent.**  It converts a fixed-band affine interior
   into true endpoint stock before positivity.  It prevents recounting but, by
   (SC.26), does not erase critical gain.

2. **Source-square alignment.**  It pairs current with the stock actually
   transported and cancels shared faces.  It does not bound the remaining
   record-positive source.

3. **Slow irreversible contraction.**  On the branch
   \(\mu\ge\delta\mathcal I\), the exact receiver gives
   \(\mathcal O\le(1-\delta)\mathcal I\).  This is a local conditional branch,
   not a global recurrence.

4. **First-record stopping.**  It is the correct causal assignment and gives
   the exact running-maximum identity.  It is not a payer.

5. **Fixed-layer variation and collar charge.**  A fixed material heat length
   has finite temporal variation; an occupied critical layer fills a fixed
   logarithmic collar; and every genuine upcrossing pays (SC.58h)--(SC.58i).
   These facts confine, but do not yet sum, the scale-time diagonal.

6. **Fast active contraction-square lower law.**  Every fixed-layer
   upcrossing obeys

   \[
   \int_J\mathcal Q_a\mathfrak c_a^2\,dt
   \ge\frac{\nu\log2}{2E}h^2.
   \]

   This is a scale-independent lower payment and the exact longitudinal
   source-square identity (SC.58u1).  No datum-finite positive scale sum of
   this cumulative layer square has been proved.

7. **Adjacent-face first-receiving reduction.**  Equations
   (SC.58w)--(SC.58ab) identify the exact stock, source, and loss differences,
   pay common first delivery, and remove scale multiplicity from the selected
   concentrated fast square.  The resulting upper quantity is the temporal
   \(L_t^2\dot H^{-1/2}\) norm of the one-field nonlinear tangent.  Its
   datum-finite \(L_t^1\) norm does not pay that square, and its selected
   interval graph has not been aligned with the global \(H\)-record graph.

8. **Centered transverse-or-donor localization.**  Equations
   (SC.58ag)--(SC.58aq) prove that scale depth alone returns the exact record
   coefficient, isolate the transverse residual, pair every positive receiver
   with an ordinary-energy trough, give a local strict transverse-or-donor
   alternative, and return a fixed-projector donor to the old heat current.
   They do not construct the stopped receiver graph or pay the terminal
   valuation.

9. **Finite adaptive stopped-complex cancellation.**  Equations
   (SC.58ar)--(SC.58at) put every finite projector family into one common
   Boolean atom refinement, cancel all matched interfaces before weighting,
   and isolate the signed critical scale work.  They do not construct the
   record cover, map positive face work to eligible band strengthening, or
   prove the terminal estimate (SC.58au).

10. **The deterministic q-adic consumer.**  If a genuine recurrence with
   \(q\theta<1\) and summable admitted errors is proved, it closes the weighted
   tail.  It cannot manufacture that recurrence.

### 11.2 Proposed terms which are superseded

At fixed heat depth,

\[
\partial_ta_n+d_n=F_n-F_{n+1},
\qquad
\sum_na_n=K\le E_0(0).
\tag{SC.61}
\]

Therefore:

- `common refill` is internal shared-face transfer, not an independent
  \(B^{\rm refill}\);
- `fast transit` is the same shared current entering the next receiver, not a
  disposable \(B^{\rm fast}\); whether that current has one inherited
  daughter lineage is a separate unproved extraction question;
- the initial and coarse exteriors are paid;
- the simultaneous fine-depth/terminal-time diagonal is not an edge error.
  Abel summation identifies it with the critical VPI record current itself.

Define

\[
M_\tau^*(t)=\max_{0\le r\le t}M_\tau(r),
\qquad
\mathfrak R_\tau
=\{t:M_\tau(t)=M_\tau^*(t),\ M_\tau'(t)>0\}.
\]

The entire unresolved scalar object is already

\[
M_\tau^*(T)-M_\tau(0)
=\int_{\mathfrak R_\tau}
[\mathcal P_\tau-\mathcal L_\tau]_+\,dt.
\tag{SC.62}
\]

Calling the right side an edge term only renames continuation.

## 12. The refined continuation frontier after adjacent-face descent

The fixed-layer collar remains the source of the lower payment, but the parent
construction has now completed the spatial adjacent-face descent on selected
first receivers, identified the only projected strictness channels, and proved
finite adaptive-projector cancellation in one common atom complex.  Critical
weighting leaves the signed scale work (SC.58at).  What remains is its
record-stopped terminal packing, together with the classification and control
of the complementary nonconcentrated allocation.  A
failure of those direct branches has not been proved to produce one nested
chain, and a nested scale profile has not been proved to carry one canonical
Duhamel daughter.  The material block construction is therefore tertiary and
ancestry-gated, not a compulsory second step.

### 12.1 Primary concentrated target: record-aligned terminal scale-work packing

The immediate open target is:

> **RecordAlignedTerminalScaleWorkPacking.A.**  Fix \(q>1\) and
> \(\theta_0\in(0,1)\), define concentration by
> \(A_j\ge\theta_0H\), and construct one nested sequence of admissible finite
> first-record atom complexes whose admitted cells cover the concentrated part
> of every dangerous global \(H\)-record rise without multiplicity.  Preserve
> the fixed-layer/band lower quantum and the signed \(H'\) telescope.  Assign
> each admitted positive face-work contribution exactly once either to a
> concentrated positive band eligible for (SC.58an), or to an explicitly
> retained nonconcentrated remainder.  On eligible cells make a measurable,
> tie-broken transverse/donor partition.  Extend the atom divergence theorem
> to the next Sobolev stock so that its moving endpoints cancel.  Define the
> nonnegative terminal valuations in (SC.58au), prove their uniform datum bound
> along the nested exhaustion, and derive from the weighted identity a genuine
> recurrence whose returned record coefficient is strictly below \(2\nu\).

This statement contains seven separately checkable bridges which are not in
Sections 75--84:

1. construct disjoint or bounded-multiplicity first-receiving cells covering
   the concentrated part of dangerous global critical record growth;
2. bridge cumulative layer upcrossings to band upcrossings without losing the
   fixed-layer lower charge;
3. align the resulting complex with the global \(H\)-record graph, or prove
   another signed stopping identity on which the same lower quantum survives;
4. map every admitted positive face current in \(\mathfrak W_N\) to a
   concentrated \(b_j>0\) receiver before applying (SC.58an), while retaining
   the nonconcentrated work separately;
5. define a measurable transverse/donor partition and an acyclic nested
   stopped-complex exhaustion; finite Boolean refinement then supplies the
   already-proved non-recounting switch algebra;
6. cancel \(\partial_t(\kappa_j^2U_j)\) in a derivative-depth version of the
   complex and terminate donors by signed cancellation, datum-paid
   stock/loss/exterior, or bounded-multiplicity handoff;
7. define \(\mathfrak W_{N,+}^{\rm tr}\) and
   \(\mathfrak E_{N,+}^{\rm terminal}\), prove (SC.58au), and show that it
   yields the required strict recurrence rather than a renamed terminal
   diagonal.

The exact spatial and finite-complex inputs are already
(SC.58w)--(SC.58at).  The old instruction "express the square through adjacent
faces" and the later instruction "cancel projector switches" are no longer
the whole open target.  The full \((W_t,W_\nu)\) square remains an alternate
envelope calculation; pure depth descent of that envelope is proved to return
the circular \(2\nu\) coefficient.  The sharper concentrated obstruction is
the selection, derivative-depth extension, and uniform terminal valuation of
the genuine critical scale work.

### 12.2 Failure geometry is itself an open theorem

If the direct concentrated packing and nonconcentrated tower estimates are false,
the countersequence may remain
diffuse across a branching family of scales and times, or it may concentrate
into a tight nested profile.  The repository has not excluded either geometry
and has not proved the extraction

\[
\boxed{
\text{failure of direct record-aligned terminal scale-work packing}
\Longrightarrow
\begin{cases}
\text{a controlled diffuse record-defect measure},\\
\text{or a tight nested same-history profile}.
\end{cases}
}
\tag{SC.62a}
\]

A carrier-faithful concentration--compactness theorem would have to preserve
the continuing field, the fixed labels, the commutator, and the critical
record normalization.  A local profile or a scalar defect measure does not by
itself inherit the decaying finite-energy \(\mathbb R^3\) hypotheses required
by the repo's null-rigidity theorems.

The diffuse branch points toward a direct all-pair active-likelihood or
Hilbert-defect theorem.  A tight branch may admit the candidate daughter
construction below, but the lineage-extraction license is an additional open
bridge.

### 12.3 Exact candidate same-daughter split at the Abel receiver

Let \(Q_k\) be any fixed smooth receiver on a prescribed stopped acquisition
interval \([t_k,t_{k+1}]\), and put
\(B(f,g):=\mathbb P(f\cdot\nabla g)\).  Its exact nonlinear Duhamel increment is

\[
\begin{aligned}
d_k
&:=Q_ku(t_{k+1})
-G_{\nu(t_{k+1}-t_k)}Q_ku(t_k)\\
&=-\int_{t_k}^{t_{k+1}}
G_{\nu(t_{k+1}-s)}Q_kB(u,u)(s)\,ds.
\end{aligned}
\]

For \(t\ge t_{k+1}\), continue that chosen increment by

\[
r_k(t)=G_{\nu(t-t_{k+1})}d_k,
\qquad
v_k(t)=u(t)-r_k(t).
\]

The Abel source then has the exact algebraic split

\[
\boxed{
\begin{aligned}
\mathcal P_\tau={}&
-\langle B(v_k,v_k),\Psi_\tau u\rangle\\
&-\langle B(v_k,r_k),\Psi_\tau u\rangle\\
&-\langle B(r_k,v_k)+B(r_k,r_k),\Psi_\tau u\rangle.
\end{aligned}
}
\tag{SC.63}
\]

The rows mean, respectively:

1. fresh/background production;
2. passive carriage of the inherited daughter;
3. inherited daughter acting in the next advecting/backreaction leg.

The Duhamel formula and split are algebraically exact once \(Q_k\) and the
stopped interval have been prescribed.
It does not prove that a collar-packing countersequence supplies one canonical
daughter.  A stopped full-PDE lineage extraction, bounded multiplicity, and a
paid error ledger are all still unproved.

### 12.4 Candidate quantitative block theorem for an extracted tight lineage

The proposed theorem for this residual saturation branch is:

> **RecordStoppedAbelVPIInheritedBlockDeficit.A.**  Given an already extracted
> tight first-record lineage of the actual Abel commutator, follow the same acquired
> daughter through the next receiver's complete handoff-and-return window.
> After signed face cancellation and before positive selection, either
>
> 1. the fresh/passive rows in (SC.63) are a parent-predictable,
>    bounded-multiplicity disintegration of a datum-finite original-history
>    measure; or
> 2. the inherited autocatalytic row loses a uniform critical fraction over
>    the complete block, up to errors summable in that same ledger.

In an unweighted convention, the second conclusion has the form

\[
\mathfrak C_k^{\rm out}
\le(1-\delta)\mathfrak C_k^{\rm in}+B_k,
\qquad B_k\ge0,
\tag{SC.64}
\]

Put

\[
\Delta j_k:=j_{k+1}-j_k,
\qquad
\theta_k:=q^{\Delta j_k}(1-\delta),
\qquad
\widetilde B_k:=q^{j_{k+1}}B_k,
\]

and require

\[
\theta:=\sup_k\theta_k<1,
\qquad
\sum_k\widetilde B_k<\infty.
\tag{SC.65}
\]

In the corresponding uniform weighted convention,

\[
q^{j_{k+1}}\mathfrak C_k^{\rm out}
\le\theta q^{j_k}\mathfrak C_k^{\rm in}+\widetilde B_k,
\tag{SC.66}
\]

With these definitions, (SC.66) follows from (SC.64) using
\(\theta_k\le\theta\).  The two conventions must not be mixed by multiplying
by \(q\) twice.
Slow receivers are already handled by the proved irreversible branch.  The
new content would concern only an extracted maximal fast lineage.

The exact five-mode true-Leray comparison in
[the triangular successor-relay countertest](mpp-vpi-five-mode-triangular-successor-relay-countertest-20260722.md)
now rules out one proposed source of the strict factor in (SC.64): isolated
two-triad return or detuning does not force a universal geometry-only
\(\delta>0\).  The candidate block theorem remains live only if its deficit is
paid by a named interaction restored from the full network, or by another
datum-dependent same-history quantity.  Absorbing the complete successor
transfer into \(B_k\) would merely rename the unproved current and would not
establish (SC.65).

The corresponding
[full-network Taylor completion](mpp-vpi-full-network-three-arm-relay-taylor-tax-20260722.md)
does exhibit a named local tax on the selected arm, but the same Taylor jet
still has rising total critical height.  It therefore does not yet supply the
block deficit either.  The omitted daughters already reconverge into occupied
modes at the first feedback order, so literal no-reconvergence is false and a
positive ancestry count is noncanonical after amplitudes merge.  Any surviving
block statement must instead preserve a canonical signed or orthogonal
decomposition through the merge and pay the complete singleton aggregate
without recounting it.  Quantitatively, the three-corner comparison tax is
\(O(t^6)\) against an \(O(t^2)\) positive critical-height gain, so the displayed
local tax cannot pay any fixed fraction of that aggregate.

### 12.5 Candidate compactness/rigidity core

A possible contradiction core for (SC.64) is the following proposed theorem:

> **RecordStoppedAbelVPIZeroCostBlockCompactnessRigidity.A.**  There is no
> normalized sequence of actual first-record Abel/VPI blocks which retains
> unit positive critical radial gain while its genuine exterior payment,
> irreversible residence, paid fresh/passive reset, and complete inherited
> transverse/full-exchange cost all tend to zero.

Such a proof would require at least:

1. **Common-frame tightness.**  Retain \(\Theta_{\tau_k}\), its fixed labels,
   and its complete tangent—not merely \(|\Theta_{\tau_k}|^2\)—and obtain a
   nonzero limit after only lawful Navier--Stokes normalizations.  Prove that
   the limit is again a decaying finite-energy \(\mathbb R^3\) field, not only
   a local profile or defect measure.

2. **Lower semicontinuity of paid costs.**  A zero-cost survivor must have a
   purely radial projective continuation throughout the whole stopped block,
   not only at one instant.

3. **Carrier identification.**  Prove the missing implication

   \[
   \boxed{
   \text{vanishing Abel-block transverse/full-exchange cost}
   \Longrightarrow
   \mathscr R_{\rm all}=0
   }
   \tag{SC.67}
   \]

   for the limiting complete all-chord material residual.

4. **Null rigidity.**  Cycle 157 already proves

   \[
   \mathscr R_{\rm all}=0\Longrightarrow u=0
   \tag{SC.68}
   \]

   on decaying finite-energy \(\mathbb R^3\).  Cycle 155 proves instantaneous transverse
   nonradiality on active fine incidence.  These results identify the zero-cost
   limit once (SC.67) and compactness are supplied; they do not themselves
   provide the compactness or a time-integrated gap.

5. **Contradiction.**  The zero field cannot retain the normalized unit record
   gain.

If the normalized block class is precompact and the costs are lower
semicontinuous, null exclusion yields a positive normalized cost gap.  That is
not yet (SC.64): an additional exact block balance must identify the gap with
lost inherited output plus errors \(B_k\) paid by a bounded-overlap original-
history measure.  Only then may the deterministic q-adic lemma be used as the
final consumer.  Without the compactness, identification, and block-balance
steps, null rigidity alone does not imply a quantitative contraction.

This architecture avoids asking directly for any of the following false or
circular targets:

- bound every positive scale current;
- prove a universal one-step sub-half transfer;
- pay the critical diagonal with the unweighted matrix exterior;
- bound (SC.62) directly without exposing its signed Hardy/current or
  material structure;
- infer record packing from finite scalar stock and loss alone.

It could become a genuine strict reduction only after the record-aligned
terminal scale-work theorem, the nonconcentrated tower theorem, or a downstream
compactness implication is formulated in a closed function class with a
checkable conclusion genuinely weaker than bounded record variation.  The
present note does not claim that promotion.

## 13. Exact base and candidate branches to continuation

The proved dependency base and the open branches are

\[
\boxed{
\begin{array}{c}
\text{one fixed-viscosity material history }(R,V,A)\\
\Downarrow\\
\text{full labelled pair and same-field tensor carriers}\\
\Downarrow\ \text{positive trace and complete heat-scale derivatives}\\
\text{bounded nested pair family }\mathcal Q_a,
\quad(\rho_n,J_n),\quad(a_n,F_n,d_n)\\
\Downarrow\ \text{complete scale derivatives plus fixed-layer BV/collar charges}\\
M_\tau=\|\Theta_\tau\|^2,
\qquad
M_\tau'=\mathcal P_\tau-\mathcal L_\tau
=2\langle\Theta_\tau,D_t\Theta_\tau\rangle\\
\Downarrow\ \text{signed adjacent heat faces before positive selection}\\
\mathsf D_j=G_{\alpha_{j+1}}-G_{\alpha_j},
\quad
e_j=2\!\int_{s_{j+1}}^{s_j}\rho_1,
\quad
\text{selected first delivery paid}\\
\Downarrow\\
\text{selected concentrated active square}
\ \lesssim_q\
\int\|B(u,u)\|_{\dot H^{-1/2}}^2\\
\Downarrow\\
U_j\gamma_j^2\ \oplus\ \mathfrak T_j
=4k_j^{-1}\|\mathsf D_j^{1/2}B\|_2^2\\
\Updownarrow\ \text{translated-grid identity}\\
\|W_t\|_2^2+\|W_\nu\|_2^2+2\nu H'\\
\Downarrow\ \text{on a positive concentrated receiver}\\
\mathfrak T_j\ge c_{q,\theta_0}U_j\gamma_j^2
\quad\text{or}\quad
\text{restricted same-current donor trough}\\
\Downarrow\ \text{common finite Boolean atom refinement}\\
\text{all matched projector, time, and unweighted scale faces cancel}\\
\Downarrow\ \text{apply the critical weight}\\
\mathfrak H_N^+-\mathfrak H_N^-+\nu\mathfrak L_N
=\mathfrak E_N+\mathfrak W_N\\
\Downarrow\\
\begin{cases}
\text{nonconcentrated allocation: classification and direct tower control open},\\
\text{concentrated allocation: coverage, face-to-band assignment,}\\
\qquad\text{next-depth cancellation and terminal bound open}.
\end{cases}
\end{array}
}
\tag{SC.69}
\]

From these open nodes the candidate branches are:

1. If the record-aligned concentrated theorem yields a strict weighted
   recurrence with paid
   errors, the proved q-adic consumer bounds \(H\) and gives endpoint critical
   continuation.
2. The nonconcentrated branch first requires an allocation theorem.  Only if
   it is proved to be diffuse does it pass to a direct all-pair/Hilbert-defect
   or active-likelihood theorem.
3. If a countersequence remains after the direct concentrated and
   nonconcentrated branches, a still-open record-defect profile theorem must
   classify it.

   - A tight profile requires preservation of a decaying finite-energy
     \(\mathbb R^3\) carrier.  Only after a separate ancestry extraction may
     the candidate same-daughter block theorem be applied.

Either countersequence branch would still have to produce the strict weighted
recurrence and paid-error ledger consumed by the q-adic lemma.  Neither is
currently proved.

The local spatial inputs are proved: fixed-scale temporal variation, Hardy
collar thickness and occupancy, pair-loss coercivity, the joint upcrossing
charge, adjacent-face stock/source/loss identities, selected first-delivery
payment, the concentrated source-square sandwich, centered next-depth
factorization, radial--transverse Pythagoras, aggregate donor cancellation,
the local transverse-or-donor alternative, and the fixed-projector restricted
donor current.  The finite Boolean stopped-complex law now also cancels all
matched adaptive projector interfaces and isolates genuine critical scale
work.  What remains is the layer-to-band selection, global-record alignment,
face-work-to-band assignment, derivative-depth endpoint cancellation, and the
uniform nonnegative terminal estimate, plus classification and control of the
nonconcentrated branch.
The older positive cumulative packing of
\(\mathcal Q_a\mathfrak c_a^2\) remains an alternate open route, not the only
frontier.  Failure of the direct routes has no proved serial continuation.  The
diffuse and tight alternatives, their extraction, and any ancestry license are open.
For a tight decaying finite-energy \(\mathbb R^3\) profile, (SC.67) plus
common-frame compactness is one candidate rigidity route; the stopped
same-daughter split is another candidate only after ancestry extraction.

## 14. Exact ledger

### Proved in the parent construction and retained

- common finite row mass and exact row/current compatibility;
- signed affine second descent to endpoint stock;
- datum-finite irreversible measure for every observer;
- source-square shared-face cancellation and state alignment;
- strict conditional slow contraction;
- fixed-depth source-free derivative receiver chain;
- Abel identification of the diagonal with the critical VPI current;
- exact record-stopped running-maximum identity;
- scalar receiver saturation showing the need for one-field realizability;
- all-material-pair stock law and complete monotonicity of \(\mathcal Q_a\);
- fixed-layer temporal variation, logarithmic collar thickness, pair-loss
  coercivity, and the joint deformation--residence upcrossing charge;
- the exact Hardy identification of \(\mathcal Q_a/\sqrt a\) with the first
  Sobolev row, its critical \(L^1\) trace, and its datum-finite spacetime
  \(L^2\) collar occupancy;
- adjacent heat-face telescoping and the exact
  \(\dot H^{-1/2}\) square-function resolution;
- datum-finite square-root delivery for any already-selected disjoint
  first-receiving band family, including the band-doubling payment;
- the low-tail-corrected concentrated-band spectral gap and the selected
  lower/upper source-square sandwich (SC.58ab);
- the joined time--Sobolev identity (SC.58ac) and its exact telescope on the
  global \(H\)-record set (SC.58ad);
- the fixed-band centered second-depth law and radial fast-action factorization
  (SC.58ag)--(SC.58ah);
- the exact radial--transverse Pythagoras and translated all-grid identities,
  including recovery of the exact \(2\nu H'\) coefficient;
- instantaneous aggregate donor-trough cancellation and the centered
  frequency-variance inequality (SC.58al)--(SC.58am);
- the fixed-\((q,\theta)\), pointwise concentrated alternative of a strict
  transverse deficit or an exterior donor trough (SC.58an);
- the unrestricted and fixed-projector restricted donor heat-face laws
  (SC.58ao)--(SC.58aq);
- exact common Boolean refinement and finite stopped-complex cancellation for
  any already-specified finite projector family (SC.58ar)--(SC.58as);
- the critically weighted finite-complex identity (SC.58at), which isolates
  genuine signed scale work after all matched unweighted faces cancel.

### New exact connections established in this consolidation

1. the Gamma--Poisson duality (SC.15)--(SC.17);
2. the all-lower-moment Mellin reconstruction (SC.18);
3. the critical eigenfunctional law (SC.23)--(SC.27);
4. the scale-shape versus scale-location countertest (SC.29)--(SC.31);
5. the vector material Hilbert lift and complete tangent
   (SC.35)--(SC.38), with the correct \(8\sqrt\pi\) normalization;
6. the concentrating critical marginal and rate limit
   (SC.43)--(SC.47), with no false pointwise Hilbert convergence;
7. the dual component-covariance/chord-incidence identity (SC.50);
8. the exact information-loss map and reclassification of the old error
   terms: refill is eliminated as an independent source, exterior edges are
   paid or reassigned, while fast/diagonal transport remains part of the
   unresolved signed critical current;
9. the identification (SC.58u1)--(SC.58u2) of the fast active
   contraction-square with the state-aligned heat-layer source-square and the
   material active-likelihood deformation square;
10. the exact linear stock/source/loss splice (SC.58w)--(SC.58x) from the
    cumulative all-pair layer to the adjacent Sobolev band, and the discrete
    Dirichlet source-square identity (SC.58y);
11. the joined \((W_t,W_\nu,W_B)\) time--Sobolev observer tripod (SC.58ae)
    and the higher-Mellin identification of its viscous member (SC.58af),
    with no invented tangent-current conservation law;
12. the identification of \(\kappa_j^2\) and \(\mathcal V_j\) as conditional
    first and centered second frequency moments of the same Sobolev band;
13. the completed centered sum-of-squares identity (SC.58aj), which absorbs
    the signed \(\mathcal C_j\) pairing only when the full transverse remainder
    is retained;
14. the scale--growth-rate covariance reading (SC.58al)--(SC.58am), connecting
    the donor trough directly to the earlier shape-versus-location split;
15. the exact return (SC.58ao)--(SC.58aq) of the fixed-projector annular donor
    to the same nested all-pair heat stock and current;
16. the identification of \(\mathfrak W_N\) as the discrete commutator between
    critical valuation and the scale boundary—the stopped q-grid form of the
    Mellin eigenfunctional law (SC.23), not an edge error.

### Proposed frontier organization, not proved theorems

1. fix \(q>1\) and \(\theta_0>0\), then construct a nested admissible sequence
   of first-record atom complexes covering the \(\theta_0\)-concentrated part
   of dangerous global \(H\)-record growth;
2. bridge cumulative layer charge to band charge and align the admitted complex
   with the global record graph;
3. map positive face work to an eligible positive concentrated band, retaining
   every nonconcentrated contribution separately;
4. define the measurable transverse/donor cell partition and extend the atom
   complex to cancel the next-depth stock endpoints;
5. define the nonnegative terminal valuations in (SC.58au), prove their uniform
   bound along the nested exhaustion, and derive the strict recurrence;
6. classify and control the complementary nonconcentrated allocation; retain
   the cumulative signed Hardy-collar packing as an alternate open route;
7. only if a countersequence remains, classify diffuse versus tight profiles
   without leaving the one-history carrier;
8. use the quantitative same-daughter or zero-cost rigidity schemas only
   after a tight profile and ancestry license have been proved.

### Not proved

- a datum-finite bound for record-positive Abel variation;
- a datum-finite bound for \(\|D_t\Theta_\tau\|_2^2\) or its active transverse
  part;
- a datum-finite positive cumulative packing of
  \(\mathcal Q_a\mathfrak c_a^2\); the selected band Dirichlet replacement
  does not prove it;
- a layer-upcrossing to band-upcrossing comparison preserving the lower active
  charge;
- a pairwise disjoint selected band family covering every concentrated
  dangerous global \(H\)-record rise;
- classification of the complementary nonconcentrated allocation as diffuse
  or otherwise;
- alignment of the selected band-upcrossing graph with the global
  \(H\)-record graph;
- a nested admissible first-record atom-complex exhaustion and its
  \(N\to\infty\) convergence without atom/current leakage;
- a map from record-positive face work \(\mathfrak p_G^{\rm atom}\) to an
  eligible concentrated \(b_j>0\) receiver, with nonconcentrated work retained;
- cancellation of \(\partial_t(\kappa_j^2U_j)\) across a changing selected-band
  chain;
- a datum-finite spacetime payment for \(|y_j'|^2\),
  \(\mathcal V_jU_j\), \(\kappa_j^4U_j\), or \(\mathfrak T_j\);
- a conservation/current law for the centered transverse tangent
  \(\mathfrak s_j+\nu w_j\);
- a measurable stopped transverse/donor branch assignment with bounded
  multiplicity;
- a bounded-multiplicity donor termination law whose signed cancellation,
  datum-paid stock/loss/exterior, or handoff supplies enough deficit or paid
  error for the selected quadratic action;
- nonnegative definitions of \(\mathfrak W_{N,+}^{\rm tr}\) and
  \(\mathfrak E_{N,+}^{\rm terminal}\), the uniform terminal estimate
  (SC.58au), and a proof that it yields a genuinely smaller strict recurrence;
- a datum-finite squared-row payment for \(W_t\) or \(W_\nu\), or any complete
  absorption returning the record term with coefficient strictly below
  \(2\nu\);
- the record-defect profile classification (SC.62a) and preservation of a
  decaying finite-energy \(\mathbb R^3\) limit;
- the extraction of one canonical daughter lineage from a tight scale profile;
- the common-frame compactness and carrier-identification implication
  (SC.67);
- the paid fresh/passive bounded-multiplicity disintegration;
- the full-PDE inherited handoff-and-return contraction;
- a recurrence with strict critical coefficient and summable errors;
- bounded \(H\), no blowup, or Navier--Stokes continuation.

The Sobolev idea is therefore recovered in its strongest honest form.  Higher
derivative depth gives a datum-paid, increasingly sharp observer of one
bounded material-pair stock.  Its exact compatibility removes false sources
and exposes the unique critical diagonal.  The Abel lift returns that diagonal
to the original VPI labels and full vector tangent.  The canonical adjacent
heat bands then show exactly what the second descent buys: common delivery is
paid, signed shared faces cancel before squaring, and the selected concentrated
fast action is reduced without scale recounting to one temporal
\(\dot H^{-1/2}\) source square.  The joined tangent splits that square into
the Eulerian-time row, the critical viscous row, and the target record
increment.  The centered projected descent then proves that scale depth alone
returns that target coefficient exactly.  Its radial--transverse split and
simultaneous energy trough locate the only carrier-native strictness channels.
On an already-selected concentrated receiver, one has either a uniform local
transverse deficit or an actual exterior donor; for a fixed projector, that
donor is exactly a restricted face of the old nested heat current.  A common
finite Boolean refinement then cancels every adaptive projector interface
before weighting.  Critical weighting leaves only the signed commutator
\(\mathfrak W_N\), the genuine work of moving the same stock to a different
critical scale value.

The first remaining concentrated theorem is therefore not the old generic
instruction to put \(\mathcal Q_a\mathfrak c_a^2\) through adjacent faces.
It is a record-aligned terminal scale-work theorem which constructs a nested
first-record atom-complex exhaustion, preserves the lower quantum on the global
\(H\)-record graph, maps positive face work to eligible concentrated band
strengthening, cancels the next-depth stock, and proves a nonnegative uniform
terminal estimate strong enough to return a coefficient strictly below
\(2\nu\).  In parallel, the
nonconcentrated allocation must be classified and controlled; it has not yet
been proved diffuse.  Positive cumulative packing
of \(\mathcal Q_a\mathfrak c_a^2\) remains an alternate open route.  Only
after those direct branches fail and a tight same-history profile plus ancestry
license are extracted does the same-daughter material question become live.  A
proved diffuse profile would remain a direct all-pair/Hilbert-likelihood branch.

## 15. July 22 direct smoothness roof

The canonical route statement is
[`positive_smoothness_current_topology_20260722`](../target-operating-contract.yaml#positive_smoothness_current_topology_20260722).
The endpoint is global classical smoothness of the one unforced maximal
fixed-viscosity decaying \(\mathbb R^3\) history.  A uniform
\(\dot H^{1/2}\) roof is a continuation bridge, not a substitute endpoint.

Two parallel strict suppliers are installed and still unproved.  The
positive-work branch asks for \(\int_G I(t)^2\,dt<\infty\).  The
q/singleton branch has the weaker signed target
\(\sup_{t<T_*}\int_0^tP_H(s)\,ds<C(u_0,\nu)\).  The two positive critical spin
actions have derivative \(P_H\) and fixed difference, and the verified
first-singularity theorem forces this prefix primitive to diverge in limsup
if \(T_*<\infty\).  The scale-invariant overlap
\(\int_G A_+(t)A_-(t)\,dt<\infty\) is a sufficient stronger supplier.  This
branch now has the exact weighted payments

\[
 \int_0^{T_*}\frac{|P_H|^2}{D h_A}\,dt
 \le \frac{C_0^2\|u_0\|_2^2}{2\nu},
 \qquad
 \int_0^{T_*}\frac{(H')_+}{h_A}\,dt
 \le \frac{C_0^2\|u_0\|_2^2}{8\nu^2},
 \qquad
 \int_G\frac{D}{h_A}\,dt
 \le \frac{C_0^2\|u_0\|_2^2}{2\nu^3},
 \qquad
 \int_0^{T_*}\sqrt{(H')_+}\,dt
 \le \frac{C_0\|u_0\|_2^2}{8\nu^{3/2}},
 \quad
 h_A=\frac{A_+A_-}{A_++A_-}.
\]

These estimates localize any unbounded positive height variation to unbounded
opposite-helicity overlap; they do not remove that overlap.  The square-root
rate action is not bounded positive variation, and a scalar equality profile
still permits \(H\to\infty\).  Moreover, every local functional of \(H\) and
the exact cross-helicity product which cancels \(P_H\) is a function only of
helicity imbalance, so that carrier supplies no coercive source-free entropy.
The opposite-helicity harmonic kernel pays \(A_+A_-\) as an exact viscous
loss but restores homochiral radial current; every fixed kernel which kills
that current restores the \(HP_H/2\) source instead.  Moving centers likewise
cancel back to the same critical primitive.  The remaining proof must
therefore be a genuinely signed, nonlocal-in-time shared-q-face contraction,
not another instantaneous stock.

The sector moments sharpen this boundary without closing it. With

\[
 X_A=A_+A_-,\qquad
 B_A=\mathcal E_+A_-+\mathcal E_-A_+,\qquad
 C_A=D_+D_-,
\]

spectral Holder and arithmetic--geometric mean give

\[
 X_A^2\le B_AC_A,\qquad
 B_A>{4\nu^4\over C_0^4}\quad\hbox{on }G.
\]

Energy pays \(\int B_A\), so \(G\) has finite measure, and it pays one
inverse-overlap square-root action.  The sharp common-shell scalar endpoint
still has \(X_A\asymp(T-t)^{-1}\), however, so these new rows do not pay the
overlap criterion.

The complete q remainder now has an exact positive representation. Let
\(Q=-\mathbb P(u\cdot\nabla u)\), \(g=\Lambda^{-1}Q\), and zero-extend the
source from \((0,T)\). Define

\[
 d\mu_T={1\over2\pi}
 {\nu|\xi|^4\over\nu^2|\xi|^4+\omega^2}
 |\widehat g(\omega,\xi)|^2\,d\xi d\omega.
\]

The mild equation and layer cake prove, for every fixed \(K>0\),

\[
 \sup_{T<T_*}\int_0^TP_H<\infty
 \Longleftrightarrow
 \sup_{T<T_*}\int_0^T\int_K^\infty\Pi(k,t)\,dkdt<\infty
 \Longleftrightarrow
 \sup_{T<T_*}\int(|\xi|-K)_+\,d\mu_T<\infty,
\]

up to a uniformly datum-bounded old-data term. The same Duhamel daughter
satisfies \(\int d\mu_T\le2\|u_0\|_2^2\), so energy pays the mass and
every fixed low-frequency first moment. For the genuine source
\(Q=(\partial_t+\nu\Lambda^2)w\), the resolvent factor in \(d\mu_T\) cancels
and the high-pass Gram is exactly the Fujita--Kato critical stock and viscous
action of \((\Lambda-K)_+^{1/2}w\). The coherence multiplier therefore gives
no hidden smoothing derivative. Under exact Navier--Stokes rescaling the paid
mass has degree \(-1\), while its first moment is invariant, so mass
interpolation alone cannot close the gap. This Gram action is an exact
equivalent presentation of the q/singleton supplier, not another proof branch
and not a smoothness proof.

The shell form is now exact. For \(\lambda_j=q^j\), let \(\alpha_j(T)\) be
the \(\Lambda^{-1}Q\) mass retained on shell \(j\) by the viscous-time
resolvent and put \(A_j=\sum_{p\ge j}\alpha_p\). Abel summation gives

\[
 \sum_{p=J}^N\lambda_p\alpha_p
 =\lambda_JA_J+(1-q^{-1})\sum_{p=J+1}^N\lambda_pA_p
  -\lambda_NA_{N+1}.
\]

Thus the high-pass Gram is the Dini--Carleson tail
\(\sum_{j\ge J}\lambda_jA_j\). The weak bound
\(\sup_j\lambda_jA_j<\infty\) is not enough: it permits one fixed positive amount at
every scale. For \(0<\varepsilon<1\), a concrete local proof coordinate is

\[
 b_{j+1}\le(1-\varepsilon)b_j+r_j,\qquad
 b_j=\lambda_jA_j,qquad
 \sup_T\sum_jr_j(T)<\infty,
\]

with \(r_j\) paid by the actual complete-network phase/amplitude evolution,
not defined from the desired tail. The minimal exact defect is

\[
 r_j^{\min}=\lambda_j
 [(q-1+\varepsilon)A_{j+1}-(1-\varepsilon)\alpha_j]_+.
\]

Its summability is algebraically equivalent to the Dini tail: the two finite
sum inequalities are (SH.177). It becomes a noncircular output-shell
receiver-incidence proof only if the positive defect is charged to an
independently datum-finite same-field action. Equivalently, with shell hazard
\(h_j=\alpha_j/A_j\),
\[
 r_j^{\min}=b_j[q-1+\varepsilon-qh_j]_+.
\]
The scale-neutral tail has \(h_j=(q-1)/q\). In the continuous
log-frequency limit the defect is
\(\int e^y[(1+\kappa)A(y)-a(y)]_+dy\). A proof must pay this positive
strict-hazard defect independently; naming it does not supply the tail.
In fact, with \(D_j=b_{j+1}-(1-\varepsilon)b_j\),
\[
 2\sum_{j=J}^{N}[D_j]_+
 =\sum_{j=J}^{N}|D_j|
  +\varepsilon\sum_{j=J+1}^{N}b_j
  +b_{N+1}-(1-\varepsilon)b_J .
\]
Thus the positive defect contains \(\varepsilon/2\) times the open Dini bulk
plus one half of a discounted-tail variation, modulo the fixed energy-paid
boundary. Its terminal-prefix derivative is a signed source-work
correlation; exact heat shellization sums it back to the original order-one
critical commutator. The only no-clipping, once-counted, frequency-correct
triad donor charge likewise sums exactly to
\(\mathfrak J_{\rm sing}\). Neither rewrite is a smaller supplier.

The helical source can also be resummed lawfully. If \(U\) is the
unique-helicity output source, \(H\) the homochiral source, and \(M\) the
remaining paired-leg source, then

\[
 \int_0^TP_H
 =2I_U+2\mathcal C_T(U,U)+2\mathcal C_T(H+M,U).
\]

The \(U\) self-Gram is positive; the last causal reconvergence has both signs
on an explicit local smooth periodic comparison and is not removed by a
fixed helical or amplitude/phase projection. Their signed sum is exactly the
full Gram modulo bounded old data, and helicity reduces it only to the common
positive response action of the two output helicities. Energy pays the lower
Gram mass; helicity pays their difference, not that common first moment.
Maximal regularity subtracts
exact endpoint heat layers and temporal increments but gives no hidden
derivative. For every fixed \(L\), all terms with a low input or fixed-low
output have finite Gram, so any finite-time divergence is strictly reduced
to the complete Leray source
\(-\Lambda^{-1}\mathbb P\operatorname{div}P_{>4L}
(u_{>L}\otimes u_{>L})\). The live theorem is therefore the datum-finite
complete-network all-high Dini tail; adjacent contraction is only an
equivalent coordinate unless independently paid. The unique-output radial commutator
cancels equal-radius parents, but fixed-ratio faces restore their full gap and
the sharp global source estimate costs \(\int\|\Lambda u\|_2^4dt\), not the
energy-paid first power. Two distinct unique-output parent pairs feeding the
same output-helicity line can reinforce or cancel under a parent phase
change, so multiplicity of lawful parents supplies no static destructive
incidence. A matched reinforcing pair has the same parent-product and output
Stokes rates and zero nonlinear tangent on its parent modes; its causal
cross-sign persists on actual small-amplitude periodic solutions. Thus
viscosity and local evolution supply no automatic dephasing. The q-ledger and scale-local mixed-helicity
comparison fields show that shell balance, capacity, and null-form structure
alone do not provide the contraction; they are not Navier--Stokes histories.
For the resonant four-parent comparison, translation by \((\pi,\pi,0)\)
changes \(\eta u_0\) to \(-\eta u_0\) while fixing the shared output.
Every odd amplitude correction there therefore vanishes, sharpening the
cross-Gram remainder to \(O(\eta^6)\). The first allowed complete-network
Gram correction detunes the aligned phase but reinforces the reversed phase,
  so later feedback still has no universal sign. At the perfectly reinforcing
  phase, lawful input-helicity projection gives a mixed-sign curvature
  polynomial. Two exact amplitude profiles with identical initial pair
  coherence and identical mass on every radius shell---hence identical energy,
  signed helicity, enstrophy, and every radial quadratic row---have opposite
  internal curvature. An external mode injecting source into a selected parent
  supplies another positive tangent, but it is not the sole reversal channel.
  More strongly, after all positive-helicity sources are joined, a simultaneous
  within-pair leg swap preserves every radial quadratic row, each pair-labelled
  leading source and its whole Stokes history, and the leading complete Gram,
  but reverses the sixth-order full-Gram feedback. Hence no scalar
  curvature tax, radial-spectrum statistic, leading-Gram statistic, or
  refill-only packing mechanism survives; angular parent allocation, refill,
  and reconvergence through time remain coupled and unpaid.
  The canonical radial/transverse split of the actual all-high coherent
  response does not repair this: transverse motion is absent from the hazard
  work, while the only available positive endpoint and loss estimates return
  to the endpoint/interior quantities of the open Dini first moment. The
  smallest nonalias constructive target is now the explicitly defined
  CompleteAllHighSignedFeedbackNormalForm.A, with a datum-paid negative
  endpoint and positive remainder. Four canonical one-step homological
  attempts are now classified exactly. A quadratic source correction is
  singular on the active Stokes-resonant pairs; in the unrestricted-port
  model a response-only storage is forced to return the open terminal stock
  and Dini interior; and the unique first parent-resolved
  positive-sum multiplier retains the full coherent-collapse loss in its
  quartic remainder. The auxiliary Stokes future value is a lawful
  present-state construction, but its pure response square cancels, leaving a
  functional affine and unbounded below whenever the heat-weighted free-response
  coefficient is nonzero; the actual nonlinear derivative retains the
  parent-insertion term. These four attempts do not classify higher
  parent-coupled iterations or every finite-order expansion. Thus the missing
  exact-Dini form specifically means a nonperturbative bounded-below storage
  for actual same-history parent allocation, refill, collapse, and
  reconvergence. Separately, cumulative one-history packing is sufficient for
  the stronger source-square route; equivalence has not been proved. A separate compactness schema requires
  fixed-viscosity no-waste/tightness, same-history profile extraction and
  inheritance, and rigidity of the resulting common-helicity joint-null
  profile. A second, stronger sufficient
  route lifts the ordered complete-Leray source before parent integration: its
  global density and causal heat response are finite-interval paid by
  incompressibility, but coherent parent integration has a sharp
  three-dimensional volume loss. Smooth helical packet data make a whole
  output block coherent and rule out scale-independent or energy-only static
  and causal frame constants. Exact Navier--Stokes histories retain the ratio
  on arbitrarily short intervals, but this family across data does not prove
  repeated rebuilding in one field. Only a scaling-compatible,
  datum-dependent cumulative one-history packing theorem could rescue that
  route. None of these routes is proved.

No bridge from the q/singleton current to the \(I^2\) supplier is installed.
Consequently this consolidation narrows the proof obligation but does not
prove the uniform critical roof or global smoothness.
