# Tilt–stretch coupling and eviction–production ratios for anti-parallel vortex filament pairs

Draft for external review, 2026-07-05. Self-contained; thin-filament
(cutoff) model throughout; every claim at stated leading order.
We ask two things of the reader: (1) which of these results are known,
and where; (2) which are wrong. No Navier–Stokes regularity claim is
made anywhere in this note.

## 1. Setup

Two thin vortex filaments of circulation \(\Gamma\), core radius
\(a\), separation \(d\) along \(\hat y\), \(a \ll d\). Symmetric
X-configuration in the \(x\)–\(z\) plane:

\[
\hat t_1=(\sin\alpha,0,\cos\alpha),\qquad
\hat t_2=(\sin\alpha,0,-\cos\alpha),
\]

vorticity along \(+\hat t_i\) (anti-parallel at \(\alpha=0\)). Write
\(\beta=\sin2\alpha\), \(\gamma=\cos2\alpha\),
\(s=\Gamma/(2\pi d^2)\). The induced-velocity gradient of an infinite
straight filament with tangent \(\hat t\), perpendicular offset
\(\rho\), is

\[
\nabla u=\frac{\Gamma}{2\pi}\Bigl[\frac{T P}{\rho^2}
-\frac{2(\hat t\times\rho)\otimes\rho}{\rho^4}\Bigr],
\]

\(T\) the cross-product matrix of \(\hat t\), \(P=I-\hat t\hat t^T\).

## 2. Exact leading-order rates (Proposition 1)

Derivation route (three lines each): the axial strain is the
arclength derivative of the axial velocity component, and the tangent
rotation is the arclength derivative of the transverse components.
With \(u_2\cdot\hat t_1=-(\Gamma\beta d/2\pi)/\rho^2\),
\(u_2\cdot\hat y=-(\Gamma\beta/2\pi)\,\zeta/\rho^2\),
\(u_2\cdot\hat n=(\Gamma\gamma d/2\pi)/\rho^2\), everything below
follows by differentiation in \(\zeta\). (An independent
gradient-tensor contraction gives identical results.)

Along filament 1, at arclength \(\zeta\) from the closest point, with
\(\rho^2=d^2+\beta^2\zeta^2\):

Axial stretching by the partner:
\[
\sigma(\zeta)=\hat t_1\cdot\nabla u_2\,\hat t_1
=\frac{\Gamma\beta^3}{\pi}\,\frac{d\zeta}{(d^2+\beta^2\zeta^2)^2},
\qquad
\sigma_{\max}=\frac{3\sqrt3}{16}\,\frac{\Gamma\beta^2}{\pi d^2}
\ \ \text{at}\ \zeta_*=\frac{d}{\sqrt3\,\beta}.
\]

Axis rotation (transverse part of \(\nabla u_2\,\hat t_1\)),
decomposed on \(\hat y\) and \(\hat n=\hat t_1\times\hat y\):
\[
\tau_y(\zeta)=\frac{\Gamma\beta}{2\pi}\,
\frac{\beta^2\zeta^2-d^2}{(d^2+\beta^2\zeta^2)^2},
\qquad
\tau_n(\zeta)=-\frac{\Gamma\beta^2\gamma}{\pi}\,
\frac{d\zeta}{(d^2+\beta^2\zeta^2)^2}.
\]

Consequences:

(a) Pointwise proportionality: \(\tau_n(\zeta)/\sigma(\zeta)
=-\cot2\alpha\) for all \(\zeta\) — the in-plane rotation shares the
stretching profile exactly.

(b) Order separation: \(\tau_y(0)=-\Gamma\beta/(2\pi d^2)\) is first
order in \(\beta\) while \(\sigma\) is third order at fixed station
(second order after maximization).

(c) Uniform floor over all tilts:
\[
\frac{\max_\zeta|\tau|}{\max_\zeta\sigma}
\ \ge\ \frac{8\sqrt3}{9\,\beta}\ \ge\ \frac{8\sqrt3}{9},
\qquad 0<\beta\le1 .
\]

(d) The two filaments' \(\tau_y\) have opposite signs: mutual
induction drives the pair toward skew geometry. For the pure-skew
configuration (deviation of \(\hat t_1+\hat t_2\) parallel to the
separation axis) the axial stretching vanishes identically at this
order.

