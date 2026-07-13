# Independent validation by fresh derivation: F2 bundle candidate v2

**Date:** 2026-07-11
**Record role:** evidence surface for the ledger validation record
`20260711-f2-candidate-v2-independent-validation-confirmed`.
**Validates:** ledger candidate
`20260711-participation-pressure-graph-f2-ontology-candidate-v2`
(fresh-bytes F2 bundle: refined F2.2, refined F2.3, new F2.5), bound by
`validates_record_sha256 cad2c4d1c94ca81e5050f6948c0d749c182c0019ccd8586fd866038ff4383074`
and
`validates_delta_sha256 1feda82c1efd8cdbec76c34bee637a0edabc25251a3557c039e36b5e877d2a89`.
**Canonical base:** `ontology.md` at sha256
`e3341af522cce1fd344abdbfe5e9dda2964aff712fca3db4f334808651d7eeb7`;
proposed post-edit ontology sha256
`d78d07c353738ae42f014f2b171c739cf1a5b404d2e016b00dd6c6537d7ba077`.

## Declared research object (gate I)

One smooth unforced incompressible Navier–Stokes history \((u,p)\) at fixed
\(\nu>0\) on decaying \(\mathbb R^3\) or periodic \(\mathbb T^3\) with the
mean-zero pressure gauge on \(\mathbb T^3\); its time-independent linear
constant-coefficient scalar componentwise views; its scalar localizations;
and the slaved velocity-to-pressure graph over the class of smooth
divergence-free data. Every object below is Eulerian and constructed from the
one solution or posed as a class-level countertest of distinct smooth data.
No same-history regularity, Gold, or Silver inference is made anywhere in
this note; the proof role is independent validation of an ontology candidate.

**Independence discipline.** The witnesses below were re-derived in this
session from the equations alone, with coefficient choices deliberately
different from the archived PD-branch witnesses, so the confirmation does not
reuse the candidate author's computations. The digest binding was performed
against the hook's acceptance archive, not against the candidate's prose.

## FV.1 View-stress lock (validates the F2.2 addition)

Let \(A\) be a time-independent linear constant-coefficient scalar operator
acting componentwise, \(v=Au\), \(q=Ap\), applied term-by-term where defined.
\(A\) commutes with \(\partial_t\), \(\nabla\), and \(\Delta\). Applying
\(A\) to \(\partial_tu+\nabla\cdot(u\otimes u)+\nabla p=\nu\Delta u\) and
inserting \(A(u\otimes u)=v\otimes v+\tau_A\) with
\(\tau_A=A(u\otimes u)-v\otimes v\):

\[
\partial_tv+\nabla\cdot(v\otimes v)+\nabla q
=\nu\Delta v-\nabla\cdot\tau_A,
\qquad
\nabla\cdot v=A(\nabla\cdot u)=0.
\]

Applying \(A\) to \(-\Delta p=\partial_i\partial_j(u_iu_j)\):

\[
-\Delta q=\partial_i\partial_j\bigl(v_iv_j+\tau_{A,ij}\bigr).
\]

The same tensor \(\tau_A\) is simultaneously the nonlinear evolution defect
and the pressure-defect source, exactly as the candidate F2.2 text states.
Degenerate checks: \(A=I\) gives \(\tau_A=0\) and recovers the parent law;
\(A=\partial^\alpha\) reproduces the installed F4.2 commutator structure.
**Confirmed.**

## FV.2 Scalar-window divergence identity and the iff-constant statement (validates F2.3, first sentence of the addition)

\(\nabla\cdot(\chi u)=\chi\nabla\cdot u+u\cdot\nabla\chi=u\cdot\nabla\chi\).
If \(\chi\) is spatially constant this vanishes for every divergence-free
\(u\). Conversely, suppose \(\nabla\chi(x_0)\ne0\).
On \(\mathbb T^3\) take the constant field \(u\equiv e\) with
\(e\cdot\nabla\chi(x_0)\ne0\): then \(u\cdot\nabla\chi\not\equiv0\).
On decaying \(\mathbb R^3\) take \(u=\nabla\times(\phi\,a)\) with
\(\phi\in C_c^\infty\), so that \(u(x_0)=\nabla\phi(x_0)\times a=e\) with
\(e\cdot\nabla\chi(x_0)\ne0\); \(u\) is smooth, divergence-free, compactly
supported, and \(u\cdot\nabla\chi\ne0\) at \(x_0\). So multiplication by
\(\chi\) preserves divergence-freeness across the declared class iff
\(\chi\) is spatially constant. **Confirmed.**

