# MPP Exactness Live Rework Ledger 2026-06-18

## Scope

This ledger records live mathematical rework, not completion by audit surface.
It separates edited theorem/proof surfaces from preserved transcript, generated,
or audit residues.

## Pulling-Teeth Linear-Profile Failure

Bad form:

```math
\nabla u\sim U/r
```

Live replacement:

```math
\Delta_r u(t):=\sup_{x,y\in B_r(x_*)}|u(x,t)-u(y,t)|,
\qquad
\Delta_r u(t)\le 2r\sup_{B_r(x_*)}|\nabla u(\cdot,t)|.
```

Along the moving radius:

```math
\rho(t)=\lambda\sqrt{T_*-t},
\qquad
\Delta_{\rho(t)}u(t)
\le
2\rho(t)\sup_{B_{\rho(t)}(x_*)}|\nabla u(\cdot,t)|.
```

Downstream consequence: no live theorem may spend a profile law, typical slope,
or scalar velocity amplitude in place of oscillation, a gradient supremum, or a
named carrier theorem.

Edited/current live surfaces: `submission-bundle/navier-stokes-submission.tex`,
`submission-bundle/source-field-reader-appendix.tex`, and the exactness audit
notes that point to the live replacement rather than acting as replacement.

## Cutoff Source-Closure Failure

Bad form:

```math
|\mathcal C_N^{cut}|
\le
\frac12\mathcal N_N^{visc}
+\mathfrak b_\psi^{cut} E_N
```

This was not licensed by the definitions because `E_N` carries the cutoff
weight `\phi_t^2`, while the Young term from the commutator carries
`|\nabla\phi_t|^2`.

Exact replacement:

```math
\mathcal E_N^{cut,\nabla}(h,t;\psi)
:=
\sum_{k=0}^{N}\lambda_k
\int |\nabla\phi_t|^2|\delta_hU_k|^2\,dx,
```

```math
|\mathcal C_N^{cut}(h,t;\psi)|
\le
\frac12\mathcal N_{N,h,\psi}^{visc}(t)
+4\nu\,\mathcal E_N^{cut,\nabla}(h,t;\psi).
```

Frozen-net consequence:

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}
\le
\frac12\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
+4\nu\,\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}.
```

Downstream consequence: the source route is now conditional on `FCC.C1a`, the
explicit input

```math
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I),
```

or on a separate domination theorem proving that input from packet data.
The coefficient `\mathfrak b_\psi^{cut}` remains only cutoff-derivative
coefficient control; it does not close the source channel.

Edited live surfaces include the cutoff commutator note, cutoff-channel
reduction, source-sufficient closure, source-ledger split, strain/cascade
sufficient reduction, pressure/source verification ledger, PCTP source
verification, ACT.KX and LCI downstream packages, class-membership bridge
ledger, periodic/terminal source summaries, `live-theorem-edge.yaml`,
`cm-convergence-atlas.yaml`, and the reader appendix.

## Exact Source Route After Rework

The exact source route is now:

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a\Longrightarrow FCI.5f.
```

The strengthened source import is now read as:

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
```

where `\operatorname{Hyp}(FFSRC.A)` includes the weighted cutoff-defect input.

## Second Consequence Pass

The downstream source route was rechecked after the cutoff-source correction.
The following live theorem surfaces were edited so they no longer spend a bare
`FFSRC.A=>FCI.5f` or the old three-channel source chain without the cutoff-defect
input:

- `live-theorem-edge.yaml`;
- `mpp-terminal-class-membership-six-burden-closure-note.md`;
- `mpp-act-kx-hidden-spending-audit-note.md`;
- `mpp-pctp-hard-five-burden-frontier-audit-note.md`;
- `mpp-scf-aact-elliptic-source-endpoint-branch-package.md`;
- `mpp-seven-item-paper-grade-closure-package.md`;
- source-pulse / local-source theorem notes that refer to the downstream source
  supplier only as `\operatorname{Hyp}(FFSRC.A)=>FCI.5f`.

The old decision-bearing chain

```math
FPCR.C+FSCR.C+FCC.C1\Longrightarrow FCI.5f
```

is now allowed only as an explicitly named old spend being rejected.  The live
consumer-facing source theorem is either the exact branch with `FCC.C1a`, or the
strengthened source import with `\operatorname{Hyp}(FFSRC.A)`.

The Door 1 projected-stress note also contained a loose comparison statement.
It no longer says that the stress/native-carrier gap is merely "same order" as
the source wall.  The live statement is the defect

```math
\mathcal D_N^{PLP}
:=
\sum_{P\in\mathcal F_N}\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)\,dxdt
+
\int T:\nabla(\chi_R\ell)\,dy,
```

and the required unproved bound

```math
|\mathcal D_N^{PLP}|\le \mathrm{Legal}_N+o_N(1).
```

Until that defect inequality is proved on the same selected terminal family, the
stress-flux projection cannot be spent as a lower bound for the native positive
source wall.

`middle-band-flux-gap-kernel-theorem.md` was also tightened from "pointwise scale
estimate" to "pointwise kernel bound"; the displayed inequality was already the
exact object, and the edit prevents it from being read as scale intuition.

## Proof-Verb Inclusion And Finite-Measure Rework

Old loose steps:

- `mpp-packet-collar-next-rung-control.md` proved `PC.A` by saying it was
  "Immediate from `(PC.2)`--`(PC.7)`."
- `uniform-packet-bounds-collapse-small-radius-budget.md` proved `UPB.C` by
  saying it was "Immediate from `(UPB.9)` and `(UPB.10)`."
- Downstream summaries said the radius-gap route "gives" a uniform
  shrinking-radius theorem without naming the finite-measure calculation.

Exact replacements:

For `PC.A`, the live proof now shows the containments. If
\(\eta\in\mathcal R_{\rho}^{ref}(t;\psi)\), then `(PC.2)` gives
\(|\eta|\le\Lambda_{\rho,\psi}^{ref}(I)\), hence
\(\eta\in\mathbb B_{\rho,\psi}^{ref}(I)\) by `(PC.3)`, so
\[
X(a,t)+\eta\in\mathfrak B_{\rho,\psi}(t;I).
\]
Then `(PC.6)` puts both \(\mathfrak B_{\rho,\psi}(t;I)\) and
\(\mathfrak S_{\rho,\psi}(t)\) in \(\mathfrak P_{\rho,\psi}(t)\), and
`(PC.7)` puts every distance-zero point of \(\mathfrak P_{\rho,\psi}(t)\) into
the collar \(\mathcal C_{\rho,\psi}^{\delta}(t)\). This proves `(PC.10)`
without a hidden geometry shortcut.

For `UPB.C`, the live proof now spends the exact pointwise and measure
calculation:

```math
r_J(z)^2\le\rho_J^2,
\qquad
\int_I\int_{\mathcal J}r_J(z)^2\,d\mu_J^{pair}\,dt
\le
\rho_J^2\mu_J^{pair}(\mathcal J\times I)
\le
\mathfrak m_\ast\rho_J^2=o_J(1).
```

Downstream consequence: the stronger compact-support/localizer route is
conditional on the fixed gap floor, finite active measure, and uniform
shrinking-radius bound \(r_J\le\rho_J\to0\). It is still a bypass realization,
not the installed minimal overlap theorem wall. The packet-collar route still
has the open `PC.D` / collar Sobolev / interval-propagation burdens; the
geometric containment step itself is no longer an unresolved proof verb.

Edited live surfaces:

- `theorem-construction/mpp-packet-collar-next-rung-control.md`;
- `theorem-construction/uniform-packet-bounds-collapse-small-radius-budget.md`;
- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/localized-projector-localizer-modulus-overlap-reduction.md`;
- `theorem-construction/compact-support-localizer-shrinking-radius-implies-center-spacing.md`.

Residuals: the remaining "Immediate from" hits found in this batch are inside
`mpp-exactness-residue-audit-classification-20260617.json`, a generated audit
residue, not a live theorem/manuscript surface.

## Compactness Scale-Estimate Rework

Old loose step:

- `submission-bundle/sections/rebuilt-compactness-exact-object-branch.tex`
  introduced the compactness branch by saying "Energy, enstrophy, and scale
  estimates follow the original Navier--Stokes branch."
- `submission-bundle/proof-attempt-failure-appendix.tex` mirrored the same
  loose payment by saying "The scale estimate feeds the energy/enstrophy
  bridge."

Exact replacement:

The live manuscript now says compactness may spend only estimates already proved
for the original solution, for example

```math
\sup_{t<T_*}\|u(t)\|_{L^2}^2<\infty,
\qquad
\nu\int_0^{T_*}\|\nabla u(t)\|_{L^2}^2\,dt<\infty.
```

For an \(H^s\) extraction along \(t_n\uparrow T_*\), the high-frequency payment
is the exact spectral tail

```math
\operatorname{Tail}_s(N;\{t_n\})
:=
\sup_n\sum_{j>N}2^{2sj}\|P_j u(t_n)\|_{L^2}^2,
\qquad
\lim_{N\to\infty}\operatorname{Tail}_s(N;\{t_n\})=0.
```

The failure appendix now names the first four-body arrow as a required
scale-barrier inequality \(S_{\mathrm{cl}}\to Q_{\mathrm{cl}}\); without that
inequality, scale language does not feed the energy/enstrophy bridge.

Downstream consequence: compactness remains a receiver of already-proved tail,
source, participation, and exact-object controls. It cannot create the scale or
tail payment and cannot turn a weak terminal object into an \(H^s\) endpoint
record unless the displayed tail limit is proved on the selected sequence.

Edited live surfaces:

- `submission-bundle/sections/rebuilt-compactness-exact-object-branch.tex`;
- `submission-bundle/proof-attempt-failure-appendix.tex`.

## Kernelized Lifted-Band Scale-Separation Rework

Old loose step:

- `submission-bundle/sections/rebuilt-kernelized-lifted-band-branch.tex` said
  that when \(k\) is separated from \(j\), "the interaction kernel should carry a
  factor that shrinks as \(j-k\) grows."
- The derivative-bill paragraph described the arithmetic as happening "in the
  separated model."

Exact replacement:

The live section now states that the proof burden is the separated-band
inequality itself:

```math
\big|\langle P_j((P_k u\cdot\nabla)u^{\mathrm{near}}_j),u_j\rangle\big|
\le C_{\alpha}2^{-\alpha(j-k)} A_{j,k}(t),
\qquad k<j-C.
```

The section now says scale separation by itself is not a payment.  The remaining
question is whether a proved decay factor \(2^{-\alpha(j-k)}\), with constants
uniform in \(j,k\), is strong enough to make the lower-prefix sum legal.  The
derivative-bill paragraph now describes the obstruction as dyadic bookkeeping for
the displayed kernel gain:

```math
2^{-(j-k)}\cdot 2^j=2^k.
```

Downstream consequence: this branch no longer spends frequency-separation
intuition or a model profile as proof force.  It remains open until the
separated-band estimate above is proved with the stated uniformity and with an
admissible \(A_{j,k}(t)\) that makes the \(k<j-C\) summation legal.

Edited live surface:

- `submission-bundle/sections/rebuilt-kernelized-lifted-band-branch.tex`.

## Scale-Barrier Critical-Scale Rework

Old loose step:

- `submission-bundle/proof-attempt-failure-appendix.tex` described a "natural
  proof picture" in which there "should be" a critical scale
  \(k_{\mathrm{crit}}\) where nonlinear transfer and viscous loss balance, and
  above which viscosity "should dominate and drive the tail down."
- The same passage then used the power-law model
  \(T(k,t)=C_Tk^{-\alpha}\), \(E(k,t)=C_Ek^{-\beta}\) to motivate
  \(k_{\mathrm{crit}}\).  That was a model-profile calculation, not a proof for
  an arbitrary terminal spectrum.
- The adjacent enstrophy estimate was introduced as "the usual estimate."

Exact replacement:

For a cutoff \(K>0\), the live appendix now defines the actual high-frequency
tail and dominance functional

```math
Y_{>K}(t):=\int_K^\infty k^2E(k,t)\,dk,
\qquad
\mathcal D_K(t):=
2\nu\int_K^\infty k^4E(k,t)\,dk
-
\int_K^\infty k^2T_+(k,t)\,dk,
```

with \(T_+=\max(T,0)\).  The spectral balance gives the exact implication

```math
\frac{d}{dt}Y_{>K}(t)\le-\mathcal D_K(t).
```

The remaining theorem is therefore a tail-dominance statement,

```math
\mathcal D_K(t)\ge0
\quad\text{or}\quad
\int_0^{T_*}(\mathcal D_K(t))_-\,dt<\infty,
```

with \(K\) and constants tied to the same selected tail.  The power-law
\(k_{\mathrm{crit}}\) computation is now explicitly only a diagnostic under
extra profile assumptions.  The enstrophy bound is now named as
H\"older/Sobolev/interpolation followed by Young, matching the displayed
inequalities.

Downstream consequence: the scale-barrier body no longer spends a guessed
critical scale or generic viscosity intuition.  It remains open exactly at the
high-frequency cascade-control theorem proving the displayed
\(\mathcal D_K\)-dominance on the same tail used by the compactness or
continuation argument.

Edited live surface:

- `submission-bundle/proof-attempt-failure-appendix.tex`.

## Positive-Forward Four-Body Diagnostic Rework

Old loose step:

- `submission-bundle/sections/rebuilt-positive-forward-and-four-body-diagnostic.tex`
  said that high-frequency transfer had to be handled because "viscosity must
  dominate the cascade above an active scale."  That phrasing spent an
  active-scale picture as if it were a proved tail inequality.
- The compactness paragraph said compactness was "the natural way" to extract a
  terminal object, which hid the exact topology, tail smallness, and
  same-solution attachment requirements.
- The enstrophy lift referred to a "familiar local-theory bound" instead of the
  conditional differential inequality and hypotheses actually being used.

Exact replacement:

The live section now states the tail burden on the selected frequencies:

```math
\mathcal D_K(t)
:=
2\nu\int_K^\infty k^4E(k,t)\,dk
-
\int_K^\infty k^2T_+(k,t)\,dk,
```

and requires either

```math
\mathcal D_K(t)\ge0
```

or an integrable bound on the negative part of \(\mathcal D_K\), on the same
tail used by the later compactness or continuation step.  Compactness is now
allowed only after the extraction topology, low-mode compactness,
high-frequency tail smallness, and same-solution attachment have been supplied.
The enstrophy lift is now named as the conditional differential inequality

```math
Y'(t)\le C_\nu Y(t)^3.
```

Downstream consequence: the four-body circuit no longer spends active-scale
intuition, natural compactness language, or generic local-theory familiarity as
proof force.  It remains a diagnostic branch whose unresolved mathematical
burden is the same selected-tail \(\mathcal D_K\) domination/cascade-control
theorem and the exact same-solution compactness attachment needed before any
continuation readout can be claimed.

Edited live surface:

- `submission-bundle/sections/rebuilt-positive-forward-and-four-body-diagnostic.tex`.

## Failure-Appendix Tail And Compactness Restatement Rework

Old loose step:

- `submission-bundle/proof-attempt-failure-appendix.tex` still said that the
  nonlinear transfer should be weaker than viscous dissipation "after summing
  over the active scales."
- The same appendix said compactness was "the natural way" or "the standard
  way" to pass from approximations to a solution.
- The Body III compactness passage used a pointwise power-law tail
  \(E_n(k,t)\le Ck^{-\gamma}\) as the visible route to high-frequency
  smallness, leaving the actual compactness hypothesis implicit.

Exact replacement:

The live appendix now defines \(T_+(k,t)=\max(T(k,t),0)\), the selected
derivative tail

```math
Y_{>K}(t):=\int_K^\infty k^2E(k,t)\,dk,
```

and the same dominance functional

```math
\mathcal D_K(t)
:=
2\nu\int_K^\infty k^4E(k,t)\,dk
-
\int_K^\infty k^2T_+(k,t)\,dk.
```

The proof burden is now stated as \(\mathcal D_K(t)\ge0\), or integrability of
\((\mathcal D_K(t))_-\), with constants on the same selected tail.  Compactness
is now stated as a low/high split with explicit hypotheses: finite-dimensional
low modes after a time-derivative bound, and high-mode smallness from the
uniform tail condition

```math
\lim_{K\to\infty}
\sup_n\int_0^T
\int_{k\ge K} k^{2s}E_n(k,t)\,dk\,dt
=0.
```

Pointwise power-law decay is now only a sufficient extra profile assumption,
not the proof's hidden compactness input.

Downstream consequence: the failure appendix no longer lets active-scale
summation language, standard compactness language, or a power-law model profile
carry proof force.  The downstream compactness body now depends explicitly on
the same selected-tail estimate, time compactness, nonlinear passage, pressure
normalization, and same-solution attachment required by the main four-body
diagnostic.

Edited live surface:

- `submission-bundle/proof-attempt-failure-appendix.tex`.

## Middle-Band Gap-Kernel Mean-Value Rework

Old loose step:

- `theorem-construction/middle-band-flux-gap-kernel-theorem.md` derived the
  \(\ell/r\) kernel by saying that, "for a field varying on scale \(r\),"
  the commutator increment gives the ratio \(|h|/r\).
- `submission-bundle/source-field-reader-appendix.tex` carried the same live
  proof step in an even looser PDF-facing form, saying that a field varying on
  scale \(r\) yields a ratio and then referring downstream to a bare "kernel
  /r."

Exact replacement:

Both live surfaces now derive the scale factor from the exact difference
identity for the \(r\)-band field \(f_r=\widetilde Q_r u\):

```math
f_r(x+h)-f_r(x)
=
\int_0^1 h\cdot\nabla f_r(x+\theta h)\,d\theta .
```

On the radius-\(\ell\) commutator kernel support, \(|h|\le C_\rho\ell\), hence

```math
|f_r(x+h)-f_r(x)|
\le
C_\rho\frac{\ell}{r}
\int_0^1 r|\nabla f_r(x+\theta h)|\,d\theta .
```

The normalized far-band density is now stated as \(r|\nabla\widetilde Q_r u|\)
after convolution against kernels with uniformly bounded \(L^1\) mass.  The
\(\ell/r\) factor is therefore a commutator-increment consequence, not a linear
profile assumption for the \(r\)-band field.

Downstream consequence: the middle-band/far-corona route no longer spends
"field varying on scale \(r\)" as proof force.  The open theorem remains the
one-sided square/Carleson estimate on the coupled two-scale density
\(\mathcal A_{\ell,r}\), with Hardy/Schur applied only after the exact
\(\ell/r\) kernel and normalized far-band density are exposed.

Edited live surfaces:

- `theorem-construction/middle-band-flux-gap-kernel-theorem.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

## Critical H-One-Half Field-Landing Rework

Old loose step:

- `submission-bundle/proof-attempt-failure-appendix.tex` repeatedly said that
  pure \(H^{1/2}\) oscillation "should become" a Field failure.
- The same section also said the necessary same-ledger extraction and
  oscillation-to-Field lemmas were missing.  The old wording let the desired
  Field landing leak into the proof role before those lemmas were paid.

Exact replacement:

The live appendix now states the branch as a conditional translator.  Amplitude
still routes toward the local \(L^3\) translator.  Pure oscillation is
Field-facing, and with Pack and Part retained it has the shape of a Field
failure, but it is not a proved Field failure until same-ledger \(H^{1/2}\)
extraction and oscillation-to-Field conversion are supplied.

Downstream consequence: the \(H^{1/2}\) branch no longer counts as completed
class exit or as an installed Field face.  It remains a candidate Field landing
and reader-facing diagnostic until the named extraction and conversion lemmas
are proved on the selected same-solution ledger.

Edited live surface:

- `submission-bundle/proof-attempt-failure-appendix.tex`.

## Low-High Eigenpacket Far-Low/Near-Band Support Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` said that far-low strain
  turnover has a "genuine parabolic scale-separation gain" and that the near band
  must route to burst/source structure, without displaying the estimate being
  spent.
- `mpp-dynamic-low-high-eigenpacket-no-freeze-direct-attempt-20260610.md` said
  that far-low temporal variation "carries a parabolic scale-separation gain" and
  summarized the near-band heat payment as paid support.
- `mpp-lowstrain-bvcharge-direct-attempt-20260506.md` said that the far-low
  part has a "genuine parabolic scale-separation gain" before its own exact
  `(LBV.8)` estimate appeared.
- `mpp-independent-prd-alternative-proof-attempts-20260516.md` repeated the same
  far-low gain sentence in a live proof-attempt surface named by the theorem
  packet and verdict maps.
- `live-theorem-edge.yaml`, `source-frontier.yaml`, and
  `submission-bundle/source-frontier.yaml` repeated the same paid-support summary
  in decision-bearing route language.

Exact replacement:

The live manuscript and theorem note now state the far-low payment as the exact
material-derivative estimate

```math
\tau_P\int_{I_P}|D_tS^{far}_{j_P,L}|\,dt
\le
C_{\mathrm{far}}2^{-2L}\int_{I_P}\|S^{far}_{j_P,L}\|_\infty\,dt
+\mathrm{legal\ commutators}.
```

The near-band heat payment is now stated only under the subparabolic hypothesis

```math
\|S^{near}_{j_P,L}\|_\infty\le\theta\tau_P^{-1},
```

with the exact absorption

```math
\sum_P\omega_PE_PV_P^{heat}
\le
C_L\theta H_W,
\qquad
H_W:=\sum_P\omega_PE_P,
```

and the explicit choice \(\theta\le\eta_{\rm abs}/C_L\).  On the complement
\(\|S^{near}_{j_P,L}\|_\infty>\theta\tau_P^{-1}\), the branch is not absorbed by
heat variation; it routes to parabolic-rate burst height, donor height, height
charge, or Zeno.

Downstream consequence: `DynamicLowHighEigenpacketNoFreeze.A` still does not
follow from the material-eigenframe split.  The support now paid is exactly
`(MEF.8)` and `(NBV.7b)`, while the frozen aligned pressure/source-current and
active-alignment/no-incoming cases remain the live unpaid wall.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mpp-lowstrain-bvcharge-direct-attempt-20260506.md`;
- `theorem-construction/mpp-independent-prd-alternative-proof-attempts-20260516.md`;
- `theorem-construction/mpp-dynamic-low-high-eigenpacket-no-freeze-direct-attempt-20260610.md`;
- `live-theorem-edge.yaml`;
- `source-frontier.yaml`;
- `submission-bundle/source-frontier.yaml`.

## Lifted-Band Kernel Gain Carrier Rework

Old loose step:

- `scale-kernelized-lifted-band-reduction-lemma.md` asked whether the shell
  algebra produced a "genuine off-diagonal gain" and then summarized the result
  as a "genuine summable gap kernel."
- `lifted-band-gain-to-msi-bridge.md`, the Body 1 kernelized leakage/audit
  notes, `lifted-remainder-feedback-into-body1-audit.md`,
  `scale-high-side-remainder-packet.md`, `route-b-euclidean-closure-theorem.md`,
  `all-scale-frequency-transfer-inefficiency-theorem.md`,
  `meso-scale-shear-inefficiency-theorem.md`,
  `referee-hard-upgraded-body4-packet-subsection.md`, and the reader appendix
  repeated the same gain language in downstream route form.

Exact replacement:

The live surfaces now spend only the displayed scale-side kernelized carrier

```math
\mathfrak K_N^{scale}[u^{(n)}](t)
:=
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}\,
\|\nabla \Delta_j u^{(n)}(t)\|_{L^2_x}\,
\|\Delta_j u^{(n)}(t)\|_{L^2_x}.
```

The factor \(2^{-(j-k)}\) is no longer described as a freestanding scale-gain
principle.  It is a factor inside this exact carrier.

Downstream consequence: the lifted-band route remains open at the theorem that
integrates or dominates \(\mathfrak K_N^{scale}\) in the required spacetime
leakage estimate, and at any upgrade from the scale-side carrier to the stronger
gradient-side lifted packet.  The downstream route may not spend the displayed
factor alone as closure of the lifted high-side remainder.

Edited live surfaces:

- `theorem-construction/scale-kernelized-lifted-band-reduction-lemma.md`;
- `theorem-construction/lifted-band-gain-to-msi-bridge.md`;
- `theorem-construction/body1-kernelized-lifted-band-leakage-barrier.md`;
- `theorem-construction/body1-kernelized-lifted-band-integration-audit.md`;
- `theorem-construction/lifted-remainder-feedback-into-body1-audit.md`;
- `theorem-construction/scale-high-side-remainder-packet.md`;
- `theorem-construction/route-b-euclidean-closure-theorem.md`;
- `theorem-construction/all-scale-frequency-transfer-inefficiency-theorem.md`;
- `theorem-construction/meso-scale-shear-inefficiency-theorem.md`;
- `theorem-construction/referee-hard-upgraded-body4-packet-subsection.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

## Standard-Proof-Verb Displayed-Inequality Rework

Old loose step:

- `meso-scale-shear-inefficiency-theorem.md` said standard kernel commutator
  calculus gave the gap factor.
- `tail-energy-strict-low-mode-reduction-lemma.md` called the displayed
  commutator inequality the "standard" fixed-gap estimate.
- `mpp-affine-readout-condition-number-budget-direct-attempt-20260609.md` said
  standard singular-value comparison gave the differential comparison.
- `coherent-readout-low-mode-comparison-theorem.md` said standard
  Bernstein/Sobolev localization gave the low-mode comparison.

Exact replacement:

Each surface now points to the displayed inequality itself as the proof step:
the lifted-band carrier contains \(2^{-(j-k)}\), the commutator estimate follows
from the preceding mean-value/kernel-moment bounds, the affine readout uses the
displayed differential singular-value comparison, and the low-mode comparison
uses the displayed Bernstein/Sobolev inequalities with named constants and
\(s>5/2\).

Downstream consequence: these surfaces no longer let "standard" carry proof
force.  Their downstream use is allowed only through the displayed inequalities
and their stated hypotheses.

Edited live surfaces:

- `theorem-construction/meso-scale-shear-inefficiency-theorem.md`;
- `theorem-construction/tail-energy-strict-low-mode-reduction-lemma.md`;
- `theorem-construction/mpp-affine-readout-condition-number-budget-direct-attempt-20260609.md`;
- `theorem-construction/coherent-readout-low-mode-comparison-theorem.md`.

## CKN Packet Cost Order-Phrase Rework

Old loose step:

- `mpp-vortex-packet-transfer-rate-and-cost-audit-20260610.md` said the
  unnormalized cost on a singular parabolic cylinder was "at least of order"
  `\epsilon_0 r^2`.

Exact replacement:

The live quantitative audit now spends the normalized CKN threshold directly:

```math
r^{-2}\int_{Q_r}(|u|^3+|p|^{3/2})\,dx\,dt\ge\epsilon_0
\quad\Longrightarrow\quad
\int_{Q_r}(|u|^3+|p|^{3/2})\,dx\,dt\ge\epsilon_0 r^2.
```

Downstream consequence: the cone-payment branch may use a normalized
scale-critical lower bound and its exact unnormalized consequence. It may not
use the phrase "of order" as a substitute for the displayed implication, and it
still cannot derive a scale-uniform positive supplier from finite raw energy.

Edited live surface:

- `theorem-construction/mpp-vortex-packet-transfer-rate-and-cost-audit-20260610.md`.

## Frame Transport And Refill Scale-Time Rework

Old loose steps:

- `mpp-lowstrain-bvcharge-direct-attempt-20260506.md` said the exact transport
  law "should give" the frame-variation estimate `(LBV.13)`.
- `mpp-refilltree-wellfounded-direct-attempt-note.md` said comparable-scale
  ancestry gives backward time increments "of order" `r_m^2`.

Exact replacements:

The low-strain surface now states `(LBV.13)` as the missing frame-transport
input, not as an automatic consequence:

```math
|D_tn_P|
\le
C_{Frame}
\big(
|Q_{n_P}S^{loc}_{<j_P}n_P|
+\mathrm{FrameComm}_P
\big).
```

The first term is geometric rotation by strain, and `\mathrm{FrameComm}_P`
must be proved as legal localization/pressure/viscous leakage on the same
packet before the frame-variation branch can be spent.

The refill-tree surface now states the scale-time summation hypothesis as
two-sided parabolic comparability:

```math
c\,r_m^2\le \Delta t_m\le C\,r_m^2,
\qquad 0<c<C<\infty.
```

Only under that hypothesis does `\sum_m r_m^2=\infty` force a preterminal
entrance time. The complementary `\sum_m r_m^2<\infty` branch remains the Zeno
refill obstruction.

Downstream consequence: the low-strain route remains open at
`FrameBVCharge.A` / `ActiveStrainAlignmentCost.A` until `(LBV.13)` is proved
with legal commutators, and the refill route may not use a scale-time
"order" phrase unless the displayed comparability constants are supplied.

Edited live surfaces:

- `theorem-construction/mpp-lowstrain-bvcharge-direct-attempt-20260506.md`;
- `theorem-construction/mpp-refilltree-wellfounded-direct-attempt-note.md`.

## Source-Appendix Cascade Proof-Verb Mirror Rework

Old loose step:

- The source-field appendix mirror of
  `mpp-frozen-family-strain-cascade-sufficient-reduction-note.md` said the
  cascade packet bound followed by "the same weighted Cauchy--Schwarz argument"
  but omitted the displayed inequality.

Exact replacement:

The appendix now displays the actual cascade estimate already present in the
theorem note:

```math
|\mathcal R_N(\eta,t;\psi)|
\le
C_{N,\lambda}\,
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)^{1/2}\,
E_N(\eta,t;\psi).
```