Physical reading: the configuration that stretches is the
configuration that rotates itself out of its stretching geometry; the
out-of-plane component is the Crow mutual-induction rotation.

## 3. Integrated stretch per interaction (Proposition 2)

Perturb the anti-parallel pair at axial wavenumber \(k\),
\(\kappa=kd\), amplitude \(A(t)\), within Crow's linear theory
(growth rate \(\gamma_c(\kappa)\,s\) on the unstable band). Local
tilt \(\beta(t)\sim\kappa A(t)/d\); reconnection onset at
\(A=\Delta d\) (order-one \(\Delta\)). Since the production rate is
quadratic in an exponentially growing amplitude, the time integral is
dominated by the final e-fold and is seed-independent:

\[
\int\sigma_{\max}\,dt
\ \le\
\frac{3\sqrt3}{16}\,\frac{\Delta^2\kappa^2}{\gamma_c(\kappa)}.
\]

Long waves are harmless (\(\gamma_c\) vanishes slower than
\(\kappa^2\)). At the short-wave band edge the bound degenerates; but
if the local circulation Reynolds number \(\Gamma/2\pi\nu\) is of
order one, the edge mode's viscous damping is of order \(s\) and the
neutral channel closes: constant-amplitude stretching cannot be
sustained. For large local Reynolds number the edge behavior is
governed by the cubic normal form of the (Hamiltonian) zero-eigenvalue
collision; the sign of that Duffing coefficient is open (Question 2).

## 4. Far-field quietness of compact structures (Proposition 3)

For compactly supported divergence-free vorticity in \(\mathbb R^3\),
\(\int\omega\,dV=0\) identically (each component integrates a
divergence). This admits a rigorous quantitative form. Lemma: if
\(\omega\in L^1\) is divergence-free with support in \(B(x_0,L)\) and
\(u\) is its Biot–Savart field, then for \(R=|x-x_0|\ge 2L\),
\[
|\nabla u(x)|\ \le\ C\,\frac{L\,\|\omega\|_{L^1}}{R^4},
\]
with universal \(C\). Proof: insert the vanishing total vorticity to
replace the gradient kernel by its difference from its value at
\(x_0\); the mean value theorem bounds the difference by
\(C|y-x_0|/R^4\) on the support; integrate. Consequently a foreign
structure of size \(d\) at distance \(L\) perturbs a pair's strain
environment at relative order \((d/L)^4\); sums over uniform spatial
density converge absolutely, independently of orientation coherence,
and are dominated by nearest neighbors.

## 5. Two named open lemmas (the questions we most want answered)

Question 1 (regress non-decay). Two anti-parallel pairs at mutual
distance of order \(d\): the second pair can cancel the first pair's
skew-drive by supplying a differential strain (second gradient
\(\sim\Gamma\beta/\pi d^3\)). By symmetry of the mutual-induction
kernel the bracer is skew-driven at the order of the brace it
supplies, so holding a producer appears to require an unbounded
regress of holders, with per-layer cost bounded below. Is there a
configuration in which the required brace magnitude decays
geometrically with layer index — i.e., a finite scaffold holding a
stretching pair indefinitely? A construction or an impossibility
argument would each be decisive for us.

Question 2 (edge normal form). At the upper edge of the Crow band the
linearization has a zero-eigenvalue collision. In the cutoff filament
model, what is the sign of the cubic (Duffing) coefficient of the
reduced normal form, and is it uniform over admissible core models?

Question 3 (novelty/error). Are Propositions 1–3, in particular the
pointwise ratio \(-\cot2\alpha\), the uniform floor \(8\sqrt3/9\), the
seed-independent integrated-stretch bound, and the \(1/L^4\)
interference decay, known results? Where? And if any is wrong, where
is the error?

## 6. Model limits (stated, not waived)

Leading filament order only (\(a\ll d\)); cutoff model; no core
dynamics (Moore–Saffman/Klein–Majda tier excluded); mutual interaction
only in Section 2 (self-induction of curved filaments enters at the
next order); Crow's linear theory imported as-is in Section 3.

## 7. Motivation, one paragraph, no claims

These lemmas arise from a program studying whether stretching
configurations of the 3D incompressible Navier–Stokes equations pay a
mandatory geometric cost (rotation or destruction of their own
stretching geometry) proportional to their stretching rate. The
propositions above are the program's currently standing pieces at
filament-model tier. Whether any such cost inequality holds for the
full equations is open and is not asserted here.
