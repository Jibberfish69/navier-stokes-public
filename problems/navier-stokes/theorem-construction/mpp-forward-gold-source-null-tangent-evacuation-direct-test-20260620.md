# Source-Null Tangent Evacuation Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SourceNullTangentEvacuation.A` is not supplied by the
current carrier-mode, quotient-gauge, or zero-flux inputs.

The theorem is the kernel branch left by the source-active tangent reduction.
It must handle profile-changing quotient tangents \(a\) satisfying

```math
\Gamma_Ua=0
\quad\text{on the selected native source carrier}.
\tag{SNT.1}
```

Such tangents are invisible to the positive source-carrier branch by definition.
They can be removed only by gauge neutrality, legal spill visibility, or the
zero-defect compactness/no-waste rigidity branch.

## 1. Exact target

Let

```math
E_U=\mathcal N_U^\perp
\tag{SNT.2}
```

be the quotient modulation tangent space and let

```math
K_U^{src}:=\ker\Gamma_U\subset E_U.
\tag{SNT.3}
```

`SourceNullTangentEvacuation.A` is the assertion:

```math
\boxed{
a\in K_U^{src}
\Longrightarrow
\text{gauge-neutral}
\quad\text{or}\quad
\text{legal-spill-visible}
\quad\text{or}\quad
\text{zero-defect compact-rigidity branch}.
}
\tag{SNT.4}
```

This is the exact replacement for asking the native positive carrier to observe
\(a\).  The native positive carrier cannot observe \(a\), because `(SNT.1)`
sets its first source trace to zero.

## 2. Gauge-neutral branch

The first possible discharge is

```math
K_U^{src}\subset \mathcal N_U.
\tag{SNT.5}
```

Since \(E_U=\mathcal N_U^\perp\), `(SNT.5)` implies

```math
K_U^{src}=\{0\}.
\tag{SNT.6}
```

This is the strong theorem already named
`NoSourceNullProfileTangent.A`.  It is equivalent to full
`NativeCarrierTangentObservability.A` after carrier trace completeness and
uniform source-trace rank.

Current inputs do not prove `(SNT.5)`.  The finite-dimensional model

```math
E_U=\mathbb R^2,
\qquad
\Gamma_U(a_1,a_2)=a_1
\tag{SNT.7}
```

has nonzero source-null tangent \((0,1)\).  Nothing in finite mode extraction,
formal duality, or compact quotient structure removes it.

## 3. Legal-spill branch

The second possible discharge is a complete readout away from the selected
source carrier:

```math
\|a\|_{E_U}^2
\le
C\Big(
\|\Gamma_Ua\|_{L^2(\mu_U^{src})}^2
+
\mathcal R_{spill}(a)
\Big),
\tag{SNT.8}
```

where \(\mathcal R_{spill}\) is pressure, collar, cutoff, endpoint, annular,
dissipation, stress-flux, or legal source residue measured outside the selected
carrier.

For \(a\in K_U^{src}\), `(SNT.8)` becomes

```math
\|a\|_{E_U}^2
\le
C\,\mathcal R_{spill}(a).
\tag{SNT.9}
```

This would route source-null motion into an existing legal ledger.  The current
installed inputs do not supply `(SNT.8)`.  They identify several individual
readouts, but there is no complete no-escape inequality proving that the
selected carrier plus legal spill norm all quotient tangents.

This is the same missing object as

```math
\text{CompleteAnnularNoEscapeReadout.A}.
\tag{SNT.10}
```

## 4. Zero-defect compact branch

If both source trace and legal spill vanish, then the retained motion lies in

```math
\Gamma_Ua=0,
\qquad
\mathcal R_{spill}(a)=0.
\tag{SNT.11}
```

The only remaining route is rigidity of a compact zero-readout family.  This is
exactly the branch tested by `ZeroReadoutFlatFamilyExclusion.A`.

The current inputs do not prove that exclusion.  A compact zero-readout family
can move without contradiction unless the proof has either an unweighted action
budget or a produced Landau-class profile.

## 5. Time-residence obstruction

Let a renormalized path move in one source-null direction:

```math
U(s)=U_0+\theta(s)Z,
\qquad
Z=T_Ua,
\qquad
a\in K_U^{src}.
\tag{SNT.12}
```

Assume the selected source trace remains zero to first order and all selected
source readouts vanish:

```math
\Gamma_Ua=0,
\qquad
\mu_{src,sel}^+(U(s))=0.
\tag{SNT.13}
```

The motion is excluded by an unweighted action estimate of the form

```math
\int |\theta_s(s)|^2\,ds<\infty
\tag{SNT.14}
```

combined with compact recurrence and a rigidity statement.  Physical energy
gives only a terminally discounted budget:

```math
\int e^{-s/2}|\theta_s(s)|^2\,ds<\infty.
\tag{SNT.15}
```

The discounted bound allows infinitely many unit terminal-time motions.  For
example,

```math
\theta_s(s)=1
\quad\text{on }\bigcup_{n\ge1}[n,n+1],
\tag{SNT.16}
```

has finite weighted budget

```math
\int_0^\infty e^{-s/2}|\theta_s(s)|^2\,ds<\infty,
\tag{SNT.17}
```

and infinite unweighted budget

```math
\int_0^\infty |\theta_s(s)|^2\,ds=\infty.
\tag{SNT.18}
```

Thus source-null motion is another instance of the terminal heat-scale time
residence obstruction.

## 6. Exact reduction

The direct test gives:

```math
\boxed{
\text{SourceNullTangentEvacuation.A}
\Leftarrow
\text{NoSourceNullProfileTangent.A}.
}
\tag{SNT.19}
```

or

```math
\boxed{
\text{SourceNullTangentEvacuation.A}
\Leftarrow
\text{CompleteAnnularNoEscapeReadout.A}
+
\text{StrictRescaledNoWasteLyapunov.A}.
}
\tag{SNT.20}
```

or

```math
\boxed{
\text{SourceNullTangentEvacuation.A}
\Leftarrow
\text{MinimalZenoProfileProduction.A}
+
\text{ZeroFluxLandauClassLiouville.A}.
}
\tag{SNT.21}
```

The first route proves that the kernel is trivial.  The second route proves that
every source-null tangent pays another complete native ledger.  The third route
turns the zero-readout compact orbit into an exact Landau-class profile and
uses the zero-force Liouville consumer.

## 7. Consequence

`SourceNullTangentEvacuation.A` is not a new independent supplier.  It is the
kernel form of the existing Door 2 wall:

```math
\boxed{
\text{unweighted terminal action/no-waste}
\quad\text{or}\quad
\text{exact Zeno profile production}.
}
\tag{SNT.22}
```

The carrier-mode branch is exhausted up to this fork.  Source-active tangents
are handled by source-trace completeness and uniform source-trace rank.  The
source-null tangents are not carrier-visible; they must be killed by no-waste,
complete no-escape readout, or Landau-class profile production.

## Verdict

`NativeCarrierTangentObservability.A` does not close by asking for more formal
mode tests.  Its visible part is finite-dimensional source-trace linear algebra.
Its invisible part is source-null motion, and source-null motion is exactly the
zero-defect terminal-time problem.

The remaining non-aliased target is:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
\quad\text{or}\quad
\text{MinimalZenoProfileProduction.A}.
}
\tag{SNT.23}
```
