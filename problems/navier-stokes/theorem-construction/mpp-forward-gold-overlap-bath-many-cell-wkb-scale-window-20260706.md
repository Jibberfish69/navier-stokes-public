---
theorem_id: forward-gold-overlap-bath-many-cell-wkb-scale-window-20260706
status: strict-obstruction-combined-scale-constraints-do-not-empty-wkb-branch
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - ManyCellWKBBranch.ScaleWindow.NONEMPTY
  - SharpCorner.theta=beta^(24/25).phi=beta^(12/25)
  - PersistentHighReRequirement.Re_D>>phi beta^(-12/5)
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-overlap-bath-survivor-front-classification-20260706.md
completion_truth: >-
  Strict obstruction to one attempted kill, not a construction, not a
  dense-crowd theorem, and not a confinement-constant decision. The
  supercritical residual scale split gives q-row hiding
  phi theta^2 <= beta^(12/5). The Beltrami localization split gives many-cell
  neutrality only when phi >= theta^3 beta^(-12/5). The refresh dichotomy says
  the persistent branch requires Re_D >> phi beta^(-12/5). Writing
  theta=beta^a and phi=beta^b, the first two conditions become
  b+2a >= 12/5 and b <= 3a-12/5, with b>=0. The interval is nonempty exactly
  when a>=24/25. At the sharp corner a=24/25, b=12/25, the pocket is sparse,
  q-row hiding is saturated, and the carrier count is exactly beta^(-12/5).
  For a>=6/5, coherent support b=0 is allowed. Therefore the combined scale
  constraints do not kill the many-cell WKB branch. They type it as a very
  fine many-cell high-Re bath with Re_D >> beta^(b-12/5), and the next real
  obstruction must be same-fluid WKB coherence, pressure-kernel realization,
  orientation/isotropy maintenance, Gate-8/compensator routing, or an actual
  construction/exclusion theorem.
---

# Many-cell WKB scale window

## 1. Kill question

The current survivor after the Beltrami localization split is a many-cell WKB
Beltrami bath. The tempting kill is that the three scale constraints might
already be inconsistent:

1. q-row hiding from the residual scale split;
2. many-cell Beltrami localization;
3. persistent high Reynolds after the refresh dichotomy.

The checked answer is negative. The window is nonempty, and it has an exact
corner.

## 2. The three constraints

The q-row hiding condition is
\[
  \phi\theta^2\lesssim\beta^{12/5}.
  \tag{WBW.1}
\]

The many-cell localization condition is
\[
  \phi\gtrsim\theta^3\beta^{-12/5}.
  \tag{WBW.2}
\]

The persistent high-Re condition from the refresh dichotomy is
\[
  \operatorname{Re}_D\gg\phi\beta^{-12/5}.
  \tag{WBW.3}
\]

The first two constraints decide whether the WKB branch exists at the scale
level. The third decides how high the Reynolds edge has to be after the window
is chosen.

## 3. Exponent coordinates

Write
\[
  \theta=\beta^a,
  \qquad
  \phi=\beta^b,
  \qquad
  0<\beta<1.
  \tag{WBW.4}
\]

Since \(0<\phi\le1\), one has
\[
  b\ge0.
  \tag{WBW.5}
\]

Condition (WBW.1) becomes
\[
  b+2a\ge {12\over5}.
  \tag{WBW.6}
\]

Condition (WBW.2) becomes
\[
  b\le 3a-{12\over5}.
  \tag{WBW.7}
\]

Thus a scale window exists exactly when
\[
  \max\left(0,{12\over5}-2a\right)
  \le
  b
  \le
  3a-{12\over5}.
  \tag{WBW.8}
\]

This interval is nonempty exactly when
\[
  a\ge {24\over25}.
  \tag{WBW.9}
\]

So the many-cell WKB branch is not killed by the combined scale inequalities.
It starts at
\[
  \theta\lesssim\beta^{24/25}.
  \tag{WBW.10}
\]

## 4. Sharp corner

At the corner
\[
  a={24\over25},
  \tag{WBW.11}
\]
the lower and upper bounds on \(b\) agree:
\[
  b={12\over25}.
  \tag{WBW.12}
\]

Therefore
\[
  \theta=\beta^{24/25},
  \qquad
  \phi=\beta^{12/25}.
  \tag{WBW.13}
\]