Downstream consequence: the source-field appendix no longer asks the reader to
accept the cascade channel from a proof verb alone. The downstream sufficient
branch may spend the paired displayed estimates for `\mathcal S_N` and
`\mathcal R_N`, not an omitted "same argument" step.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-weighted-annular-l4-source-estimate-for-pflux-supplier.md`;
- `theorem-construction/mcp-weighted-pressure-tail-supplier-for-pflux-w-c53e2eb144.md`;
- `theorem-construction/mcp-weighted-product-source-summability-for-pflux-closure-88e8c95d7b.md`;
- `theorem-construction/mcp-final-r3-export-theorem-compression-from-weighted-cascade-package-2d459cbee2.md`.

Downstream note rework:

- Removed the live appendix residue saying a connector-blocked read prevented
  verification of the near-pressure proof.  The appendix now states the actual
  conditional proof: `AnnL4.W` plus weighted moment control gives near
  summability by the displayed Cauchy--Schwarz inequality.
- Replaced `local smoothness tails`, `enough local annular smoothing`, and
  `local smoothing estimates` in the active pressure-flux notes with the exact
  input triple:

```math
AnnL4.W:\quad
\sum_k2^{2ak}\int_0^T\|u(t)\|_{L^4(A_k^*)}^4\,dt<\infty,
```

```math
\sup_{t\le T}\sum_k2^{2ak}\|u(t)\|_{L^2(A_k)}^2<\infty,
```

and

```math
\sum_k2^{(2a-1)k}\int_0^T F_k(t)\|u(t)\|_{L^2(A_k)}\,dt<\infty.
```

The far input is tied to the weighted Schur consequence

```math
\sum_k2^{(2a-1)k}F_k(t)\|u(t)\|_{L^2(A_k)}
\le
C\,C_a^{far}M_a(t)^{3/2}.
```

## Pressure-Flux Local-Smoothing Supplier Rework

Old loose step:

- The source-field appendix said weighted pressure-tail summability was supplied
  by "local smoothing" and exterior-tail bounds when available.
- The pressure-flux section said the near pressure required "annular local
  smoothing or \(L^4\)-type control" without naming the exact supplier being
  spent.

Exact replacement:

The live appendix now states the near-annulus supplier as the weighted local
\(L^4\) source

```math
\sum_k2^{2ak}\int_0^T\|u(t)\|_{L^4(A_k^*)}^4\,dt<\infty,
```

together with the weighted moment bound on
\(\sum_k2^{2ak}\|u(t)\|_{L^2(A_k)}^2\).  The near-source summability is paid by
the displayed weighted Cauchy--Schwarz inequality:

```math
\sum_k2^{(2a-1)k}\|u\|_{L^4(A_k^*)}^2\|u\|_{L^2(A_k)}
\le
\Big(\sum_k2^{2ak}\|u\|_{L^4(A_k^*)}^4\Big)^{1/2}
\Big(\sum_k2^{(2a-2)k}\|u\|_{L^2(A_k)}^2\Big)^{1/2}.
```

The far source remains the separate \(F_k\)-summability input supplied by an
exterior pressure-tail theorem.

Downstream consequence: `PFlux.Supplier` may be consumed only after the exact
near weighted \(L^4\) source and the far-tail summability are supplied. The
phrase "local smoothing" is no longer allowed to carry the pressure-flux closure
inside the appendix.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## FCC.C1a Source-Branch Downstream Repair

Old loose step:

Several source-branch theorem notes still spent the strengthened source import
as a bare

```math
FFSRC.A\Longrightarrow FCI.5f
```

or spent the exact same-depth source chain as

```math
FPCR.C+FSCR.C+FCC.C1\Longrightarrow FCI.5f.
```

Those forms hid the cutoff-channel payment found earlier in this ledger. The
cutoff commutator is not controlled by the coefficient
`\mathfrak b_\psi^{cut}` times the ordinary packet energy without an additional
domination theorem.

Exact replacement:

The source branch now uses

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
```

where `\operatorname{Hyp}(FFSRC.A)` includes

```math
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}(\cdot;I)\in L^1(I).
```

The exact same-depth branch is now

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a\Longrightarrow FCI.5f.
```

In proof surfaces that wrote the Gronwall source inequality, the old
coefficient shortcut has been replaced by the exact term

```math
4\nu\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}.
```

Downstream consequence:

The final dependency compression, averaged-route source consumers, bridge
license notes, source-branch proof decisions, exact-source boundary notes, and
source-pulse audit notes no longer let the strengthened import discharge the
cutoff channel unless `FCC.C1a` is present. The source-pulse no-go notes keep
their mathematical point: even with `Hyp(FFSRC.A)`, source integrability does
not prove branch-native positive-source depletion on terminal bad windows.

Edited live surfaces:

- `theorem-construction/mcp-pressure-source-supplier-verification-fcc-fscr-fpcr-ffsrc-20260501.md`;
- `theorem-construction/mcp-source-branch-final-bookkeeping.md`;
- `theorem-construction/mcp-terminal-route-compression-retained-conditional-theorem.md`;
- `theorem-construction/mcp-fci-5f-avg-source-closure-audit.md`;
- `theorem-construction/mcp-pressure-source-srcfinal-loop-closure.md`;
- `theorem-construction/mcp-ffsrc-a-averaged-route-decision-cfi-a_-f2f22d3c25.md`;
- `theorem-construction/mcp-pressure-side-collar-return-to-strengthened-source-closure.md`;
- `theorem-construction/mcp-ffsrc-to-fci5f-full-source-proof.md`;
- `theorem-construction/mcp-source-branch-proof-decision-cfi-a_-9e35a24378.md`;
- `theorem-construction/mcp-averaged-finite-energy-route-and-readout-completion.md`;
- `theorem-construction/mcp-bridge-license-audit-into-cm-main-proof.md`;
- `theorem-construction/mcp-authority-surface-digest-and-exact-source-branch-completion-ffsrc-a-62eb68bca2.md`;
- `theorem-construction/mcp-exact-branch-boundary-fcc-c1-3a03d57bb2.md`;
- `theorem-construction/mcp-exact-same-depth-source-branch-attempt-ffpb-a0-990fd82f9e.md`;
- `theorem-construction/mcp-final-dependency-compression.md`;
- `theorem-construction/mcp-endpoint-origin-boundary-completion-note.md`;
- `theorem-construction/mcp-dtc-a-through-act-kx-core-completion.md`;
- `theorem-construction/mcp-returned-pressure-lower-carrier-to-act-kx-conditional-closure.md`;
- `theorem-construction/mcp-single-final-conditional-averaged-route-theorem-avg-main-a-d000abfe2f.md`;
- `theorem-construction/mcp-pctp-hard-maximal-reduction-from-ttu-a-frontier-tgc-a-3c1c665565.md`;
- `theorem-construction/mcp-ffsrc-a-to-fci-5f-strengthened-source-bridge-firp-a0-8c8a3b529a.md`;
- `theorem-construction/mcp-minimal-dependency-graph-for-averaged-pctp-hard-route-dtc-a-6ec61a7517.md`;
- `theorem-construction/mcp-avg-main-a-dependency-order-audit-read-cover-44022d0dde.md`;
- `theorem-construction/mcp-localpressurestraindeplete-a-from-originalsmoothdata-ffsrc-a-31566f6566.md`;
- `theorem-construction/mcp-pctp-hard-paper-grade-proof.md`;
- `theorem-construction/mcp-averaged-route-solve-path-mainline.md`;
- `theorem-construction/mcp-localpressurestraindeplete-direct-loop-note-20260503.md`;
- `theorem-construction/mcp-exact-same-depth-source-closure-after-firp-a0-retry-ffsrc-a-9e64200794.md`;
- `theorem-construction/mcp-exact-same-depth-source-closure-conditional-theorem-ffsrc-a-959174e87f.md`;
- `theorem-construction/mcp-single-proof-skeleton-with-inline-lemmas-read-end-4369efa4a9.md`;
- `theorem-construction/mcp-final-referee-objection-ledger.md`;
- `theorem-construction/mcp-averaged-consumer-chain-avg-end-a-6ee93788bd.md`;
- `theorem-construction/mcp-averaged-consumer-chain-completion-read-end-81e0696c04.md`;
- `theorem-construction/mcp-firp-a0-exact-resonant-pressure-integrability-attempt-fpcr-c-103c1e11b4.md`;
- `theorem-construction/mcp-ffsrc-a-to-fci-5f-completion-ffpb-a0-4bb527dbe4.md`;
- `theorem-construction/mpp-sourcepulse-pressure-vortex-depletion-final-audit-note.md`;
- `theorem-construction/mpp-final-assembly-promotion-audit-and-route-map-note.md`;
- `theorem-construction/mcp-sourcepulse-remove-charge-rigidify-direct-loop-note-20260502.md`.

Remaining mathematical status:

`FCC.C1a` is still not proved by this batch. The installed cutoff notes state
that coefficient control of `\mathfrak b_\psi^{cut}` does not control the
weighted cutoff-defect ledger without an additional domination theorem. This is
a live mathematical open item, not a completed repair.

## Live Authority Completion-Overclaim Repair

Old loose step:

Several live authority surfaces still presented the local CM route as if it were
the completed Navier--Stokes theorem. The strongest old wording was:

```text
Navier-Stokes global regularity is proved by CM contrapositive class exit
```

with `unresolved_obligations: []`, `blocked_frontier: []`, or zero live-frontier
counts, despite verdict surfaces recording `all_discharged: false` and active
exactness / Clay-finality blockers.

Exact replacement:

The authority surfaces now state the supported claim as conditional:

```text
Current live surfaces support a conditional CM contrapositive class-exit route.
```

They also state that this is not a global-regularity completion certificate
while exactness rework, Clay finality, and finite-breakdown exclusion blockers
remain active.

Proof or remaining burden:

The replacement is forced by the current verdict evidence:
`submission-verdict.yaml` and its bundle mirror have `packet_complete: false`,
`all_discharged: false`, and blockers including exactness rework, Clay finality,
and finite-breakdown exclusion. No live surface inspected in this pass proved a
new theorem discharging those blockers.

Downstream consequence:

`live-theorem-edge.yaml`, `source-frontier.yaml`, `submission-bundle/source-frontier.yaml`,
`theorem-packet.yaml`, `submission-bundle/theorem-packet.yaml`, and
`dependency-discharge.yaml` no longer present zero-frontier or proof-complete
language as the live authority state. The R3 branch is now described as
conditional support, not whole-space Clay completion.

Edited live surfaces:

- `source-frontier.yaml`;
- `submission-bundle/source-frontier.yaml`;
- `live-theorem-edge.yaml`;
- `theorem-packet.yaml`;
- `submission-bundle/theorem-packet.yaml`;
- `dependency-discharge.yaml`.

Cleared live manuscript surfaces:

- `submission-bundle/navier-stokes-submission.tex`: the cone passage already
  defines
  `\Delta_r u(t)=\sup_{x,y\in B_r(x_*)}|u(x,t)-u(y,t)|`, proves
  `\Delta_r u(t)\le 2r\sup_{B_r(x_*)}|\nabla u(\cdot,t)|`, and specializes to
  `\rho(t)=\lambda\sqrt{T_*-t}`. It explicitly rejects a slope `U/r` or profile
  law.
- `submission-bundle/source-field-reader-appendix.tex`: the checked live
  profile passages reject scale-profile assumptions and replace the old
  finite-depth-to-good-cover step by a same-tail
  `SCF_base` local modulus.

Remaining mathematical status:

The exactness goal remains active. These authority edits remove false completion
claims; they do not prove `FCC.C1a`, the same-tail `SCF_base` modulus, or the
Clay-finality bridge.

## Lower-Prefix Active-Square Barrier Rework

Old loose step:

- The source-field appendix said Young/Cauchy factorization leaves an
  uncontrolled lower-prefix weight and that no "barrier-scale estimate" controls
  the product with a dissipative margin.

Exact replacement:

The appendix now states the lower-prefix active-square object itself:

```math
\sum_{k\le j-C_1}2^{-2k-j}D_k(t)D_j(t)^2.
```

It defines the lower-prefix weight

```math
P_j^\downarrow(t):=\sum_{k\le j-C_1}2^{-2k-j}D_k(t)
```

and names the missing absorption theorem:

```math
\int_I P_j^\downarrow(t)D_j(t)^2\,dt
\le
\varepsilon\nu\int_I D_j(t)\,dt
+\mathrm{legal}_{j,I},
```

or an equivalent Carleson/cumulative-tail stress bound.

Downstream consequence: the LPAS/CTS branch may not describe the obstruction as
a generic barrier-scale estimate. Its live burden is the displayed
lower-prefix active-square absorption or an equivalent named theorem.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## Radon-Nikodym Decision Criterion Rework

Old loose step:

- `mpp-duhamel-critical-mass-to-native-source-direct-attempt-20260519.md` and
  the source-field appendix said the installed Radon--Nikodym decision criterion
  "applies" after displaying a positive native source packet.

Exact replacement:

Both live surfaces now state the actual selected-terminal implication:

```math
\rho_m(E_m)\to0,\qquad \nu_m(E_m)\ge c_1
\quad\Longrightarrow\quad
\mu_*^{sing}\neq0.
```

This is the measure-theoretic decision being spent on the selected terminal
packet algebra.

Downstream consequence: the Duhamel critical-mass note may route a selected
positive source packet only through the displayed vanishing-ledger implication,
donor-reserve failure as `\neg ScaleCriticalTreeCarleson.A`, or legal ledger
charge. The words "decision criterion applies" no longer carry proof force.

Edited live surfaces:

- `theorem-construction/mpp-duhamel-critical-mass-to-native-source-direct-attempt-20260519.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

## Bounded-Hs Continuation Relaunch Rework

Old loose step:

- Periodic surfaces said "standard/local/classical continuation" extended the
  solution after an `H^s` bound was known.
- Whole-space surfaces said whole-space local theory continued the solution
  beyond the endpoint after compact-core plus exterior-tail control.
- Prodi--Serrin surfaces said the continuation criterion extended the solution
  without naming the exact spacetime hypothesis being spent.
- The compression hid the fact that the same-solution continuation proof needs a
  uniform lifespan, launch times approaching the endpoint, and uniqueness on the
  overlap.

Exact periodic replacement:

For `s>5/2`, the readout must supply

```math
M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty.
```

Periodic `H^s` local well-posedness supplies a lifespan

```math
\tau=\tau(\nu,s,M_s)>0
```

for all data with `H^s` norm at most `M_s`. Choosing
`t_j\uparrow T_*` with `T_*-t_j<\tau/2`, the solution launched from `u(t_j)`
exists past `T_*`. Uniqueness identifies it with the original solution on the
overlap, contradicting maximality of a finite endpoint.

Exact whole-space replacement:

For the `R^3` branch, compact-core and exterior-tail hypotheses must produce

```math
M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb R^3)}<\infty,
\qquad s>5/2.
```

Whole-space `H^s` local well-posedness then gives the same
`\tau=\tau(\nu,s,M_s)>0` relaunch and uniqueness contradiction. The exterior
tail remains a real hypothesis; local compact-core charts alone do not produce
the global `H^s(\mathbb R^3)` bound.

Exact Prodi--Serrin replacement:

The readout must give an exact spacetime bound for the same solution on a
terminal interval, for example

```math
u\in L^q((T_*-\delta,T_*);L^p(\mathbb R^3)),
\qquad 2/q+3/p\le 1,\quad p>3.
```

The endpoint case may be spent only when the corresponding endpoint theorem is
explicitly invoked. Under that theorem, the maximal smooth solution continues
past `T_*`, and uniqueness identifies the continuation with the original
solution on the overlap.

Downstream consequence:

No downstream continuation surface may spend the words `standard`, `classical`,
`local theory`, or `criterion applies` as proof force. The consumer must name
the exact bounded quantity, the lifespan dependence, the moving launch sequence,
and uniqueness, or else name the precise missing hypothesis such as
`Tail.Hs_R3` or the Prodi--Serrin endpoint theorem.

Edited live surfaces:

- `theorem-construction/hfg-continuation-all-scale-and-carrier-export-result.md`;
- `theorem-construction/carrier-realization-classical-identification.md`;
- `theorem-construction/d4-shadow-continuation-theorem.md`;
- `theorem-construction/mcp-ecqa-final-verification-loop-stop.md`;
- `theorem-construction/mcp-final-dependency-compression.md`;
- `theorem-construction/mcp-full-route-originalsmoothdata-to-member-smooth-20260504.md`;
- `theorem-construction/mcp-manuscript-smallest-standard-lemma-sequence.md`;
- `theorem-construction/mcp-pctp-hard-readend-ecqa-loop-closure.md`;
- `theorem-construction/mcp-referee-readable-lemma-compression.md`;
- `theorem-construction/mcp-single-final-conditional-averaged-route-theorem-avg-main-a-d000abfe2f.md`;
- `theorem-construction/mpp-annular-limit-cm-face-landing-20260611.md`;
- `theorem-construction/mpp-any-finite-failure-witness-cm-exit-20260521.md`;
- `theorem-construction/mpp-canonical-terminal-packet-capture-20260522.md`;
- `theorem-construction/mpp-continuation-packet-generated-cm-contrapositive-20260514.md`;
- `theorem-construction/mpp-contrapositive-terminal-consumption-closure-note-20260503.md`;
- `theorem-construction/mpp-live-status-sourcelock-clay-final-verification-note.md`;
- `theorem-construction/mpp-old-main-clay-bridge-final-audit-note.md`;
- `theorem-construction/mpp-pctp-hard-matrix-readable-discharge.md`;
- `theorem-construction/mpp-pctp-hard-terminal-tail-uniformization-assembly.md`;
- `theorem-construction/mpp-pctp-hard-quantitative-closure-package.md`;
- `theorem-construction/mpp-clay-counterexample-exclusion-bridge-direct-work-20260601.md`;
- `theorem-construction/mcp-ecq-a-and-pctp-cond-final-continuation-bridge-read-end-2b72f3465e.md`;
- `theorem-construction/mcp-final-theorem-statement-periodic-global-smoothness.md`;
- `theorem-construction/mpp-scf-aact-elliptic-source-endpoint-branch-package.md`;
- `theorem-construction/mpp-seven-item-paper-grade-closure-package.md`;
- `theorem-construction/mpp-ttu-independent-verification-and-paper-proof-package.md`;
- `theorem-construction/mpp-pctp-hard-terminal-tower-final-obstruction.md`;
- `theorem-construction/mpp-r3-seven-item-tail-branch-resolution.md`;
- `theorem-construction/mpp-r3-seven-item-tail-closure-attempt.md`;
- `theorem-construction/mpp-whole-space-branch-setup-and-obstruction-package.md`;
- `theorem-construction/r3-cm-contrapositive-sobolev-hs-energy-20260528.md`;
- `theorem-construction/r3-cm-contrapositive-prodi-serrin-20260528.md`;
- `submission-bundle/navier-stokes-submission.tex`;
- `submission-bundle/source-field-reader-appendix.tex`.

Second consequence pass:

The first relaunch replacements exposed downstream compression surfaces in the
referee-readable lemma sequences, dependency compression, source-lock
verification, periodic theorem statement, R3 tail branch, and Prodi--Serrin
branch. Those surfaces were edited in the same batch so that the continuation
step now consumes only exact bounded-quantity hypotheses plus relaunch and
uniqueness, not an unnamed criterion.

Main-manuscript consequence pass:

The live manuscript still contained two proof-spending compressed sentences in
`submission-bundle/navier-stokes-submission.tex`: the finite-witness
classification proof said that local `H^s` theory "restarts the classical
solution past `T_*`", and the Field-survival case said that the readout
"extends the same classical solution past `T_*`." Both have now been replaced
inside the proof with the exact hypothesis

```math
M_s=\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,\qquad s>5/2,
```

the local lifespan `\tau(\nu,s,M_s)>0`, launch times `t_j\uparrow T_*` with
`T_*-t_j<\tau/2`, and uniqueness on the overlap. The following
`No same-record member obstruction` theorem was also tightened so its `M_s`
definition displays finiteness. The downstream contradiction in the manuscript
therefore spends the exact relaunch-and-uniqueness theorem at the point of use,
not a loose continuation phrase.

Appendix second consequence pass:

`submission-bundle/source-field-reader-appendix.tex` still contained compressed
whole-space and mixed-jet continuation statements of the form "the classical
continuation criterion prevents breakdown" or "boundedness of this norm extends
the solution." Those passages now state the same exact mechanism: at a
hypothetical endpoint \(T_*\) or \(T\), define the finite bound \(M_s\) or
\(M_s(T)\), use the \(H^s\), \(s>5/2\), local theorem to obtain
\(\tau(\nu,s,M_s)>0\), relaunch from times inside \(\tau/2\) of the endpoint,
and use uniqueness on the overlap to identify the relaunched branch with the
original solution. The terminal-record entry hardening passage was tightened in
the same way, so "continuation theorem" no longer carries proof force without
the uniform lifespan and uniqueness argument.

Field-persistence oscillation pass:

The appendix Field-persistence proof still said "the mean-value estimate gives"
at the point where bounded tower derivatives were converted into positive-scale
field coherence. That has been replaced by the exact profile-free cell
oscillation

```math
\Delta_{r_*}U_k(t;C)
:=
\sup_{\substack{x,y\in C(t)\\ |x-y|\le r_*}}
|U_k(x,t)-U_k(y,t)|
```

and the inequality

```math
\Delta_{r_*}U_k(t;C)
\le r_*\sup_{z\in C(t)}|\nabla U_k(z,t)|
\le r_* C_k(N,M_A,M_P,\mathcal C_{\mathrm{cov}}).
```

The downstream Field conclusion now spends a derivative supremum supplied by
the retained tower bound on a finite cell cover, not a typical slope or hidden
linear-profile assumption.

Entropy-reserve asymptotic pass:

The appendix branch-entropy reserve paragraph used
`H(\pi_P)\sim\log M` to explain diffuse parent clouds. That asymptotic has been
replaced by exact entropy facts:

```math
H(\pi_P)=\log M
```

for a uniform cloud on \(M\) legal parents, and

```math
H(\pi_P)\ge \log M-\log C
```

when \(M\) active parent weights satisfy \(\pi_i\le C/M\). The reserve argument
now spends exact entropy lower bounds, not a scale-comparison phrase.

The same entropy shortcut was also present in
`theorem-construction/mcp-zenoancestryquantization-terminallayerattempt-dbeb286793.md`;
that theorem note now carries the same exact uniform-cloud identity and
bounded-density lower bound instead of `H(\pi_P)\sim\log M`.

Affine-frame strain-budget pass:

The reader appendix and
`theorem-construction/mcp-frame-ledger-production-from-original-dynamics-attempt-avg-end-a-1911afc26c.md`
said that an affine frame tied to a same-fluid chart requires the "same kind" of
terminal strain budget. That phrase has been replaced by the exact matrix
coefficient

```math
B_A(t):=A(t)^{-1}\dot A(t)
```

and the required finite budget

```math
\int_{t_0}^{T_*}\|B_A(t)\|\,dt<\infty.
```

The displayed fluid strain budget implies this frame budget only after the
same-frame comparison

```math
\|A(t)^{-1}\dot A(t)\|
\le C_A\|\nabla u(t)\|_{L^\infty(\Omega_A(t))}
```

is proved on the transported chart domain. Without that comparison, affine
frame control is a separate hypothesis and cannot be spent as a same-kind
consequence of the fluid strain estimate.

False \(H^1\) continuation-norm pass:

The appendix contained a proof-bearing subsection titled `Classical H^1
Continuation Lemma` and a downstream `High-Frequency Enstrophy Implies H^1`
lemma that treated bounded \(H^1(\mathbb R^3)\) as the classical
three-dimensional continuation norm. That has been reworked to the actual
classical Sobolev relaunch hypothesis:

```math
\sup_{0\le t<T_*}\|u(t)\|_{H^s(\mathbb R^3)}<\infty,
\qquad s>5/2.
```

The lemma now uses \(M_s\), \(\tau(\nu,s,M_s)>0\), relaunch from
\(t_n\uparrow T_*\), and uniqueness on the overlap. The high-frequency
enstrophy lemma now proves only a full \(H^1\) energy norm and explicitly says
that this does not supply the \(H^s\), \(s>5/2\), continuation norm. The
downstream route consequence is that bounded high-frequency enstrophy is support
for an energy-level branch only; it cannot be spent as classical continuation
without an additional \(H^s\) or equivalent continuation criterion.

Route-B theorem-construction consequence pass:

The same false \(H^1\)-continuation spend also appeared in active theorem notes:
`classical-h1-continuation-lemma.md`,
`high-frequency-enstrophy-to-h1-lemma.md`,
`route-b-euclidean-closure-theorem.md`,
`combined-closure-sufficiency-lemma.md`,
`mpp-terminal-reduction-math-run-after-rows1-4-20260506.md`,
`mpp-six-positive-contrapositive-chunks-completion-20260506.md`,
`mpp-six-chunks-rows-1-4-unconditional-implication-criteria-20260506.md`,
`lagrangian-six-lemma-mainline.md`,
`mpp-pctp-hard-five-burden-frontier-audit-note.md`,
`mpp-qdrain-source-no-pulse-closure-note.md`, and the exactness audit notes.
Those surfaces now separate the exact statements:

- bounded \(H^1\) high-frequency/enstrophy output gives energy-level support;
- classical continuation requires \(H^s\), \(s>5/2\), or an explicitly named
  equivalent criterion on the same surface;
- terminal non-continuation forces blow-up of the selected \(H^s\) continuation
  norm and high-tail \(E_{N,s}\), not merely the old \(H^1\) tail;
- any Route-B or QDrain continuation claim remains conditional until that
  same-surface \(H^s\) bridge is supplied.

## Localized Tower-Closure Expectation Rework

Old loose step:

- `theorem-construction/mpp-shared-participation-and-tower-coherence-law.md`
  said that from `(TC.20)` "one expects a triangular closure inequality" and
  then described `(TC.31)` as the localized whole-field coupling law.
- Downstream theorem programs then treated `(TC.19)`--`(TC.31)` as supplied
  triangular strain/cascade structure for material-packet, lower-carrier, and
  collar source-control estimates.

Exact replacement:

The shared tower note now states `(TC.31)` as a remaining localized closure
theorem. The proof must differentiate the defect energy, integrate the viscous
term by parts, keep cutoff commutators, place pressure into
`\mathrm{Flux}_{N,h,\phi}`, and bound each ordinary-rung / bad-difference
coupling by the displayed coefficient. The flux symbol is part of the theorem
data, and the closure is usable only with a legal estimate such as

```math
\int_I|\mathrm{Flux}_{N,h,\phi}(t)|\,dt
\le
\mathrm{Legal}_{N,h,\phi}(I),
\tag{TC.31a}
```

or with an explicitly absorbable boundary/cutoff estimate on the same retained
family.

Downstream consequence: material-packet, lower-carrier, and collar consumers
may cite `(TC.31)` only as a conditional/imported theorem target unless they
prove the corresponding packet/collar flux, cutoff, and transported-separation
bounds. The triangular closure is no longer spent as an expectation from the
tower law.

Edited live surfaces:

- `theorem-construction/mpp-shared-participation-and-tower-coherence-law.md`;
- `theorem-construction/mpp-scalarized-neighboring-tower-defect-energy-note.md`;
- `theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md`;
- `theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md`;
- `live-theorem-edge.yaml`;
- `source-frontier.yaml`;
- `submission-bundle/source-frontier.yaml`.

## Exact-Projection Commutator Gain Rework

Old loose step:

- `theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md` said the
  exact projection commutator had the order `-1` gain "one expects" from the
  order-zero projector.

Exact replacement:

The note now states the exact principal-symbol object

```math
p_G(a,\xi)=\frac{G(a)\xi\otimes\xi}{\xi\cdot G(a)\xi}
```

and makes the order `-1` payment conditional on the frequency-separated
commutator theorem under the stated symbol hypotheses: uniform ellipticity of
`G`, required `S^0_{1,0}` seminorm bounds for `p_G`, and genuinely low-frequency
coefficient `a_{<j-C}`. The shellwise estimate remains the displayed
commutator bound `(23ai.8k6b)`, with lower metric-symbol terms controlled by
the quantified `R_{G,j}` theorem cited immediately afterward.

Downstream consequence: the Hodge/exact-projection route may spend only the
symbol-class commutator theorem and its remainder bounds, not an expected
derivative gain from projector order alone.

Edited live surface:

- `theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md`.

## BKM Continuation Readout Rework

Old loose step:

- `theorem-construction/r3-cm-contrapositive-vorticity-bkm-strain-20260528.md`
  said retained Pack, Part, and Field imply the "standard BKM continuation
  condition" and that the same smooth solution extends beyond `T_*`.
- The reader appendix mirrored the same compressed extension step.
- `theorem-construction/regularity-upgrade-schemas.md` used "standard BKM
  continuation criterion" as the final proof step.

Exact replacement:

The R3 BKM branch now requires the exact Field-to-BKM readout bridge on the
same synchronized ledger:

```math
\mathrm{Field}_{N,\rho,Q}(\mathcal W)
\Longrightarrow
\int_{T_*-\delta}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty,
```

or the corresponding strain/Besov criterion. Equivalently, retained Field must
produce a finite envelope

```math
\|\omega(t)\|_{L^\infty}
\le C_{N,\rho,Q}G_{N,\rho,Q}(t),
\qquad
\int_{T_*-\delta}^{T_*}G_{N,\rho,Q}(t)\,dt<\infty.
```

Only after that input does the BKM continuation theorem give a finite terminal
Sobolev continuation norm \(M_s=\sup_{t<T_*}\|u(t)\|_{H^s}<\infty\),
\(s>5/2\). The downstream continuation step then uses the already-installed
uniform lifespan, relaunch from \(t_j\uparrow T_*\), and uniqueness on the
overlap.

Downstream consequence: retained Field is only a BKM-facing candidate until the
Field-to-BKM readout bridge is proved. The R3 vorticity/BKM branch cannot be
advertised as discharged by a generic "standard criterion" phrase.

Edited live surfaces:

