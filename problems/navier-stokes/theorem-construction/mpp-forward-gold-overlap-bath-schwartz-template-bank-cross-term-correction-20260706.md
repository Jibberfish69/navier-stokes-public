---
theorem_id: forward-gold-overlap-bath-schwartz-template-bank-cross-term-correction-20260706
status: same-day-correction-bank-cross-terms-exact-conclusion-survives-with-corrected-witness
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureService.FiniteEnergyTemplate.LOCALITY-NO-FLOOR
  - SchwartzTemplateBank.CrossTermExact
  - SchwartzTemplateBank.SurjectivityCorrectedWitness
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-schwartz-pressure-template-locality-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
completion_truth: >-
  Same-day correction of the rotated-bank spanning step (Section 4, SPT.15)
  in the Schwartz pressure-template locality note, plus independent
  verification of its two exact computations. SPT.6 and SPT.11 are verified
  exactly: the pressure source polynomial and the station Hessian
  (106/1155) diag(-1,-1,2) are both reproduced from scratch. The additive
  spanning claim K = sum alpha_i Q(e_i) by superposed co-centered rotated
  copies is FALSE at source level: the pressure source is quadratic, and the
  exact cross Hessian of the unit pair {i,j} of cyclic copies is
  -(212/1155)(e_i x e_j + e_j x e_i), twice the solo coefficient. The
  corrected exact bank map is Phi(c) = (106/1155)[5 diag(c^2) - |c|^2 I
  - 2 c x c]. The note's conclusion survives with this corrected witness:
  the unit axis gives the prolate extreme, c=(1,1,1) gives the oblate
  spectrum (106/1155)(2,2,-4), the path c=(t,t,1) sweeps every normalized
  trace-free spectrum by continuity of the cubic invariant, rotations give
  every frame, and the cost stays of order |K| D^5 with an exact-fraction
  constant. The affine-producer cross Hessian at the station is exactly zero
  by parity, in every frame, so producer coupling remains additive. This is
  a correction and completion of a filed obstruction, not a dynamic bath
  construction, not a dense-crowd theorem, and not a confinement-constant
  decision.
---

# Schwartz template bank: exact cross terms and corrected surjectivity

## 1. Kill condition

The locality note's Section 4 claims that three co-centered rotated copies
of the template, with nonnegative amplitude weights
\(\alpha_i=(\lambda_i+A)/3\), supply any prescribed trace-free Hessian by
the additive identity (SPT.15). The pressure source
\(f=\partial_iv_j\,\partial_jv_i\) is quadratic in the velocity, so
superposition produces cross sources between distinct copies.

Kill condition for this note: compute the cross Hessian at the station
exactly. If it vanishes, the additive spanning stands and this note is
empty. If it is nonzero, (SPT.15) is wrong at source level and the
obstruction needs a corrected witness or fails.

The computed answer: the cross term is nonzero with exact coefficient
\(-212/1155\), and the obstruction survives with a corrected witness.

## 2. Verification of the filed computations

Both exact computations in the locality note were reproduced from scratch
and are correct.

First, with \(g=e^{-|x|^2/2}\), the template components are
\[
  v_1=x_1x_3(1-x_2^2)g,\qquad
  v_2=-x_2x_3(1-x_1^2)g,\qquad
  v_3=0,
\]
and expanding \(f_v=(\partial_1v_1)^2+(\partial_2v_2)^2
+2\,\partial_1v_2\,\partial_2v_1\) gives exactly (SPT.6).

Second, applying the kernel and moment formulas (SPT.8)-(SPT.10) to the
eight even monomials of (SPT.6) gives
\[
  \bigl(\nabla^2p_v(0)\bigr)_{33}
  =\frac{4}{15}-\frac{4}{105}-\frac{4}{105}
   -\frac{4}{1155}-\frac{4}{1155}
  =\frac{212}{1155},
\]
with the three degree-four monomial brackets vanishing identically. With
trace-freeness and the \(x_1\leftrightarrow x_2\) symmetry this is exactly
(SPT.11):
\[
  \nabla^2p_v(0)=\frac{106}{1155}\operatorname{diag}(-1,-1,2).
\]

## 3. Exact cross term of a cyclic pair

Take the base copy \(v\) (axis \(e_3\)) and the cyclic copy \(w\) (axis
\(e_1\)):
\[
  w_2=x_1x_2(1-x_3^2)g,\qquad
  w_3=-x_1x_3(1-x_2^2)g,\qquad
  w_1=0.
\]

The cross source is
\(h=2\sum_{ij}\partial_iv_j\,\partial_jw_i\), with exactly four surviving
index pairs. Two pairwise identities collapse it:
\(\partial_3v_1\partial_1w_3=\partial_2v_2\partial_2w_2\) and
\(\partial_3v_2\partial_2w_3=\partial_2v_1\partial_1w_2\). Using
\(x_2^2(3-x_2^2)+(1-x_2^2)^2=1+x_2^2\),
\[
  h=-4\,x_1x_3\,(1-x_1^2)(1-x_3^2)(1+x_2^2)\,e^{-|x|^2}.
\]

Parity: \(h\) is odd in \(x_1\), even in \(x_2\), odd in \(x_3\). Against
the Hessian kernels, every entry dies by parity except \((1,3)\).

