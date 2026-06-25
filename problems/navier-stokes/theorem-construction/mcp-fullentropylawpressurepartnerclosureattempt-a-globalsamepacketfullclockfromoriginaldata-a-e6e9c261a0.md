# FullEntropyLawPressurePartnerClosureAttempt.A

Status: failed to close from installed inputs.  The full Schur-complement entropy law remains conditional on the pressure-partner/collar package.

## Target

After the relative Schur-complement construction, the remaining estimate needed for the full entropy law is

```math
(d\Omega_N^{press/RHS}+d\Omega_N^{collar})_{top}
\le
C\,d\Omega_N^{rel.defect}
+C\,d\Omega_N^{lower}
+C\,d\Omega_N^{strain/frame}
+C\,dD_N^{vis/rad}
+C\,d\Omega_N^{annular}
+dR_N^{legal}.
\tag{FEL.1}
```

The only unresolved component in `(FEL.1)` is one-sided positive pressure/Hodge/collar graph-parallel growth after terminal positive selection.

## Installed pieces

The pressure/collar same-packet routing theorem proves admission:

```math
P_{\phi}^{strain}
\le C A_{4B}^{ann,tower}.
```

The material pressure tower elliptic readout proves that pressure is a same-packet incompressibility record:

```math
L_Gq=R(v,A,G),
\qquad
q=L_G^{-1}R.
```

The relative Schur-complement construction removes the graph-parallel energy and leaves only the pressure/collar defect

```math
W_N=Z_N-\Gamma_N(Y_N).
```

These pieces put pressure/collar into the correct same-material packet.  They do not by themselves pay the one-sided positive pressure/collar packet after terminal selection.

## Direct pressure-partner test

The pressure partner graph normal form decomposes positive pressure-Hessian/collar sustain into four cases:

1. retained Calderon-Zygmund partner;
2. legal geometric/collar exit;
3. internal unselected pressure donor sink;
4. diffuse unmatched pressure lobe.

The required closure package is

```math
TerminalCZPressureCancellation.A
+TerminalPressureCollarLegal.A
+PressureDonorNoFreeSink.A.
\tag{FEL.2}
```

The installed surfaces do not prove `(FEL.2)`.  They identify it as the pressure-specific remaining theorem.

## Pressure-source tether alternative

The pressure-source route seeks

```math
\mu_*^{press-sus}\ll \mu_*^{src}+\mu_*^{legal,src}.
```

The pressure Poisson and Leray identities act before positive-part extraction.  After one-sided terminal packet selection, the installed identities do not prove domination by the native source-current carrier.

The failed direct pressure tether attempts reduce the issue to

```math
SelectedPressurePositivePartComparison.A
```

or equivalent pressure-source absolute continuity / pure pressure Liouville statements.  Those are not installed.

## Verdict

The full entropy law is not closed from current inputs.  The Schur-complement correction is the correct entropy object, and it reduces the remaining task to the pressure-partner/collar theorem `(FEL.2)` or an equivalent pressure-source tether / pure-pressure-residue Liouville theorem.

The exact remaining theorem is

```math
\boxed{
\text{one-sided positive pressure/Hodge/collar graph-parallel growth is paid by retained CZ partners, legal collar exits, donor no-free-sink, or Schur relative defect.}
}
```

Without that theorem, the bounded-below relative Schur-complement entropy law remains conditional and the full entropy law is not yet closed.