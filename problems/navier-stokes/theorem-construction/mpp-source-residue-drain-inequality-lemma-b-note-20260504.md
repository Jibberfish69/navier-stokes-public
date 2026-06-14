# MPP Source-Residue Drain Inequality Lemma B Note

## Status

Superseded target note. Current live status: discharged by
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`.

This note isolates the drain mechanism intended to prove the corrected terminal
positive-alignment rigidity used by the signed lifted remainder route.

Route role:

```math
LemmaB.SourceDrain
\Longrightarrow
TPNI.A
\Longrightarrow
PATC.A
\Longrightarrow
ASAC.A
\Longrightarrow
SignedLocalSource.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

It replaces the false universal statement that every frozen-strain ancient
packet has zero positive strain production.  Positive strain alignment can occur;
the claim here is narrower: in a first-pulse terminal ancient limit, any
surviving source residue must be paid by local dissipation, and the payment rate
beats the source-production rate.

## Lemma B Target

Let `\nu_*` be the limiting positive source-residue measure carried by a
terminal first-pulse rescaling, and let

```math
\mathcal D(s)
```

denote the limiting high-frequency dissipation density.  Prove

```math
\boxed{
\nu_*((-\infty,0])
\le
\theta
\int_{-\infty}^{0}\mathcal D(s)\,ds,
\qquad
\theta<c.
}
\tag{LemmaB}
```

Here `c>0` is the normalized lower source-production threshold selected by the
bad terminal pulse.  Thus `(LemmaB)` says every surviving source-residue pulse
pays more dissipation than it produces.  Combined with the finite-source lower
bound, this contradicts persistence of the first bad pulse.

## 1. Define The Exact Source Residue

The residue must be a positive Radon measure:

```math
d\nu_*
=
\mathrm{w}\!-\!\lim_{n\to\infty}
\bigl[F_n^{src}\bigr]_+\,dx\,dt.
```

The source density `F_n^{src}` is the localized nonlinear shell source after
same-fluid transport, pressure cancellation, and legal lower-order
commutator/cutoff reductions.  It is not the raw global shell product and not the
post-Cauchy mixed product `D_jD_\ell`.

The definition must be made on physical heat cylinders so that `\nu_*` is a
spatial-temporal Radon object rather than only a shell-time scalar.

## 2. Source Residue Localization

The localization bridge is:

```math
\boxed{
MSC.Localize^{src}:
\quad
\text{failure of source no-pulse yields a same-fluid heat-cylinder source
residue with }\nu_*(Q)>0.
}
```

This is essential.  If the source mass remains only as a global Fourier-shell
product, Lemma B cannot be applied on a first-pulse cylinder and no ancient
source-residue limit has been constructed.

Required output:

```math
\nu_*(Q)>0
```

for a terminal same-fluid heat cylinder `Q`, with the cylinder, source density,
and dissipation density attached to the same carrier.

## 3. Source Decomposition

On the localized carrier, decompose

```math
F^{src}
=
F^{transport}
+
F^{pressure}
+
F^{comm}
+
F^{strain}.
```

The required estimates are:

```math
F^{transport}=0
```

by incompressibility;

```math
F^{pressure}
```

is lower order, pressure-normalized, or absorbable into the local dissipation /
endpoint residue ledger;

```math
F^{comm}
```

is Calderon--Zygmund / Coifman--Meyer absorbable; and the only dangerous
positive part is

```math
F^{strain}
:=
\langle S_ku_j,u_j\rangle_+.
```

This decomposition is the finite-scale source analogue of the Euclidean
strain-alignment target `ASAC.A`.

## 4. Drain Estimate For The Strain Term

The core estimate is

```math
\int F^{strain}_+
\le
\theta
\int \nu|\nabla u_{hi}|^2,
\qquad
\theta<c.
\tag{Drain}
```

The theorem must prove that persistent positive strain alignment forces
high-frequency dissipation at a strictly larger normalized rate than source
production.  A pointwise sign argument is false; the proof must use first-pulse
ancestry, same-fluid localization, and the absence of incoming parent source
mass.

## 5. First-Pulse Ancestry

Select the bad packet as a first pulse.  Then there is no earlier same-fluid
parent source pulse available to pay for its positive source event.

The local alternative is:

```math
\text{positive source event}
\Longrightarrow
\text{earlier source mass}
\quad\text{or}\quad
\text{local dissipation payment}.
```

The first option is excluded by the first-pulse construction.  Therefore the
second option yields `(Drain)`.

This is the exact non-free-creation principle:

```math
\boxed{
\text{positive strain-alignment source has no free creation mechanism in a
first-pulse ancient limit.}
}
\tag{NoFreeCreate.A}
```

