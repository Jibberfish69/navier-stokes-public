# BASACTimeFaceAllDoors.A — all remaining doors attempt

## Status

Failed unconditional discharge from installed inputs.  This note consolidates the four remaining doors after `BASACSourceAncestryCompactness.A` reached the diffuse terminal parent-cloud obstruction.

## Door 1: temporal anti-concentration

Target:

```math
BASACTerminalSourceAntiConcentration.A:
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0.
```

This removes the terminal time-face atom once supplied.  It follows from

```math
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A,
\qquad p>1.
```

Installed inputs supply finite local `L^1_s` source mass only.  The terminal-layer profile

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

has unit `L^1_s` mass and converges to a terminal atom.  Thus the temporal door remains open.

## Door 2: branch-complexity / entropy reserve

A branch-entropy theorem must price diffuse legal same-fluid parent clouds.  For

```math
\pi_P={1\over M}\sum_{\alpha=1}^{M}\delta_{P^-_\alpha},
```

every bounded selected parent family captures at most `B/M`, while the total
linear positive source mass is
```math
\sum_{\alpha=1}^{M}M^{-1}=1.
```

Available quadratic branch cost is

```math
\sum_{\alpha=1}^{M}M^{-2}=M^{-1}.
```

No installed ledger carries a positive coefficient for the uniform-parent entropy `H(\pi_P):=\log M`. Thus the entropy door remains open.

## Door 3: transported time-face no-incoming

The conditional reduction is valid:

```math
TransportedCylinderNoFlux_{B_{ASAC}}.A
+BASACTimeFaceAntiAtom.A
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}}.A.
```

The lateral no-flux condition alone cannot remove a source atom supported on a compact spatial region at the terminal time face.  The proof still needs the explicit time-face anti-atom clause.  Thus the transported no-incoming door remains open.

## Door 4: production into stronger rigid anti-atom subclass

Define `B_{ASAC}^{TA}` by adding

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad\forall R<\infty.
```

Then the Liouville theorem for `B_{ASAC}^{TA}` is exactly the conjunction of
the time-face anti-atom clause with the no-earlier-selected-source-slice
clause.

The production theorem

```math
B_{ASAC}\Longrightarrow B_{ASAC}^{TA}
```

is absent.  The current equality-class production yields finite local `L^1_s` mass, zero ASAC defect, paid-exit removal, no earlier selected slice, and terminal Zeno support; these clauses still permit the terminal-layer atom model above.  Thus rigid-subclass production remains open.

## All-doors-closed obstruction

The formal complement is the class `B_{ASAC}^{closed}`: same-fluid terminal carrier, zero ASAC defect, legal exits routed away, finite donor trees telescoped, no fixed preterminal entrance leaf, positive inherited terminal native source residue, and no production of temporal thickness, source Carleson, active reserve, transported no-incoming, or rigid anti-atom subclass.

At current route resolution, this class is consistent with the installed source-wall bookkeeping.  It is an obstruction class, not a contradiction theorem.

## Verdict

All four remaining doors remain open from installed inputs.  Progress now requires one genuinely new production mechanism:

```text
temporal anti-concentration,
branch-complexity entropy reserve,
transported time-face no-incoming plus anti-atom,
or production into a stronger rigid anti-atom subclass.
```

Absent one of these, the source-wall route has reached `B_{ASAC}^{closed}` as the hard obstruction class.
