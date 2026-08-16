---
theorem_id: vpi-q-envelope-chord-envelope-equivalence-and-terminal-ancestry-20260722
date: 2026-07-22
problem: navier-stokes
route: forward-gold / signed q-adic scale current / complete VPI chord carrier
status: proved-envelope-equivalence-and-heat-filtered-ancestry; finite-neighbour all-high signed-current contraction open
authority_state: theorem-construction; not canonical frontier promotion
completion_truth: >-
  Proves that the concentrated Fourier q-envelope M_q used in Sections
  172--175 of the moving-band construction and the complete critical-chord
  envelope M from Cycles 115 and 159 are quantitatively equivalent readings
  of the same velocity field. It also corrects the final sentence of Section
  175: smooth data have a vanishing ultraviolet tail, not an identically zero
  tail, so terminal ancestry is first excess over the heat-surviving initial
  tail. The exact excess is a heat-filtered signed VPI current. This
  consolidates two duplicate concentration routes and isolates the remaining
  phase-resolved finite-neighbour all-high current. It does not bound that
  current's upper prefix primitive, bound critical height, or prove
  Navier--Stokes continuation.
---

# The q-envelope and the complete chord envelope are one concentration object

## 1. One field and the two readings

Let \(u\) be one smooth, decaying, unforced Navier--Stokes solution on
\(\mathbb R^3\) with fixed \(\nu>0\), and let

\[
 e(k,t)=\frac12\int_{|\xi|=k}|\widehat u(\xi,t)|^2\,d\sigma(\xi)
\]

be its radial kinetic-energy density. Fix \(q>1\). The concentrated
critical q-envelope from the signed scale-current construction is

\[
 \boxed{
 M_q(t):=\sup_{K>0}K\int_K^{qK}e(k,t)\,dk .
 }
 \tag{EQ.1}
\]

The complete critical-chord envelope from Cycle 115 is

\[
 \boxed{
 \mathscr M(t):=\sup_{R>0}Z_4(R,t),\qquad
 Z_4(R,t)=\int_0^\infty g(Rk)\,k e(k,t)\,dk,
 }
 \tag{EQ.2}
\]

where

\[
 g(z)=\frac{16}{\pi}\frac{W(z)}z,\qquad
 W(z)=\frac13-\frac{\sin z-z\cos z}{z^3}
     =z^{-3}\int_0^z s(s-\sin s)\,ds.
 \tag{EQ.3}
\]

These are not two mechanisms. \(M_q\) takes the largest sharp multiplicative
frequency window, while \(\mathscr M\) takes the largest positive all-chord
smoothing of the same critical spectral measure \(k e(k,t)\,dk\).

## 2. Kernel bounds

The positivity proved in Cycle 115 and the representation in (EQ.3) give
\(g(z)>0\) for \(z>0\). Moreover, for an absolute \(C<\infty\),

\[
 \boxed{
 0<g(z)\le C\min\{z,z^{-1}\}\qquad(z>0).
 }
 \tag{EQ.4}
\]

Indeed, \(0\le s-\sin s\le s^3/6\) for \(0<s\le1\), so
\(W(z)\le z^2/30\) there. For \(z\ge1\), the explicit trigonometric formula
makes \(W\) uniformly bounded. Division by \(z\) gives (EQ.4).

For fixed \(q>1\), positivity and continuity also give

\[
 \boxed{
 \gamma_q:=\min_{1\le z\le q}g(z)>0.
 }
 \tag{EQ.5}
\]

## 3. Quantitative equivalence

There are constants \(0<c_q\le C_q<\infty\), depending only on \(q\) and
the fixed Fourier convention, such that at every classical time

\[
 \boxed{
 c_q M_q(t)\le\mathscr M(t)\le C_qM_q(t).
 }
 \tag{EQ.6}
\]

For the lower bound, fix \(K>0\), choose \(R=K^{-1}\), and use (EQ.5):

\[
 Z_4(K^{-1})
 \ge\gamma_q\int_K^{qK}k e(k)\,dk
 \ge\gamma_q K\int_K^{qK}e(k)\,dk.
\]