The surviving entry: expanding
\(y_1^2y_3^2(1-y_1^2)(1-y_3^2)(1+y_2^2)\) into eight even monomials, with
radial integrals \(\int_0^\infty r^{2m-3}e^{-r^2}dr=\tfrac12\Gamma(m-1)\)
and the sphere moments of (SPT.9), the weighted sum is
\[
  \frac{1}{30}+\frac{1}{210}-\frac{1}{70}-\frac{1}{315}
  -\frac{1}{70}-\frac{1}{315}+\frac{1}{105}+\frac{1}{385}
  =\frac{106}{6930},
\]
so
\[
  \bigl(\nabla^2p_{\rm cross}(0)\bigr)_{13}
  =-12\cdot\frac{106}{6930}
  =-\frac{212}{1155}.
\]

By the cyclic symmetry of the bank, the unit pair \(\{i,j\}\) contributes
exactly
\[
  -\frac{212}{1155}\,(e_i\otimes e_j+e_j\otimes e_i),
\]
and nothing else. The cross coefficient is exactly twice the solo
coefficient \(106/1155\).

## 4. What this kills

This kills the additive spanning step (SPT.15) as a source-level identity.
With unit weights on two copies, the naive claim gives
\(Q(e_1)+Q(e_2)=\operatorname{diag}(1,1,-2)\); the true bank output at
\(c=(1,1,0)\) has spectrum proportional to \((3,-1,-2)\). The
\(\alpha_i\)-decomposition of Section 4 does not describe the supplied
Hessian.

## 5. Corrected bank map

For signed amplitudes \(c=(c_1,c_2,c_3)\) on the three cyclic copies, the
solo and pair terms assemble to the exact station Hessian
\[
  \Phi(c)
  =\frac{106}{1155}
  \Bigl[\,5\operatorname{diag}(c^2)-|c|^2I-2\,c\otimes c\,\Bigr],
\]
which is trace-free for every \(c\). Internal checks:
\(\Phi(0,0,1)=\frac{106}{1155}\operatorname{diag}(-1,-1,2)\) reproduces the
solo computation, and \(\Phi(1,1,0)\) has spectrum
\(\frac{106}{1155}(3,-1,-2)\) as in Section 4 above.

Producer coupling stays additive: for an affine producer
\(u=A(x-x_0)\), the cross source is a constant-coefficient combination of
the components of \(\nabla w\), and every component of \(\nabla v\) (hence
of each cyclic copy) is parity-odd against every second-derivative kernel.
So the affine-producer cross Hessian at the station is exactly zero, in
every frame by conjugation invariance.

## 6. Corrected surjectivity witness

The oblate class is reached through the cross terms, not despite them:
\[
  \Phi(1,1,1)
  =\frac{106}{1155}\bigl(2I-2J\bigr)
  \quad\text{has spectrum}\quad
  \frac{106}{1155}\,(2,2,-4),
\]
where \(J\) is the all-ones matrix.

Sweep: along \(c(t)=(t,t,1)\), \(t\in[0,1]\), the normalized cubic
invariant \(\chi=\operatorname{tr}\Phi^3/(\operatorname{tr}\Phi^2)^{3/2}\)
runs continuously from the prolate extreme \(+1/\sqrt6\) at \(t=0\) to the
oblate extreme \(-1/\sqrt6\) at \(t=1\). Since \((\operatorname{tr}\Phi^2,
\chi)\) determine a trace-free spectrum up to scale, the intermediate value
theorem, the quadratic homogeneity \(\Phi(\lambda c)=\lambda^2\Phi(c)\),
and frame rotations give every trace-free Hessian.

Cost: with \(x=t^2\in[0,1]\),
\[
  \operatorname{tr}\Phi(c(t))^2
  =\Bigl(\frac{106}{1155}\Bigr)^2\bigl(6+4x+14x^2\bigr)
  \ge 6\Bigl(\frac{106}{1155}\Bigr)^2,
\]
so the normalized bank satisfies
\(|\Phi(\hat c)|_F\ge\sqrt{2/3}\,\cdot\,106/1155\) on the whole path, and
the amplitude needed for a target \(K\) obeys
\(|c|^2\le\sqrt{3/2}\,(1155/106)\,|K|_F\). The bank energy is at most
\(3|c|^2D^5\|v\|_{L^2}^2\), hence
\[
  E_{\rm ph}
  \;\le\;
  3\sqrt{3/2}\;\frac{1155}{106}\;\|v\|_{L^2}^2\;|K|\,D^5 .
\]
All factors are exact closed forms; the conclusion (SPT.21) and the
overlap-row consequence (SPT.23) stand unchanged.

## 7. Consequence

The locality obstruction's conclusion is intact: a finite-energy
divergence-free bank, zero to first order at the producer, supplies any
trace-free pressure Hessian at cost of order \(|K|D^5\), so static
finite-energy pressure/Hodge localization does not restore the confinement
floor. Only the witness changed: the exact bank map \(\Phi(c)\) with the
cross terms included replaces the false additive spanning (SPT.15). The
remaining pressure-row branches are unchanged: dynamic admissibility,
Reynolds-edge failure, fixed-density compensator/residue, or
construction/exclusion.

## 8. Four-sentence result

The rotated-template bank in the Schwartz locality note does not add
Hessians linearly: the pressure source is quadratic, and a unit cyclic pair
\(\{i,j\}\) contributes exactly \(-(212/1155)(e_i\otimes e_j+e_j\otimes
e_i)\), twice the solo coefficient. The exact bank map is
\(\Phi(c)=(106/1155)[5\operatorname{diag}(c^2)-|c|^2I-2c\otimes c]\), and
the affine-producer cross Hessian vanishes at the station by parity. The
oblate spectrum is reached at \(c=(1,1,1)\), and the path \(c=(t,t,1)\)
sweeps every normalized trace-free spectrum, so every trace-free Hessian is
still supplied at cost of order \(|K|D^5\) with exact-fraction constants.
The locality obstruction stands with the corrected witness; nothing new
opens and nothing closes.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
