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

- `submission-bundle/source-field-reader-appendix.tex`.

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
