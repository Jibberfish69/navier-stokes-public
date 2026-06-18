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