Taking the supremum in \(K\) proves the first inequality in (EQ.6).

For the upper bound, partition \((0,\infty)\) into
\(I_j=[q^j,q^{j+1})\), and set

\[
 A_j:=\int_{I_j}k e(k)\,dk.
\]

Since \(k\le q^{j+1}\) on \(I_j\),

\[
 A_j\le q\,q^j\int_{q^j}^{q^{j+1}}e(k)\,dk\le qM_q.
 \tag{EQ.7}
\]

Given \(R>0\), choose \(j_0\) so that \(Rq^{j_0}\in[1,q)\). Equation
(EQ.4) implies, after changing the constant only by a fixed q-factor,

\[
 \sup_{k\in I_{j_0+n}}g(Rk)\le C_q q^{-|n|}.
 \tag{EQ.8}
\]

Therefore

\[
 Z_4(R)
 \le\sum_{n\in\mathbb Z}C_qq^{-|n|}A_{j_0+n}
 \le C_qM_q\sum_{n\in\mathbb Z}q^{-|n|}
 \le C_q'M_q.
\]

Taking the supremum in \(R\) proves the second inequality in (EQ.6).

Thus the q-envelope is the sharp-window version of the complete VPI chord
envelope, and the chord envelope is a positive, geometrically localized
smoothing of the q-envelope. Neither may be promoted as an independent
reserve, source, packet, or second fluid object.

## 4. What the equivalence consolidates

The two previously separate-looking amplitude gates are the same gate up to
fixed constants:

1. Cycle 159 proves

   \[
   \mathscr M'+(2\nu-C\sqrt{\mathscr M})Q_*\le0,
   \tag{EQ.9}
   \]

   and hence a viscosity-sized no-rebuilding basin for the complete chord
   population.
2. Section 172 of the moving-band construction proves

   \[
   H'+(2\nu-C_q\sqrt{M_q})M_3\le0,
   \tag{EQ.10}
   \]

   and hence the corresponding viscosity-sized no-growth basin for the
   critical q-envelope.

By (EQ.6), a dangerous terminal branch is not free to choose between these
descriptions:

\[
 \boxed{
 M_q(t)\to\infty\quad\Longleftrightarrow\quad
 \mathscr M(t)\to\infty
 }
 \tag{EQ.11}
\]

along the same time sequence. The Fourier concentration in Sections
172--175 is therefore already a concentration of the complete all-chord VPI
participant from Cycles 115 and 159.

This is consolidation, not closure. Both (EQ.9) and (EQ.10) have the same
large-amplitude scaling boundary: the nonlinear coefficient is proportional
to the square root of the critical concentration. Equivalence does not turn
either small basin into a global upper bound.

## 5. Terminal ancestry is first excess, not first nonzero content

The last sentence of Section 175 says that the initial smooth tail vanishes in
the moving ultraviolet triad population and that its first nonzero
contribution is therefore incoming current. The first clause is only
asymptotic. A smooth datum need not be band-limited, so every ultraviolet
band may already contain nonzero kinetic energy.

The exact replacement is already latent in the fixed-band law. For

\[
 a_K(t):=K\int_K^{qK}e(k,t)\,dk
\]

and \(0\le s<t\), the scale-time continuity equation gives

\[
 \boxed{
 \begin{aligned}
 a_K(t)={}&a_K^{\rm heat}(t;s)+a_K^{\rm nl}(t;s),\\
 a_K^{\rm heat}(t;s)
 :={}&K\int_K^{qK}e^{-2\nu k^2(t-s)}e(k,s)\,dk,\\
 a_K^{\rm nl}(t;s)
 :={}&K\int_s^t\int_K^{qK}
 e^{-2\nu k^2(t-r)}T(k,r)\,dk\,dr.
 \end{aligned}
 }
 \tag{EQ.12}
\]

Because \(u(s)\in\dot H^{1/2}\),

\[
 \boxed{
 \sup_{t\ge s}a_K^{\rm heat}(t;s)
 \le\int_K^\infty k e(k,s)\,dk\longrightarrow0
 \quad(K\to\infty).
 }
 \tag{EQ.13}
\]

