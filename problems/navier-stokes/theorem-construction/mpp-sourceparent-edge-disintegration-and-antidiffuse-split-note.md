# MPP SourceParent Edge-Disintegration and Anti-Diffuse Split Note

## Status

Bounded solve attempt for `SourceParent.Measure` after the parent measure was
formally defined in
`mpp-sourceparent-measure-formal-definition-note.md`.

The result is a sharp split:

```math
\boxed{
EdgeDisintegrate.A
+
AntiDiffuseParent.A
\Longrightarrow
SourceParent.Measure.
}
```

`EdgeDisintegrate.A` is definitional once the localized pre-Cauchy source packet
is used.  `AntiDiffuseParent.A` is the remaining genuine theorem.

## Local Pre-Cauchy Source

For a localized child pulse `P`, keep the nonlinear source before global
Cauchy/Young estimates erase physical co-location:

```math
\mathcal S_P^{nl}
=
\int_{Q_P^\Phi}
\mathcal N(u_{<j},u_{\sim j},u_{>j})\,\chi_P\,dx\,dt.
```

Here `\chi_P` is the same-fluid cutoff and the factors are the active dyadic
or packet components feeding the child shell.

The key point is that this object is spatially local.  It still knows the
child cylinder and same-fluid label family.

## Edge Disintegration

Decompose the source factors into admissible predecessor packets:

```math
\mathcal N
=
\sum_{\alpha\in\mathcal A(P)}
\mathcal N_\alpha(P^-\to P).
```

Define the positive edge measure by the positive variation of the child-feeding
source contribution:

```math
d\pi_P(P^-_\alpha)
:=
\bigl(\mathcal N_\alpha(P^-_\alpha\to P)\bigr)_+.
```

More invariantly:

```math
d\Pi(P^-\to P)
=
\bigl[d\mathcal S^{nl}(P^-\to P)\bigr]_+.
```

This gives the first part of `SourceParent.Measure`:

```math
\int_{\mathsf{Pred}(P)}d\pi_P
\ge
c\,\mu_P^{src,+}(P)
-
Charge_P
-
Reserve_P
-
o(1),
```

provided the source packet is the localized pre-Cauchy source, not the global
post-Cauchy mixed-shell product.

It also preserves same-fluid edge fidelity by construction: only predecessor
packets inside the licensed same-fluid predecessor region `Pred(P)` are legal
edges.  Contributions outside that region are not silently used; they are
assigned to `SourceLocalizationLoss`.

Thus:

```math
\boxed{
EdgeDisintegrate.A:
\text{SP.1 source recovery and SP.3 same-fluid edge fidelity.}
}
```

## The Remaining Anti-Diffuse Problem

The edge measure can still be diffuse:

```math
\pi_P=\sum_{\alpha=1}^{M}M^{-1}\delta_{P^-_\alpha},
\qquad
M\gg1.
```

Then total source recovery holds, but no single predecessor carries comparable
normalized source/mix mass.

Therefore `SourceParent.Measure` needs:

```math
\boxed{
AntiDiffuseParent.A:
\text{the positive parent measure either concentrates on boundedly many
legal predecessors or its diffuse part pays a finite named charge.}
}
```

In axioms:

```math
AntiDiffuseParent.A
\Longrightarrow
SP.2+SP.4+SP.5.
```

That is, anti-diffuse control supplies parent lower density, summable loss, and
the charge alternative for failed concentration.

## Conditional Closure

Combining the two pieces gives:

```math
\boxed{
EdgeDisintegrate.A
+
AntiDiffuseParent.A
\Longrightarrow
SourceParent.Measure.
}
```

Then the localized-core ancestry route becomes:

```math
\neg SourcePulseExclusion.A
\Longrightarrow
P^0
\xRightarrow{SourceParent.Measure}
\bigl[
\text{finite charge}
\vee
\text{infinite same-fluid source ancestry}
\bigr].
```

## Verdict

The parent-measure formalization is now reduced to one precise theorem:

```math
\boxed{
AntiDiffuseParent.A.
}
```

It is not installed by the current signed commutator, positive-carrier,
pressure, cutoff, local-energy, or frozen source-supplier ledgers.  Those
ledgers either recover an aggregate source or bound it from above; they do not
force bounded-complexity parent concentration.

The direct attempt
`mpp-antidiffuseparent-a-direct-attempt-note.md` sharpens this further to
`ParentConcentrationOrDiffuseCharge.A`: every positive source-parent measure
must either concentrate on boundedly many legal predecessors or charge its
diffuse part to a finite route reserve.
The follow-up split audit
`mpp-parent-concentration-or-diffuse-charge-direct-audit-note.md` records that
neither branch is supplied by the installed route surfaces.
