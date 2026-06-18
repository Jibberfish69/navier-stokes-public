# ZenoBoundedClass_B.A + ZenoResidueLiouville_B.A continuation

## Status

Failed unconditional rigid-class closure.  The production side improves to `B_ASAC`, and a stronger reverse-Holder subclass has a clean residue Liouville theorem, but current inputs do not produce that subclass.

## Target

Find an explicit class `B` such that every surviving same-fluid terminal Zeno branch extracts an ancient source-residue limit in `B`, and prove

```math
(u_*,p_*,\mu_*^{src})\in B
\Longrightarrow
\mu_*^{src}=0.
```

This would eliminate `TerminalZenoRefillNoFreeSink.A_ind`.

## Strongest produced class

The branch produces the class

```math
B_{ASAC},
```

whose limits have same-fluid Zeno ancestry, ASAC-paid retained defects removed, legal exits removed, finite donor/refill truncations paid, no fixed preterminal entrance leaf, no earlier selected source slice, locally finite native positive source mass, and possible terminal-layer support.

This is stronger than bare local suitable compactness.  It is still compatible with terminal source atoms.

## Direct Liouville failure for B_ASAC

The endpoint time-marginal witness

```math
d\mu_m^{src}(y,s)=\rho(y)m\mathbf 1_{(-1/m,0]}(s)dyds
\rightharpoonup
\rho(y)dy\otimes\delta_{s=0}
```

has bounded local source mass, no fixed earlier selected source slice, and positive terminal residue.  Same-fluid ancestry and zero ASAC defect identify which paid channels have been removed; they do not force temporal thickness or source cancellation.

Thus

```math
B_{ASAC}\Longrightarrow\mu_*^{src}=0
```

is not available from current inputs.

## Reverse-Holder subclass

For `p>1`, define `B_{ASAC}^{RH}(p)` by adding

```math
\left\|\,\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,\right\|_{L_s^p((-1,0))}\le C_R.
```

Then Hölder gives

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])\le C_R\varepsilon^{1-1/p},
```

and weak-star passage removes the terminal atom.  Therefore

```math
B_{ASAC}^{RH}(p)\Longrightarrow ZenoResidueLiouville_{B_{ASAC}^{RH}(p)}.A.
```

The remaining production burden is exactly

```math
B_{ASAC}\Longrightarrow B_{ASAC}^{RH}(p)
\quad(p>1),
```

which is the failed `TerminalSourceReverseHolder_{B_ASAC}.A` supplier.

## Other candidate classes

Finite global ancient energy, Type I control, critical smallness, bounded vorticity/strain, self-similarity, and two-dimensional or axisymmetric structure are not produced by the Zeno extraction.

A source-cancellation class packages residue Liouville tautologically, but producing it is equivalent to the native positive source-depletion theorem.

A no-incoming/backward-uniqueness route would need new class-specific inputs:

```math
NoIncomingFlux_{B_{ASAC}}.A
+
AnisotropicStokesCarleman_{B_{ASAC}}.A.
```

These are not installed by the equality-class production theorem.

## New exact atom

The sharpened class-specific theorem is

```math
BASACAtomForcesEscape.A.
```

Statement: every nonzero terminal source atom in `B_ASAC` forces at least one forbidden escape: an earlier selected same-fluid source slice, a legal/projected/cutoff boundary exit, a finite or non-Zeno donor-refill exit, or a nonzero ASAC-paid defect measure.

If this holds, then

```math
BASACAtomForcesEscape.A
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}}.A
\Longrightarrow
TerminalZenoRefillNoFreeSink.A_{ind}.
```

## Verdict

The rigid-Zeno branch remains open.  The next useful target is no longer generic rigid-class production; it is the class-specific escape theorem `BASACAtomForcesEscape.A`.