The principal-flow adjoint route to `NoFreeCreate.A` is recorded in
`mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md`.  Its central move
is to place the positive strain term in the principal packet operator

```math
(\partial_t+u_{\le k}\cdot\nabla-\nu\Delta+S_k)u_j=R_{j,k},
```

construct backward adjoint packets for that operator, and prove the residual
pairing square estimate

```math
\sum_T
\left|
\int_{I_T}\langle R_{j,k},\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q
+
o_N(1).
\tag{AdjRes}
```

Then each positive-alignment tile has only two legal origins: backward parent
mass or paid residual creation.  The first-pulse hypothesis removes the parent
chain, leaving the dissipation charge used in Lemma B.

The first analytic layer inside this route is coefficient stopping, isolated in
`mpp-coefficient-stopping-for-strain-gauged-packets-note-20260504.md`.  It
extracts the affine low-flow frame and central strain gauge, then splits off
tiles whose remaining coefficient budget
`r_T^2\nabla^2b_k+r_T\nabla A_k` is too large; each stopped tile must become
weighted residual charge or earlier source-pulse ancestry.  After that stopping layer,
`WeightedAdjBessel.A` is isolated in
`mpp-adjbessel-strain-gauge-packet-calculus-note-20260504.md`; it asks for a
strain-gauged weighted adjoint packet calculus on coefficient-good tiles.
Uniform control of the central strain propagator `G_T` is now only an optional
shortcut.  The primary route uses the weighted estimate for `g_T^{-1}\psi_T` and
absorbs the growth factor by normalizing child mass
`M(T)=g_T^{-2}|\langle u_j(t_+),\psi_T(t_+)\rangle|^2`; `ParentKernel.A` is then
the contraction theorem for
`\kappa(P,T)=|\langle\phi_P,\chi_T(t_-)\rangle|^2`, making it the decisive drain
gate.  Its high-gain stopping subtheorem is
`mpp-gainstop-stopping-time-theorem-note-20260504.md`: gain-stop edges produce
weighted residual charge or earlier source-pulse ancestry, and therefore do not
remain in the inherited first-pulse kernel.

The conditional closure of these adjoint gates is recorded in
`mpp-principal-flow-five-gate-conditional-proof-packet-20260504.md`.  It proves
the local source-drain estimate behind Lemma B assuming the packet-calculus
hypotheses listed there.

## 6. Passage To The Ancient Limit

Let `\nu_n` be the finite-scale positive source measures and `\mathcal D_n` the
finite-scale dissipation densities.  The limiting argument needs:

```math
\nu_n\rightharpoonup\nu_*,
```

and lower semicontinuity:

```math
\int \mathcal D_*
\le
\liminf_{n\to\infty}\int \mathcal D_n.
```

Then the finite-scale drain estimate passes to the ancient limit:

```math
\nu_*
\le
\theta \mathcal D_*.
```

The limit theorem must preserve the first-pulse/no-parent condition; otherwise
incoming ancestral mass can reappear as an uncharged source at `s=-\infty`.

## Relation To `TPNI.A`

Lemma B is a drain version of the no-incoming rigidity:

```math
MSC.Localize^{src}
+
FirstPulse.NoParent
+
NoFreeCreate.A
+
LimitPass.A
\Longrightarrow
LemmaB.SourceDrain.
```

Then:

```math
LemmaB.SourceDrain
\Longrightarrow
TPNI.A.
```

The implication is: a normalized terminal tangent pulse carries positive
source-residue mass `c`, but Lemma B forces that mass to be dominated by
strictly smaller absorbable dissipation.  With `\theta<c`, the assumed surviving
first pulse cannot remain source-balanced.

## Non-Circularity Boundary

Lemma B cannot assume `SOURCE.NO-PULSE.A`, `ASAC.A`, or the desired terminal
no-pulse conclusion.  It may use only independently proved ingredients:

```math
MSC.Localize^{src},
\qquad
FirstPulse.NoParent,
\qquad
source decomposition,
\qquad
pressure/commutator absorbability,
\qquad
NoFreeCreate.A,
\qquad
compactness / lower-semicontinuity.
```

If the proof says merely "positive source alignment creates a source pulse, and
source pulses are impossible," it is circular.  The actual theorem is the
first-pulse drain inequality `(LemmaB)`.

## Verdict

The hardest sublemma is:

```math
\boxed{
\text{Positive strain-alignment source has no free creation mechanism in a
first-pulse ancient limit.}
}
```

Everything else is bookkeeping only after it is explicitly licensed: source
localization, source decomposition, pressure and commutator absorption,
compactness, source-measure convergence, and lower semicontinuity all still have
to be written in the same-fluid localized setting.