The number of carrier cells is
\[
  N_{\rm cell}
  \sim
  {\phi\over\theta^3}
  =
  \beta^{12/25-72/25}
  =
  \beta^{-12/5}.
  \tag{WBW.14}
\]

The q-row hiding product is saturated:
\[
  \phi\theta^2
  =
  \beta^{12/25+48/25}
  =
  \beta^{12/5}.
  \tag{WBW.15}
\]

The residual energy ratio at the supercritical threshold is then
\[
  {E_{\rm res}\over E_{\rm prod}}
  \sim
  \phi\theta^2\beta^{-8/5}
  =
  \beta^{4/5}.
  \tag{WBW.16}
\]

This is exactly the pressure row. It is not an order-one payer.

## 5. Sparse and coherent subwindows

For
\[
  {24\over25}\le a < {6\over5},
  \tag{WBW.17}
\]
one needs
\[
  b\ge {12\over5}-2a>0.
  \tag{WBW.18}
\]

So the WKB bath must be sparse.

For
\[
  a\ge {6\over5},
  \tag{WBW.19}
\]
coherent support is allowed:
\[
  b=0.
  \tag{WBW.20}
\]

This recovers the coherent q-row cutoff
\[
  \theta\lesssim\beta^{6/5}.
  \tag{WBW.21}
\]

Thus the survivor has two typed subbranches:

- sparse WKB bath:
  \[
    {24\over25}\le a< {6\over5},
    \qquad
    {12\over5}-2a\le b\le 3a-{12\over5};
  \tag{WBW.22}
  \]
- coherent finer WKB bath:
  \[
    a\ge {6\over5},
    \qquad
    0\le b\le 3a-{12\over5}.
  \tag{WBW.23}
  \]

## 6. Reynolds price of the window

The persistent condition is
\[
  \operatorname{Re}_D\gg\phi\beta^{-12/5}.
  \tag{WBW.24}
\]

In exponent variables this is
\[
  \operatorname{Re}_D\gg \beta^{b-12/5}.
  \tag{WBW.25}
\]

At the sharp corner,
\[
  \operatorname{Re}_D\gg\beta^{-48/25}.
  \tag{WBW.26}
\]

In the coherent subbranch \(b=0\), it is
\[
  \operatorname{Re}_D\gg\beta^{-12/5}.
  \tag{WBW.27}
\]

So the scale window survives only as a high-Re branch. It does not evade the
refresh dichotomy; it sits on the persistent side of it.

## 7. What this kills

This kills the shortcut
\[
  \text{q-row hiding}
  +
  \text{many-cell localization}
  +
  \text{persistence}
  \Rightarrow
  \text{empty branch}.
  \tag{WBW.28}
\]

The branch is not empty. The sharp corner
\[
  (\theta,\phi)
  =
  \left(\beta^{24/25},\beta^{12/25}\right)
  \tag{WBW.29}
\]
is an explicit scale witness, subject to the high-Re requirement
\[
  \operatorname{Re}_D\gg\beta^{-48/25}.
  \tag{WBW.30}
\]

## 8. What remains

The remaining WKB branch is now typed:

- many carrier cells, at least \(\beta^{-12/5}\);
- either sparse support with \(24/25\le a<6/5\), or coherent support only once
  \(a\ge6/5\);
- persistent high Reynolds, with \(\operatorname{Re}_D\gg\beta^{b-12/5}\);
- same-fluid WKB coherence and pressure-kernel realization still unproved;
- orientation/isotropy maintenance and Gate-8/compensator routing still
  unproved.

This is a real surviving construction/exclusion target, not a proof of
evasion.

## 9. Four-sentence result

The combined scale constraints do not kill the many-cell WKB Beltrami branch.
Writing \(\theta=\beta^a\) and \(\phi=\beta^b\), q-row hiding and many-cell
localization require
\[
  \max(0,12/5-2a)\le b\le 3a-12/5,
\]
which is nonempty exactly for \(a\ge24/25\). The sharp corner is
\(\theta=\beta^{24/25}\), \(\phi=\beta^{12/25}\), with
\(\beta^{-12/5}\) carrier cells and residual energy ratio \(\beta^{4/5}\).
The branch survives only as a high-Re WKB construction/exclusion target, with
\(\operatorname{Re}_D\gg\beta^{b-12/5}\).
