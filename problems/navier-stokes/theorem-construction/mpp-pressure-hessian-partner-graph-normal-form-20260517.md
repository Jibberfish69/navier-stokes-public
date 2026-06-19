# MPP Pressure-Hessian Partner Graph Normal Form

Date: 2026-05-17

Status: normal-form reduction; not a closure.  The pressure partner is an
oscillatory Calderon--Zygmund cancellation partner, not a bare antisymmetric
dyadic source partner.

Purpose: execute the pressure/eigenframe plan from
`mpp-terminal-pressure-hessian-no-sustain-attempt-20260517.md`: write the
terminal pressure-Hessian sustain contribution as a partner graph and decide
whether its escaped partners pay Path 1 directly or produce the residue needed
for Path 2.

## 0. Live object

For a retained same-fluid terminal packet `P`, the pressure-sustain part of the
near-band strain coefficient is

```math
\Pi_P^{press}
:=
E_P^\#\tau_P
\int_{I_P}
\left[
-n_P\cdot P^{loc}_{j_P,L}\nabla^2p(X_P(t),t)n_P
\right]_{sustain,+}\,dt .
\tag{PHG.1}
```

The target behind `TerminalPressureHessianNoSustain.A` is

```math
\boxed{
\sum_{P\in\mathcal F_N}\Pi_P^{press}
\le
\mathrm{Legal}_N(\mathcal F_N)+o_N(1).
}
\tag{PHG.2}
```

## 1. Pressure is not a dyadic skew edge

The pressure Poisson law gives

```math
\nabla^2p
=
\mathcal R\mathcal R
\bigl((S+\Omega)\otimes(S+\Omega)\bigr),
\tag{PHG.3}
```

after the fixed tensor contractions in the Hessian/Riesz representation.
Therefore, for each selected receiver
`P`,

```math
-n_P\cdot\nabla^2p(X_P)n_P
=
\int K_{n_P}(X_P-y):
\bigl((S+\Omega)\otimes(S+\Omega)\bigr)(y)\,dy,
\tag{PHG.4}
```

where `K_{n}` is an even homogeneous Calderon--Zygmund kernel with angular
mean zero.

This creates a pressure partner graph by decomposing the `y` integral into
source packets `A`:

```math
\mathsf J^{press}(A\to P)
:=
E_P^\#\tau_P
\int_{I_P}\int_{A(t)}
K_{n_P}(X_P(t)-y):Q_A(y,t)\,dy\,dt,
\tag{PHG.5}
```

where `Q_A` denotes the localized quadratic gradient block.

The key point is:

```text
sum_A J^{press}(A -> P)
has Calderon--Zygmund cancellation,
but J^{press}(A -> P) does not come with a native edge
J^{press}(P -> A) = -J^{press}(A -> P).
```

So the pressure graph is not the same object as the bare dyadic skew-current
graph.  The cancellation partner is an oscillatory negative lobe of the kernel,
not automatically a same-fluid signed counter-edge.

## 2. Terminal operations that break pressure cancellation

Before terminal selection, `(PHG.4)` has mean-zero kernel cancellation.  The
live source-wall object applies:

```text
one-sided terminal weights,
near-band projection,
physical cutoffs,
same-fluid packet selection,
positive sustain selection,
bounded-overlap terminal subfamily extraction.
```

After these operations, the retained pressure contribution is

```math
\sum_{P\in\mathcal F_N}
\left[
\sum_A W_P \mathsf J^{press}(A\to P)
+R_P^{cut/proj/collar}
\right]_+ .
\tag{PHG.6}
```

Mean-zero pressure cancellation controls the signed full sum.  It does not
control `(PHG.6)` unless the negative pressure lobes stay in the usable ledger
or their absence is legally charged.

## 3. Exact partner/exits partition

For every selected positive pressure-sustain lobe `A->P`, define its
Calderon--Zygmund cancellation partners to be the packets `A'` in the same
kernel annulus/angular sector family for which

```math
\mathsf J^{press}(A'\to P)
\text{ has opposite sign and comparable kernel size.}
\tag{PHG.7}
```

Relative to the usable terminal pressure ledger, exactly one of the following
occurs.

### Case 1: retained CZ partner

The negative pressure lobe remains in the same terminal ledger.  Then only the
one-sided weight/projection mismatch is left:

```math
W_P\mathsf J^{press}(A\to P)
+W_P\mathsf J^{press}(A'\to P)
+R^{proj/weight}_{A,A',P}.
\tag{PHG.8}
```

This is not paid by antisymmetry.  It needs:

```math
\boxed{TerminalCZPressureCancellation.A}
\tag{PHG.9}
```

meaning kernel-lobe cancellation survives the terminal packet weights,
near-band projection, and same-fluid selection up to legal loss.

### Case 2: legal geometric exit

The cancellation partner leaves through an already named pressure/cutoff/collar
channel:

```text
outside collar,
cutoff/projection residue,
harmonic pressure tail,
off-family packet,
boundary/collar pressure work.
```

This is paid by:

```math
\boxed{TerminalPressureCollarLegal.A.}
\tag{PHG.10}
```

This case is legal only for genuine geometric exits.  An unselected interior
negative pressure lobe is not automatically collar loss.

### Case 3: internal unselected pressure partner

The opposite-sign lobe is physically interior and same-fluid-admissible, but
it is not in the selected usable terminal ledger.  Then it is an internal
pressure donor sink:

```math
\operatorname{div}\mathsf J^{press}(P)>0,
\qquad
\operatorname{div}\mathsf J^{press}(A')<0,
\tag{PHG.11}
```

relative to the selected pressure graph.

This is the pressure analogue of the no-free-sink obstruction.  It is paid
only if the internal pressure donor either has a finite refill tree or produces
a terminal Zeno residue branch that is rigidified.

The needed theorem is:

```math
\boxed{PressureDonorNoFreeSink.A.}
\tag{PHG.12}
```

### Case 4: no localized comparable partner

The positive lobe is created by the anisotropic local kernel/projection in a
way for which the negative cancellation is diffuse across many packets or
across the harmonic pressure tail.  This is not a separate miracle case.  It
is exactly the failure of retained CZ cancellation plus collar legality:

```math
\neg TerminalCZPressureCancellation.A
\quad\text{and}\quad
\neg TerminalPressureCollarLegal.A.
\tag{PHG.13}
```

At the measure level it creates an uncharged positive pressure-sustain residue.

## 4. Normal-form theorem

The pressure-Hessian sustain bill satisfies the following normal-form
reduction:

```math
\boxed{
\begin{aligned}
&TerminalCZPressureCancellation.A\\
&\quad+
TerminalPressureCollarLegal.A\\
&\quad+
PressureDonorNoFreeSink.A\\
&\Longrightarrow TerminalPressureHessianNoSustain.A.
\end{aligned}
}
\tag{PHG.14}
```

Proof sketch.  Decompose `(PHG.6)` by the four cases in Section 3.  Case 1 is
paid by `TerminalCZPressureCancellation.A`.  Case 2 is paid by
`TerminalPressureCollarLegal.A`.  Case 3 is paid by `PressureDonorNoFreeSink.A`.
Case 4 is the residual failure of Cases 1 and 2 and is included in those two
theorems as the diffuse cancellation/collar-tail alternative.  Bounded overlap
then sums the packet estimates.

This is the correct pressure analogue of the signed source-current edge
trichotomy.  The correction is that the pressure partner is an oscillatory
kernel partner, not a bare skew edge.

## 5. If the partner graph fails

Failure of `(PHG.14)` gives a normalized sequence with

```math
\sum_{P\in\mathcal F_N}\Pi_P^{press}\ge c_0>0,
\qquad
\mathrm{Legal}_N(\mathcal F_N)\to0.
\tag{PHG.15}
```

After terminal rescaling and compactness extraction from `(PHG.15)`, under the
same local energy/pressure bounds, same-fluid packet tightness, and vanishing
legal-loss hypotheses used in the pressure graph, the extracted object carries
a pressure sustain residue:

```math
(u_\ast,p_\ast,\mu_\ast^{press-sus}),
\qquad
\mu_\ast^{press-sus}(Q_1^-)\ge c_0.
\tag{PHG.16}
```

This is useful only if the residue is tied back to the native source residue:

```math
\boxed{
PressureSustainResidueToSourceResidue.A:
\mu_\ast^{press-sus}>0
\Longrightarrow
\mu_\ast^{src}>0
\text{ or legal source-current residue}>0.
}
\tag{PHG.17}
```

Without `(PHG.17)`, a failed pressure graph produces a new pressure-residue
object, not the exact Zeno source residue needed by Path 2.

Thus the pressure route has a precise fork:

```math
\boxed{
TerminalCZPressureCancellation.A
+TerminalPressureCollarLegal.A
+PressureDonorNoFreeSink.A
}
```

closes Path 1 through pressure no-sustain, while

```math
\boxed{
PressureSustainResidueToSourceResidue.A
+ZenoResidueLiouville_B.A
}
```

would convert pressure-graph failure into Path 2 contradiction.

## 6. Verdict

The pressure partner graph is worth pursuing, but it is not an automatic
closure.  It replaces the vague pressure hope with three exact theorem atoms:

```math
\boxed{TerminalCZPressureCancellation.A,}
```

```math
\boxed{TerminalPressureCollarLegal.A,}
```

```math
\boxed{PressureDonorNoFreeSink.A.}
```

The first is the new heart of the route.  It asks for terminal preservation of
Calderon--Zygmund pressure cancellation after one-sided weights and positive
selection.  If that theorem fails, the next required bridge is
`PressureSustainResidueToSourceResidue.A`; otherwise the pressure failure is a
new residue object rather than the source residue already handled by the
two-path source-wall framework.

The direct attempt at the first pressure-specific atom is recorded in
`mpp-terminal-cz-pressure-cancellation-direct-attempt-20260517.md`.  It reduces
`TerminalCZPressureCancellation.A` to `TerminalPressurePartnerSaturation.A`
plus pressure pair-weight and collar/legal ledgers.

The saturation attempt is recorded in
`mpp-terminal-pressure-partner-saturation-direct-attempt-20260517.md`.  It
isolates the bridge needed before pressure graph failure can feed the ordinary
source-wall Zeno branch:

```math
PressureLobeSourceTether.A.
```

The finite and limit tether attempts are recorded in
`mpp-pressure-lobe-source-tether-direct-attempt-20260517.md` and
`mpp-pressure-sustain-residue-to-source-residue-direct-limit-attempt-20260517.md`.
They show that the pressure route stops at:

```math
PressureSourceAC.A
```

or, if pressure has a component singular to the native source/legal carrier,

```math
PurePressureSustainResidueLiouville.A.
```