Consequently, if \(K_n\to\infty\), \(t_n\ge s\), and
\(a_{K_n}(t_n)\not\to0\), then

\[
 a_{K_n}^{\rm nl}(t_n;s)
 =a_{K_n}(t_n)-o(1)>0
 \tag{EQ.14}
\]

along a subsequence. If the active envelope diverges, the nonlinear excess
asymptotically carries the entire active band. This is the lawful ancestry
statement: not first nonzero ultraviolet content, but first excess over the
heat-surviving content of the same earlier field.

The excess remains the signed VPI current. With
\(w_{t-r}(k)=e^{-2\nu k^2(t-r)}\), \(T=-\partial_k\Pi\) gives

\[
 \boxed{
 \begin{aligned}
 a_K^{\rm nl}(t;s)
 =K\int_s^t\bigg[&w_{t-r}(K)\Pi(K,r)
 -w_{t-r}(qK)\Pi(qK,r)\\
 &-4\nu(t-r)\int_K^{qK}k w_{t-r}(k)\Pi(k,r)\,dk
 \bigg]dr.
 \end{aligned}
 }
 \tag{EQ.15}
\]

The first two terms are the two actual q-faces. The third is the internal
heat-lifetime sweep of that same current; it is not a new source and cannot be
dropped when the critical valuation is attached. On the full translated
q-complex, shared faces must be cancelled while (EQ.15) is still signed.

## 6. Exact remaining theorem object

Sections 171--175 already remove remote donor--receiver spans and fixed coarse
deformation legs. Equations (EQ.6) and (EQ.12)--(EQ.15) now make the surviving
object precise:

> On one continuing fixed-viscosity field, control the finite-neighbour,
> all-high, phase-resolved signed q-current which creates excess above the
> heat-surviving chord/q-envelope tail, after every common q-face and the
> heat-lifetime sweep have been retained and cancelled with their signs.

An amplitude-only envelope theorem cannot supply the missing sign. Under
\(u\mapsto-u\), both \(M_q\), \(\mathscr M\), and every quadratic viscous loss
are unchanged, while the cubic critical transfer reverses sign. The remaining
theorem must therefore retain a time-reversal-odd current coordinate: triad
phase, orientation, or the equivalent complete VPI transverse/donor current.

The companion signed-efficiency calculation makes the size of this phase
burden exact. If the q-adic majorant constant is \(C_q\), define

\[
 \eta_q={P_H\over C_q\sqrt{M_q}M_3},
 \qquad
 \rho_q={C_q\sqrt{M_q}\over2\nu}.
\]

Then \(|\eta_q|\le1\) and

\[
 H'=2\nu M_3(\rho_q\eta_q-1).
\]

Hence a rising state needs only
\(\eta_q>1/\rho_q=2\nu/(C_q\sqrt{M_q})\). The required oriented imbalance
vanishes on an unbounded concentration branch. Phase motion or escape from an
exact cancellation pose is therefore not itself a regularizing payment. The
minimum missing theorem is a datum-bound upper prefix primitive of the
complete signed singleton current; controlling its oriented positive time
integral or routing it into simultaneous reverse transfer or loss is a
stronger sufficient route.

This identifies the next calculation but does not pay it. In particular, the
following remain unproved:

- a datum-finite upper prefix bound for the critically valued
  finite-neighbour current;
- a strict signed q-adic contraction of the all-high relay;
- a uniform bound for \(M_q\), \(\mathscr M\), or \(H\);
- endpoint continuation or Navier--Stokes regularity.

## References inside the repository

- codex-goal-ontology-cycle-115-critical-chord-envelope-product-gold-heat-bridge-20260714.md, equations C115.1--C115.23;
- codex-goal-ontology-cycle-159-critical-chord-product-source-absorption-20260715.md, equations C159.5--C159.27;
- mpp-vpi-moving-band-throughput-lifetime-law-20260718.md, Sections 91--95 and 167--175, especially TL.939--TL.945 and TL.1373--TL.1395.
- mpp-vpi-all-high-signed-current-efficiency-and-unparking-regate-20260722.md, equations PE.1--PE.9.