## FV.3 Zero-or-identity for pointwise multiplication maps on connected \(\mathbb T^3\) (validates F2.3)

Let \(u\mapsto\chi(t,x)u\) send every same-law solution to a same-law
solution.

1. Constant fields \(u\equiv c\) with \(p\equiv0\) are solutions. If
   \(\chi(t_0,\cdot)\) were spatially nonconstant, choose \(c\) with
   \(c\cdot\nabla\chi(t_0,\cdot)\not\equiv0\); then
   \(\nabla\cdot(\chi c)=c\cdot\nabla\chi\ne0\), so \(\chi c\) is not a
   solution. Hence \(\chi=\chi(t)\).
2. With \(v=\chi(t)c\): \(\partial_tv=\chi'c\), \((v\cdot\nabla)v=0\),
   \(\Delta v=0\), so the momentum law forces \(\chi'c=-\nabla q\). On
   \(\mathbb T^3\) the spatial mean of a periodic gradient vanishes, so
   \(\chi'c=0\); taking \(c\ne0\) gives \(\chi'\equiv0\). Hence \(\chi\) is
   an absolute constant.
3. For constant \(\chi\), subtracting \(\chi\times\) the original law from
   the law for \(\chi u\) leaves
   \((\chi^2-\chi)\,\mathbb P\bigl((u\cdot\nabla)u\bigr)=0\)
   for every solution at every time. Take the smooth solution with datum

   \[
   w=a\cos x_1+b\cos(x_1+x_2),
   \qquad
   a=(0,1,1),\quad b=(1,-1,0),
   \]

   which is divergence-free (\(a\perp(1,0,0)\), \(b\perp(1,1,0)\)). The
   cross term of \(\nabla\cdot(w\otimes w)\) at frequency \(q=(0,1,0)\) is
   \(-\tfrac12\bigl[a(b\cdot q)+b(a\cdot q)\bigr]\sin x_2
   =-\tfrac12(1,-2,-1)\sin x_2\), whose Leray projection at \(q\) is
   \(-\tfrac12(1,0,-1)\sin x_2\ne0\). No other frequency of
   \(\nabla\cdot(w\otimes w)\) lies at \(q\), so
   \(\mathbb P((w\cdot\nabla)w)\ne0\) at \(t=0\). Hence \(\chi^2=\chi\), so
   \(\chi\equiv0\) or \(\chi\equiv1\). **Confirmed.**

The previous validation's decisive counterexample (spatial translation, a
scalar Fourier multiplier that is neither zero nor identity) does not apply
to the fresh bytes: the fresh text restricts the theorem to pointwise
multiplication maps, and a translation is not a pointwise multiplication.

## FV.4 Leray repair and pressure collar (validates F2.3)

Helmholtz on the declared surfaces:
\(\mathbb Pf=f-\nabla\Delta^{-1}(\nabla\cdot f)\), so
\(\mathbb P(\chi u)=\chi u-\nabla\Delta^{-1}(u\cdot\nabla\chi)\) by FV.2.
For the collar: \(\chi\nabla p=\nabla(\chi p)-p\nabla\chi\) and
\(\mathbb P\nabla(\chi p)=0\), hence

\[
\mathbb P(\chi\nabla p)=-\mathbb P(p\nabla\chi).
\]

A window adapted to one solution by \(u\cdot\nabla\chi=0\) is possible
(e.g. \(\chi\) a function of a conserved stream label in a symmetric flow)
and the induced equation still carries the displayed collar and commutator
terms. **Confirmed.**

## FV.5 Weak-graph counterexample, fresh coefficients (validates F2.5, first paragraph)

On \(\mathbb T^3\), mean-zero gauge, define distinct smooth divergence-free
data

\[
u_n=a\cos(nx_1)+b_n\cos(nx_1+x_2),
\qquad
a=(0,1,1),\quad
b_n=\frac{(1,-n,0)}{\sqrt{1+n^2}}.
\]

Divergence-freeness: \(a\cdot(n,0,0)=0\) and
\(b_n\cdot(n,1,0)=(n-n)/\sqrt{1+n^2}=0\). The amplitudes are bounded by
\(\sqrt2+1\) and every frequency diverges, so \(u_n\rightharpoonup0\) weakly
in every finite \(L^p\).

Slaved pressure. With
\(\cos(nx_1)\cos(nx_1+x_2)=\tfrac12[\cos x_2+\cos(2nx_1+x_2)]\), the source
\(\partial_i\partial_j(u_{n,i}u_{n,j})\) has fixed-frequency part at
\(q=(0,1,0)\) equal to \(-(q\cdot a)(q\cdot b_n)\cos x_2
=\frac{n}{\sqrt{1+n^2}}\cos x_2\), so

\[
p_n=\frac{n}{\sqrt{1+n^2}}\cos x_2+O(n^{-2})
\longrightarrow\cos x_2\ \text{uniformly},
\]

because the remaining source frequencies are \(2(n,0,0)\) and \(2(n,1,0)\)
and \((2n,1,0)\): the first two have vanishing coefficients
(\((q\cdot a)^2=0\), \((q\cdot b_n)^2=0\)) and the third has coefficient
\(O(1)\) against \(|q|^2=4n^2+1\). The weak limit \(0\) has pressure \(0\):
the velocity-to-pressure graph is not weakly closed.

Projected nonlinearity. At \(q=(0,1,0)\),
\(\nabla\cdot(u_n\otimes u_n)\) has coefficient
\(-\tfrac12[a(b_n\cdot q)+b_n(a\cdot q)]\sin x_2
\to(0,1,\tfrac12)\sin x_2\); its Leray projection at \(q\) is
\((0,0,\tfrac12)\sin x_2\ne0\), divergence-free. The diverging frequencies
carry coefficients of at most \(O(n)\) and vanish distributionally against
smooth test functions. Since
\((u\cdot\nabla)u+\nabla p=\mathbb P\nabla\cdot(u\otimes u)\) for
divergence-free \(u\),

\[
(u_n\cdot\nabla)u_n+\nabla p_n
\longrightarrow(0,0,\tfrac12)\sin x_2\ne0
\quad\text{in }\mathcal D',
\]

while the weak limit \(0\) has zero nonlinearity: the pressure-corrected
nonlinear graph is not weakly closed either. High-high interaction of one
field deposits a fixed low-frequency stress and pressure invisible to weak
limits, exactly as the candidate states, and the sequence is a family of
distinct smooth data with no same-history inference. **Confirmed.**

## FV.6 Sufficient strong rows (validates F2.5, second paragraph)

- \(u_n\to u\) in \(L^3\) gives
  \(\|u_n\otimes u_n-u\otimes u\|_{L^{3/2}}
  \le\|u_n-u\|_{L^3}(\|u_n\|_{L^3}+\|u\|_{L^3})\to0\) (Hölder
  \((3,3)\to3/2\)); the mean-zero slaving
  \(p=R_iR_j(u_iu_j)\) is Calderón–Zygmund bounded on \(L^{3/2}\), so
  \(p_n\to p\) in \(L^{3/2}\).
- \(\nabla u_n\to\nabla u\) in \(L^3\) closes the source
  \(\operatorname{tr}((\nabla u)^2)\) in \(L^{3/2}\) (Hölder), the Hessian
  \(\nabla^2p=\nabla^2\Delta^{-1}\operatorname{tr}((\nabla u)^2)\) in
  \(L^{3/2}\) (Calderón–Zygmund), and \(\operatorname{tr}(S^3)\) in \(L^1\)
  (Hölder \((3,3,3)\to1\)); \(S\) is a pointwise linear function of
  \(\nabla u\), so no Korn input is used. **Confirmed.**

## FV.7 Velocity convergence cannot replace gradient convergence, fresh witness (validates F2.5, last sentence)

Take \(v=(\cos x_2,\cos x_1,0)\), divergence-free, and

\[
u_n(x)=n^{-1}v(nx)=n^{-1}\bigl(\cos(nx_2),\cos(nx_1),0\bigr).
\]

Then \(\|u_n\|_\infty=\sqrt2/n\to0\) uniformly, while
\(\operatorname{tr}((\nabla u_n)^2)(x)
=2\sin(nx_1)\sin(nx_2)\)
keeps \(\|\cdot\|_{L^q}\) constant in \(n\) for every finite \(q\): the
pressure source oscillates at order one and converges weakly to its zero
mean (consistent with F6.2) but not strongly to the limit source \(0\). The
slaved pressure is \(p_n=n^{-2}\sin(nx_1)\sin(nx_2)\), whose Hessian has
order-one entries \(\pm\sin(nx_1)\sin(nx_2)\), \(\cos(nx_1)\cos(nx_2)\):
order-one oscillation with no strong limit. This is the exact scaling family
of F3.1 used as a sequence of distinct data, consistent with the hard
boundary. **Confirmed.**

## FV.8 Structural falsification pass over the fresh bytes

- **Degenerate views.** \(A=I\): zero defect; \(A=\partial^\alpha\): F4.2
  consistency (FV.1).
- **Translation blocker.** Discharged by the pointwise-multiplication
  restriction (FV.3).
- **Constant window.** \(\chi\) constant: repair and collar terms vanish
  identically; no contradiction.
- **Shear/2D3C nullity.** Shear and 2D3C fields make several witnesses
  degenerate (vanishing nonlinearity or null pressure source); the fresh
  texts assert existence statements and carry witnesses that are genuinely
  nonlinear-active, so the degenerate classes do not refute them.
- **Scaling.** FV.7 is the exact fixed-viscosity scaling family; FV.5 is
  scale-inhomogeneous but frequency-localized; both live on the declared
  periodic surface with the mean-zero gauge.
- **Hard boundary.** No pressure sign, cascade direction, alignment law,
  packet closure, or regularity conclusion is introduced; F2.5 explicitly
  types its sequence as distinct data with no class-exit inference.
- **Wording blockers of the narrowed validation** (operator class typed;
  consumers restricted to such scalar views; pointwise multiplication
  restriction; pressure-collar and commutator wording; no minimality in the
  F2.5 title; weak in every finite \(L^p\); \(\operatorname{tr}(S^3)\)
  named; distinct-data typing; no Gold/Silver inference): each checked
  present in the archived fresh section bytes. **All discharged.**

## FV.9 Digest and artifact binding

- The candidate record and delta digests were extracted from the hook's
  recorded candidate statement. The extraction was independently checked
  against the exact proposed text:
  the record slice hashes to
  `cad2c4d1c94ca81e5050f6948c0d749c182c0019ccd8586fd866038ff4383074`,
  equal to the archived `record_sha256`. The delta slice, under the same
  certified pipeline, hashes to
  `1feda82c1efd8cdbec76c34bee637a0edabc25251a3557c039e36b5e877d2a89`.
- The hook's acceptance-time mechanized candidate-artifact check
  (`candidate_artifact_errors` against the live canonical base) already
  verified that each declared section digest hashes its archived section
  bytes, that the reconstructed post-edit ontology hashes to
  `d78d07c353738ae42f014f2b171c739cf1a5b404d2e016b00dd6c6537d7ba077`, and
  that the change roles are exactly add F2.5, modify F2.2 and F2.3. This
  validation therefore confirms the exact scoped candidate text.

## Four-field return

- **Physical verdict: CAUSED** at stated scope. Participation forces the
  coupled ownership of the view defect (FV.1), forbids nonconstant scalar
  windows from acting as class-wide incompressibility-preserving cuts
  (FV.2–FV.3), forces the displayed nonlocal repair and collar (FV.4), and
  permits, by exact witnesses, the weak-graph failures and the
  derivative-order separation (FV.5, FV.7).
- **Scoped mathematical status: PROVED.** Every sentence of the three
  archived fresh fact sections is re-derived above at its stated scope.
- **Live-burden effect: SUPPORT ONLY.** No critical-height bound and no
  Part/Field failure is produced; the Gold and Silver burdens are unchanged.
- **Proposed ontology delta: NO CHANGE** in this record. The candidate is
  independently confirmed, but canonical integration is not performed in this
  note.