- `theorem-construction/r3-cm-contrapositive-vorticity-bkm-strain-20260528.md`;
- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/regularity-upgrade-schemas.md`;
- `live-theorem-edge.yaml`;
- `source-frontier.yaml`;
- `submission-bundle/source-frontier.yaml`.

## Five-Family Energy-Pipeline Proof-Verb Rework

Old loose step:

- `theorem-construction/five-family-binomial-pipeline-note.md` described the
  argument as the "standard Navier--Stokes energy pipeline" and said the four
  "standard pieces" behave as before.

Exact replacement:

The note now says the proof spends the displayed mixed-jet identities: the time
derivative identity, pressure orthogonality from `\nabla\cdot J_{m,\alpha}=0`,
base-transport cancellation from `\nabla\cdot u=0`, and viscous integration by
parts. The five-family conclusion is tied to identities `(12)`--`(16)` and to
the exact binomial convolution law `(16)`, not to a generic standard-pipeline
phrase.

Downstream consequence: the five-family note may still be used as an exact
mixed-jet energy identity, but consumers must cite the displayed identities and
the off-diagonal Leibniz sum rather than a proof-verb wrapper.

Edited live surface:

- `theorem-construction/five-family-binomial-pipeline-note.md`.

## Collar Commutator Standard-Estimate Rework

Old loose step:

- `theorem-construction/collar-remainder-lower-order-estimate-result.md` said
  the low-pass commutator collar estimate C3 was the "standard
  smooth-multiplier commutator estimate" with the coherent strain coefficient
  bounded at the active shell scale.

Exact replacement:

C3 now requires the displayed readout-compatible commutator bound

```math
\|\nabla\widetilde Q_i[I-P_{\le j},a\partial_i]P_{\le j}f\|_\infty
\le
C_{\mathrm{com}}
\|\nabla a\|_{L^\infty(\mathrm{car}_{i,j})}
\|\nabla P_{\le j}f\|_{L^\infty(\mathrm{car}_{i,j})}
+\mathrm{KernelErr}_{i,j}(a,f),
```

with `a=u_{coh,i}` and `f=v_{coh}`, plus the active-shell coefficient estimate
that bounds the right side by

```math
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+C_\varepsilon\Phi(\mathcal E_D(X)).
```

Downstream consequence: the collar assembly theorem may still sum C1--C4 by
triangle inequality, but C3 remains an analytic input until the commutator
kernel error and active-shell coefficient bound are proved on the same
readout-compatible carrier.

Edited live surface:

- `theorem-construction/collar-remainder-lower-order-estimate-result.md`.

## Exact-Projection Resonant-Remainder Rework

Old loose step:

- `theorem-construction/weighted-exact-projection-resonant-shell-bilinear-theorem-candidate.md`
  had a section titled "Why `(WEP.RR.5)` Should Follow From `(WEP.2')`" and
  said order `-1` projector defects should demote the entire remainder packet.

Exact replacement:

The note now states the required shellwise defect estimate:

```math
\|R_{G,j}F_j\|_{L^2}
+\|[T_{p_G},a_{<j-C}]F_j\|_{L^2}
+\|[\Delta_j,\Pi_G^{ex}]F_j\|_{L^2}
\le
C_G2^{-j}\,\mathrm{Coef}_j(G,a)\,\|F_j\|_{L^2},
\tag{WEP.RR.7a}
```

uniformly in the active shell and finite resonant offsets. Only after this is
proved for each defect type may Cauchy--Schwarz / Young demote
`\mathcal B_{G,j}^{rem}` to the same coefficient-bearing carrier.

Downstream consequence: `(WEP.2')` is supporting evidence for the reserve
branch, not a completed reduction to the pure resonant main term, until
`(WEP.RR.7a)` is proved.

Edited live surface:

- `theorem-construction/weighted-exact-projection-resonant-shell-bilinear-theorem-candidate.md`.

## Continuation And High-Regularity Standard-Step Rework

Old loose step:

- `theorem-construction/d2-global-coercive-energy-estimate.md` said the
  strengthened continuation corollary followed from the "standard semilinear
  continuation criterion."
- `theorem-construction/mpp-esns-next-targets-expanded-proof-audit-20260506.md`
  invoked the "standard Kato-Ponce / commutator estimate" in the proof of
  `(ESA.3)`.
- `theorem-construction/regularity-upgrade-schemas.md` said a bounded
  \(L^1_tL^\infty_x\) gradient gives continuation by the "standard
  high-regularity estimate."

Exact replacement:

The abstract `D.2.3` continuation step now states the finite norm

```math
M_N:=\sup_{t<T^\ast}\|X(t)\|_{\mathcal N}<\infty,
```

the local lifespan `\tau_N(M_N)>0`, relaunch times
`t_j\uparrow T^\ast` with `T^\ast-t_j<\tau_N/2`, and uniqueness on the overlap.
The `D.2` coercive estimate supplies or preserves the bound; it does not
replace the local lifespan/uniqueness theorem.

The ESNS note now spends the displayed Kato--Ponce commutator inequality itself
for `s>5/2` and fixes the Young term in the forcing estimate. The regularity
schema now spends the exact inequality

```math
\frac{d}{dt}\|u(t)\|_{H^s}
\le
C\|\nabla u(t)\|_{L^\infty_x}\|u(t)\|_{H^s}
```

and Gronwall's bound

```math
\sup_{0\le t\le T}\|u(t)\|_{H^s}
\le
\|u_0\|_{H^s}
\exp\!\left(
C\int_0^T\|\nabla u(t)\|_{L^\infty_x}\,dt
\right),
```

followed by the \(H^s\), \(s>5/2\), local lifespan and overlap uniqueness
relaunch.

Downstream consequence: continuation consumers may spend bounded
`\mathcal N`, Kato--Ponce, or \(L^1_tL^\infty_x\) gradient control only through
these displayed inequalities plus the local lifespan and uniqueness mechanism.
Generic "standard continuation" language no longer carries proof force.

Edited live surfaces:

- `theorem-construction/d2-global-coercive-energy-estimate.md`;
- `theorem-construction/mpp-esns-next-targets-expanded-proof-audit-20260506.md`;
- `theorem-construction/regularity-upgrade-schemas.md`;
- `live-theorem-edge.yaml`;
- `source-frontier.yaml`;
- `submission-bundle/source-frontier.yaml`.

## Residual-Pair Low-High Commutator Rework

Old loose step:

- `theorem-construction/mcp-residualpair-a-conditional-decomposition-20260504.md`
  said the strict low-high commutator obeys the "standard Coifman-Meyer /
  Bernstein estimate."

Exact replacement:

The note now separates the two exact estimates. Bernstein on a `j`-shell gives

```math
\|R^{comm}_{j,k}\|_{H^{-1}}
\le C_{H^{-1}}2^{-j}\|R^{comm}_{j,k}\|_2.
```

The strict scale gap and coefficient-good collar must then supply

```math
\|R^{comm}_{j,k}\|_2
\le C_{CM}c_M\,\nu^{1/2}2^{2j}\|w_j\|_2,
\qquad c_M\to0.
```

Together they imply the displayed absorbable residual estimate. The small
factor `c_M` is a required output of the strict gap/stopping construction, not a
generic commutator consequence.

Downstream consequence: the residual-pair branch may spend the `H^{-1}`
absorption only after the shell Bernstein conversion and the coefficient-good
Coifman--Meyer bound are proved on the same selected collar.

Edited live surface:

- `theorem-construction/mcp-residualpair-a-conditional-decomposition-20260504.md`.

## Far-Pressure Annular Summability Rework

Old loose step:

- `theorem-construction/mcp-far-pressure-summability-conditional-reduction-far-pressure-summability-8bbad2f75d.md`
  said a "standard far-pressure route" uses Calderon--Zygmund decay, remote
  energy, and annular weight summability.
- `theorem-construction/mcp-far-pressure-summability-from-weighted-moment-tails-2a49bd8ea7.md`
  said the far contribution is finite in the admissible range where the annular
  kernel convolution is summable.
- `live-theorem-edge.yaml` compressed the downstream pressure far-tail as
  energy-controlled.

Exact replacement:

The far-pressure supplier now spends the annular kernel bound

```math
F_k(t)\le C|A_k|^{1/2}
\sum_{|\ell-k|>2}2^{-3\max\{k,\ell\}}
\|u(t)\|_{L^2(A_\ell)}^2
```

and the finite weighted Schur constant

```math
C_a^{far}:=
\sup_{\|x\|_{\ell^2}=1}
\sum_{k,\ell}
2^{(2a-1)k}|A_k|^{1/2}
2^{-3\max\{k,\ell\}}
2^{-ak}2^{-2a\ell}
|x_k|\,|x_\ell|^2
<\infty.
```

With

```math
M_a(t)=\sum_\ell2^{2a\ell}\|u(t)\|_{L^2(A_\ell)}^2,
\qquad
M_a^{3/2}\in L^1(0,T),
```

the exact far-tail estimate is

```math
\sum_k2^{(2a-1)k}F_k(t)\|u(t)\|_{L^2(A_k)}
\le
C\,C_a^{far}M_a(t)^{3/2}.
```

Downstream consequence: `PFlux.Supplier` and live-edge far-pressure consumers
may spend the far pressure tail only through the displayed kernel estimate,
finite `C_a^{far}`, and the `M_a^{3/2}` time integrability. Weighted energy or
"standard far pressure" language alone does not close the supplier.

Edited live surfaces:

- `theorem-construction/mcp-far-pressure-summability-conditional-reduction-far-pressure-summability-8bbad2f75d.md`;
- `theorem-construction/mcp-far-pressure-summability-from-weighted-moment-tails-2a49bd8ea7.md`;
- `live-theorem-edge.yaml`.

## Selector Balanced-Frame Separation Rework

Old loose step:

- `theorem-construction/selector-balanced-frame-lemma.md` introduced the
  equivalence of `(SBF.4)` and `(SBF.5)` as the "standard separation criterion."

Exact replacement:

The proof now names the finite-dimensional separation argument in the affine
hyperplane of trace-one symmetric tensors. Since
`\operatorname{tr}(\omega\otimes\omega)=1`, the affine dual is exactly the
traceless symmetric operators; failure of `(SBF.4)` gives a nonzero traceless
separator by Hahn--Banach, and that separator is exactly the sign obstruction
excluded by `(SBF.5)`.

Downstream consequence: selector-frame consumers may cite this lemma as a
finite-dimensional convex-separation proof, not as an unnamed standard
criterion.

Edited live surface:

- `theorem-construction/selector-balanced-frame-lemma.md`.

## Full-Linearized Response Adjoint Conditional-Output Rework

Old loose step:

- `theorem-construction/mpp-full-linearized-response-adjoint-packet-attempt-20260506.md`
  said `FullLinearizedResponseAdjointPacket.A` "should give" Bessel,
  parent-kernel, and lower-frame detection, and said the scale gap/tail should
  make the high-coefficient part legal.
- `theorem-construction/mpp-high-coefficient-response-residual-attempt-20260506.md`
  said the finite-collar stopping branch "should not" be counted in
  `HighCoefficientResponseResidual.A`.

Exact replacement:

The adjoint-packet attempt now states the conditional outputs explicitly:

```text
BesselBound.A,
ParentKernelDetection.A,
LowerFrameDetection.A.
```

The high-coefficient residual is now the exact theorem

```math
\|R^{hi-coeff}\|_{L_t^2H^{-1}}^2
\le
C\,LegalHighTail_N+o_N(1),
\tag{FLAP.5a}
```

after finite-band decomposition, with no hidden terminal same-scale response
concentration. The finite collar `j-M<q<=j+C` is moved into the principal
linearized operator, and the finite-collar stopping branch is classified as
`LinearizedCoeffStop.A`, not as part of `HighCoefficientResponseResidual.A`.

Downstream consequence: `FullLinearizedResponseAdjointPacket.A` remains
conditional on

```text
TruncatedLinearizedResponseAdjointPacket.A
LinearizedCoeffStop.A
HighCoefficientResponseResidual.A
```

and the open analytic content is still `FarHighBeatNoReturn.A` unless the route
upgrades to a full-coefficient linearized adjoint kernel.

Edited live surfaces:

- `theorem-construction/mpp-full-linearized-response-adjoint-packet-attempt-20260506.md`;
- `theorem-construction/mpp-high-coefficient-response-residual-attempt-20260506.md`.

## Principal-Flow Adjoint Packet-Stability Rework

Old loose step:

- `theorem-construction/mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md`
  said the gauged packet "should solve" the perturbed affine heat equation,
  Duhamel "should give" the Gaussian packet bound, and the perturbative error
  "should be bounded" after coefficient stopping.

Exact replacement:

The note now states the packet-stability theorem explicitly. On
coefficient-good tiles the gauged packet must solve

```math
(-\partial_t-b_k\cdot\nabla-\nu\Delta)\varphi_T
=
\mathcal E_T\varphi_T,
\qquad
\|\mathcal E_T\|_{L_t^1(H_x^1\to H_x^{-1})}\le C\varepsilon_M,
```

and satisfy the Duhamel formula

```math
\varphi_T(t)
=
H_T(t,t_+)\varphi_T(t_+)
+\int_t^{t_+}H_T(t,s)\mathcal E_T(s)\varphi_T(s)\,ds.
\tag{PFAP.1}
```

The required output is the displayed Gaussian packet derivative bound, with the
perturbative Duhamel term controlled by `C\varepsilon_M` in the same packet
norm after coefficient stopping and scale-gap selection.

Downstream consequence: the Bessel and parent-kernel claims may spend packet
stability only after the perturbed affine heat/Duhamel estimate is proved, not
from the informal assertion that the affine propagator should preserve packets.

Edited live surface:

- `theorem-construction/mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md`.

## Angular Equidistribution Pass-Or-Exit Rework

Old loose step:

- `theorem-construction/mpp-source-native-selector-angular-equidistribution-direct-attempt-20260609.md`
  said the route "should follow" the positive program until an obstruction is
  reached and that angular failure "should not remain" an endless positive
  supplier demand.

Exact replacement:

The note now states the exact pass-or-exit split:

```text
pass branch: supplies the in-class Member(Q) continuation packet;
fail branch: becomes Exit(Q):=not Member(Q) only after CM-test entry and a
concrete Pack/Part/Field face failure.
```

For finite QSP angular nonconcentration, the remaining alternative is now
explicit:

```text
either prove finite QSP angular nonconcentration for the pass branch,
or prove QSPAngularFailureFieldNecessityBridge.A:
under retained Pack+Part and on the same terminal packet, failure of finite
QSP angular nonconcentration is failure of the Field coherence/readout
requirement itself, not merely failure of one sufficient supplier route.
```

Downstream consequence: the failed positive angular supplier is not treated as
automatic `Exit(Q)` or automatic Field. It is support for the next necessity
bridge already named by
`mpp-angular-concentration-field-face-entry-direct-attempt-20260609.md`.

Edited live surface:

- `theorem-construction/mpp-source-native-selector-angular-equidistribution-direct-attempt-20260609.md`.

## Frozen-Family Cascade Collar-Envelope Rework

Old loose step:

- `theorem-construction/mpp-frozen-family-strain-cascade-sufficient-reduction-note.md`
  and the reader appendix said the cascade packet has one ordinary tower factor
  of order at most `N+1`, "hence controlled by the common collar envelope."

Exact replacement:

Both surfaces now display the finite-depth collar-envelope bound being spent:

```math
\sup_{\substack{y\in\mathcal C_{\rho,\psi}^{\delta}(t)\\0\le m\le N+1}}
|U_m(y,t)|
\le
C_N\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)^{1/2}.
\tag{FFSC.Aenv}
```

The strain and cascade estimates then use this bound for the ordinary tower
factor and use the two increment factors already contained in
`E_N(\eta,t;\psi)`, followed by Cauchy--Schwarz and the finite-depth equivalence
of the weighted increment sums.

Downstream consequence: fixed-family strain/cascade consumers may spend
`(FFSC.A2)` and `(FFSC.A4)` only through the finite-depth collar-envelope bound
plus the displayed increment energy. The theorem note and manuscript mirror now
also spell out the cascade index check: after pairing with
`\delta_\eta U_k`, the lone non-increment factor is either
`U_{k+1-\ell}(x+\eta,t)` or `U_\ell(x,t)`, with index in
`\{0,\dots,N+1\}` and argument inside
`\mathcal C_{\rho,\psi}^{\delta}(t)`.

Edited live surfaces:

- `theorem-construction/mpp-frozen-family-strain-cascade-sufficient-reduction-note.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

## Fixed-Increment Pressure Tail Kernel/Young Rework

Old loose step:

- `theorem-construction/mpp-lci-a-fixed-increment-pressure-response-note.md`
  described the harmonic-tail kernel as a derivative kernel of order `k+3` but
  assigned the decay one derivative too weak, and its Young step spent an
  unsquared far-field tail as though it were the post-pairing ledger.
- The reader appendix only said the harmonic-tail half was no longer
  independent after the energy record, without naming the exact kernel and
  Young object being absorbed.

Exact replacement:

The theorem note now identifies
`K_k=\nabla^{k+3}\mathcal N` and uses the Newton-kernel bounds

```math
|K_k(z)|\le C_k|z|^{-(k+4)},
\qquad
|\nabla K_k(z)|\le C_k'|z|^{-(k+5)}.
```

For `|\eta|\le\Lambda_{\delta,\rho}^{halo}` outside the pressure halo, the
mean-value step is

```math
|K_k(c_j(t)+\eta-y)-K_k(c_j(t)-y)|
\le
C_{k,\rho,\psi,\delta,I}
\frac{|\eta|}{|y-c_j(t)|^{k+5}}.
```

After pairing with `\delta_\eta U_k(c_j(t),t)`, the far-field pressure-tail
ledger is the squared integral

```math
\sup_j\sum_{k=0}^N\lambda_k
\left(
\int_{|y-c_j(t)|>2\Lambda_{\delta,\rho}^{halo}}
\frac{|\eta|\,|u(y,t)|^2}{|y-c_j(t)|^{k+5}}\,dy
\right)^2.
```

The energy-conditioned bound is therefore controlled by
`\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^4`, and the earlier
`s^{1/2}\le 1+s` step now states the actual `1+\mathcal I_{N,\eta}^{ctr}`
output instead of dropping the finite source term.

Downstream consequence: FEI pressure-tail consumers may cite the harmonic-tail
absorption only as a fixed-increment center-energy term plus a finite interval
source term. It is no longer recorded as a pure `\mathcal I_{N,\eta}^{ctr}`
coefficient-side absorption and no longer rests on a generic kernel-order
description. The later intermediate FEI export `(FPR.C3a)` in the same theorem
note was updated to carry the same `1+\|u(\cdot,t)\|_{L^2}^4` source term.

Edited live surfaces:

- `theorem-construction/mpp-lci-a-fixed-increment-pressure-response-note.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

## Frozen Cap-Pair Finite-Overlap Square-Function Rework

Old loose step:

- `theorem-construction/frozen-cap-pair-bilinear-form-lemma.md` said the capwise
  pieces satisfy the "standard finite-overlap square-function bound" and used
  that to make `(FCP.3o)` automatic.
- The reader appendix summarized the algebraic reduction without naming the
  exact square-function payment behind the capwise summation.

Exact replacement:

The theorem note now states the multiplier-overlap hypothesis on the active
shell:

```math
\sum_\omega |\psi_{j,\omega}(\xi)|^2\le C_{\mathrm{fo}},
\tag{FCP-sq0}
```

and proves the capwise square-function step by Plancherel:

```math
\sum_\omega \|\Delta_{j,\omega}h_j\|_{L^2_a}^2
=
\int
\sum_\omega |\psi_{j,\omega}(\xi)|^2|\widehat h_j(\xi)|^2\,d\xi
\le
C_{\mathrm{fo}}\|h_j\|_{L^2_a}^2.
```

The same-depth comparison is now a separate displayed hypothesis
`(FCP-sq'')`.

Downstream consequence: `(FCP.3o)` is automatic only after the exact
multiplier-overlap/Plancherel square-function bound and same-depth comparison
are both available. The remaining live local debts are carrier geometry,
packet-freezing remainder control, and the pairwise frozen cap bound.

Edited live surfaces:

- `theorem-construction/frozen-cap-pair-bilinear-form-lemma.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

## Terminal Record Entry Relaunch Rework

Old loose step:

- `theorem-construction/mpp-terminal-record-entry-standard-pde-hardening-20260608.md`
  proved terminal-record entry by calling it the "standard maximal-solution
  argument" and described the relaunch theorem in prose.
- The main manuscript proof cited the terminal record entry proposition and
  said the restart-readout case continues the same solution without spelling
  out the exact same-branch relaunch payment at that point.

Exact replacement:

The theorem note now spends only the explicit bounded-norm relaunch statement:

```math
M_s:=\sup_{0\le t<T_*}\|u(t)\|_{H^s}<\infty,
\qquad
\tau=\tau(\nu,s,M_s)>0.
```

For `t_j\uparrow T_*` with `T_*-t_j<\tau/2`, local `H^s`, `s>5/2`, theory
relaunches from `u(t_j)` on `[t_j,t_j+\tau]`, and classical `H^s` uniqueness
identifies that local solution with the original branch on `[t_j,T_*)`.
Thus a bounded continuation norm extends the same branch past `T_*`, contrary
to finite classical breakdown.

Downstream consequence: the main manuscript's finite-obstruction/exhaustion
proof now includes the same `M_s`, `\tau(\nu,s,M_s)`, relaunch, and uniqueness
overlap statement before using the terminal record entry proposition. Consumers
may no longer read terminal record entry as a generic "standard continuation"
step.

Edited live surfaces:

- `theorem-construction/mpp-terminal-record-entry-standard-pde-hardening-20260608.md`;
- `submission-bundle/navier-stokes-submission.tex`.

## R3 Exterior High-Order Tail Coefficient Rework

Old loose step:

- `theorem-construction/mpp-r3-tail-hs-face-elimination-attempt.md` used a
  schematic exterior identity with `commutator flux`, `cutoff flux`, and
  `pressure flux`, then said "standard commutator estimates require a
  coefficient such as" `\|\nabla u\|_{L^\infty}`.
- `theorem-construction/mpp-r3-hs-tail-control-obstruction.md` similarly used a
  formal localized identity and summarized the missing input as
  continuation-grade control.
- `theorem-construction/mpp-r3-noncircular-exterior-high-order-ledger-obstruction.md`
  said smoothing would need "an integrable coefficient such as" the BKM
  integral, without tying that sentence back to the displayed Gronwall
  inequality as the exact coefficient condition.
- The reader appendix's R3 exterior high-order subsection had the identity and
  fragments naming annular and pressure records, but it did not display the
  exact inequality tying those records to the Gronwall coefficient.

Exact replacement:

The live surfaces now use the exterior cutoff `eta_R` and the exact tail
quantity

```math
\mathcal H_s^{tail}(R,t):=\|\eta_R\Lambda^s u(t)\|_2^2.
```

Testing the differentiated equation against `eta_R^2\Lambda^s u` gives

```math
\frac12\frac d{dt}\|\eta_R\Lambda^s u\|_2^2
+\nu\|\eta_R\nabla\Lambda^s u\|_2^2
\le
\mathcal C_R+\mathcal B_R+\mathcal P_R,
```

with

```math
\mathcal C_R
\le
C_s\|\nabla u(t)\|_{L^\infty}\mathcal H_s^{tail}(R,t)
+\mathcal C_R^{ann}(t),
```

and

```math
\mathcal B_R
\le
\frac{\nu}{4}\|\eta_R\nabla\Lambda^s u\|_2^2
+C_{s,\nu}\mathcal E_s^{ann}(R,t),
\qquad
\mathcal P_R
\le
\frac{\nu}{4}\|\eta_R\nabla\Lambda^s u\|_2^2
+C_{s,\nu}\mathcal P_s^{tail}(R,t).
```

Thus the exact conditional Gronwall inequality is

```math
\frac d{dt}\mathcal H_s^{tail}(R,t)
+\nu\|\eta_R\nabla\Lambda^s u\|_2^2
\le
C_s\|\nabla u(t)\|_{L^\infty}\mathcal H_s^{tail}(R,t)
+C_{s,\nu}\mathcal E_s^{tail}(R,t),
```

where

```math
\mathcal E_s^{tail}
:=\mathcal C_R^{ann}+\mathcal E_s^{ann}+\mathcal P_s^{tail}.
```

The direct-positive `Tail.Hs_R3` branch may spend this only with

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty,\qquad
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0,\qquad
\mathcal H_s^{tail}(R,0)\to0.
```

Downstream consequence: the whole-space direct-positive tail route is not
licensed by exterior `L^2` tightness, compact-core tower bounds, or a generic
"standard commutator" citation. It remains conditional on the displayed
continuation-grade coefficient and exterior high-order tail ledger. The
CM-facing June 8 endpoint-consumption route remains the governing whole-space
branch; this repair only sharpens the stronger direct-positive export branch
and prevents it from being promoted through a schematic high-order tail
estimate.

Edited live surfaces:

- `theorem-construction/mpp-r3-tail-hs-face-elimination-attempt.md`;
- `theorem-construction/mpp-r3-hs-tail-control-obstruction.md`;
- `theorem-construction/mpp-r3-exterior-high-order-dissipation-obstruction.md`;
- `theorem-construction/mpp-r3-noncircular-exterior-high-order-ledger-obstruction.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

## Original-Data To AWG No-Hopping Rework

Old loose step:

- The reader appendix summarized the original-data-to-AWG attempt as though the
  local energy inequality directly gave a model backward persistence implication
  for high affine amplitude.
- The source note had the correct failure structure but still described the
  convective bound as holding "up to same-fluid chart constants" instead of
  identifying where those constants live.

Exact replacement:

The source note and appendix now state the local-energy balance first:

```math
A(\tau_2)+D(\tau_1,\tau_2)
\le
A(\tau_1)+F_{cut}+F_{conv}+F_{press}+F_{frame}.
```

On the bad-window branch, pressure and frame terms are charged to the selected
`\nu_{SCF}` and geometry records, while the convective term is exactly recorded
as

```math
F_{conv}\le C_{LE}(A^{aff}D)^{3/4},
```

with `C_{LE}` containing the retained same-fluid chart constants on the selected
normalized cylinder. Thus local energy gives only the conditional backward
persistence alternative, not a contradiction and not `AWG.A`.

The downstream theorem burden is now explicit: `NOHOP.A` must show that every
terminal chain generated by this persistence either charges active windows,
charges a summable reserve, or reaches a fixed positive scale in finitely many
backward steps.

Edited live surfaces:

- `theorem-construction/mpp-original-data-to-awg-attempt-note.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

## Retained-Window Affine-Defect Scheduler Mirror Rework

Old loose step:

- `theorem-construction/mpp-lci-a-retained-window-small-budget-scheduler-audit-note.md`
  already displayed the first-rung forcing identity `(RWS.C10)` and the
  affine-defect bound `(RWS.C11)`.
- The reader appendix mirror had flattened that paid step into the sentence
  that the forcing was read from the local center forcing identity "in model
  form", leaving the identity and bound absent from the live reader surface.

Exact replacement:

The appendix now displays the first-rung forcing identity

```math
\mathcal E_j^{(1)}
=
\text{local pressure response}
+\text{harmonic pressure tail}
+\text{viscous }U_3\text{ term},
```

and the scheduler bound

```math
\mathfrak D_{1,\rho,\psi}^{aff}(t)
\le
C_{\mathrm{cov}}
\left(
1+\sum_{j,b}\mathcal Y_{j,b}^{read}(t)
+\mathcal A_{\mathrm{core}}^{ctr}(t)^2
+\|u_0\|_{L^2}^2
\right).
```

Downstream consequence: the scheduler appendix no longer asks the reader to
trust a missing "model form" bridge. The live theorem source was already exact;
the downstream repair was to restore that exact identity and bound in the
reader-facing appendix.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## Appendix Model-Form Mirror Rework

Old loose step:

- The reader appendix kept four downstream proof mirrors in "model form" prose:
  the lifted-band stress-strain flux reduction, the aligned variation/gap rate
  reduction, the parabolic edge resistance amplitude, and the PRD
  nonderivability witness.
- In each case, the corresponding theorem-construction note had an exact
  displayed object or hypothesis, while the appendix either named the object
  schematically or corrupted the normalization.

Exact replacement:

The appendix now restores the exact source-note objects:

1. the lifted stress-strain reduction

```math
|\mathcal J_N^{lift}(t)|
\le
C_J\sum_{j\ge N}\int
\Sigma_j^{meso}(x,t)\tau_j^{H^1}[u](x,t)\,dx
=C_J\Pi_N^{lift,\mathrm{dy}}(t),
```

followed by the actual barrier-scale theorem target for
`\int_0^T\Pi_N^{lift}`;

2. the aligned variation budget

```math
\eta_{\mathrm{al}}^{var}
\le C_{var}\int_I
\left(
\frac{\|\partial_t C_{\mathrm{al}}\|_{op}}{g_{\mathrm{al}}}
\|C_{\mathrm{al}}\|_{op}
+\|C_{\mathrm{al}}\|_{op}
\frac{\|\partial_t S_{\mathrm{seg}}\|_{op}}{g_{\mathrm{seg}}}
\right)dt,
```

with the normalized derivative/gap budget needed for
`\eta_{\mathrm{al}}^{var}=o(\theta_Jg_{\mathrm{al}})`;

3. the parabolic edge scale-critical amplitude definition

```math
\mathfrak a_e(t)
:=
2^{-2j_e}\|\nabla u_{\le j_e-C}(t)\|_{L^\infty(Q_e)}
+\mathfrak a_e^{hi-hi}(t)+\mathfrak a_e^{comm}(t);
```

4. the PRD heat-scale witness normalization

```math
\nu2^{2j}B_N^2|Q_N|=1,\qquad
B_N^2=\nu^{-1}2^{3j},
```

and

```math
A_N^2\,2^{-3j}
=
(1+\kappa)^2\nu^2 2^{2L_0}2^{-j}.
```

Downstream consequence: the appendix no longer spends "model form" as proof
glue on these four mirrors. The remaining burdens are exactly the named source
theorems: lifted flux barrier control, aligned derivative/gap control,
parabolic edge flux-amplitude control, and an endpoint supplier beyond the
installed PRD inputs.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## R3 Dyadic Survivor Field-Face Mirror Rework

Old loose step:

- The live theorem note
  `theorem-construction/mpp-r3-exterior-dyadic-survivor-field-incompatibility-20260607.md`
  stated the exact CM Field-face contradiction using
  `\Field_{M,\rho,Q}`.
- The reader appendix mirror had corrupted that into `M, ,Q`, a missing
  positive field scale, and an omitted finite-depth Littlewood-Paley bound.

Exact replacement:

The appendix now states the exact contradiction hypothesis

```math
\Field_{M,\rho,Q}\quad\text{for fixed }\rho>0,\ M>s+2,
```

the finite-depth localized bound

```math
\sum_{|\alpha|\le M}\|\partial^\alpha f\|_{L^2}\le C_{\rho,M,Q},
```

and the Littlewood-Paley consequence

```math
N^s\|P_N f\|_{L^2}\le C_{\rho,M,Q}N^{s-M}\to0.
```

Downstream consequence: the appendix no longer treats the dyadic survivor
Field landing as a corrupted symbol string or informal positive-scale reading.
The proof mechanism is the exact incompatibility between fixed positive
Field-scale finite-depth control and a surviving high-frequency dyadic packet.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## Appendix Model-Form Second Batch

Old loose step:

- Several appendix passages still introduced exact displayed targets or
  obstruction identities as "model form": carrier heat law, carrier leakage
  derivative placement, localized commutator expansion, active-shell shell
  ledger, whole-space cutoff boundary terms, scale-normalized
  `\nu_{\mathrm{SCF}}` Carleson control, BASAC transported-cylinder source
  balance, terminal skew localization, weighted lifted defect Carleson, and the
  scale-side high-remainder obstruction.

Exact replacement:

Each passage now states the displayed object directly as the identity,
estimate, target, or obstruction being used. The main exact replacements are:

- scale-normalized terminal windows now require

```math
\sum_k r_k^{-\alpha}\nu_{\mathrm{SCF}}(Q_k)\le C
```

or equivalently

```math
\sum_k \mathrm{SCF}_{\mathrm{normalized}}(Q_k)\le C(E_0,\mathrm{source});
```

- BASAC diffuse parent flux now uses the exact transported-cylinder source
  balance with `Err_R` defined as cutoff, transport-coordinate, and localization
  remainder;
- terminal skew localization now displays the true endpoint defect

```math
\Delta_e
=
W_PA_P-W_{P^-}A_{P^-}+R_e^{lift/cut}+R_e^{window};
```

- weighted lifted defect Carleson now displays

```math
\Delta_e
=
(W_P-W_Q)A_e+R_e^{lift}+R_e^{cut/proj}+R_e^{window/off};
```

- the scale-side high-remainder obstruction now says the naive
  Cauchy--Schwarz estimate is supercritical and nonclosing, not a target model.

Downstream consequence: the appendix no longer uses "model form" to soften
which formulas are hypotheses, exact reductions, or failed estimates. The
remaining burdens are the named source theorems: active-square/source reserve,
BASAC no-time-face removal, terminal signed saturation, weighted lifted defect
Carleson, and integrated control of the kernelized high-side carrier.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## Terminal Record Proof-Core Consumer Rework

Old loose step:

- `theorem-construction/mpp-pdf-cmi-proof-core-reentry-20260609.md` still said
  `mpp-terminal-record-entry-standard-pde-hardening-20260608.md` proves a
  "standard maximal-solution entry step."

Exact replacement:

The proof-core note now states the same bounded-norm relaunch used in the
terminal-record theorem:

```math
M_s:=\sup_{0\le t<T_*}\|u(t)\|_{H^s}<\infty,
\qquad
\tau=\tau(\nu,s,M_s)>0.
```

For `t_j\uparrow T_*` with `T_*-t_j<\tau/2`, local `H^s` theory relaunches from
`u(t_j)` beyond `T_*`, and uniqueness on `[t_j,T_*)` identifies the relaunched
solution with the original branch.

Downstream consequence: this proof-core consumer no longer spends
"standard maximal solution" as a hidden continuation argument. It cites the
exact same-branch relaunch mechanism already installed in the theorem note and
main manuscript.

Edited live surface:

- `theorem-construction/mpp-pdf-cmi-proof-core-reentry-20260609.md`.

## HeightFlux Architecture Proof-Force Rework

Old loose step:

- `theorem-construction/mpp-actual-synthesis-heightfluxcontrol-class-exit-architecture-20260506.md`
  was explicitly referenced by `live-theorem-edge.yaml` as an audit-open
  synthesis memo.
- Inside that live referenced note, a "Schematic route" and "Clean proof graph"
  still spent the old Field/source-wall architecture as if a supplier route
  could run

```text
Pack + Part + not Field
=> source wall / Zeno residue
=> Field restored
=> Member restored
=> first class exit contradicted.
```

Exact replacement:

The note now states that this graph is historical route architecture, not a
proof implication. A source-reserve, height-flux, signed-current, or Zeno branch
enters CM proof material only through one of the exact interfaces

```text
same-ledger payment
or
CM-test admission + first Pack/Part/Field face failure.
```

The exact face landing is displayed as

```text
not Pack_Q,
Pack_Q + not Part_{N,Q},
or
Pack_Q + Part_{N,Q} + forall r>0 not Field_{N,r,Q}.
```

The note now records the live consequence from the source-frontier surfaces:
old `ActiveHeightFlux`, `SourceReserve`, `SignedPair`, and no-free-sink labels
are consumed and cannot count as fresh progress. The live burden is a
same-witness terminal anti-concentration / source-Carleson / rigid-anti-atom /
non-source Pack-survival theorem, or an equivalent same-ledger payment.

Downstream consequence: `live-theorem-edge.yaml` now classifies the note as
historical audit-open support and states that old HeightFlux/Zeno/signed-current
targets are support-level unless promoted by same-ledger payment or CM-test
admission plus a first Pack/Part/Field face failure. The live edge no longer
preserves the old schematic proof graph as a current target.

Second-pass downstream consequence: the live-edge neighboring HeightFlux notes
also no longer set `HeightFluxControl.A`, `DonorHeightCreation.A`, or
`FirstHeightCreationDichotomy.A` as the current target by historical supplier
chain. The exact scalar pulse obstruction and donor-height factorization remain
available as conditional reductions, but their proof use is now restricted to
same-ledger payment or CM-test admission plus typed face failure.

Edited live surfaces:

- `theorem-construction/mpp-actual-synthesis-heightfluxcontrol-class-exit-architecture-20260506.md`.
- `theorem-construction/mpp-reserve-creation-charge-height-variation-reduction-20260506.md`.
- `theorem-construction/mpp-heightflux-synthesis-adversarial-audit-20260506.md`.
- `theorem-construction/mpp-firstheightcreation-dichotomy-terminal-attempt-and-collapse-20260506.md`.
- `theorem-construction/mpp-donorheightcreation-shellbalance-direct-attempt-20260506.md`.
- `live-theorem-edge.yaml`.

## Square-Reserve Source-Root Rework

Old loose step:

- `theorem-construction/mpp-square-reserve-evolution-next-attempt-20260505.md`
  still presented the donor-square derivative obstruction "schematically" as
  a drift back to source terms.
- `theorem-construction/mpp-square-reserve-evolution-or-zeno-rigidity-final-attempt-20260505.md`
  and downstream authority text still set the "next actual theorem" as
  `SquareReserveEvolution.A` or a produced Zeno rigid class.
- `theorem-construction/mpp-leading-edge-math-targets-audit-note.md` still
  called `ScaleCriticalTreeCarleson.A` the "live direct source-wall root."

Exact replacement:

The donor-square differentiation note now displays the exact obstruction term

```math
I_N(W)
:=
\int_W
\sum_{k>N}2^kT_k(t)
\left[
\sum_{\ell>k+4}Source_\ell(t)
\right]_+dt,
```

and states that legal/dissipative pieces may be placed in the legal/favorable
ledgers, while the positive weighted source term requires a separate theorem.
Cauchy or Young returns `\int_W r_N(t)dt` without a contraction factor or a
first-moment charge.

Downstream consequence: the square-reserve/Zeno final attempt, the leading-edge
audit note, `live-theorem-edge.yaml`, and `current-route-dependency-graph.yaml`
now classify the SquareReserveEvolution / Zeno / ScaleCriticalTreeCarleson
family as historical source-control support after the Pack-first CM correction.
Those branches enter the current proof only by same-ledger payment or CM-test
admission plus first Pack/Part/Field face failure, feeding the same-witness
terminal anti-concentration / source-Carleson / rigid-anti-atom /
non-source Pack-survival frontier.

Edited live surfaces:

- `theorem-construction/mpp-square-reserve-evolution-next-attempt-20260505.md`.
- `theorem-construction/mpp-square-reserve-evolution-or-zeno-rigidity-final-attempt-20260505.md`.
- `theorem-construction/mpp-leading-edge-math-targets-audit-note.md`.
- `live-theorem-edge.yaml`.
- `current-route-dependency-graph.yaml`.

## Terminal Skew Lifted-Remainder Rework

Old loose step:

- `theorem-construction/mpp-terminal-skew-localization-ledger-direct-attempt-20260505.md`
  introduced the lifted/localized commutator remainder with "Schematically"
  before using it to explain the failure of the terminal signed ledger.

Exact replacement:

The note now states the lifted localized remainder directly,

```math
R_{j,k,\ell}^{lift}
:=
2^{2j}
\langle \mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle,
```

and names the exact missing estimate on the selected same-fluid terminal ledger:

```math
\sum_{j,k,\ell}
\int_{I_P}
|R_{j,k,\ell}^{lift}|\,dt
\le
o_N(1)+Loss_{legal}.
```

Downstream consequence: the direct-attempt note now feeds the already-live
`TerminalSignedSaturation.A` / `WeightedLiftedSkewDefectLegal.A` obstruction as
an exact legal-loss burden. It no longer spends bare dyadic skew symmetry or a
schematic lifted term as if it supplied a same-packet negative partner.

Edited live surface:

- `theorem-construction/mpp-terminal-skew-localization-ledger-direct-attempt-20260505.md`.

## Signed Same-Fluid Edge-Pairing Rework

Old loose step:

- `theorem-construction/mpp-signed-samefluid-edgepairing-direct-attempt-20260505.md`
  introduced the one-sided shell-weight coefficient mismatch as "schematic"
  and concluded too broadly that the signed route reduced to the old scalar
  source wall `ScaleCriticalTreeCarleson.A`.

Exact replacement:

The note now treats the coefficient mismatch as the exact order-size defect

```math
2^j2^{-\sigma(\ell-j)}-2^\ell
=
-2^\ell\left(1-2^{-(1+\sigma)(\ell-j)}\right).
```

It also states that the signed edge-pairing attempt may be used only as a
same-fluid obstruction calculation. The proof-facing replacement is

```math
TerminalSignedSaturation.A,
```

or same-ledger payment / CM-test admission plus the first Pack/Part/Field face
failure on the same witness. The absolute fallback to
`ScaleCriticalTreeCarleson.A` is now historical supplier support under the
Pack-first CM correction, not a current target-setting conclusion.

Downstream consequence: the signed-current branch no longer gets to convert
symbolic exchange pairing into a scalar source-wall target by language alone.
The missing theorem is terminal signed saturation / signed-positive balance on
the selected same-fluid terminal ledger, with CM proof force only through the
typed face interface.

Edited live surface:

- `theorem-construction/mpp-signed-samefluid-edgepairing-direct-attempt-20260505.md`.

## Finite-Window Material-Cone Carrier-Mismatch Rework

Old loose step:

- `theorem-construction/mcp-finite-window-material-cone-and-carrier-mismatch-at-shifted-anchor-c9cce37666.md`
  stated the short-window carrier mismatch only schematically as
  `short_window_error^2/g_seg^2`, then spent it in a shifted-anchor alignment
  estimate.

Exact replacement:

The note now introduces the actual short-window error `E_win(t_*)` and segment
gap `g_seg(t_*)`, and states the exact hypothesis

```math
\sqrt{\delta_{car}(t_*)}
\le
\frac{E_{win}(t_*)}{g_{seg}(t_*)}.
```

The shifted-anchor estimate is now

```math
\|P_{al}(t_*)-P_{top}^{seg}(t_*)\|_F^2
\le
2\exp(-2G_{mat}){1-c_0^2\over c_0^2}
+2{E_{win}(t_*)^2\over g_{seg}(t_*)^2}.
```

The remaining weighted source theorem is also displayed:

```math
\left\|
{\|C_{al}(t_*)\|_{op}E_{win}(t_*)
\over
\theta_J g_{al}(t_*)g_{seg}(t_*)}
\right\|_{L^q(d\nu_J)}
\to0.
```

Downstream consequence: the finite-window material-cone route no longer spends
"local generator and variation divided by square gap" as a profile-free scale
guess. The proof now depends on the exact normalized short-window error rate
and the corresponding weighted material-cone decay term.

Edited live surface:

- `theorem-construction/mcp-finite-window-material-cone-and-carrier-mismatch-at-shifted-anchor-c9cce37666.md`.

## Pack Profile Selected-Positive Orthogonality Rework

Old loose step:

- `theorem-construction/mcp-packfunctionalstabilityreduction-a-packfunctionalstabilityunderprofiledecomposition-a-c3337570cc.md`
  described the Pack functional only as a schematic selected positive part and
  wrote the desired profile behavior as an additive expansion.
- `theorem-construction/mcp-positivepackdefectorthogonalityattempt-a-positivepackdefectorthogonality-a-486dcd5062.md`
  used the same schematic selected-positive Pack object.

Exact replacement:

Both notes now introduce a signed selected expression `F_sigma(u)` and the
positive selected functional

```text
P_sigma(u):=[F_sigma(u)]_+.
```

For a selected terminal record `sigma_m`, the exact decomposition burden is

```text
F_{sigma_m}(u_m)
=
sum_alpha F_{sigma_m}(U_alpha^m)
+ C_{sigma_m}^{cross}(m,A)
+ R_{sigma_m}(m,A),
```

followed by the elementary positive-part inequality

```text
P_{sigma_m}(u_m)
<=
sum_alpha P_{sigma_m}(U_alpha^m)
+ |C_{sigma_m}^{cross}(m,A)|
+ |R_{sigma_m}(m,A)|.
```

The missing theorem is the uniform selected cross/remainder vanishing

```text
lim_{A->infty} limsup_{m->infty}
sup_{sigma in Sigma_m}
(
|C_sigma^{cross}(m,A)|+|R_sigma(m,A)|
)
=0,
```

or a theorem routing every nonzero selected positive cross-profile defect to
one genuine profile or endpoint-strip boundary exit.

Downstream consequence: Pack functional stability is no longer expressed as
ordinary profile-orthogonality plus an additive selected-positive functional.
The proof burden is the exact selected-positive cross-term control needed before
`PositivePackDefectOrthogonality.A` can support first-exit Pack survival.

Edited live surfaces:

- `theorem-construction/mcp-packfunctionalstabilityreduction-a-packfunctionalstabilityunderprofiledecomposition-a-c3337570cc.md`.
- `theorem-construction/mcp-positivepackdefectorthogonalityattempt-a-positivepackdefectorthogonality-a-486dcd5062.md`.

## Same-Scale Coefficient/Edge-Family Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` said the coefficient
  term appearing in a "model theorem" was included in the weighted carrier, and
  an earlier audit line imported `SS-model => UB+MS` as though a
  coefficient-free same-scale theorem had already been supplied.
- `theorem-construction/same-scale-edge-family-and-model-estimate-note.md`,
  `theorem-construction/same-scale-coefficient-kill-into-weighted-carrier-note.md`,
  `theorem-construction/same-scale-family-lift-lemma.md`, and
  `theorem-construction/same-scale-multiplier-stability-program.md` retained
  `model` labels at the exact point where the route must distinguish the
  coefficient-bearing theorem from the coefficient-free edge-family hypothesis.

Exact replacement:

The live appendix and governing notes now separate the two statements.  The
proved coefficient-bearing edge estimate is

```text
int_0^T |Pi_{N,a}^{edge}(t)| dt
<=
epsilon nu int_0^T D_N(t) dt
+ C_{epsilon,a,nu} int_0^T Theta_N^{ss,#}(t) E_N(t) dt,
```

where

```text
Theta_N^{ss,#}(t)
:=
2^{3N} sum_{|m-N|<=C_ss} ||Delta_m u(t)||_2^2.
```

The carrier inclusion is the exact domination

```text
Theta_N^{ss,#}(t)
<= Theta_N^#(t)
<= widetilde Lambda_N^#(t),
```

after enlarging the fixed collar to `M' = max{M,C_ss}` if needed, and therefore

```text
int_0^T Theta_N^{ss,#}(t) E_N(t) dt
<=
int_0^T widetilde Lambda_N^#(t) E_N(t) dt.
```

The coefficient-free family lift now assumes the explicit edge-family
hypothesis `(SS\text{-}edge)` instead of a `model` theorem:

```text
int_0^T Pi_{N,a}^{edge}(t) dt
<=
epsilon_a nu int_0^T D_N(t) dt
+ C_{a,*} 2^{-2 delta N}.
```

Proof or remaining burden:

- The carrier inclusion is proved by fixed-index-set containment
  `{|m-N|<=C_ss} subset [N-M',N+M']`, positivity of `Lambda_N`, multiplication
  by `E_N(t)>=0`, and time integration.
- The finite lift from `(SS\text{-}edge)` to `(UB)` and `(MS)` is exact finite
  summation plus the displayed collar-residual bounds.
- The coefficient-free edge-family theorem `(SS\text{-}edge)` is not supplied
  by the coefficient-bearing estimate.  It remains a separate stronger theorem
  only when a standalone same-scale packet theorem is required independent of
  `widetilde Lambda_N^# E_N`.

Downstream consequence:

The same-scale side no longer spends a theorem-shaped `model` label as proof.
On the weighted spectral route, the coefficient term is carried by the installed
weighted carrier.  For standalone `(UB)`/`(MS)` without the weighted carrier,
the route still needs the coefficient-free edge-family theorem; the exact
family lift does not create that theorem.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`.
- `theorem-construction/same-scale-edge-family-and-model-estimate-note.md`.
- `theorem-construction/same-scale-coefficient-kill-into-weighted-carrier-note.md`.
- `theorem-construction/same-scale-family-lift-lemma.md`.
- `theorem-construction/same-scale-multiplier-stability-program.md`.
- `theorem-construction/mpp-msc-badac-same-scale-import-audit-note.md`.

## Tower-Collar Summability Rework

Old loose step:

- `theorem-construction/mcp-towercollarsummabilityattempt-a-hightowercollarsummability-a-towercollarsummability-a-0dffc1b077.md`
  spent the local collar theorem only as
  `collar-cost on window I_m >= c_m > 0`, then discussed summing positive
  costs over a terminal Zeno schedule.
- `theorem-construction/mcp-terminaltimefaceantiatomgoldallroutesattempt-a-terminaltimefaceantiatom-a-terminalnewproductiontheorem_-b_asac--a-aaae2762da.md`
  and
  `theorem-construction/mpp-terminal-new-production-gold-direct-attempt-20260614.md`
  summarized `HighTowerCollarSummability.A` without displaying the actual
  collar bill and the non-summability condition needed downstream.

Exact replacement:

The tower/collar route now uses the exact affine-core collar-cost hypotheses
from
`theorem-construction/mpp-affine-core-finite-energy-collar-cost-direct-test-20260611.md`.
For a selected terminal window

```text
B_{r_m}(x_m) subset B_{R_m}(x_m),
I_{r_m}=(t_m-r_m^2/nu,t_m),
G_m subset I_{r_m},
```

the hypotheses are

```text
int_{B_{r_m}(x_m)} |grad u(x,t)|^2 dx >= eta_m nu^2/r_m
for t in G_m,
|G_m| >= theta_m r_m^2/nu,
sup_{t in G_m} int_{B_{R_m}(x_m)} |u(x,t)|^2 dx <= E_{R,m},
eta_m nu^2/r_m >= 2 C R_m^{-2} E_{R,m}.
```

Under those hypotheses the exact bill is

```text
B_m
:=
nu int_{G_m} int_{B_{R_m}(x_m)} |grad^2 u|^2 dx dt
>=
c theta_m eta_m^2 nu^4 / E_{R,m}.
```

Proof or remaining burden:

- The local bill is the interpolation/collar-cost result already proved in
  `mpp-affine-core-finite-energy-collar-cost-direct-test-20260611.md`.
- A terminal contradiction needs a finite high-tower/enstrophy-production budget
  controlling the same selected bills,

```text
sum_m B_m <= C_HT < infinity,
```

  plus a non-summable lower side,

```text
sum_m theta_m eta_m^2/E_{R,m} = infinity.
```

Downstream consequence:

`HighTowerCollarSummability.A` is no longer a black-box "positive local cost"
or "collar pricing" phrase.  It is the exact combination of a finite selected
high-tower budget with a non-summable lower side for the displayed `B_m`.  The
current installed affine-core theorem prices each selected window under its
hypotheses, but it does not supply the global summation contradiction.

Edited live surfaces:

- `theorem-construction/mcp-towercollarsummabilityattempt-a-hightowercollarsummability-a-towercollarsummability-a-0dffc1b077.md`.
- `theorem-construction/mcp-terminaltimefaceantiatomgoldallroutesattempt-a-terminaltimefaceantiatom-a-terminalnewproductiontheorem_-b_asac--a-aaae2762da.md`.
- `theorem-construction/mpp-terminal-new-production-gold-direct-attempt-20260614.md`.
- `theorem-construction/mpp-exactness-live-rework-ledger-20260618.md`.

## Additive-Carrier And Defect-Reduction Recurrence Rework

Old loose step:

- `theorem-construction/mcp-eu-additive-carrier-reduces-to-active-window-amplitude-gain-jump-avg-branch-elimination-54b3f13ec0.md`
  introduced the needed scale-normalized terminal estimate "schematically" as
  `sum_k r_k^{-alpha} C_final(Q_k) <= C(E0,source)`.
- `theorem-construction/defect-reduction-tower-and-four-body-recurrence-note.md`
  wrote the route synthesis as a schematic recurrence
  `E^{(n+1)}=R(E^{(n)})`.  The appendix mirror already warned that this was
  structural rather than quantitative, but did not state the exact missing
  theorem needed before the recurrence can be spent as decay.

Exact replacement:

For the additive `E_u` carrier, the selected terminal windows are now displayed
as

```text
Q_k := B_{r_k}(x_k) x I_k,
I_k=(t_k-r_k^2/nu,t_k),
```

and the required scale-normalized estimate is

```text
sum_k r_k^{-alpha} C_final(Q_k) <= C(E_0,S), alpha>0,
```

with `C_final(Q_k)` the same final charge used in the `Jumpavg` no-escape
contradiction and `S` the already-admitted source records.  For the energy
component itself, the exact substitute is a bound such as

```text
sum_k E_u^{sc}(Q_k) <= C(E_0,S),
E_u^{sc}(Q_k)
:=
r_k^{-1} sup_{t in I_k} int_{B_{r_k}(x_k)} |u(x,t)|^2 dx.
```

For the defect-reduction recurrence, the source note and appendix now state
that `R` is bookkeeping only unless a theorem defines an admissible defect
class `Efrak`, proves `R:Efrak->Efrak` for the actual Navier-Stokes survivor,
and supplies either

```text
J(R(E)) <= theta J(E), 0<theta<1,
```

or a finite landing theorem into a named discharged packet class.

Proof or remaining burden:

- Raw bounded-overlap finite mass proves only unweighted control.  It does not
  imply the displayed scale-normalized estimate on shrinking terminal windows.
- The missing additive-carrier proof is still active-window amplitude gain or
  an equivalent heat-scale source theorem.
- The recurrence has no proof force until the admissible-defect class,
  self-map property, and contraction/finite-landing theorem are supplied.

Downstream consequence:

The `E_u` carrier cannot be added to the final charge as a formal coverage
device and then used for a normalized contradiction.  The four-body recurrence
cannot be used as quantitative decay or a single-common-terminal-class theorem.
It remains structural synthesis until the displayed contraction or finite
landing theorem is proved.

Edited live surfaces:

- `theorem-construction/mcp-eu-additive-carrier-reduces-to-active-window-amplitude-gain-jump-avg-branch-elimination-54b3f13ec0.md`.
- `theorem-construction/defect-reduction-tower-and-four-body-recurrence-note.md`.
- `submission-bundle/source-field-reader-appendix.tex`.
- `theorem-construction/mpp-exactness-live-rework-ledger-20260618.md`.

## Asymptotic-Stationarity Residual Rework

Old loose step:

- `theorem-construction/mcp-asymptoticstationarityattempt-a-asymptoticstationarity-a-zenocriticalprofileproduction-a-65fa0863d0.md`
  said the passage from a renormalized ancient/local suitable limit to a
  stationary profile would "typically" come from one of several mechanisms
  without stating the exact convergence those mechanisms must prove.

Exact replacement:

For a renormalized Zeno sequence `U_n,P_n` on compact
`K subset R^3\\{0}` and finite renormalized time interval `J`, the note now
writes the renormalized equation as

```text
partial_s U_n - nu Delta U_n + (U_n dot grad)U_n + grad P_n
=
F_n^drift + F_n^selector + F_n^scale + F_n^src
+ div M_n^def.
```

The needed theorem is the displayed vanishing

```text
partial_s U_n -> 0 in L^1(J;H^{-1}(K));
F_n^drift+F_n^selector+F_n^scale -> 0 in L^1(J;H^{-1}(K));
F_n^src -> 0 in L^1(J;H^{-1}(K));
M_n^def -> 0 as a measure on J x K.
```

Proof or remaining burden:

Any Lyapunov, frequency-locking, entropy, tangent-flow uniqueness, modulation,
or source-evacuation mechanism is useful only after it proves those exact
vanishing statements for the selected sequence.  Current inputs do not prove
them.

Downstream consequence:

Door 2 cannot spend "critical rescaling becomes autonomous" or a mechanism list
as a stationarity proof.  The Landau/Sverak consumer becomes available only
after the exact `L^1_s H^{-1}_{loc}` and measure-evacuation limits are proved.

Edited live surface:

- `theorem-construction/mcp-asymptoticstationarityattempt-a-asymptoticstationarity-a-zenocriticalprofileproduction-a-65fa0863d0.md`.

## Transported Material Packet Bridge Rework

Old loose step:

- `theorem-construction/mpp-transported-material-packet-bridge-lemma.md`
  titled the relative-packing estimate as schematic even though the displayed
  Cauchy--Young inequality `(TB.28)` is exact.
- The same note said the fused packet "should satisfy" an inequality of the
  form `(TB.29)` without stating the exact propagation consequence or the
  integrability condition on the coefficient.

Exact replacement:

The relative-packing heading now identifies `(TB.28)` as the exact inequality.
The packet closure target now requires nonnegative quantities
`J_{N,r,psi}`, `Dtilde_{N,r,psi}`, and `C_{N,r,psi}` satisfying

```text
d/dt J_{N,r,psi}(t) + 2 nu Dtilde_{N,r,psi}(t)
<= C_{N,r,psi}(t) J_{N,r,psi}(t),
```

with

```text
int_{t0}^{t1} C_{N,r,psi}(s) ds < infinity.
```

The exact propagation consequence is the displayed Gronwall estimate `(TB.29a)`.

Proof or remaining burden:

The bridge note proves the tower/label-space identities and the exact rung-1
source term

```text
Q_{1,r,psi}^{str}(t)
```

with the upper bound by `Etilde_{1,r,psi}`.  It does not yet construct the
closed packet pair `(J,C)` with integrable `C`.

Downstream consequence:

The transported-packet branch cannot spend the formal packet inequality as if it
were already closed.  Downstream use requires the actual construction of
`J_{N,r,psi}` and `C_{N,r,psi}` and the selected-packet integral bound for `C`.

Edited live surface:

- `theorem-construction/mpp-transported-material-packet-bridge-lemma.md`.

## Anisotropic Backward-Uniqueness Transform Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` said the change of
  variables was a "formal transform" that removed vector stretching and that
  the divergence/pressure structure "may become" anisotropic.
- `theorem-construction/mpp-active-strain-alignment-cost-target-note-20260504.md`
  called the transformed equation an anisotropic heat--Stokes equation but did
  not state the transformed divergence constraint before discussing
  no-incoming decay.

Exact replacement:

For frozen symmetric trace-free strain \(S\), the transform is

```math
E(s)=e^{sS},\qquad z=E(s)^{-1}y,\qquad
w(z,s)=E(s)v(E(s)z,s),
```

and the finite-slab transformed system is

```math
\partial_s w+\nabla_z q
=\nu\nabla_z\cdot(A(s)\nabla_z w),
\qquad
\nabla_z\cdot(A(s)w)=0,
```

with

```math
A(s)=E(s)^{-1}E(s)^{-T}=e^{-sS}e^{-sS^T}.
```

Proof or remaining burden:

The transformed finite-slab system is exact under the frozen-strain transform.
The direct backward-uniqueness route remains conditional on a global
no-incoming flux/weighted boundary condition and an anisotropic Stokes
Carleman theorem for the displayed system.  Local compact decay on fixed balls
is explicitly insufficient on the ancient half-line.

Downstream consequence:

The ASAC/TPNI reserve route may not spend scalar heat backward uniqueness,
standard Euclidean divergence, or a merely formal stretching-removal heuristic.
It can spend only the exact anisotropic Stokes finite-slab transform plus the
still-open global no-incoming and Carleman inputs.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mpp-active-strain-alignment-cost-target-note-20260504.md`.

## Eigenframe Source-Current Shortcut Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` said absolute estimates
  of the near-band material pressure/source term give the "same
  scale-critical active coefficient bound" and that signed integration by parts
  reintroduces the one-sided source-current.
- `theorem-construction/mpp-independent-prd-material-eigenframe-attempt-20260516.md`,
  `theorem-construction/mpp-terminal-eigenframe-turnover-charge-direct-attempt-20260517.md`,
  and
  `theorem-construction/mpp-terminal-pressure-hessian-no-sustain-attempt-20260517.md`
  used the same compressed verdict language.

Exact replacement:

The live surfaces now identify the near-band material pressure/source term:

```math
\sum_P
\|E_P\|_{L^\infty(I_P)}\tau_P
\int_{I_P}
\left|
n_P\cdot
P^{loc}_{j_P,L}(S^2+\Omega^2+\nabla^2p)
n_P
\right|\,dt.
```

The absolute-value route spends the coefficient estimate

```math
\|P^{loc}_{j,L}(S^2+\Omega^2+\nabla^2p)\|_\infty
\le
C_{\mathrm{CZ}}\|\nabla u\|_\infty^2,
```

and the signed integration-by-parts route produces the selected source-current
term

```math
-\int_{I_P}Source_P^{loc}b_P\,dt.
```

Proof or remaining burden:

The turnover/residence reduction is exact once the displayed terms are used.
The missing theorem is not a vague scale-critical obstruction: it is either a
legal bound for the displayed near-band material/source coefficient without
using active-square strength, or a signed theorem that preserves/certifies the
selected source-current after terminal positive selection.

Downstream consequence:

Independent positive-remainder depletion, terminal eigenframe turnover, and
terminal pressure-Hessian no-sustain cannot spend "active coefficient" language
as a proof.  They must discharge the displayed coefficient/source-current
terms or route through the existing source-wall primitives.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mpp-independent-prd-material-eigenframe-attempt-20260516.md`;
- `theorem-construction/mpp-terminal-eigenframe-turnover-charge-direct-attempt-20260517.md`;
- `theorem-construction/mpp-terminal-pressure-hessian-no-sustain-attempt-20260517.md`.

## ACT.KX Conditional Route Verification Residue Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` and
  `theorem-construction/mcp-surface-audit-of-act-kx-conditional-route-completion-items-1-12-ofp-a-1a6481cefb.md`
  said a theorem-audit endpoint was absent from an exposed MCP tool list and
  that formal mathematical verification was absent.
- `theorem-construction/mcp-act-kx-conditional-route-completion-covering-items-1-12-cfi-a-b476f4bf8c.md`
  said the audit pass was "absent in this session."

Exact replacement:

The live surfaces now state the theorem status directly: this is a conditional
route-completion surface, not a line-by-line proof.  The route may spend only
the listed installed inputs, and the remaining mathematical burden is to prove
that each listed dependency supplies its displayed ACT.KX, pressure/forcing,
moving-cutoff/frame, endpoint-matrix, readout, and original-data upgrade claim
on the same retained branch.

Proof or remaining burden:

No theorem proof is created by the audit paragraph.  The continuum
coherent-sector replacement remains a separate theorem burden for the related
shared-control-object route.

Downstream consequence:

Tool/session availability no longer appears as proof-facing evidence.  ACT.KX
route consumers must treat the completion surface as conditional until the
listed dependencies are checked line by line on the same retained branch.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-surface-audit-of-act-kx-conditional-route-completion-items-1-12-ofp-a-1a6481cefb.md`;
- `theorem-construction/mcp-act-kx-conditional-route-completion-covering-items-1-12-cfi-a-b476f4bf8c.md`.

## PPCJ Davis-Kahan Wording Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` said the PPCJ /
  Davis--Kahan comparison slot "becomes formal" once a measurable symmetric
  observable surrogate is supplied.

Exact replacement:

The appendix now states that, under the displayed simple-top gap and surrogate
error hypotheses,

```math
\|\widetilde S_J-S_J^{seg}\|_{\mathrm{op}}
\le \varepsilon_J^{obs},
\qquad
2\varepsilon_J^{obs}\le \gamma_J,
```

the comparison is the exact Davis--Kahan projector estimate

```math
d_{\mathrm{proj}}(\widetilde N_J,P_{J,\top}^{seg})^2
\le
4(\varepsilon_J^{obs})^2/\gamma_J^2.
```

Proof or remaining burden:

The Davis--Kahan step is paid by the displayed spectral gap and surrogate
operator-norm estimate.  The open theorem remains `PSJ`: construct the
synchronization observable from packet data.  The edit removes "formal" as a
proof-status substitute without changing the remaining burden.

Downstream consequence:

`PD.70z`, `PD.70`, `PD.70aa`, and `SG.4B` may spend the PPCJ comparison only
after the surrogate and gap hypotheses are supplied; the word "formal" carries
no proof force.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## Compactness Upgrade Lemma Wording Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` called the compactness
  upgrade lemma a "formal compactness statement."

Exact replacement:

The appendix now names it as a conditional compactness statement.  Its
hypotheses are the displayed uniform energy bounds plus the same-scheme
scale-barrier tail input

```math
\forall R>0,\ \forall\varepsilon>0,\ \exists N\ge N_*
\quad
\sup_n\|P_{\ge N}u^{(n)}\|_{L^2(0,T;L^2(B_R))}
\le\varepsilon.
```

The proof is the displayed low/high recombination: Aubin--Lions compactness for
`P_{<N}u^{(n)}` at fixed `N`, uniform local `L^2` smallness of
`P_{\ge N}u^{(n)}`, then `n->infty` before `N->infty`.

Proof or remaining burden:

The compactness conclusion is exact under the scale-barrier tail input.  The
open upstream theorem remains the scale-barrier tail estimate on the same
classical approximation scheme.

Downstream consequence:

The quadratic passage to the weak formulation may spend the compactness lemma
only after the same-scheme tail input is supplied; the word "formal" carries no
proof force.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## D.2 Energy Identity Wording Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` said the "formal energy
  identity" leaves two nonlinear terms.

Exact replacement:

The appendix now names it simply as the energy identity and immediately
displays the two terms

```math
\mathcal N_1(X):=
2\langle \Delta_{D,\omega}X,\mathbb P_DN_D(X)\rangle,
\qquad
\mathcal N_2(X):=
2\langle \Omega_D(X),
[\nabla_{D,\omega},\mathbb P_DN_D(X)]\rangle.
```

The proof force is the displayed leakage estimate leading to

```math
|\mathcal N_1(X)|+|\mathcal N_2(X)|
\le
\varepsilon\mathcal D_D(X)+C_\varepsilon\mathcal E_D(X),
\qquad
\varepsilon<c_D/2.
```

Proof or remaining burden:

The nonlinear D.2 hinge is paid by the carrier-leakage completion and the
coercive margin shown in the appendix.  No "formal" label is used as proof
force.

Downstream consequence:

D.2 consumers may cite the displayed nonlinear estimate and retained coercive
margin, not a formal-energy shorthand.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## AACT.KX Scheduler Seed Finite-Partition Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` and
  `theorem-construction/mcp-aact-kx-scheduler-seed-obstruction-aact-kx-f4eff31d09.md`
  said the finite-coverage portion is "formal once the seed exists" because
  integrability of `B_R` and `F_R` gives a finite partition with small Gronwall
  packets.

Exact replacement:

The live surfaces now state the exact scheduler partition.  On a finite retained
tail, under

```math
B_R,F_R\in L^1,\qquad B_R,F_R\ge0,
```

choose a finite partition into intervals `J_k` with

```math
\int_{J_k}B_R\le\log(4/3),
\qquad
\int_{J_k}F_R\le\eta/2.
```

Then a restart seed `X_R(s_k)<=eta` gives

```math
\exp\!\left(\int_{J_k}B_R\right)
\left(X_R(s_k)+\int_{J_k}F_R\right)
\le2\eta.
```

Proof or remaining burden:

The finite scheduler part is paid by the displayed `L^1` partition and
Gronwall inequality.  The unproved theorem remains the fresh seed production
`X_R(s_k)<=eta` in the restart frame from `SCF_avg^m`,
transported-frame minimization, or a finite-cover small-excess selection
principle.

Downstream consequence:

AACT.KX scheduler consumers may spend finite partitioning only together with
the displayed seed and small-integral conditions; "formal once seeded" no
longer carries proof force.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-aact-kx-scheduler-seed-obstruction-aact-kx-f4eff31d09.md`.

## Jump Avg SCF Lower-Accumulation Obstruction Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` and
  `theorem-construction/mcp-jump-avg-to-scfbase-charge-lower-accumulation-obstruction-jump-avg-branch-elimination-5bb3fb9613.md`
  said a "formal obstruction model" is possible.

Exact replacement:

The live surfaces now state the definition-level obstruction:

```math
Jump_avg(T)
\quad\text{and}\quad
\liminf_{n\to\infty}\nu_{SCF}(Q_n)=0
```

along the selected terminal windows `Q_n`.  Thus terminal good-radius collapse
can be recorded while the analytic SCF measure has zero terminal lower density
on the same selected windows.

Proof or remaining burden:

The obstruction is compatible with the present branch definitions.  The missing
theorem is the component-selection and moving-concentration compactness
statement forcing radius collapse to spend nonzero `nu_SCF` mass on the same
selected windows.

Downstream consequence:

Jump_avg lower-accumulation consumers may not infer analytic SCF charge lower
density from good-radius collapse alone.  They must prove the component-selection
and moving-concentration compactness bridge.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-jump-avg-to-scfbase-charge-lower-accumulation-obstruction-jump-avg-branch-elimination-5bb3fb9613.md`.

## Lifted Skew Commutator Signed-Partner Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` and
  `theorem-construction/mcp-lifted-skew-commutator-attempt-20260505.md`
  said a "formal decomposition" into positive and negative eigendirection
  packets can be written, but the negative branch may leave the selected
  terminal record.

Exact replacement:

The live surfaces now state the exact spectral split

```math
S_k=\sum_m\lambda_m e_m\otimes e_m,
\qquad
\sum_m\lambda_m=0,
```

and the resulting packet contribution

```math
\sum_m(\lambda_m)_+|\langle u_j,e_m\rangle|^2
-
\sum_m(\lambda_m)_-|\langle u_j,e_m\rangle|^2.
```

Proof or remaining burden:

The algebraic split is exact.  The obstruction is terminal selection: the
negative branch need not lie in the selected terminal same-fluid record.
Bringing it back requires `TerminalSignedSaturation.A`; charging by magnitude
requires `ScaleCriticalTreeCarleson.A`.

Downstream consequence:

Lifted skew-commutator consumers may not treat trace-free strain or a formal
positive/negative split as a signed partner theorem.  They must prove selected
terminal signed saturation or pay the magnitude by the scale-critical tree
Carleson route.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-lifted-skew-commutator-attempt-20260505.md`.

## Parabolic Cubic Normal-Form Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` said a "formal
  parabolic normal form" cancels `\mathcal C_{3,N}` and then wrote the
  derivative of `\mathcal B_{3,N}` as though the displayed cancellation were
  already a full Navier-Stokes cancellation.
- `theorem-construction/mcp-paraboliccubicnormalform-a-paraboliccubicnormalform-a-attempt-for-scalecriticaltreecarleson-a-a6b0996aeb.md`
  called the canceled term the "formal heat-linear cubic source."

Exact replacement:

The live surfaces now state that the normal form supplies only the heat-linear
homological cancellation.  With

```math
m_\alpha
:=
\frac{\text{symbol of }\mathcal C_{3,N}}
{\nu(|\xi_1|^2+|\xi_2|^2+|\xi_3|^2)},
```

the exact cancellation is

```math
\left.\frac{d}{dt}\mathcal B_{3,N}\right|_{\partial_tu=\nu\Delta u}
=-\mathcal C_{3,N}.
```

For Navier-Stokes, the corrected Bellman is only

```math
\frac{d}{dt}\mathcal B_N(t)+c_0\mathcal A_N(t)
\le \mathcal R_{4,N}(t)+\mathcal L_N(t),
\qquad
\mathcal A_N(t):=\sum_{j\ge N}2^{-j}D_j(t)^2.
```

Proof or remaining burden:

The heat-linear homological equation is exact.  The nonlinear derivative
creates the quartic active-tree remainder

```math
|\mathcal R_{4,N}(t)|
\le
C_{4,NF}\mathfrak S_N(t)\mathcal A_N(t)+\mathcal L_{4,N}(t),
```

so closure requires the coefficient-weighted active-square estimate

```math
\int_I\mathfrak S_N(t)\mathcal A_N(t)\,dt
\le
\theta\int_I\mathcal A_N(t)\,dt+o_N(1)+\text{legal losses}.
```

That estimate is the terminal source-coherence / local positive source
Carleson primitive, not a consequence of the normal form.

Downstream consequence:

Consumers may spend the cubic normal form only as a reduction from the raw
cubic source to terminal active-tree coefficient control.  They may not infer
`ScaleCriticalTreeCarleson.A` or active-square summability from the normal-form
construction without the displayed product estimate.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-paraboliccubicnormalform-a-paraboliccubicnormalform-a-attempt-for-scalecriticaltreecarleson-a-a6b0996aeb.md`.

## Part Closedness Response-Margin Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex`,
  `theorem-construction/mcp-part-terminal-closedness-field-tower-theorem-20260504.md`,
  `theorem-construction/mpp-pctp-hard-participation-persistence.md`, and
  `theorem-construction/mcp-part-row-nodrop-to-part-n-q-20260504.md`
  treated `Part_{N,Q}` as a finite closed predicate under compactness and said
  neighboring-response positivity survives after passing to a late terminal
  subtail.

Exact replacement:

The live surfaces now distinguish closed clauses from strict response clauses.
Same-fluid incidence and finite-difference compatibility pass to the terminal
limit by uniform convergence.  A strict neighboring-response clause passes only
if it is encoded as a closed non-strict terminal predicate or if the retained
tail carries a fixed margin

```math
\mathcal R_\ell(t)\ge\gamma_\ell>0
```

for each of the finitely many response functionals in the Part witness.

Proof or remaining burden:

Arzela--Ascoli gives terminal limits for the finite witness data under the
positive Field scale and bounded tower hypotheses.  Closed predicates pass to
the limit.  Strict positivity does not pass from pointwise preterminal
positivity without a uniform margin.  Without that margin, compactness gives
only the closed relaxed Part witness.

Downstream consequence:

Part-row consumers may not reduce a first Part failure to Field failure or
tower blowup from Field+tower control alone.  The exact conditional conclusion
requires response-margin retention or closed terminal encoding; loss of the
response margin is itself a lawful `\neg Part_{N,Q}` face.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-part-terminal-closedness-field-tower-theorem-20260504.md`;
- `theorem-construction/mpp-pctp-hard-participation-persistence.md`;
- `theorem-construction/mcp-part-row-nodrop-to-part-n-q-20260504.md`.

## Terminal-Tail Uniformization Downstream Rework

Old downstream step:

- `submission-bundle/source-field-reader-appendix.tex` said that once finite
  terminal-tail records are supplied, the persistence argument is "formal."
- `theorem-construction/mcp-pctp-hard-averaged-route-reduction-and-aact-gap.md`
  listed only `Dead`, `packing-detached`, `tower-blown`, and `Jump` as endpoint
  faces and treated the face-free branch as retaining Part without separately
  retaining the strict-response margins exposed by the Part closedness repair.

Exact replacement:

The averaged route package now includes the additional endpoint face

```math
response\text{-}margin\text{-}collapse
```

and the face-free branch retains the strict Part response margins

```math
\mathcal R_\ell(t)\ge\gamma_\ell>0
```

or uses a closed non-strict terminal encoding of the Part clauses.

Proof or remaining burden:

The finite-record persistence implication is conditional: Pack controls carrier
geometry, Field supplies positive scale, tower records prevent finite-depth
amplification, and Part persists only with the response-margin/closed-predicate
input.  Original smooth data still has to produce those terminal-tail inputs;
the package does not supply them.

Downstream consequence:

The averaged PCTP route may run only on the enlarged face-free branch.  It may
not exclude first finite endpoint by routing only the old four faces; response
margin collapse must be excluded, admitted as the Part face, or encoded in the
closed terminal Part predicate.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-pctp-hard-averaged-route-reduction-and-aact-gap.md`.

## Endpoint-Face Count Propagation Rework

Old downstream step:

- Endpoint summary packets and the live appendix still said the endpoint matrix
  had "four endpoint faces" after the Part closedness repair had exposed strict
  response-margin collapse as a separate Part-face mechanism.

Exact replacement:

The endpoint lists now include

```math
Dead\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump
\vee response\text{-}margin\text{-}collapse.
```

The face-free production alternative includes Pack, Part, Field, finite tower
control, and retained strict Part response margins

```math
\mathcal R_\ell\ge\gamma_\ell>0
```

or closed non-strict terminal encoding of the Part clauses.

Proof or remaining burden:

This is not a new endpoint theorem.  It is the downstream consistency condition
forced by the repaired Part closedness theorem: response-margin collapse is
either discharged in the participation row, admitted as the Part face, or
removed by a closed terminal predicate definition.

Downstream consequence:

Endpoint-matrix consumers may not claim endpoint exhaustiveness by excluding
only the old four faces.  The Part row now includes the response-margin
subface, and the terminal-tail uniformization theorem must produce that margin
or encode the response clauses as closed terminal predicates.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mpp-rawdata-production-and-release-completion-packet.md`;
- `theorem-construction/mpp-periodic-terminal-promotion-bridge.md`;
- `theorem-construction/mpp-pctp-hard-endpoint-face-audit.md`;
- `theorem-construction/mpp-seven-item-paper-grade-closure-package.md`;
- `theorem-construction/mpp-scf-aact-elliptic-source-endpoint-branch-package.md`.

## Linearized Response Stopping Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` and
  `theorem-construction/mpp-full-linearized-response-adjoint-packet-attempt-20260506.md`
  said the stopping argument is formal once response mass and the stopped parent
  relation are pinned.

Exact replacement:

The stopped interval must satisfy

```math
\mathcal C_T^{lin}(\sigma_T,t_+)=\varepsilon_M
```

and the pulled-back adjoint Duhamel smallness condition.  The stopped response
mass must also satisfy the no-free-create inequality

```math
\mathsf M_T^{lin}(t_+)
\le
\mathsf M_T^{lin}(\sigma_T)+\mathsf{Charge}_T^{lin}([\sigma_T,t_+])
```

with the stopped parent relation on the same tile.

Proof or remaining burden:

Under those exact hypotheses, the stopping step is packet bookkeeping and needs
no new PDE estimate.  Without the mass inequality and parent relation,
`LinearizedCoeffStop.A` remains open.

Downstream consequence:

Full linearized response consumers may not spend a "formal stopping" phrase as
a theorem.  They must provide the coefficient budget, Duhamel smallness, stopped
mass inequality, and stopped parent relation.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mpp-full-linearized-response-adjoint-packet-attempt-20260506.md`.

## Endpoint-Face Residue Second-Pass Rework

Old downstream step:

- Several live appendix mirrors and theorem-construction notes still spent
  endpoint contradiction as "exactly four faces" after the Part closedness
  repair exposed response-margin collapse as a distinct terminal failure mode.

Exact replacement:

The exact endpoint implication is now

```math
\text{first endpoint}\Longrightarrow
Dead\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump
\vee response\text{-}margin\text{-}collapse.
```

The old four-face matrix may be spent only on the subbranch where the Part row
supplies closed terminal response predicates or retained strict response
margins

```math
\mathcal R_\ell(t)\ge\gamma_\ell>0
```

on the terminal tail.

Proof or remaining burden:

This is the direct consequence of the repaired Part closedness statement.
Strict response inequalities are not closed under terminal limiting unless a
positive margin survives, while closed non-strict terminal Part predicates do
pass to the limit.  Therefore a proof that excludes only Dead,
packing-detached, tower-blown, and Jump closes the endpoint contradiction only
after the response-margin subface has already been removed by hypothesis or by
the Part row.

Downstream consequence:

Endpoint contradiction, referee-facing lemma compression, terminal-tail
uniformization, retained admission, and the R3 compact-core matrix can no
longer say "all four faces" without the Part-margin qualifier.  Their live
statements now either include response-margin-collapse or explicitly restrict
to the branch where the Part-margin/closed-predicate input has removed it.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-endpoint-matrix-minimality-theorem.md`;
- `theorem-construction/mcp-endpoint-matrix-final-form.md`;
- `theorem-construction/mcp-exact-endpoint-exhaustion-theorem-ecq-a-73d202fb1f.md`;
- `theorem-construction/mcp-endpoint-contradiction-theorem-standard.md`;
- `theorem-construction/mcp-externalized-proof-vocabulary-pde-lemmas.md`;
- `theorem-construction/mcp-manuscript-smallest-standard-lemma-sequence.md`;
- `theorem-construction/mcp-referee-readable-lemma-compression.md`;
- `theorem-construction/mcp-pctp-hard-terminal-tail-uniformization-read-cover-a6c643da31.md`;
- `theorem-construction/mpp-endpoint-face-packgauge-retained-admission-solution-note.md`;
- `theorem-construction/mpp-r3-tailface-hs-endpoint-theorem-attempt.md`;
- `theorem-construction/mpp-r3-tailface-hs-endpoint-row-obstruction.md`.

Second residue sweep:

- `theorem-construction/chatgpt-items-1-8-completion-attempt.md`;
- `theorem-construction/mcp-averaged-endpoint-matrix-formalization-read-cover-5ccb749170.md`;
- `theorem-construction/mcp-avg-end-a-averaged-endpoint-theorem-read-end-1f65673fd8.md`;
- `theorem-construction/mcp-avg-end-a-completion-read-end-b239e27d74.md`;
- `theorem-construction/mcp-avg-end-a-consumption-check-read-end-dbdfc51d84.md`;
- `theorem-construction/mcp-avg-end-a-hardened-averaged-endpoint-rows-tgc-a-b13bc3ecf3.md`;
- `theorem-construction/mcp-cavg-j-matrix-integration-lemma-avg-cover-a-cf6fcd3f2b.md`;
- `theorem-construction/mcp-compact-endpoint-matrix-formalization-read-end-1a51c290af.md`;
- `theorem-construction/mcp-endpoint-origin-boundary-completion-note.md`;
- `theorem-construction/mcp-endpoint-to-classical-contradiction-theorem-read-end-ac1bec0dd4.md`;
- `theorem-construction/mcp-pctp-hard-averaged-assembly-through-read-end.md`;
- `theorem-construction/mcp-pctp-hard-averaged-route-reduction-and-aact-gap.md`;
- `theorem-construction/mcp-recovered-end_ns-to-pctp-hard-bridge-read-end-2202fe6907.md`;
- `theorem-construction/mcp-terminal-route-compression-retained-conditional-theorem.md`;
- `theorem-construction/mpp-act-kx-conditional-route-completion-packet.md`;
- `theorem-construction/mpp-averaged-act-kx-scale-critical-forcing-packet-note.md`;
- `theorem-construction/mpp-h1-h2-h6-origin-retain-source-attack-note.md`;
- `theorem-construction/mpp-pctp-hard-terminal-tail-current-obstruction.md`;
- `theorem-construction/mpp-pctp-hard-terminal-tail-uniformization-assembly.md`;
- `theorem-construction/mpp-periodic-clay-terminal-promotion-theorem.md`;
- `theorem-construction/mpp-periodic-terminal-promotion-bridge.md`;
- `theorem-construction/mpp-rawdata-production-and-release-completion-packet.md`;
- `theorem-construction/mpp-seven-item-paper-grade-closure-package.md`;
- `theorem-construction/mpp-pctp-hard-face-exclusion-assembly.md`;
- `theorem-construction/mpp-pctp-hard-field-jump-absorption.md`;
- `theorem-construction/mpp-pctp-hard-quantitative-closure-package.md`;
- `theorem-construction/mpp-periodic-main-self-contained-manuscript-proof.md`;
- `theorem-construction/mpp-periodic-main-theorem-manuscript-grade-package.md`;
- `theorem-construction/mcp-avg-main-read-end-pointwise-endpoint-closure.md`;
- `theorem-construction/mcp-field-read-completion-read-cover-22ead9287c.md`;
- `theorem-construction/mcp-pctp-hard-final-obstruction-and-ttu-target.md`;
- `theorem-construction/mcp-read-end-consumption-check-avg-main-a-08b02dd763.md`;
- `theorem-construction/mcp-terminal-readout-invocation-endns-from-avg.md`;
- `theorem-construction/mpp-readout-endpoint-compatibility-completion-note.md`.

## D.7mq Conditional Bridge Rework

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` and
  `theorem-construction/mcp-ptc-shape-suppliers-plus-ptc-lin-to-d-7mq-attempt-2ecf7f3d5a.md`
  said the "formal bridge" from the four requested packets to `D.7mq` closes.

Exact replacement:

The bridge is a conditional reduction on one selector-good strip.  The finite
frame linearization error gives

```math
E_{J,frame}
=d\left(2|W_J^{coc}|_{op}\varepsilon_{J,lin}^{frame}
+(\varepsilon_{J,lin}^{frame})^2\right).
```

With exact-potential comparison error `E_{J,EP}` and reference Cauchy-Green
simple-top gap `\gamma_{J,CG}`, the Davis-Kahan step is licensed only under

```math
\varepsilon_{J,CG}:=E_{J,frame}+E_{J,EP},
\qquad
2\varepsilon_{J,CG}\le\gamma_{J,CG}.
```

Then

```math
\|\widehat P_J^{frame}-P_J^{CG}\|_F^2
\le
4\varepsilon_{J,CG}^2/\gamma_{J,CG}^2.
```

Proof or remaining burden:

The finite-frame tensor estimate follows by expanding
`z_l=W_J^{coc}\omega_l+e_l` and summing the cross/error terms over the finite
balanced frame.  The projector conclusion is Davis-Kahan under the displayed
gap hypothesis.  The bridge does not prove the source estimates, the
exact-potential comparison error, or the Cauchy-Green gap.

Downstream consequence:

Consumers may spend `D.7mq` only after the four source packets, `E_{J,EP}`, and
`\gamma_{J,CG}` are available on the same selector-good strip.  The word
"formal" no longer carries proof force.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-ptc-shape-suppliers-plus-ptc-lin-to-d-7mq-attempt-2ecf7f3d5a.md`.

## E_u Component-Coverage Rework

Old loose step:

- Several recurrence/Jumps surfaces said the enlarged charge including `E_u`
  had "formal component coverage" or "formally" fixed component selection.

Exact replacement:

The enlarged charge repairs only set-theoretic component inclusion:

```math
\nu_{SCF}^{+}:=\nu_{SCF}+E_u
```

counts a threshold packet carried by the velocity-energy component.  It becomes
a usable final contradiction charge only if the same terminal window schedule
has a bounded-overlap upper estimate for the `E_u` contribution, such as

```math
\sum_k r_k^{-\alpha}E_u(Q_k)\le C(E_0)
```

or an `E_u`-to-`D_u/P` conversion theorem on that schedule.

Proof or remaining burden:

The component inclusion is immediate from the definition of `\nu_{SCF}^{+}`.
The missing part is not inclusion; it is the upper estimate.  Finite raw energy
does not by itself control repeated scale-normalized terminal windows.

Downstream consequence:

Separated recurrence cannot use `\nu_{SCF}^{+}` as `C_final` until the
bounded-overlap upper theorem or the `E_u` conversion theorem is installed.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-separated-recurrence-after-original-data-eu-obstruction-jump-avg-branch-elimination-8b3473ef28.md`;
- `theorem-construction/mcp-separated-recurrence-after-eu-conditional-route-jump-avg-branch-elimination-fe6f5b8ddb.md`;
- `theorem-construction/mcp-separated-recurrence-final-charge-obstruction-jump-avg-branch-elimination-140e8ad8ec.md`;
- `theorem-construction/mcp-eu-additive-carrier-reduces-to-active-window-amplitude-gain-jump-avg-branch-elimination-54b3f13ec0.md`;
- `theorem-construction/mcp-enlarged-scf-charge-with-eu-upper-bound-obstruction-jump-avg-branch-elimination-e444b62ca0.md`;
- `theorem-construction/mpp-jump-avg-branch-native-noescape-hard-wall-note.md`;
- `theorem-construction/mcp-full-scf-upper-side-eu-active-window-gain-reduction-active-window-amplitude-gain-heat-scale-square-source-control-for-the-full-scf-upper-side-11a6ee0bc9.md`.

## Shrinking Shell Model-Bound Rework

Old loose step:

- The retained-family shell row said the shrinking-shell error had a "model
  bound" and then sent the two model terms to zero.

Exact replacement:

For the finite shell family, choose all inner and outer shell boundary radii
outside the atom sets of the corresponding finite active radial measures.  For
the thickness-`h` shell `S_{r,h}^{\pm}`, continuity from above gives

```math
\eta_{r,\pm}(S_{r,h}^{\pm})\to0,
\qquad
\sigma_{r,\pm}(S_{r,h}^{\pm})\to0
\qquad (h\downarrow0).
```

Thus

```math
A_{shell}(h)
:=
\sum_{r,\pm}
\int_{G_J}|\delta_{J,r}^{\pm}(a)-s_{\pm,r}^{shell}(h)|\,d\mu_j(a)
\to0,
```

and the retained-family loss obeys

```math
\varepsilon_{shell}(h)\le A_{shell}(h)/\theta_{shell}\to0.
```

Downstream consequence:

The SG.4/TPS retained-family budget may spend the shell row only under the
finite shell-family, atom-free boundary, and shrinking-thickness hypotheses.
There is no standalone model estimate.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-seven-loss-budgets-for-sg-4-tps-retained-family-ep-a-b4208cdf26.md`.

## Formal Counter-Edge Rework

Old loose step:

- Skew-saturation wording said the bare dyadic graph gives a "formal
  counter-edge" and then moved quickly to finite banding and same-fluid
  fidelity.

Exact replacement:

The bare dyadic identity gives only an unlocalized involution
`\iota(e)` on the full unweighted interaction graph.  It does not select a
terminal packet, keep that packet in the same usable same-fluid ledger, preserve
bounded overlap, or price a partner outside the selected terminal collar.
Finite banding controls shell indices only.  Same-fluid fidelity applies only
after an admissible partner packet has already been selected and retained.

Downstream consequence:

Skew Saturation Admissibility.A remains a genuine theorem requiring partner
multiplicity control, same-fluid partner collars, and off-saturation boundary
pricing.  Bare skew symmetry cannot be spent as a terminal same-record pairing.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-skew-saturation-admissibility-attempt-20260505.md`;
- `theorem-construction/mpp-terminal-signed-saturation-direct-attempt-20260505.md`;
- `theorem-construction/mpp-signed-samefluid-edgepairing-direct-attempt-20260505.md`;
- `theorem-construction/mpp-off-family-counteredge-charge-direct-attempt-20260505.md`;
- `theorem-construction/mpp-terminal-skew-localization-saturated-hull-attempt-20260505.md`.

## Compact-Support Localizer Model-Bound Rework

Old loose step:

- The compact-support localizer subsection said every simultaneous-overlap
  weighted ledger satisfies a "model bound."

Exact replacement:

Under the compact-support localizer hypotheses and simultaneous activation
condition, the support balls give

```math
|c_{J,\ell}(z)-c_{J,\ell'}(z)|\le 2r_J
```

by the triangle inequality.  Hence any nonnegative weighted overlap ledger
supported on simultaneous activations satisfies

```math
\sum_{\ell,\ell'} w_{\ell,\ell'}(z,p)
|c_{J,\ell}(z)-c_{J,\ell'}(z)|
\le
2r_J\sum_{\ell,\ell'}w_{\ell,\ell'}(z,p).
```

Downstream consequence:

This pays only the support-radius half of `CSR.A/CSR.B`.  The PSJ+.1 fine
localizer route still requires the weighted small-radius budget `(CSR.9)` on
the same localized-projector surface.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`.

## Normal-Form And Phi_s Model-Bound Rework

Old loose steps:

- The cubic normal-form correction was described as having a "model bound."
- The `Phi_s` Osgood subsection described a tame-product estimate as a "model
  bound" and carried a malformed lower-order term.

Exact replacement:

The cubic heat normal form supplies only a conditional multiplier estimate:

```math
|\mathcal B_{3,N}(t)|
\le
C_{3,NF}\eta_N(t)\mathcal B_{2,N}(t)
+
\mathcal B_{2,N}(t)^{1/2}\mathfrak S_N(t).
```

The high-tail factor is small only on the admitted high-mode tail, while the
low/intermediate source coefficient `\mathfrak S_N` remains a source-wall
coefficient unless a terminal source-coherence theorem controls it.

For the lifted carrier route, the exact tame-product estimate gives

```math
|\mathcal N_s(X)|
\le
\varepsilon\Xi_D^{(s)}(X)
+C_\varepsilon\|X\|_{H_D^s}^2
+\text{lower-order terms},
```

which yields the currently available growth `\Phi_s(r)\simeq 1+r+r^{3/2}`.
That growth fails the Osgood condition; the remaining theorem is a structural
improvement converting the energy-size coefficient into an integrable or
dissipative coefficient.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/phi-s-osgood-subcriticality-test-result.md`.

## Remaining Appendix Trigger-Phrase Cleanup

Old loose wording:

- A failed gradient-lifted-remainder audit referred to a "model route" and a
  "model bound."
- A tower-amplitude block said the proof was "formal" after an amplitude bound.
- Two analytic-collapse passages used "typical" only to reject profile/slope
  assumptions.

Exact replacement:

The gradient-lifted-remainder audit now names the displayed high-tail factor
estimate and states that the exact shell algebra still leaves the coefficient

```math
\sum_{N+M<k<j-4}2^{3k/2}\|\Delta_k u(t)\|_{L^2_x}.
```

The tower-amplitude block now states the direct contradiction: `tower-blown`
gives arbitrarily large `A_{N,Q}(t)` on `I`, while the supplied
`L^\infty(I)` bound forbids this after choosing `M` larger than that bound.
The analytic-collapse passages now say plainly that no profile assumption,
same-scale estimate, linearized dead-patch estimate, or slope ansatz is used.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`.

## Live Theorem-Note Trigger-Phrase Cleanup

Old loose wording:

- `mpp-class-membership-endpoint-matrix-closure-contract-note.md` said two
  endpoint implications were "formal" after their inputs.
- `ontic-projected-flow-exact-lift-package.md` said the classical-shadow proof
  was "formal."
- `mpp-cone-payment-closure-package-20260611.md` described the critical
  velocity benchmark as not an inferred "typical" size.

Exact replacement:

The endpoint matrix now states the direct implications explicitly: `OFP.A`
propagates a positive one-field coherence scale, excluding `Jump`, and the
`L^\infty(I)` tower-amplitude input contradicts `tower-blown` by choosing
`M` above the bound.  The ontic lift is named as an exact pushforward
calculation through `\mathcal C` and the lift identities.  The cone benchmark is
described as a definition, not an inferred size estimate.

Edited live surfaces:

- `theorem-construction/mpp-class-membership-endpoint-matrix-closure-contract-note.md`;
- `theorem-construction/ontic-projected-flow-exact-lift-package.md`;
- `theorem-construction/mpp-cone-payment-closure-package-20260611.md`.

Additional edited live surfaces in this cleanup:

- `theorem-construction/mcp-uniform-local-hs-bounds-for-expanding-periodic-boxes-7ea50ac1cf.md`;
- `theorem-construction/mpp-open-dead-patch-rigidity-theorem.md`;
- `theorem-construction/mcp-weighted-pressure-tail-supplier-for-pflux-w-c53e2eb144.md`.
- `theorem-construction/mpp-actual-synthesis-heightfluxcontrol-class-exit-architecture-20260506.md`;
- `theorem-construction/mcp-terminalstressfluxantiatomtwodoorpacketattempt-a-stressfluxselectordomination-a-zenocriticalprofileproduction-a-zerofluxcriticalprofileliouville-a-1c958d83b9.md`;
- `theorem-construction/mpp-r3-tail-hs-face-elimination-attempt.md`;
- `theorem-construction/mpp-immediate-source-targets-execution-note-20260503.md`.
- `theorem-construction/activeheightfluxtrichotomy-a-theorem-creation-20260525.md`;
- `theorem-construction/mpp-cycle-heat-action-amplitude-obstruction-and-amp-correction-20260505.md`;
- `theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md`;
- `theorem-construction/mpp-public-clay-finality-sourcepulse-frontier-reentry-20260609.md`;
- `theorem-construction/mcp-projectedstressfluxnativecarrieridentificationattempt-a-projectedstressfluxnativecarrieridentification-a-projectedlocalprecauchyresidueidentity-a-cac43e600a.md`;
- `theorem-construction/mpp-whole-cone-wall-volume-shrink-rate-forward-positive-work-order-20260611.md`;
- `theorem-construction/mcp-zenocriticalprofileproductionattempt-a-zenocriticalprofileproduction-a-zerofluxcriticalprofileliouville-a-6024ef0bd0.md`.

## Remaining Exact U/r And Profile-Hit Classification

Second-pass search:

```text
U/r|∇u|\nabla u (~|\sim)|nabla u.*U|velocity changes by|
typical gradient|typical slope|linear profile|profile assumption
```

Remaining live hits are classified as edited/intentionally retained repair
language, not unresolved scale shortcuts:

- `submission-bundle/navier-stokes-submission.tex`: the pulling-teeth passage
  states the oscillation inequality on the actual moving ball and explicitly
  rejects slope `U/r` or any profile law.
- `submission-bundle/source-field-reader-appendix.tex`: remaining hits state
  exact normalized densities, analytic-collapse imports, finite cell-cover
  mean-value inequalities, fixed-annulus Littlewood--Paley hypotheses,
  non-use of profile assumptions, or the exact same-tail
  `SCF_base` local-modulus replacement.
- `theorem-construction/same-scale-multiplier-stability-program.md`,
  `middle-band-flux-gap-kernel-theorem.md`,
  `mpp-hhalf-oscillation-field-exit-reduction-20260528.md`,
  `mpp-r3-tail-hs-duhamel-source-reduction-20260607.md`,
  `mpp-open-dead-patch-rigidity-theorem.md`, and related live notes keep
  profile language only as explicit non-use or exact replacement language.
- `theorem-construction/mpp-transported-material-packet-bridge-lemma.md` uses
  `\Delta_r^X(\nabla u)` as an oscillation/difference notation for the
  transported gradient field, not as `\nabla u\sim U/r`.

No remaining live hit spends the old pulling-teeth linear-profile estimate as a
proof step.

## Authority-Surface Table-Row Ontology Repair

Old loose wording:

- `source-frontier.yaml`, `submission-verdict.yaml`, and their
  `submission-bundle` mirrors referred to "formal witness rows" and a
  "formal license."
- The same frontier summary rejected "standard-continuation language" but still
  left the old phrase as the named object.

Exact replacement:

The authority surfaces now say that a Pack/Part/Field row is a generated or
table-level row until a real terminal same-fluid realization is supplied and
tested against the implication pressure among Pack, Part, Field, and the
Dead/Jump/Blown readouts.  A retained Part hypothesis is recorded as a
hypothesis/license rather than terminal ontology.  Continuation consumers are
stated to require exact finite norm, local lifespan, relaunch, overlap
uniqueness, and Gronwall inputs, rather than unstated continuation assertions.

Downstream consequence:

A generated Pack-only, Part-only, or Field-only row cannot discharge a live CM
surface by table status.  It becomes proof-bearing only after the same-fluid
realization story and the Pack/Part/Field implication test are paid on the
active surface.

Edited live surfaces:

- `source-frontier.yaml`;
- `submission-bundle/source-frontier.yaml`;
- `live-theorem-edge.yaml`;
- `theorem-packet.yaml`;
- `submission-bundle/theorem-packet.yaml`;
- `theorem-repair.yaml`;
- `submission-verdict.yaml`;
- `submission-bundle/submission-verdict.yaml`.

## Live-Edge Endpoint Assembly And Split-Bridge Repair

Old loose wording:

- `live-theorem-edge.yaml` said `END.TowerBound` was a "formal implication"
  and `END.COMPLETE` was "formal" from endpoint components.
- The same live edge said `(FCI.5f)` was supplied "not by the formal split
  bridge alone," leaving the missing input too implicit.
- The two-tower donor note was described as the "formal version" of an idea.

Exact replacement:

The live edge now states the actual mathematical content. `END.TowerBound` is
the direct contradiction between the `END.TowerAmp` uniform bound on the same
finite cover/depth and the `tower-blown` requirement of arbitrarily large
tower amplitude. `END.COMPLETE` follows by applying `END.TowerAmp` with the
accepted `END.Exh` / `END.Cross` certificate maps to the same endpoint packet.
For `(FCI.5f)`, the split bridge alone is explicitly insufficient; the
cutoff-defect input `FCC.C1a` is required with `FPCR.C + FSCR.C + corrected
FCC.C1`. The two-tower donor passage now names the exact implication replacing
the slogan.

Downstream consequence:

The endpoint packet and source split cannot be discharged by assembly language
alone. They may be spent only when the same endpoint packet, cover/depth, and
cutoff-defect hypotheses named above are present.

Edited live surface:

- `live-theorem-edge.yaml`.

## Dependency-Referenced Theorem-Note Conditionality Repair

Old loose wording:

- `tps-shadow-barrier-formal-closure-packet.md` described itself as a
  "formal closure packet" proving "formal implications already used" by the
  barrier, SG bridge, and averaged packet.
- `mpp-sourceparent-measure-formal-definition-note.md` said it was the "formal
  version" of the tower-transfer intuition.

Exact replacement:

The TPS packet now states that it supplies conditional reductions only. It may
be spent only with the listed strip-barrier, selector-coherence, weak occupancy,
and vanishing-exception hypotheses; it still leaves the
`SG.4-production` packet as the missing Navier--Stokes-specific input. The
source-parent note now replaces the old intuition with the displayed
parent-measure theorem: source recovery, parent lower density, same-fluid edge
fidelity, summable loss, and charge alternative must produce either a finite
charge or a lawful comparable same-fluid predecessor packet.

Downstream consequence:

The dependency-discharge reference to the TPS packet does not discharge
selector-local transverse production or lane readiness. It records only the
conditional barrier/occupancy logic, while the source-parent ancestry route can
spend tower-transfer language only through the exact parent-measure axioms.

Edited live theorem notes:

- `theorem-construction/tps-shadow-barrier-formal-closure-packet.md`;
- `theorem-construction/mpp-sourceparent-measure-formal-definition-note.md`.

## Endpoint Matrix And Source Split Input Repair

Old loose wording:

- `mpp-class-membership-endpoint-matrix-closure-contract-note.md` treated
  `END.Cross`, `END.COMPLETE`, `END.Pack`, `END.Field`, and `END.TowerBound`
  as "formal" endpoint assembly once inputs were named.
- `mpp-class-membership-full-bridge-ledger-note.md` displayed
  `FPCR.C+FSCR.C+FCC.C1+FCC.C1a => (FCI.5f)` but then said the bridge was
  closed by "the three channel theorems," which could silently drop
  `FCC.C1a`.

Exact replacement:

The endpoint matrix now states the exact contradiction or conditional
reduction for each endpoint cell: `END.TowerBound` is the direct contradiction
between the `END.TowerAmp` uniform bound on the same finite cover/depth and
the `tower-blown` requirement; `END.Pack` requires the native pack-gauge bound
on the same packet; `END.Field` requires `OFP.A` to supply positive scale and
finite coherence; `END.Cross` is conditional on the accepted cross-entry
certificate reductions. The source split now says `(FCI.5f)` follows only from
the four displayed inputs, with `FCC.C1a` supplying the cutoff-defect
integrability required to put the cutoff channel in `L^1(I)`.

Downstream consequence:

The endpoint and source bridges cannot be spent as assembly by name. Downstream
uses of `(FCI.5f)` must carry `FCC.C1a`, and downstream uses of `End_NS` must
carry the same endpoint packet, cover/depth, pack-gauge, one-field, tower, and
cross-certificate hypotheses.

Edited live theorem notes:

- `theorem-construction/mpp-class-membership-endpoint-matrix-closure-contract-note.md`;
- `theorem-construction/mpp-class-membership-full-bridge-ledger-note.md`.

## Receiver / ULCI Conditional Assembly Repair

Old loose wording:

- `mpp-lci-a-end-to-end-receiver-and-class-certificate-map.md` called its first
  lower-carrier certificate "formal" and said the receiver-side machinery was
  "formal assembly" after `ULCI.A` and `DTC.C`.
- `mpp-lci-a-uniform-lower-carrier-finite-parameter-closure-note.md` called
  `(ULCI.24)` a "formal reduction."

Exact replacement:

The receiver map now calls `(RCC.19)` a conditional certificate and states that
the receiver-side assembly is conditional on the finite-parameter Gronwall
inputs and the transported-center package. The corrected route is
`DTC.A` plus conditional `ULCI`/collar/one-field assembly with named inputs,
not assembly by label. The ULCI note now describes `(ULCI.24)` as the
conditional finite-parameter reduction.

Downstream consequence:

Route summaries may compress the receiver subgraph only after carrying the
finite-parameter `EOC.A`, `AFD.A`, `AFD.B`, `RCF.A` hypotheses through `ULCI.A`
and the transported-center package. The compression itself is not proof.

Edited live theorem notes:

- `theorem-construction/mpp-lci-a-end-to-end-receiver-and-class-certificate-map.md`;
- `theorem-construction/mpp-lci-a-uniform-lower-carrier-finite-parameter-closure-note.md`.

## TPS Coarse-Flow Strip Implication Repair

Old loose wording:

- `tps-coarse-flow-pair-gap-theorem-candidate.md` said every good active pair
  satisfies a "formal implication," separated two "formal outputs," and called
  the full transport-stability part "formal."

Exact replacement:

The note now states the exact conditional strip-end implication: under the
tail condition yielding `(CF.11a)` and the strip inequality
`L_I^{net}\ge L_J^{thr}`, a good active pair has endpoint strip exclusion.
Whole-strip exclusion still requires the stronger prefix criterion `(CF.10j)`
or an external no-entry/no-return theorem. The route is reduced to conditional
statements; the remaining theorem-grade inputs are the stripwise packet
inequality on an asymptotically full good family and the downstream
actual-solution strain-budget control.

Downstream consequence:

The coarse-flow route cannot spend transport stability by saying the route is
formal. It must carry either the endpoint strip hypotheses or the stronger
whole-strip no-entry hypotheses, plus the actual-solution strain budget.

Edited live theorem note:

- `theorem-construction/tps-coarse-flow-pair-gap-theorem-candidate.md`.

## Direct Transported-Center Package Conditionality Repair

Old loose wording:

- `mpp-lci-a-direct-transported-center-package-note.md` described moving cutoff,
  pressure-response, and residual-forcing cells as "formal consequences";
  receiver readback as "formal"; `END.Pack` and `END.Field` as "native formal
  exclusions"; the receiver side as "formal" after `ACT.KX`; and
  `END.TowerBound` as "formal."

Exact replacement:

The note now states that the cutoff/pressure/forcing cells are conditional on
the local tower carrier with stronger pointwise-in-time control. Receiver
readback is conditioned on the displayed `CSP.A_{\delta+\delta_{seg}}`,
`(EOC.27)`, and `(OFP.10cb)` inputs. `END.Pack` requires
`\Gamma_{\mathrm{pack},Q}\in L^\infty(I)`, `END.Field` requires `OFP.A`, and
`END.TowerBound` is the direct contradiction between same-packet tower-amplitude
boundedness and `tower-blown`. The receiver side is conditional after the
ordered `ACT.KX` package is installed for every required parameter instance.
The earlier multiplier and native-forcing bridge language now names the
displayed multiplier structure and the direct algebraic consequence of
`K_q(c_j)=-\nabla^{q+1}p(c_j)+\nu\Delta U_q(c_j)` plus bounded frame
equivalence.

Downstream consequence:

`DTC.A`, receiver readback, and `End_NS` cannot be spent as formal assembly.
Downstream uses must carry the pointwise tower carrier control, exact
moving-center identity/commutator estimate, required `ACT.KX` parameter
instances, pack gauge, `OFP.A`, and tower-amplitude bound.

Edited live theorem note:

- `theorem-construction/mpp-lci-a-direct-transported-center-package-note.md`.

## TPS Dynamic Target Conditionality Repair

Old loose wording:

- `tps-dynamic-source-fit-and-open-frontier.md` called the good-set layer a
  "formal backbone," the donor-collapse leading edge a "formal shape," and the
  current branch target the "cleanest formal target."
- `tps-strong-bridge-sg-lemma-family.md` said an `SG.4B` lemma was "purely
  formal."

Exact replacement:

The TPS dynamic note now describes these as a conditional backbone, conditional
leading-edge shape, and conditional target packet. The SG lemma now states that
it is algebraic under hypotheses `(SG.4Ba)`--`(SG.4Bc)`, with the remaining
theorem-search burden being realization of those hypotheses from the
Navier--Stokes selector packets.

Downstream consequence:

The TPS branch may not spend donor-collapse or SG.4B language as a proof by
target shape alone. It must carry the financing/donor-death hypotheses or the
explicit `(SG.4Ba)`--`(SG.4Bc)` selector-packet hypotheses.

Edited live theorem notes:

- `theorem-construction/tps-dynamic-source-fit-and-open-frontier.md`;
- `theorem-construction/tps-strong-bridge-sg-lemma-family.md`.

## Class-Membership Contradiction Guardrail Repair

Old loose wording:

- `mpp-class-membership-contradiction-frontier-packet.md` described the
  first-time class-exit shell as sitting over a "formal compactness-route
  bridge" and warned against "formal object-law packaging."

Exact replacement:

The note now calls the bridge conditional and removes "formal" from the
object-law packaging guardrail. The packet still treats these as support or
packaging layers, not the singular route chain itself.

Downstream consequence:

The class-membership contradiction packet cannot use bridge/package labels as
proof substitutes for the singular route chain.

Edited live theorem note:

- `theorem-construction/mpp-class-membership-contradiction-frontier-packet.md`.

## TPS Pair-Defect / Spectral Bridge Conditionality Repair

Old loose wording:

- `tps-pair-defect-pde-packet.md` said the large-good-family extraction and
  `SG.4B` extraction were "already formal," and referred to a "formal
  observability bridge."
- `spectral-transversality-cocycle-bridge-to-sg4.md` used "formal discharge,"
  "formal consequences," and "everything downstream ... genuinely formal" for
  exact/general branch gluing.
- `spectral-transversality-in-measure-implies-pd70.md` named `ST.7` as a
  "formal splice."

Exact replacement:

The pair-defect packet now says the large-good-family extraction is
algebraic/measurable under its stated good-family hypotheses, the observability
bridge is conditional, and the `SG.4B` extraction is an algebraic consequence
of the stated observability/closure hypotheses. The spectral cocycle note now
calls the exact and general branches conditional discharges: `PD.70` follows
only once the local windows, overlap/gluing theorem, and comparison-to-top
projector theorem are installed, and downstream consequences remain
conditional on those lemmas. The ST.7 splice is labeled conditional.

Downstream consequence:

The TPS/spectral branch cannot spend `PD.70` or `SG.4B` by saying the
extraction is formal. It must carry the good-family hypotheses, residual
pairwise closure, spectral/bundle-angle observability, local-window theorem,
overlap/gluing theorem, and comparison-to-top projector theorem.

Edited live theorem notes:

- `theorem-construction/tps-pair-defect-pde-packet.md`;
- `theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md`;
- `theorem-construction/spectral-transversality-in-measure-implies-pd70.md`.

## TPS Selector-Observability Conditionality Repair

Old loose wording:

- `tps-selector-observability-to-sg4-bridge-proof-attempt.md` called the
  simple-top angle reduction "already formal," said the downstream passage to
  `PD.70` / `SG.4B` was "formal by `(ST.7)`," named an "exact formal route,"
  and said the Hodge split/final summation were formal once `(E.8)`-`(E.10)`
  were available.

Exact replacement:

The note now calls `D.7g` a conditional reduction, says the downstream passage
is conditional on `(ST.7)` and the installed pair-defect packet, removes
"formal" from the exact Cauchy--Green route, and states that the Hodge split
and final summation are algebraic consequences only once `(E.8)`-`(E.10)` are
available. The selector-strain compatibility estimate `(D.7ma5)` is explicitly
an additional theorem and does not follow from Cauchy--Green construction
alone.

Downstream consequence:

The selector-observability route cannot spend angle reduction, ST.7, the
Cauchy--Green gap route, or Hodge summation unless the displayed hypotheses are
present: `(ST.7)`, the pair-defect packet, the reference simple-top gap plus
Cauchy--Green persistence, and `(E.8)`-`(E.10)`.

Edited live theorem note:

- `theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md`.

## Source-Pulse Tower Anchoring Repair

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` repeated an
  explanation-only source-pulse CM-exit proof sketch in which retained Field
  was said to give a ball where the velocity had size \(M/2\), and then used
  energy to bound the base rung. The sentence hid the actual hypothesis:
  a Field oscillation/coherence modulus on a fixed positive cover ball. It also
  compressed the higher-rung argument into "finite-difference gives derivative"
  without stating the finite-order anchoring mechanism.
- `theorem-construction/mcp-sourcepulsecmexit-a-explanation-only-read-mbr-e-463b9bda50.md`
  carried the same source argument in theorem-note form.
- Current authority summaries said `SourcePulseCMExit.A` was locally discharged
  by "retained-Field tower anchoring" without saying what anchoring was being
  spent.

Exact replacement:

On a retained cover ball \(B(c(t),r)\), the repaired argument defines
\[
  \Omega_q(r/2,t)=
  \sup_{x,y\in B(c(t),r/2)}|U_q(x,t)-U_q(y,t)|.
\]
For the base rung, if \(x_0\in B(c(t),r/4)\) and \(M=|u(x_0,t)|\), then
\[
  M
  \le
  \Omega_0(r/2,t)
  + |B(c(t),r/2)|^{-1/2}
    \|u(\cdot,t)\|_{L^2(B(c(t),r/2))}.
\]
This follows by comparing \(u(x_0,t)\) to \(u(y,t)\) for
\(y\in B(c(t),r/2)\) and integrating in \(y\). Energy bounds the local \(L^2\)
term, and retained Field bounds \(\Omega_0\).

For \(k\ge1\), the replacement spends the finite-order anchoring inequality
\[
  \|U_k(\cdot,t)\|_{L^\infty(B(c(t),r/4))}
  \le
  C_{k,r}\left(
    \|u(\cdot,t)\|_{L^2(B(c(t),r/2))}
    +\sum_{q=0}^{k}r^q\Omega_q(r/2,t)
  \right),
\]
using \(U_q=\nabla^q u\) on the same retained field window. Force rungs are not
obtained from velocity oscillation; retained Part supplies the
pressure-viscosity carrier envelope, and escape of that envelope is a Part-face
failure rather than a retained Pack+Part+Field branch.

Downstream consequence:

`SourcePulseCMExit.A` may still be read as locally discharged on the retained
Pack+Part+Field source-pulse branch, but the discharge now spends the exact
oscillation/local-energy/finite-order anchoring package above plus the retained
Part envelope. It no longer spends an implicit linear-profile or generic
"Field coherence" shortcut.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-sourcepulsecmexit-a-explanation-only-read-mbr-e-463b9bda50.md`;
- `live-theorem-edge.yaml`;
- `source-frontier.yaml`;
- `submission-bundle/source-frontier.yaml`;
- `theorem-packet.yaml`;
- `theorem-repair.yaml`;
- `submission-verdict.yaml`;
- `submission-bundle/submission-verdict.yaml`.

## Reader-Appendix Formal-Language Downstream Repair

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` still carried copied TPS
  and transported-center prose that said reductions were "formal," "purely
  formal," or "formal consequences" even after the theorem notes had been
  repaired. In the reader-facing appendix those words could still be spent as
  proof force.
- `transported-phase-space-selector-theorem-candidate.md` said the `SG.4B`
  extraction was "already formal."
- `mpp-class-membership-endpoint-exclusion-note.md`,
  `mcp-terminal-source-estimates-closure-audit-ep-a-b34e8fb1f2.md`,
  `utkd-to-ne-reduction-lemma.md`, and `sg4-and-br-lambda2-handoff.md` carried
  the same failure type in theorem-note form.

Exact replacement:

- The TPS shadow-barrier appendix copy is now a conditional reduction packet:
  it records only the exact conditional implications needed by the coarse
  barrier, SG bridge factorization, and weak averaged shadow-time packet.
- The strong-bridge appendix copy now says the lemma is algebraic under the
  displayed transported-bundle and coarse/true-strip hypotheses; those
  hypotheses still have to be realized from the Navier-Stokes selector packets.
- The simple-top exact-potential passage now says the installed reductions leave
  a concrete observability target, and that the reduction spends the displayed
  spectral-floor and bundle-angle hypotheses rather than proving observability.
- The transported-center passage now says the moving cutoff, pressure-response,
  and residual-forcing cells are conditional consequences after stronger
  pointwise-in-time tower-carrier control.
- Endpoint/dead-participation prose now refers to displayed implications, not
  formal consequences.
- The terminal-source estimate note now says the implication chain is
  conditional on the listed source estimates, which remain unproved from the
  current canonical surfaces.
- The UTKD-to-NE surfaces now say `(NE)` remains the first genuinely new theorem
  after the displayed algebraic reductions.
- The SG.4 handoff now says the downstream extraction is the `SG.4B` algebraic
  handoff under the residual pairwise closure hypotheses.
- The cycle-exact, HWY, lifted-packet, UTKD, ontic-lift, Mellin-residue,
  ACT.KX audit, and Clay-promotion notes now say conditional implication,
  algebraic reduction, displayed reduction, recorded handoff, or endpoint
  certificate map instead of "formalized," "formal reduction," or "formal map."

Downstream consequence:

TPS/SG.4/DTC/source-estimate/UTKD authority can no longer spend the word
"formal" as theorem payment. Each repaired passage names either the exact
conditional implication, the algebraic handoff, or the remaining theorem
hypotheses.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/transported-phase-space-selector-theorem-candidate.md`;
- `theorem-construction/mpp-class-membership-endpoint-exclusion-note.md`;
- `theorem-construction/mcp-terminal-source-estimates-closure-audit-ep-a-b34e8fb1f2.md`;
- `theorem-construction/utkd-to-ne-reduction-lemma.md`;
- `theorem-construction/sg4-and-br-lambda2-handoff.md`.
- `theorem-construction/cycle-exact-angular-observability-packet.md`;
- `theorem-construction/cycle-exact-projective-synchronization-packet.md`;
- `theorem-construction/hwy-instability-attack-packet.md`;
- `theorem-construction/mcp-ordered-sg4-tps-completion-queue-pass-ep-a-43ef6d950d.md`;
- `theorem-construction/lifted-packet-three-piece-closure-program.md`;
- `theorem-construction/utkd-proof-attempt-audit.md`;
- `theorem-construction/ontic-projected-flow-exact-lift-package.md`;
- `theorem-construction/mpp-gold-mellin-stress-flux-residue-test-20260617.md`;
- `theorem-construction/lagrangian-six-lemma-mainline.md`;
- `theorem-construction/mpp-act-kx-hidden-spending-audit-note.md`;
- `theorem-construction/clay-closure-promotion-map.md`.

## Pack/Part/Field Truth-Table Row Repair

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` and
  `mpp-pack-part-field-ontological-collapse-question-20260517.md` still called
  Pack-only / Part-only / Field-only alternatives "formal rows" or "formal
  table bookkeeping." That wording left the generated truth table sounding like
  a proof object.
- The retained-Field collapse paragraph called
  `Pack_Q + Part_{N,Q} + receiver escape => not Field_{N,r,Q}` "weak/formal
  branch bookkeeping," instead of naming the exact branch-local role it plays.

Exact replacement:

The repaired passages distinguish truth-table bookkeeping from terminal
ontology. A Pack-only, Part-only, or Field-only row is only a candidate row in
the Boolean witness table. It is not evidence and cannot become an endpoint
story until a theorem supplies a terminal scenario realizing it.

The retained-Field implication is now described as conditional face
bookkeeping: Pack and Part are retained as licenses, so the first unspent CM
face is Field. That implication does not make `Pack, Part, not-Field` a
surviving terminal ontology row; the terminal same-fluid ontology still
collapses a realized coherence break to the appropriate overlapping endpoint
readout unless a separate theorem proves a genuine exception.

Downstream consequence:

Pack/Part/Field endpoint surfaces may still use the Boolean table for
case-bookkeeping, but they cannot spend a table row as an ontological scenario.
Every row now requires an endpoint cause and a realization theorem before it
has proof force.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mpp-pack-part-field-ontological-collapse-question-20260517.md`.

## Live Manuscript Standard-Step Repair

Old loose step:

- `submission-bundle/source-field-reader-appendix.tex` said that the local
  carrier theory follows the "familiar semigroup pattern." That phrase was
  doing proof work: it bridged from the carrier hypotheses to local existence
  and continuation without naming the fixed-point map, constants, contraction
  hypothesis, or relaunch criterion.
- The same appendix said that "familiar Navier--Stokes facts" supply the
  realized carrier inputs. That left the reader to infer which classical facts
  were actually being imported.
- `submission-bundle/navier-stokes-submission.tex` said that a branch can
  explain which requirement a "familiar mechanism" attacks. The proof role is
  not familiarity; it is same-terminal-record entry through a proved Pack,
  Part, Field, or continuation readout outcome.

Exact replacement:

The appendix now states the mild fixed-point map
\[
  \Phi_X(t)
  =
  e^{-tA_D}X_0
  +\int_0^t e^{-(t-\tau)A_D}
    \bigl(R_DX(\tau)-P_DN_D(X(\tau))\bigr)\,d\tau ,
\]
then names the hypotheses spent: analytic semigroup bounds for \(A_D\),
boundedness of \(R_D\), and a finite local Lipschitz constant \(L_M\) for
\(P_DN_D\) on the \(C([0,T];H_D^1)\) ball of radius \(M\). Choosing
\(T=T(M,A_D,R_D,L_M)\) small gives the contraction; retention in
\(\mathcal R\) follows because each term is projected to \(\mathcal R\); and
continuation is exactly the relaunch criterion under
\(\sup_{t<t_*}\|X(t)\|_{H_D^1}<\infty\).

The realized-carrier paragraph now lists the actual imported classical inputs:
the Fourier-multiplier Stokes semigroup, the displayed
\(H^1_\sigma\times H^1_\sigma\to H^{-1}_\sigma\) bilinear bound, Leray
projection commutation on the divergence-free sector, pressure Poisson
recovery with the declared normalization, and the compactness hypothesis stated
below.

The main proof branch proposition now states that a branch family has proof
force only after it names the terminal record and proves which requirement is
lost or which continuation readout survives for that same record.

Downstream consequence:

Later carrier, branch-coverage, and source-field reader passages may cite the
local carrier theory only through the displayed fixed-point hypotheses and
relaunch criterion. Branch-family prose may not spend a mechanism label, route
name, or familiar source as proof force unless the same terminal record and the
proved Pack/Part/Field/readout outcome are named.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `submission-bundle/navier-stokes-submission.tex`.

## Active Theorem-Note Standard-Step And Commutator Repair

Old loose step:

- `h2-standalone-half-derivative-bound.md` and the mirrored reader-appendix
  subsection said the fractional transport part cancels after a commutator
  rewrite and left only the vortex-stretching channel. At the
  \(\dot H^{1/2}\) level that is not exact: the advective term cancels only
  after a transport commutator has been split off.
- `exact-dyadic-interaction-decomposition.md` and its reader-appendix mirror
  equated the stretching shell pairing with the transport commutator. That
  conflated two different channels in the vorticity shell identity.
- `signed-weighted-lifted-remainder-theorem-attempt.md` and its appendix mirror
  used "standard paracommutator expansion" and "lower order collar terms"
  where the sign obstruction depends on the exact principal term and on the
  status of the remainder.
- `mcp-residualpair-a-conditional-decomposition-20260504.md`,
  `mpp-transported-partition-lp-commutator-hhalf-20260528.md`,
  `mpp-torus-global-material-atlas-terminal-capture-20260526.md`, and
  `mcp-zenosquarepulserigidity-a-conditional-reduction-source-wall-root-after-reconcile-2e3abf5731.md`
  used "standard," "usual," or "familiar" summary phrases at proof-entry
  points.

Exact replacement:

The half-derivative identity now reads
\[
  \frac12\frac{d}{dt}E_{1/2}(t)
  +\nu\|\omega(t)\|_{\dot H^{3/2}}^2
  =
  \mathcal S_{1/2}(t)-\mathcal T_{1/2}(t),
\]
where \(\mathcal S_{1/2}\) is the stretching pairing and
\[
  \mathcal T_{1/2}(t)
  =
  \langle[\Lambda^{1/2},u\cdot\nabla]\omega,\Lambda^{1/2}\omega\rangle .
\]
The exact transport calculation is displayed, and the target estimate is now a
bound for \(\mathcal S_{1/2}-\mathcal T_{1/2}\), not for stretching alone.

The dyadic shell identity now separates
\[
  S_j=\langle\Delta_j(\omega\cdot\nabla u),\Delta_j\omega\rangle,\qquad
  T_j=\langle[\Delta_j,u\cdot\nabla]\omega,\Delta_j\omega\rangle,
\]
and records the exact shell energy equation
\[
  \frac12\frac{d}{dt}\|\Delta_j\omega\|_2^2
  +\nu\|\nabla\Delta_j\omega\|_2^2
  =
  S_j-T_j.
\]
Transport cancellation leaves \(T_j\); it does not identify \(S_j\) with \(T_j\).

The lifted-remainder note now states the Coifman--Meyer commutator expansion
with an explicit fixed-collar remainder
\[
  [\Delta_j,a_k\cdot\nabla]\Delta_\ell u
  =
  2^{-j}\mathcal C_j(\nabla a_k,\nabla\Delta_\ell u)
  +\mathcal E_{j,k,\ell},
\]
with
\[
  \|\mathcal E_{j,k,\ell}\|_2
  \le
  C_{\rm col}2^{-j}\|\nabla a_k\|_{L^\infty}
  \|\nabla\Delta_\ell u\|_2.
\]

The residual-pair, transported-partition, torus-atlas, and Zeno notes now name
their exact displayed estimates, terminal records, packet-test-density inputs,
or remaining class-production atom instead of using standard/familiar wording
as proof authority.

Downstream consequence:

Any half-derivative closure or dyadic coercive deficit now has to control the
combined stretching-minus-transport-commutator expression. A route that
suppresses only vortex stretching no longer pays the H2 burden unless it also
controls the fractional transport commutator at the same coercive scale.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/h2-standalone-half-derivative-bound.md`;
- `theorem-construction/exact-dyadic-interaction-decomposition.md`;
- `theorem-construction/signed-weighted-lifted-remainder-theorem-attempt.md`;
- `theorem-construction/mcp-residualpair-a-conditional-decomposition-20260504.md`;
- `theorem-construction/mpp-transported-partition-lp-commutator-hhalf-20260528.md`;
- `theorem-construction/mpp-torus-global-material-atlas-terminal-capture-20260526.md`;
- `theorem-construction/mcp-zenosquarepulserigidity-a-conditional-reduction-source-wall-root-after-reconcile-2e3abf5731.md`.

## Carrier And Compactness Standard-Step Repair

Old loose step:

- `d1-projected-nc-flow-well-posedness.md` spent "standard semilinear
  theory," "standard operator package," "standard semilinear continuation," and
  "standard Picard iteration" to move from operator hypotheses to local
  existence, uniqueness, and continuation.
- `d8b-global-projected-wellposedness-decay.md` said bounded approximants give
  weak or weak-* compactness "in the standard spaces," without naming the
  topologies used to pass the projected equation to the limit.
- `regularity-upgrade-schemas.md` used "standard vorticity and continuation
  formulas" and "standard embedding" at the bridge from a critical input to
  BKM-type continuation.
- `mixed-jet-generating-field-hs-energy.md` summarized its result as the
  "standard" or "usual" \(H^s\) energy law, despite having the actual
  inequality displayed as `(8)`.
- `mpp-retained-carrier-no-defect-participation-direct-attempt-20260609.md`
  said the retained compactness attempt has "usual weak compactness and
  low-mode compactness."

Exact replacement:

The D.1 note now gives the spectral-theorem semigroup representation
\[
  e^{-tA_D}=\int_{[0,\infty)}e^{-t\lambda}\,dE_\lambda
\]
and uses the explicit fixed-point map
\[
  (\Phi X)(t)=e^{-tA_D}X_0-\int_0^t e^{-(t-s)A_D}B_D(X(s))\,ds .
\]
It names the needed local Lipschitz constant \(L_M\), the small-time
contraction condition \(CTL_M<1\), and the bounded-norm relaunch criterion.
The non-Sobolev closure now states the two Picard estimates required on
`C([0,T];\mathcal N)`: self-map and contraction.

The D.8b note now states the exact compactness:
\[
  X_n\rightharpoonup X\text{ in }L^2(0,T;\mathcal N),\qquad
  X_n\overset{*}{\rightharpoonup}X\text{ in }L^\infty(0,T;H),
\]
with strong \(L^2(0,T;H)\) convergence reserved for the nonlinear term.

The regularity-upgrade note now names the vorticity equation, enstrophy
inequality, continuation criterion, and the embedding
\[
  \|f\|_{L^\infty}\le C\|f\|_{B^0_{\infty,1}}.
\]

The mixed-jet note now points to the displayed \(H^s\) inequality `(8)` instead
of spending "standard" or "usual" as proof force. The retained-carrier attempt
now states weak compactness in \(L^2_tH^1_x\), weak-* compactness in
\(L^\infty_tL^2_x\), and low-frequency strong compactness in \(L^2_{t,x}\) by
Aubin--Lions from the negative-norm time-derivative bound.

Downstream consequence:

Carrier-local existence, projected global passage to the limit, mixed-jet
energy, and retained-carrier compactness may be cited only through these named
maps, estimates, and topologies. A later route sentence cannot use "standard
semilinear theory," "usual compactness," or "usual \(H^s\) law" as a proof
payment.

Edited live surfaces:

- `theorem-construction/d1-projected-nc-flow-well-posedness.md`;
- `theorem-construction/d8b-global-projected-wellposedness-decay.md`;
- `theorem-construction/regularity-upgrade-schemas.md`;
- `theorem-construction/mixed-jet-generating-field-hs-energy.md`;
- `theorem-construction/mpp-retained-carrier-no-defect-participation-direct-attempt-20260609.md`.

## Continuation, Readout, And Product-Estimate Standard-Step Repair

Old loose step:

- `mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md` said
  `CM_{N,r_N,Q}` supplies the "usual local continuation norm."
- `active-readout-subordination-to-persistent-carrier-core-result.md` invoked
  "usual finite-template bounds" before a tail estimate.
- `external-classical-validation-note.md` used "standard" analytic
  unique-continuation wording around the open-set rigidity import.
- `frame-recovery-wall-theorem-candidate-note.md` called the product tool the
  "usual" Moser/Kato--Ponce tame estimate.
- `mcp-pack-ttu-energy-enstrophy-strain-test.md` said the BKM-type route needs
  the "usual logarithmic high-norm accompaniment."

Exact replacement:

The member-smooth bridge now identifies the displayed \(H^s\), \(s>5/2\),
continuation bound as the actual norm being supplied. The active-readout note
now states the finite-template hypotheses: uniform \(W^{1,\infty}\) multiplier
norms and bounded finite overlap, combined with the displayed kernel estimate.
The external validation note now names positive-time spatial analyticity plus
the analytic identity theorem on a connected time slice. The frame-recovery
wall now points to the displayed Moser/Kato--Ponce estimate `(13m)`. The
Pack.TTU strain test now states an example continuation-grade logarithmic
strain estimate,
\[
  \|\nabla u(t)\|_{L^\infty}
  \le
  C_s\bigl(1+\|\omega(t)\|_{L^\infty}
  +\log(e+\|u(t)\|_{H^s})\bigr),
\]
together with a same-solution \(H^s\) ledger or an equivalent continuation
ledger.

Downstream consequence:

Continuation, finite-template readout, analytic rigidity, nonlinear product
expansion, and Pack.TTU BKM-style routes now have to cite the displayed norm,
template hypotheses, identity theorem, product inequality, or logarithmic
strain-plus-\(H^s\) ledger. They no longer get proof force from "usual" or
"standard" continuity language.

Edited live surfaces:

- `theorem-construction/mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md`;
- `theorem-construction/active-readout-subordination-to-persistent-carrier-core-result.md`;
- `theorem-construction/external-classical-validation-note.md`;
- `theorem-construction/frame-recovery-wall-theorem-candidate-note.md`;
- `theorem-construction/mcp-pack-ttu-energy-enstrophy-strain-test.md`.

## Energy-Flux, Transport-Commutator, And Pressure-Work Repair

Old loose step:

- `moving-spill-fixed-offset-reduction-lemma.md` invoked a "standard coarse
  energy-flux identity" before the moving-spill edge reduction.
- `shadow-error-gronwall-continuation-criterion.md` used "standard transport
  commutator estimate" as the proof bridge to Gronwall.
- `mpp-flow-map-and-tower-continuation-note.md` used "standard commutator
  estimate" before the \(H^s\) tower inequality.
- `hfg-alt-all-scale-transfer-loss-no-free-gap.md` used "usual
  commutator/paraproduct localization" before the low-high shell bound.
- `mpp-ancient-nopulse-extraction-bridge-attempt-note.md` used "standard
  scale-critical compactness" for the ancient extraction step.
- `mpp-pressure-time-spread-elliptic-time-smearing-direct-attempt-20260517.md`
  used "standard pressure-work integrability" in the local-energy time test.

Exact replacement:

The moving-spill note now writes the commutator-stress identity with
\[
  \tau_\ell(b_{\ell,m},u)=(b_{\ell,m}u)_{\le\ell}-b_{\ell,m}u_{\le\ell},
\]
so the edge packet reduction spends the displayed flux identity, not a named
standard estimate.

The shadow-error and Sobolev-tower notes now display the commutator split
\[
  \langle\Lambda^\sigma((u\cdot\nabla)u),\Lambda^\sigma u\rangle
  =
  \langle[\Lambda^\sigma,u\cdot\nabla]u,\Lambda^\sigma u\rangle
  +\langle u\cdot\nabla\Lambda^\sigma u,\Lambda^\sigma u\rangle,
\]
with the last term zero by incompressibility, and then cite the Kato--Ponce
bound that gives the displayed Gronwall coefficient.

The HFG note now names the low-high paraproduct estimate directly:
\[
  |\langle \Delta_j((S_{j-1}\omega)\cdot\nabla S_{j-1}u),
  \Delta_j\omega\rangle|
  \le
  C\|\nabla S_{j-1}u\|_\infty\|\Delta_j\omega\|_2^2 .
\]

The ancient no-pulse note now states the compactness inputs on fixed backward
cylinders: \(L^\infty_sL^2_y\cap L^2_sH^1_y\) velocity bounds,
\(L^{3/2}\) pressure bounds, and a negative-Sobolev time-derivative bound for
Aubin--Lions. The pressure-time-spread note now identifies the local-energy
pressure term as the cutoff-paired integral \(\iint p\,u\cdot\nabla\phi\).

Downstream consequence:

Moving-spill, shadow-error, Sobolev-tower, high-frequency-gap, ancient
compactness, and pressure-time-spread arguments can no longer spend
"standard/usual" labels as proof payments. They must cite the exact displayed
commutator, flux, compactness, or pressure-work object and the remaining
burden attached to it.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/moving-spill-fixed-offset-reduction-lemma.md`;
- `theorem-construction/shadow-error-gronwall-continuation-criterion.md`;
- `theorem-construction/mpp-flow-map-and-tower-continuation-note.md`;
- `theorem-construction/hfg-alt-all-scale-transfer-loss-no-free-gap.md`;
- `theorem-construction/mpp-ancient-nopulse-extraction-bridge-attempt-note.md`;
- `theorem-construction/mpp-pressure-time-spread-elliptic-time-smearing-direct-attempt-20260517.md`.

## Same-Order Language Disambiguation Repair

Old loose step:

Several live theorem notes used "same-order" near derivative-tower and pressure
recovery arguments. In context the intended meaning was same derivative depth or
same parabolic order, but the phrase could be read as the forbidden loose
same-size / same-scale estimate pattern.

Exact replacement:

The affected notes now say "same-derivative-depth" or
"same-derivative-order" where that is the actual mathematical meaning. The
pressure-recovery note also states that the loss is measured against the
natural Dirichlet control for \(U_\alpha\), not by a scale-size comparison.

Downstream consequence:

Derivative-tower and pressure-recovery notes now distinguish exact derivative
depth/order bookkeeping from scale-size estimates. No remaining live
theorem-construction hit for `same-order` remains outside audit/ledger residue
after this pass.

Edited live surfaces:

- `theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md`;
- `theorem-construction/time-order-cross-balance-note.md`;
- `theorem-construction/clay-target-route-reduction-note.md`;
- `theorem-construction/tower-to-shuffle-to-deformation-endgame-program.md`;
- `theorem-construction/parabolic-order-recursion-note.md`.

## Remaining Primary-Surface Residue Classification

After the TPS/spectral/selector repairs, the focused primary-surface scan still
returns four text hits. None is a remaining proof-force hand-wave.

- `mpp-r3-tail-hs-duhamel-source-reduction-20260607.md` contains the phrase
  "\(H^s\) profile assumption is spent" only in the negative sentence "No
  scale-profile or compact-core \(H^s\) profile assumption is spent." This is an
  exact non-use statement, not a live profile assumption.
- `mpp-zero-moment-reserve-visibility-direct-attempt-20260525.md` uses
  "same-scale packets" to name the signed positive/negative packet split
  \(J=J_+-J_-\) at the first-created terminal scale. This is a packet
  construction at a shared scale, not a "same order" estimate.
- `tps-coarse-flow-pair-gap-theorem-candidate.md` and
  `tps-strong-bridge-sg-lemma-family.md` contain `formal` only inside the
  historical filename `tps-shadow-barrier-formal-closure-packet.md`. The target
  file's content has been reworked as a conditional reduction packet.

## Edited Or Preserved Residues

Edited: live theorem/proof/manuscript surfaces whose route statements or
estimates depended on the exactness failures above.

Intentionally preserved: source transcripts, sample PDFs, generated MCP notes,
older paper-arc production packets, quarantine ledgers, and audit JSON/MD files.
Those surfaces may preserve old language as evidence or historical output, but
they are not proof authority and are not allowed to discharge a live theorem.

Still mathematically open: prove `FCC.C1a` directly or prove a domination theorem
that derives the weighted cutoff-defect integrability from already-admitted
packet/collar data.

## Standard-Estimate Proof-Force Repair II

Old loose step:

Several remaining live theorem-construction notes spent "standard" or
"comparable up to constants" language at the point where the argument needed a
specific inequality, kernel hypothesis, interpolation fact, compactness
refinement, symbolic commutator expansion, packet absorption step, or first-exit
lemma.

Exact replacement:

- `mpp-derivative-tower-cone-closure-race-attempt-20260611.md` now identifies
  the differentiated Navier--Stokes source term
  `-\sum_{0<\beta\le\alpha} binom(alpha,beta)
  (partial^beta u) . grad partial^{alpha-beta}u` as the tower source, and says
  the missing finite budget is control of those displayed source terms.
- `transported-phase-space-selector-theorem-candidate.md` now states the exact
  off-diagonal packet-kernel input needed to turn pair separation `R_J` into the
  bound `C_N R_J^{-N}`.
- `h1-carrier-leakage-direct-completion.md` now proves the interpolation
  absorption from spectral calculus, Young's inequality, fixed carrier graph
  norm equivalence, and the projected Poincare/coercivity hypothesis.
- `one-sided-dissipation-square-theorem.md` now defines `B_N^sigma(t)` and
  gives the two-sided pointwise comparison constants `c_sigma,C_sigma` instead
  of the phrase "comparable up to constants."
- `mpp-lci-a-retained-window-small-budget-scheduler-audit-note.md` now replaces
  "standard finite refinement" with the finite subcover, finite overlap number,
  and finite adjacency-chain constant actually used.
- `shadow-remainder-forced-hs-estimate.md` now cites the displayed forced
  `H^s` inequality `(10)` rather than a "standard forced" inequality.
- `weighted-exact-projection-commutator-theorem-candidate.md` now spells out
  the first pseudodifferential commutator symbol and the `S^{-2}_{1,0}`
  remainder condition.
- `mpp-full-coefficient-good-packet-stop-attempt-20260506.md` now writes the
  packet-norm Duhamel absorption inequality and the Schur-test condition for
  the tube Gram matrix.
- `mpp-effective-viscous-packet-antidegeneration-expansion-20260506.md` now
  names the scalar `ACT.FirstExitAbsorb` lemma required by the ACT ledger.

Downstream consequence:

The affected routes no longer discharge their local proof steps by the word
"standard." They either point to a displayed estimate/proof, a stated kernel or
symbol hypothesis, a finite compactness construction, or a named scalar lemma
whose proof remains part of the ACT package. In particular, `ACT.KX` is still
conditional on `ACT.FirstExitAbsorb`; this is a mathematical dependency, not a
completion claim.

Edited live surfaces:

- `theorem-construction/mpp-derivative-tower-cone-closure-race-attempt-20260611.md`;
- `theorem-construction/transported-phase-space-selector-theorem-candidate.md`;
- `theorem-construction/h1-carrier-leakage-direct-completion.md`;
- `theorem-construction/one-sided-dissipation-square-theorem.md`;
- `theorem-construction/mpp-lci-a-retained-window-small-budget-scheduler-audit-note.md`;
- `theorem-construction/shadow-remainder-forced-hs-estimate.md`;
- `theorem-construction/weighted-exact-projection-commutator-theorem-candidate.md`;
- `theorem-construction/mpp-full-coefficient-good-packet-stop-attempt-20260506.md`;
- `theorem-construction/mpp-effective-viscous-packet-antidegeneration-expansion-20260506.md`.

## Lower-Order, Compactness, And Continuation Shortcut Repair

Old loose step:

Several live theorem-construction notes still used "lower order," "standard
extraction," "standard route," or "standard continuation" at proof-force points
where the route needed an explicit remainder bound, compactness input, finite
cover argument, continuation inequality, or absorption estimate.

Exact replacement:

- `d6-global-carrier-a-priori-bound.md` now writes the nonlinear vorticity
  decomposition as `Omega_D N_D(X)=nabla_D(X . nabla_D X)+R_N(X)` and states
  the required pairing bound on `R_N`.
- `d4-shadow-continuation-theorem.md` now states the commuted coercivity,
  drift, nonlinear Young-margin, derivative-commutator absorption, and pressure
  Poisson recovery formulas used in the continuation/readout step.
- `shadow-remainder-hs-forcing-estimate.md` now describes the weaker shadow
  branch as the forced `H^s` continuation problem governed by its displayed
  proposition.
- `d3-commutative-shadow-theorem.md` now names the displayed differential
  inequality and the `epsilon D_cl + C_epsilon Q_cl` commutator absorption
  supplied by the commutator estimate instead of calling the step standard.
- `mpp-terminal-bad-scale-extraction-compactness-20260505.md` now removes the
  "standard compactness" wording and adds the negative-Sobolev time-derivative
  bound used for Aubin--Lions extraction.
- `mpp-parabolic-source-current-route-note-20260505.md` now refers to explicit
  source-route ingredients for `LocalizedSkewCurrent.A`.
- `mcp-periodic-continuation-readout-standard.md` now identifies itself as the
  displayed periodic continuation lemma.
- `mpp-pctp-noescape-scheduler-pde-export-closure-note.md` now spells out the
  finite shrinking / bounded-overlap step.
- `mpp-six-positive-contrapositive-chunks-completion-20260506.md` now refers to
  the displayed gradient-control route.
- `mpp-temporal-nonatomic-scf-carrier-audit-20260505.md` now states the
  sufficient superlinear temporal marginal theorem without the "standard"
  shortcut.
- `mcp-anisotropic-stokes-carleman-finite-slab-attempt-20260505.md` now gives
  the order-zero multiplier absorption inequality and corrects the principal
  operator from `u nabla` to `nu nabla`.

Downstream consequence:

The affected surfaces now expose the exact local dependency: a stated remainder
pairing bound, commuted coercivity estimate, forced `H^s` inequality,
Aubin--Lions compactness input, finite-overlap construction, displayed
gradient-control route, or finite-slab Carleman absorption. No downstream route
may spend these lines as a generic "lower order" or "standard" proof payment.

Edited live surfaces:

- `theorem-construction/d6-global-carrier-a-priori-bound.md`;
- `theorem-construction/d4-shadow-continuation-theorem.md`;
- `theorem-construction/shadow-remainder-hs-forcing-estimate.md`;
- `theorem-construction/d3-commutative-shadow-theorem.md`;
- `theorem-construction/mpp-terminal-bad-scale-extraction-compactness-20260505.md`;
- `theorem-construction/mpp-parabolic-source-current-route-note-20260505.md`;
- `theorem-construction/mcp-periodic-continuation-readout-standard.md`;
- `theorem-construction/mpp-pctp-noescape-scheduler-pde-export-closure-note.md`;
- `theorem-construction/mpp-six-positive-contrapositive-chunks-completion-20260506.md`;
- `theorem-construction/mpp-temporal-nonatomic-scf-carrier-audit-20260505.md`;
- `theorem-construction/mcp-anisotropic-stokes-carleman-finite-slab-attempt-20260505.md`.

## Residual Standard/Immediate Vocabulary And Mechanism Repair

Old loose step:

The narrowed non-`lower-order` scan still found live uses of "standard,"
"immediate," and adjacent shortcut language. Most were vocabulary residues, but
two carried mechanism risk: interpolation in the jump-average no-escape note
and pressure operator control in the FIRP retry.

Exact replacement:

- Manuscript/support notes now say named/displayed/classical lemmas, criteria,
  surfaces, or routes instead of "standard" or "immediate" where no proof
  mechanism was intended.
- `mpp-jump-avg-branch-native-noescape-hard-wall-note.md` now says the displayed
  scale-critical interpolation still leaves a local-energy or sup-time channel,
  which requires a same-schedule zero-mode/affine residual theorem.
- `mcp-firp-a0-retry-via-weighted-shell-response-obstruction-ffsrc-a-868127128b.md`
  now identifies the relevant pressure control as fixed-time
  Calderon--Zygmund/Schauder boundedness, and states why that does not create
  terminal time integrability.
- Rigid-class and source-wall notes now avoid treating "standard class" as an
  authority label; they state whether the needed rigid class is actually
  produced.

Downstream consequence:

The remaining non-`lower-order` shortcut hits from the focused scan no longer
appear as proof payments on live theorem-construction text. The pressure and
interpolation surfaces now expose their exact missing channels.

Edited live surfaces:

- `theorem-construction/mcp-uniform-local-hs-bootstrap-from-whole-space-shell-tail-control-f79eac12d9.md`;
- `theorem-construction/mcp-manuscript-smallest-standard-lemma-sequence.md`;
- `theorem-construction/mcp-manuscript-consistency-audit-four-lemma-spine.md`;
- `theorem-construction/mpp-forward-gold-weighted-skew-to-terminal-signed-saturation-20260618.md`;
- `theorem-construction/frozen-exceptional-set-measure-localization.md`;
- `theorem-construction/mixed-enstrophy-gradient-channel-result.md`;
- `theorem-construction/mpp-open-dead-patch-rigidity-theorem.md`;
- `theorem-construction/mpp-jump-avg-branch-native-noescape-hard-wall-note.md`;
- `theorem-construction/phi-s-osgood-subcriticality-test-result.md`;
- `theorem-construction/mpp-zeno-rigid-class-next-attempt-20260505.md`;
- `theorem-construction/mcp-firp-a0-retry-via-weighted-shell-response-obstruction-ffsrc-a-868127128b.md`;
- `theorem-construction/mpp-five-supplier-parallel-completion-ledger-20260517.md`;
- `theorem-construction/mcp-sourcewallhardobstruction-a-ttu-a-3e6b467cd2.md`;
- `theorem-construction/mpp-independent-math-verification-audit.md`.

## D.2 Lower-Order Energy-Domain Repair

Old loose step:

`d2-global-coercive-energy-estimate.md` used "lower-order on the energy domain"
and "absorb lower-order terms into the constants" inside the central carrier
coercive estimate.

Exact replacement:

The D.2 prose now points to the displayed bounds actually required:

```text
\varepsilon\mathcal D_D(X)+C_\varepsilon\Psi(\mathcal E_D(X)),
```

the commuted version of the same energy-domain bound, the resolvent derivative
gain for carrier leakage, and the growth envelope

```text
E'(t)\le C_0E(t)+C_1E(t)^{3/2}.
```

Downstream consequence:

H.1/D.2 downstream arguments may no longer use "lower-order" as a proof label.
They must cite the displayed energy-domain or commuted energy-domain estimate,
or else leave the carrier leakage / remainder commutator as an open dependency.

Edited live surface:

- `theorem-construction/d2-global-coercive-energy-estimate.md`.

## Readout/Leakage Lower-Order Bound Repair

Old loose step:

Several readout and leakage notes used "lower order" to describe tails,
off-block leakage, frame derivatives, or collar remainders even though the live
argument needs the actual `Phi_*`, `Psi`, Moser, LP-tail, or collar-remainder
bound.

Exact replacement:

- `active-readout-subordination-to-persistent-carrier-core-result.md` now uses
  the displayed `ARS.5` `Phi_*` tail bound.
- `coherent-readout-low-mode-comparison-theorem.md` keeps
  `Psi(E_D(X))` as the residual term to be compared against the Euclidean shell
  barrier.
- `frame-recovery-wall-theorem-candidate-note.md` now states
  `||nabla_x H||_{L^\infty} <= C(K_*+Gamma_{j,sup}^x)` and points to the
  Moser/composition estimates.
- `littlewood-paley-tail-estimate-for-active-readout-result.md` now uses the
  exact tail conditions `(LPT.10)`--`(LPT.11)`.
- `h1-carrier-leakage-direct-completion.md` now lists the exact terms controlled
  by Lemma 3.
- `carrier-coherence-defect-to-low-mode-strain-suppression.md` and
  `carrier-to-classical-low-mode-export-theorem.md` now require the displayed
  readout bound for off-block leakage.
- `noncoherent-low-mode-product-estimate-result.md` now states the
  readout-compatible leakage bound as a condition.
- `persistent-support-transport-export-theorem.md` now states that the collar
  remainder must satisfy the same bridge-surface bound as the displayed
  `R^{collar}` term.

Downstream consequence:

The carrier/readout route can no longer use "lower order" as a free deletion
operator. Each tail or leakage term must be placed into the displayed bound
used by that surface, or the downstream export remains conditional.

Edited live surfaces:

- `theorem-construction/active-readout-subordination-to-persistent-carrier-core-result.md`;
- `theorem-construction/coherent-readout-low-mode-comparison-theorem.md`;
- `theorem-construction/frame-recovery-wall-theorem-candidate-note.md`;
- `theorem-construction/littlewood-paley-tail-estimate-for-active-readout-result.md`;
- `theorem-construction/h1-carrier-leakage-direct-completion.md`;
- `theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md`;
- `theorem-construction/noncoherent-low-mode-product-estimate-result.md`;
- `theorem-construction/persistent-support-transport-export-theorem.md`;
- `theorem-construction/carrier-to-classical-low-mode-export-theorem.md`.

## Exact-Potential Bounded-Coefficient Absorption Repair

Old loose step:

Exact-potential `V2` support notes summarized the fixed-metric Carleman
perturbation step as "bounded lower-order terms absorb directly."

Exact replacement:

The affected notes now state that the terms are bounded first-order and
zeroth-order coefficient packets satisfying `(ELA.2)`, and that absorption is
licensed by the Carleman threshold `(ELA.7)`. The main absorption note now says
the bounded-coefficient contribution in `(ELA.6)` is at most half of the bulk
packet `(ELA.4)` under `(ELA.7)`.

Downstream consequence:

The direct `V2` route may reduce to the fixed-metric Lipschitz Carleman import
only after the coefficient bound `(ELA.2)` and threshold `(ELA.7)` are in force.
It is no longer phrased as generic lower-order absorption.

Edited live surfaces:

- `theorem-construction/exact-potential-v2-import-menu-after-ep11d.md`;
- `theorem-construction/exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md`;
- `theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md`;
- `theorem-construction/exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md`;
- `theorem-construction/exact-potential-v2-fixed-metric-heat-supported-perturbation-remaining.md`;
- `theorem-construction/exact-potential-convex-v2-simultaneous-isotropization-wall.md`;
- `theorem-construction/derivative-lp-compatibility-bridge-note.md`.

## Residual-Symbol Lower-Order Cleanup

Old loose step:

The final focused lower-order proof-phrase scan found remaining live sentences
where "lower order" still named pressure residue, collar residue, weighted
collar residuals, projected-flow remainders, shell-symbol remainders, or
commutator/collar packets without naming the actual residual slot.

Exact replacement:

The affected surfaces now use exact residual language: pressure terms must be
pressure-normalized or bounded by the dissipation/endpoint ledger; additive
remainders are measured in `Phi_*` or `Phi_low`; cutoff loss sums to `o_N(1)`;
weighted collar terms must satisfy the collar residual bound; ontic remainders
must satisfy the energy-domain bound; shell projector errors enter `b_G^{rem}`
only after `(WERS.3a)` is proved; and Osgood/product leftovers are named as
`\mathcal R_s^{res}` or `\mathcal R_{res}`.

Downstream consequence:

These surfaces now expose the exact residual container or estimate required by
the argument. "Lower order" no longer acts as a deletion or proof-force label
on these live proof lines.

Edited live surfaces:

- `theorem-construction/mpp-source-residue-drain-inequality-lemma-b-note-20260504.md`;
- `theorem-construction/phi-low-ledger-propagation-result.md`;
- `theorem-construction/mpp-lci-a-affine-defect-supplier-reduction-note.md`;
- `theorem-construction/coherent-high-collar-coefficient-tail-result.md`;
- `theorem-construction/mcp-residual-weighted-adjres-war-a-20260504-001.md`;
- `theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md`;
- `theorem-construction/weighted-branch-decision-result.md`;
- `theorem-construction/weighted-collar-residual-smallness-result.md`;
- `theorem-construction/weighted-collar-alternative-result.md`;
- `theorem-construction/ym-heat-to-torus-heat-to-classical-shadow-bridge.md`;
- `theorem-construction/ontic-projected-flow-exact-lift-package.md`;
- `theorem-construction/phi-s-osgood-subcriticality-test-result.md`;
- `theorem-construction/amplitude-speed-gate-supplier-rollup-result.md`;
- `theorem-construction/ontic-to-ns-sterile-theorem-map.md`;
- `theorem-construction/low-pass-commutator-collar-closure-result.md`;
- `theorem-construction/final-low-pass-commutator-collar-absorption-theorem.md`;
- `theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md`;
- `theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md`;
- `theorem-construction/lifted-carrier-energy-threshold-uniformization-and-hfg-replay.md`;
- `theorem-construction/weighted-gram-square-obstruction-note.md`;
- `theorem-construction/lagrangian-six-lemma-mainline.md`;
- `theorem-construction/sds-parent-route-triage.md`;
- `theorem-construction/mpp-prd-completion-attempt-20260517.md`.

## Second Downstream Pass: Submission Appendix Mirrors

Old loose step:

After the theorem-construction repairs, `submission-bundle/source-field-reader-appendix.tex`
still mirrored stale lower-order/residual wording from older source notes.

Exact replacement:

The appendix mirrors now use the same exact replacements installed in the live
notes: finite low-shell residuals are included in the selected residual
functional; coherent/noncoherent readout terms must satisfy their displayed
readout-compatible bounds; bounded coefficient terms are absorbed by the
Carleman threshold; order-zero slab multipliers require the finite-slab
threshold; collar commutators are absorbed by the displayed collar-packet bound;
and shell remainders are named residual terms.

Downstream consequence:

The submission-bundle appendix no longer reintroduces the repaired
"lower-order" proof shortcut language. The live manuscript `U/r` hits are
negative exactness statements only: they say the argument is not a linear
profile or `U/r` slope assumption.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

## ASAC Residual-Gate Exactness Repair

Old loose step:

The ASAC / post-ASAC surfaces still allowed the proof to spend phrases such as
"up to lower-order packet and commutator errors", "installed ASAC", and "ASAC
pays" as if the active-alignment and one-sided pair-weight channels were already
discharged.  In the submission appendix this appeared before the displayed
normal-form error budget; in downstream authority surfaces it let
`FrameBVCharge.A`, `NearBandMaterialSourceCharge.A`,
`PositivePairWeightDefectCharge.A`, and `TerminalWeightedNoFreeSink.A` inherit
ASAC as a paid input.

Exact replacement:

The touched surfaces now make `ASAC.A` conditional on the exact residual gate.
The lifted packet reduction is written with a named residual
`Err_{j,k,\ell}^{ASAC}`:

```tex
R_{j,k,\ell}^{lift}
=
2^{2j}\sum_{P\in\mathcal P_j}
\langle S_k(x_P,t)e_P,e_P\rangle |c_P|^2
+Err_{j,k,\ell}^{ASAC},
```

and the proof-spending hypothesis is

```tex
\sum_{j>N}\sum_{k<j-M}
\int_I W_{j,k}^{\sigma}|Err_{j,k,\ell}^{ASAC}(t)|\,dt
\le
\varepsilon\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
```

The theorem-construction source note now phrases the same input as the combined
packet residual estimate
`\sum_{j,k}|Err_{j,k}|\le\varepsilon\sum_{q>N}D_q+o_N(1)`.
Downstream ASAC spending is licensed only after this residual estimate, the
`TPNI.A` no-incoming license, and the anisotropic backward-uniqueness theorem
are installed.

Proof or remaining burden:

This batch does not prove `ASAC.A`.  It converts ASAC from an implicit paid
channel into an exact conditional gate.  The remaining proof burden is the ASAC
residual/no-incoming/backward-uniqueness package, plus the already exposed Zeno
source-residue rigidity branch where the conditional ASAC route hands off.

Downstream consequence:

Authority and packet surfaces no longer say that ASAC unconditionally pays
active-alignment or positive pair-weight pieces.  They state that proved ASAC.A
supplies those pieces only after the packet residual absorbability estimate,
`TPNI.A` no-incoming license, and anisotropic backward-uniqueness input are in
force.  The submission appendix mirrors were repaired so the earlier model
passage no longer hides the residual under "lower-order packet and commutator
errors".

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mpp-active-strain-alignment-cost-target-note-20260504.md`;
- `theorem-construction/mcp-terminalangularmixing-a-alignmentdecorrel-a-asac-a-5b08228909.md`;
- `theorem-construction/mcp-sourceweightedterminalangulardepletion-a-26ce55f7df.md`;
- `theorem-construction/mcp-sourceweightedterminalangulardepletion-onwardbasacnoflux-4076d375f7.md`;
- `theorem-construction/mcp-sourcewallrootdichotomy-a-53f54dbb9e.md`;
- `theorem-construction/mpp-asac-defect-measure-equality-class-production-20260517.md`;
- `theorem-construction/mpp-terminal-weighted-no-free-sink-after-asac-20260506.md`;
- `live-theorem-edge.yaml`;
- `source-frontier.yaml`;
- `submission-bundle/source-frontier.yaml`;
- `theorem-packet.yaml`;
- `submission-bundle/theorem-packet.yaml`;
- `theorem-repair.yaml`;
- `submission-verdict.yaml`;
- `submission-bundle/submission-verdict.yaml`.

Verification:

The targeted ASAC overclaim scan over the edited surface set returns no hits for
`installed ASAC`, `ASAC pays`, `ASAC payment`, `ASAC.A is an installed`, or
`giving ASAC.A`.  YAML authority surfaces parse after the edits, and
`git diff --check` passes on the edited batch.

Remaining mathematical status:

The broader exactness goal remains active.  This batch does not discharge the
ASAC residual/no-incoming/backward-uniqueness package, `FCC.C1a`, the same-tail
`\mathrm{SCF}_{\mathrm{base}}` modulus, or the Clay-finality /
finite-breakdown bridge.

## Same-Tail SCFBase Modulus Downstream Repair

Old loose step:

The averaged route surfaces still compressed the finite-energy-native chain as
though

```text
SCF_base + SGC.A_a.e + ATD_m^epsilon => SCF_avg^m
```

were an installed implication.  The periodic theorem-construction notes then
spent the same compression to remove the `Jump_avg` branch and conclude
`End_NS`, `H^s` continuation, and global periodic smoothness.

Exact replacement:

The exact averaged field-face admission already requires the same-tail local
modulus

```text
SCFBaseLocalModulus_N(T,r):
omega_SCF(rho):=sup_{z in T'} SCF_base(Q_rho^Phi(z)),
lim_{rho downarrow 0} omega_SCF(rho)=0.
```

The repaired implication is therefore

```text
SCF_base + SGC.A_a.e + ATD_m^epsilon + SCFBaseLocalModulus_N
  => SCF_avg^m.
```

Finite depth and readable `SCF_base` components do not by themselves supply this
modulus.  The modulus must be proved from `Field_{N,r,Q}`, built into the Field
face, or carried as an explicit hypothesis.

Proof or remaining burden:

This batch does not prove the same-tail modulus.  It makes the downstream
spend exact.  The exact admission proof remains the already installed
one-way bridge

```text
Field_{N,r,Q} + SCFBaseLocalModulus_N(T,r) => Field_avg(T),
```

so `Jump_avg := not Field_avg` rules out only positive Field scales that carry
the same-tail modulus.  Without that input, `Jump_avg` does not yet give the
unconditional `forall r>0, not Field_{N,r,Q}` face.

Downstream consequence:

`AVG.MAIN.A`, the periodic theorem-construction proof paragraphs, and the
appendix "Whole Proof Skeleton Without Route Jargon" are now conditional on
`SCFBaseLocalModulus_N`.  `READ.COVER` is explicitly downstream of `End_NS_avg`
and cannot be used to supply the upstream same-tail modulus.

Edited live surfaces:

- `live-theorem-edge.yaml`;
- `theorem-construction/mcp-ttu-next-branch-averaged-terminal-tail-route-ffsrc-a-7cad0a4682.md`;
- `theorem-construction/mpp-periodic-main-theorem-manuscript-grade-package.md`;
- `theorem-construction/mpp-periodic-main-self-contained-manuscript-proof.md`;
- `theorem-construction/mpp-readout-endpoint-compatibility-completion-note.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

Second downstream pass:

The named authority mirrors `source-frontier.yaml`,
`submission-bundle/source-frontier.yaml`, `theorem-packet.yaml`,
`submission-bundle/theorem-packet.yaml`, `theorem-repair.yaml`,
`submission-verdict.yaml`, and `submission-bundle/submission-verdict.yaml` were
scanned for the faulty `SCF_base + ... => SCF_avg` spend.  They did not contain
that compressed implication in this batch; their `READ.COVER` and
`Field_{N,r,Q}` hits are downstream readout or CM-face taxonomy, not the
same-tail admission shortcut.

Verification:

Targeted scans were run for the stale `SCF_base + ... => SCF_avg` implication
and for periodic proof paragraphs that remove `Jump_avg` without the
same-tail-modulus hypothesis.  YAML authority parsing and whitespace checks are
run after the patch batch.

Remaining mathematical status:

The broader exactness goal remains active.  The same-tail modulus itself is
still a mathematical input to prove or build into the Field face; it is no
longer hidden inside the averaged route compression.

## Collar Residual Proof-Force Repair

Old loose step:

The appendix used phrases such as "up to admissible collar errors" and "up to
accepted collar errors" while spending the lifted-band mesoscopic and
upper-boundary reductions.  Those phrases left the proof free to discard collar
terms without naming the residual or showing the budget by which it is absorbed.

Exact replacement:

The profile-collar piece is now written as a named residual:

```text
chi_mid W^prof = partial_s Psi^prof + E_collar^prof,
E_collar^prof in A_collar,
int_I |E_collar^prof(t)| dt
  <= eps_prof^res nu int_I D_N(t) dt + C_prof,*^res 2^{-2 delta N}.
```

The upper-boundary packet is now written as the exact finite frozen-edge family
plus residual:

```text
B_N^upper(t)
  = sum_{a in A_ub} c_a Pi_{N,a}^edge(t) + E_N^{ub,collar}(t),
E_N^{ub,collar} in A_collar,
int_I |E_N^{ub,collar}(t)| dt
  <= eps_ub^res nu int_I D_N(t) dt + C_ub,*^res 2^{-2 delta N}.
```

Only after this decomposition and the same-scale edge estimates are supplied
does the upper-boundary carrier estimate follow:

```text
int_I |B_N^upper(t)| dt
  <= eps_ub nu int_I D_N(t) dt
     + C_ub int_I Lambda_N^sharp(t) E_N(t) dt
     + C_ub,* 2^{-2 delta N}.
```

Proof or remaining burden:

This batch does not prove the coefficientwise decomposition of
`B_N^upper`.  It makes the remaining algebraic burden explicit.  The
theorem-construction collar class now states that "modulo admissible collar
errors" is structural until a named residual satisfies `(collar-res)`.

Downstream consequence:

The appendix can no longer spend collar leftovers as automatically paid.
The signed lifted-band, moving-spill, and mesoscopic residual notes now point to
the quantitative collar-residual requirement before any absorption claim is
available.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/lifted-band-collar-class-reduction-lemma.md`;
- `theorem-construction/signed-lifted-band-scale-descent-identity.md`;
- `theorem-construction/moving-spill-fixed-offset-reduction-lemma.md`;
- `theorem-construction/lifted-band-mesoscopic-residual-reduction-lemma.md`.

Second downstream pass:

The named authority YAML surfaces were scanned for the loose collar phrases and
did not repeat them.  Remaining theorem-construction uses are now either the
definition of the structural phrase or references that point to the quantitative
residual budget.

Remaining mathematical status:

The broader exactness goal remains active.  The upper-boundary coefficientwise
finite-family decomposition and its residual bound remain live mathematical
inputs; they are no longer hidden under "accepted collar errors."

## Nonlinear Shell-Flux Signed-Reserve Repair

Old loose step:

The appendix's nonlinear shell-flux source attempt said the desired source
theorem follows from "a signed estimate of the form" but did not display the
signed estimate.  It then displayed only the positive-fallback active-square
tail integral, which could make the signed-cancellation burden and the fallback
residual burden look interchangeable.

Exact replacement:

The appendix now names the true weighted lifted remainder

```text
G_N^{lift,sigma}(t) = sum W_{j,ell}^sigma R_{j,k,ell}^{lift}(t)
```

and states the signed reserve estimate actually needed:

```text
int_I G_N^{lift,sigma}(t) dt <= C 2^{-2 delta N}.
```

The fallback remains the distinct active-square residual-tail burden

```text
int_I sum_{j>=N} 2^{-j} D_j(t)^2 dt.
```

Proof or remaining burden:

This batch does not prove the signed reserve estimate.  It makes the proof split
exact: either prove a genuine one-sided signed reserve for the weighted lifted
remainder, or separately prove active-square residual-tail control.  The
installed full tail-square reserve controls cumulative tail energy squared by
first-moment dissipation and does not control shellwise active-square density on
terminal active intervals.

Downstream consequence:

The appendix no longer lets the nonlinear source theorem spend a blank signed
estimate or confuse it with the positive fallback.  `AWG.A` remains open at the
source-normalization wall until one of the stated exact inputs is supplied.

Edited live surfaces:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mpp-nonlinear-shell-flux-source-theorem-attempt-note.md`.

Additional sources checked:

- `theorem-construction/mpp-signed-lifted-remainder-residual-tail-attempt-note.md`;
- `theorem-construction/mpp-nonlinear-shell-flux-source-control-reentry-20260609.md`.

Remaining mathematical status:

The broader exactness goal remains active.  The signed reserve and active-square
residual-tail estimates are explicit live mathematical burdens, not completed
source-control payments.

## Source-Normalization Square-Strength Notation Repair

Old loose step:

The appendix contained many broken source-normalization fragments such as
`active- residual-tail`, `active- density`, `full tail- reserve`, `heat-scale
-source`, and `shellwise -dissipation`.  In context those fragments were the
proof-critical square/source quantities, so the missing words made the live
burden ambiguous.

Exact replacement:

The touched appendix passages now state the actual quantities:

```text
active-square residual-tail,
active-square density,
active-square / active-window Carleson reserve,
tail-square reserve,
shellwise square-dissipation,
heat-scale L^2-source control.
```

Where the source norm appears in TeX prose it is written as `\(L^2\)-source`.

Proof or remaining burden:

This is not a theorem discharge.  It restores the exact quantity required by
the surrounding inequalities, especially estimates involving

```text
int_I sum_{j>=N} 2^{-j} D_j(t)^2 dt
```

and heat-scale square-source bounds for the nonlinear shell source.

Downstream consequence:

The source-normalization wall is no longer hidden behind a missing noun.  The
appendix now says that first-moment dissipation and cumulative tail-square
reserves do not control shellwise active-square density on terminal active
windows, and that any closure needs an active-square, active-window Carleson, or
`L^2`-source theorem on the same packet topology.

Edited live surface:

- `submission-bundle/source-field-reader-appendix.tex`.

Verification:

A targeted scan for dangling `active-`, `tail-`, `-source`, and
`shellwise -dissipation` fragments in the appendix returns no stale hits; the
remaining matches are explicit `active-square`, `tail-square`, or
`\(L^2\)-source` statements.

Remaining mathematical status:

The broader exactness goal remains active.  The source-normalization theorem is
still open; the page now states its exact square-strength burden.

## Endpoint Closure Conditionality Second-Pass Repair

Old claim being spent:

The endpoint closure skeleton still spent proof-shaped prose as if it were an
installed theorem:

```text
averaged control propagates through receiver/source/collar/one-field/class-invariance
=> averaged class witness persists
=> endpoint matrix excludes every face
=> retained class witness supplies a terminal H^s bound
```

That wording hid two downstream hypotheses:

1. `SCFBaseLocalModulus_N` is needed upstream to admit the retained
   `Field_{N,r,Q}` row into the averaged Field row on the same terminal tail.
2. The terminal Sobolev continuation bound is supplied only after
   `End_NS_avg -> READ.COVER -> Field.Read/DTC.Read -> READ.END -> End_NS`,
   followed by `ECQ.A` and `PCTP.cond`.

Exact replacement:

```text
SCF_base + SGC.A_a.e + ATD_m^epsilon + SCFBaseLocalModulus_N
=> End_NS_avg
=> READ.COVER + Field.Read + DTC.Read
=> READ.END
=> End_NS
=> ECQ.A / PCTP.cond
=> T_* = infinity.
```

The readout cover is explicitly downstream of `End_NS_avg`; it cannot be used to
prove the same-tail modulus.

Surfaces edited:

- `submission-bundle/source-field-reader-appendix.tex`;
- `theorem-construction/mcp-whole-proof-skeleton-without-route-jargon-ecq-a-c1979dd73e.md`;
- `theorem-construction/mcp-single-final-conditional-averaged-route-theorem-avg-main-a-d000abfe2f.md`;
- `theorem-construction/mcp-pctp-hard-averaged-route-reduction-and-aact-gap.md`;
- `theorem-construction/mcp-terminal-route-compression-retained-conditional-theorem.md`.

Downstream consequence:

The finite-time contradiction is now conditional on the displayed upstream
averaged route inputs and the downstream readout bridge.  The phrase "class
witness supplies a terminal bound" is no longer spent as a standalone proof
step: the bound is attributed to the readout chain plus the continuation
criterion.

Remaining status:

This batch repairs the endpoint-closure overclaim in the active skeleton and its
appendix mirror. It does not prove `SCFBaseLocalModulus_N`; that remains an
upstream mathematical input unless derived from the retained Field row.

## D.99 Lower-Order Threshold Wording Repair

Old claim being spent:

The appendix described the exact-potential `V2` lower-order branch as "paid in
D.99" or "paid rather than ignored."  The supporting theorem note contains an
actual threshold inequality, so the loose payment verb was unnecessary and could
hide the condition being used.

Exact replacement:

The appendix now attributes the lower-order transfer to the fixed-metric
Carleman import plus the D.99 threshold

```text
2 C_0 M_*^2 (1/(s theta_*) + 1/(s^3 theta_*^3)) <= 1/2.
```

Downstream consequence:

The `V2` direct closure no longer reads as a labeled absorption.  It is
conditional on the uniform lower-order coefficient bound and on taking the
Carleman parameter above the displayed threshold; the remaining local import is
the fixed-metric Lipschitz Carleman / heat observability packet.

Surface edited:

- `submission-bundle/source-field-reader-appendix.tex`.

## ATD Interior-Bootstrap Standard-Step Repair

Old claim being spent:

The active ATD tower note said that "standard interior parabolic bootstrapping"
gives every finite velocity and pressure derivative required by `DTC.Read`.
That was too loose as a proof step because it did not state the pressure gauge,
the pressure equation, the interior cylinder, or the finite-depth constants.

Exact replacement:

The note now states the local estimate on normalized cylinders:

```text
CKN_std(Q_1) <= epsilon_CKN
=> for each finite k,
sup_{Q_{1/2}} |nabla^k u| + sup_{Q_{1/2}} |nabla^{k+1} p|
   <= C_k(k,nu,epsilon_CKN),
```

with pressure read through

```text
-Delta p = partial_i partial_j(u_i u_j)
```

after fixing the CKN pressure normalization.

Downstream consequence:

The ATD note now identifies exactly why `U_{N+2}` supplies the viscous piece
`\nu Delta U_q` and why the same local regularity gain supplies
`\nabla^{q+1}p` for `0<=q<=N`.  It remains a conditional local theorem: it does
not create the CKN-good cylinder or terminal cover.

Surface edited:

- `theorem-construction/mcp-atd-tower-bootstrapping-depth-lemma-e5998e235f.md`.

## ATD Moving-Cylinder Local-Completion Mirror Repair

Old claim being spent:

The sibling moving-cylinder ATD note already displayed scaled derivative bounds,
but the proof still said "Interior parabolic bootstrapping gives" those bounds
without naming the pressure mechanism.

Exact replacement:

The note now states that the velocity bounds come from the differentiated
Navier--Stokes equations and the pressure bounds come from the CKN-gauged
Poisson equation

```text
-Delta p = partial_i partial_j(u_i u_j).
```

The scaled estimate is now written with finite-depth constants
`C_{k,m,M_sharp,nu}`:

```text
sup_{Q_{r/2}^Phi} r^{k+1}|nabla^k u|
+ sup_{Q_{r/2}^Phi} r^{k+3}|nabla^{k+1}p|
<= C_{k,m,M_sharp,nu}.
```

Downstream consequence:

`ATD_m^epsilon` remains a conditional local completion theorem under
CKN-admissible moving-cylinder hypotheses.  It now pays the pressure slots
needed by `K_q` through the explicit pressure equation rather than through a
generic bootstrap phrase.

Surface edited:

- `theorem-construction/mcp-atd_m-epsilon-ckn-admissible-local-completion-read-cover-4fd93155f1.md`.

## Retained Interior Radius And Flow-ODE Standard-Step Repair

Old claims being spent:

Two active notes used "standard" language at proof-spending points:

- the retained-field energy anchor put the lower ball inside the local section
  "after the standard interior shrink";
- the smooth-window class-membership note invoked "Standard smooth ODE theory"
  for the diffeomorphic same-fluid motion.

Exact replacement:

The retained-field lemma now assumes a retained interior subsection
`Q_t^{int}` with radius `r_int>0` and uses

```text
rho = min{r, r_int, M/(2C)}.
```

The resulting bound is on `Q_t^{int}`.  Without `r_int>0`, the lemma does not
give a uniform boundary-adjacent bound.

The flow note now states the actual ODE argument: smoothness gives bounded
continuous `nabla u` on the compact tube, the flow map is `C^1`, `F=D_a Phi`
solves the variational equation, `det F=1` is nonzero, the inverse-function
theorem gives local invertibility, and uniqueness of forward/backward flows gives
the global inverse.

Surfaces edited:

- `theorem-construction/mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md`;
- `theorem-construction/mpp-still-live-smooth-window-implies-class-membership-theorem.md`.

## TW.RIG Legal-Error Residual Repair

Old claim being spent:

The tangent-weight rigidity note and appendix mirror used "up to legal
commutator and cutoff errors" and then said the first weighted exchange sum
obeyed an estimate, but the appendix mirror omitted the estimate itself.

Exact replacement:

The note now writes the unweighted exchange defect as

```text
R_e^lift + R_{e*}^lift = C_e^comm + C_e^cut,
```

and states that these pieces are legal only when included in `Err_N` and
controlled by

```text
int_{Q_N} |Err_N| <= o_N(1) + Loss_legal(F_N).
```

The appendix mirror now displays the missing first-sum estimate:

```text
| int (1/2) sum_e (W_e - W_{e*}) R_e |
<= (1/2) omega_N sum_e int |R_e|.
```

Downstream consequence:

`TW.RIG.A` remains a conditional bridge. The signed lifted defect vanishes only
after terminal weight flattening, exchange tightness, the explicit legal-loss
bound, and source-defect compatibility before positive-part extraction.

Surfaces edited:

- `theorem-construction/mcp-tw-rig-a-ttu-a-662b1d053d.md`;
- `submission-bundle/source-field-reader-appendix.tex`.

## PCTP.hard Paper-Grade Proof Conditionality Repair

Old claim being spent:

`mcp-pctp-hard-paper-grade-proof.md` stated the unconditional periodic terminal
theorem from original smooth data, while the proof spent upstream inputs such as
`Field_avg`, `AACT.Global`, `Hyp(FFSRC.A)`, and endpoint certificates as already
available.

Exact replacement:

The theorem is now stated as the conditional implication it actually proves:

```text
SCFBaseLocalModulus_N + Field_avg + AACT.Global + Hyp(FFSRC.A) + AVG.END.Cert
=> End_NS_avg => READ.END => End_NS => H^s continuation => T_* = infinity.
```

The same-tail modulus is explicitly upstream of averaged Field admission and is
not supplied by `READ.COVER`.

Downstream consequence:

The note no longer claims unconditional `PCTP.hard` from original data. It proves
the downstream readout/continuation implication under the displayed terminal-tail
production inputs.  The original-data production of those inputs remains a live
mathematical burden, not a completed theorem.

Surface edited:

- `theorem-construction/mcp-pctp-hard-paper-grade-proof.md`.

## READ.END / ECQ.A Loop-Closure Overclaim Repair

Old claim being spent:

`mcp-pctp-hard-readend-ecqa-loop-closure.md` claimed that the periodic terminal
loop was closed as

```text
OriginalSmoothData => PCTP.hard => T_* = infinity.
```

That statement spent terminal-tail production inputs as if they had already been
derived from original data.

Exact replacement:

The note is now a conditional readout/continuation bridge:

```text
SCFBaseLocalModulus_N + TGC.A + AACT.Global.noJump + SRC.Final
+ AVG.END.Cert + READ.END
=> PCTP.hard => T_* = infinity.
```

Downstream consequence:

The bridge from `READ.END`/`ECQ.A` to continuation remains usable after the
terminal-tail inputs are supplied.  It no longer closes the original-data
production theorem, and it explicitly keeps the same-tail modulus / Field
admission input upstream of the readout layer.

Surface edited:

- `theorem-construction/mcp-pctp-hard-readend-ecqa-loop-closure.md`.

## Source-Pulse Promotion Criterion Same-Tail Repair

Old claim being spent:

Two source-pulse promotion notes treated

```text
OriginalSmoothData => SourcePulseExclusion.A
```

as the only remaining input needed to promote the conditional terminal-tail
route to full `PCTP.hard / TTU.A`.

Exact replacement:

The notes now state the current exactness standard:

```text
OriginalSmoothData => SourcePulseExclusion.A
and
OriginalSmoothData => SCFBaseLocalModulus_N on admitted terminal tails.
```

The same-tail modulus is needed before the retained Field row is admitted into
the averaged Field row; it is not supplied by the source-pulse theorem or by
`READ.COVER`.

Surfaces edited:

- `theorem-construction/mcp-pctp-hard-terminal-tail-production-conditional-sourcepulse-closure.md`;
- `theorem-construction/mcp-pctp-hard-unconditional-promotion-check-sourcepulse-dependency.md`.

## Classical-Closure Warrant Conditionality Repair

Old claim being spent:

Two endpoint-to-classical closure notes displayed conditional implications but
their prose read as if the periodic global theorem had already been discharged
from original data.

Exact replacement:

- `mcp-classical-closure-warrant-final-pass-ecq-a-18affdb00d.md` now states that
  the global smooth conclusion follows only after `PCTP.hard+ECQ.A` is supplied.
- `mcp-endpoint-to-classical-contradiction-theorem-read-end-ac1bec0dd4.md` now
  states its hypotheses before the contradiction chain: `ECQ.A`, endpoint
  exhaustion, and `End_NS`.

Downstream consequence:

The continuation bridge remains a valid conditional theorem. It no longer
serves as evidence that `PCTP.hard` or the terminal-tail production theorem has
been proved from original data.

Surfaces edited:

- `theorem-construction/mcp-classical-closure-warrant-final-pass-ecq-a-18affdb00d.md`;
- `theorem-construction/mcp-endpoint-to-classical-contradiction-theorem-read-end-ac1bec0dd4.md`.

## Authority Source-Pulse / PCTP Same-Tail Mirror Repair

Old claim being spent:

The live authority mirrors still carried the older source-pulse promotion
sentence: the stronger no-pulse/PCTP supplier route was not to be marked closed
unless the source-control atom was proved.  In `live-theorem-edge.yaml`, the
same overclaim appeared in the downstream chain

```text
AWG.A + TGC.A + AACT.Global.noJump + AVG.END.A + READ.END
=> PCTP.hard / TTU.A.
```

and in the normalized-adjoint source-drain trace

```text
LemmaB.SourceDrain => SOURCE.NO-PULSE.A => AWG.A
=> Jump_avg false => PCTP.hard / TTU.A.
```

That wording spent source-control as if it were the only missing terminal-tail
production input.

Exact replacement:

The authority mirrors now require two independent inputs before the stronger
PCTP/TTU supplier route can be promoted:

```text
SOURCE.NO-PULSE.A or the source-control atom
and
SCFBaseLocalModulus_N on the admitted terminal tail.
```

The exact downstream consumer chain is conditional:

```text
SCFBaseLocalModulus_N
+ AWG.A + TGC.A + AACT.Global.noJump + AVG.END.A + READ.END
=> PCTP.hard / TTU.A.
```

The proof reason is the same-tail admission repair: `READ.COVER` and `READ.END`
are downstream of `End_NS_avg` and cannot supply `SCFBaseLocalModulus_N`.  The
source-drain certificates discharge only the source-control component; they do
not prove the same-tail terminal-tail Field-admission modulus.

Downstream consequence:

Authority surfaces no longer let a source-pulse/source-control discharge close
`PCTP.hard`, `TTU.A`, or the stronger no-pulse/PCTP supplier route by itself.
Any downstream route using that supplier must either prove
`SCFBaseLocalModulus_N` on the admitted terminal tail, prove it from the retained
`Field_{N,r,Q}` face, or keep the PCTP/TTU route conditional.

Surfaces edited:

- `live-theorem-edge.yaml`;
- `source-frontier.yaml`;
- `submission-bundle/source-frontier.yaml`;
- `theorem-packet.yaml`;
- `submission-bundle/theorem-packet.yaml`.
