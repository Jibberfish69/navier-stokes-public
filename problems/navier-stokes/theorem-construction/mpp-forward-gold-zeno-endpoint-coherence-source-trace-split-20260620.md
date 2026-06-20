# Zeno Endpoint Coherence Source-Trace Split

Date: 2026-06-20

## Status

Reduction proof complete.  The endpoint-coherence failure in an infinite donor
chain has the same kernel as native carrier tangent observability.

The test endpoint difference decomposes into a source-active part and a
source-null part.  The source-active part is visible to native carrier tests
once source-trace completeness and uniform source-trace rank are supplied.  The
source-null part is not a positive carrier object; it is the unweighted
terminal action / exact Zeno profile production branch.

## 1. Endpoint difference as a quotient tangent

Let

```math
D_N\to R_0
\tag{ZES.1}
```

be the terminal endpoint pair left by an infinite donor chain after finite
donor telescoping and legal exits are removed.  In the normalized selected
gauge, write the endpoint profile difference as

```math
\Delta_N
:=
U(D_N)-U(R_0).
\tag{ZES.2}
```

Project it to the quotient tangent space at the terminal selected profile:

```math
\Pi_q\Delta_N\in E_U=\mathcal N_U^\perp.
\tag{ZES.3}
```

For a finite test family \(\Phi\), endpoint coherence is the assertion

```math
\sup_{\phi\in\Phi}
|\langle \Pi_q\Delta_N,\phi\rangle|
\to0.
\tag{ZES.4}
```

Failure means that some selected test reads a nonzero terminal endpoint
residue:

```math
\limsup_N
\sup_{\phi\in\Phi}
|\langle \Pi_q\Delta_N,\phi\rangle|
>0.
\tag{ZES.5}
```

## 2. Source-trace decomposition

Let

```math
\Gamma_U:E_U\to L^2(\mu_U^{src})
\tag{ZES.6}
```

be the native source-trace map on the selected positive source carrier.  Set

```math
K_U^{src}:=\ker\Gamma_U.
\tag{ZES.7}
```

Choose the Hilbert orthogonal decomposition

```math
E_U
=
K_U^{src}
\oplus
(K_U^{src})^\perp.
\tag{ZES.8}
```

Then

```math
\Pi_q\Delta_N
=
\Delta_N^{null}
+
\Delta_N^{act},
\qquad
\Delta_N^{null}\in K_U^{src},
\quad
\Delta_N^{act}\in (K_U^{src})^\perp.
\tag{ZES.9}
```

The endpoint residue splits exactly:

```math
\langle \Pi_q\Delta_N,\phi\rangle
=
\langle \Delta_N^{act},\phi\rangle
+
\langle \Delta_N^{null},\phi\rangle.
\tag{ZES.10}
```

## 3. Source-active endpoint residue

Assume `SourceTraceCompleteness.A` and `UniformSourceTraceRank.A`.  Then there
is a finite native carrier test family \(\Psi_i^{src}\) and a constant
\(c_{src}>0\) such that

```math
\sum_i
|\langle Z,\Psi_i^{src}\rangle|^2
\ge
c_{src}^2\|Z\|_{E_U}^2
\qquad
\text{for every }Z\in (K_U^{src})^\perp.
\tag{ZES.11}
```

Therefore, if the source-active component is nonzero along a subsequence,

```math
\limsup_N\|\Delta_N^{act}\|_{E_U}>0,
\tag{ZES.12}
```

then native carrier tests read a nonzero endpoint residue:

```math
\limsup_N
\sum_i
|\langle \Delta_N^{act},\Psi_i^{src}\rangle|^2
>0.
\tag{ZES.13}
```

This is the Door 1 side of endpoint-coherence failure.  It still needs the
positive-carrier bridge:

```math
\text{SourceResolvedNativeModeReadout.A}
+
\text{SelectedPositivePolarSaturation.A}
\tag{ZES.14}
```

to convert signed source-active readout into native positive selected source.

## 4. Source-null endpoint residue

If the source-active component vanishes in the quotient endpoint norm,

```math
\|\Delta_N^{act}\|_{E_U}\to0,
\tag{ZES.15}
```

then any remaining endpoint-coherence failure lies in the source-null kernel:

```math
\limsup_N
\|\Delta_N^{null}\|_{E_U}>0.
\tag{ZES.16}
```

For such a residue,

```math
\Gamma_U\Delta_N^{null}=0.
\tag{ZES.17}
```

So the selected native source carrier has zero first source trace in that
direction.  No carrier-mode selector can make it positive-source visible
without an additional theorem.  It routes to exactly the source-null branch:

```math
\text{SourceNullTangentEvacuation.A}.
\tag{ZES.18}
```

The direct test of that branch reduces it to

```math
\text{NoSourceNullProfileTangent.A},
\tag{ZES.19}
```

or

```math
\text{CompleteAnnularNoEscapeReadout.A}
+
\text{StrictRescaledNoWasteLyapunov.A},
\tag{ZES.20}
```

or

```math
\text{MinimalZenoProfileProduction.A}
+
\text{ZeroFluxLandauClassLiouville.A}.
\tag{ZES.21}
```

## 5. Exact endpoint-coherence replacement

The original endpoint-coherence theorem

```math
\text{ZenoTestEndpointCoherence.A}(\Phi)
\tag{ZES.22}
```

is stronger than the source-carrier branch needs.  The source-carrier branch
needs only the source-active version:

```math
\boxed{
\|\Delta_N^{act}\|_{E_U}\to0
\quad\text{or native carrier residue is visible.}
}
\tag{ZES.23}
```

The remaining source-null endpoint residue is not hidden source.  It is
zero-source-trace motion:

```math
\boxed{
\Delta_N^{null}\in\ker\Gamma_U.
}
\tag{ZES.24}
```

That residue belongs to the no-waste/profile-production branch.

## 6. Resulting donor-chain theorem

Combining donor-chain telescoping with the source-trace split gives:

```math
\boxed{
\begin{gathered}
\text{TerminalDonorGraphDecomposition.A}
+
\text{UniformZenoChainMassBound.A}
+
\text{SourceTraceCompleteness.A}
+
\text{UniformSourceTraceRank.A}
\\
\Longrightarrow
\text{every unpaid endpoint residue is either source-active native-carrier
visible or source-null.}
\end{gathered}
}
\tag{ZES.25}
```

To turn `(ZES.25)` into `NoFreeTerminalZenoDonorChain.A`, one still needs

```math
\text{SourceResolvedNativeModeReadout.A}
+
\text{SelectedPositivePolarSaturation.A}
\tag{ZES.26}
```

on the source-active branch, and

```math
\text{SourceNullTangentEvacuation.A}
\tag{ZES.27}
```

on the source-null branch.

## 7. Consequence

Endpoint coherence is no longer a single opaque theorem.  It factors as:

```math
\boxed{
\text{source-active endpoint residue}
\quad\text{plus}\quad
\text{source-null endpoint residue}.
}
\tag{ZES.28}
```

The first part is a native source-carrier identification problem.  The second
part is the unweighted terminal action / exact Zeno profile production problem.

## Verdict

The minimal donor-chain descent does not produce a contradiction by itself.
It produces an exact endpoint residue.  The source-trace split proves that the
residue has only two non-aliased forms:

```math
\boxed{
\text{positive-carrier-visible source-active residue}
}
\tag{ZES.29}
```

or

```math
\boxed{
\text{source-null zero-defect motion requiring no-waste or profile production.}
}
\tag{ZES.30}
```

This is the current sharp mathematical split beneath
`NoFreeTerminalZenoDonorChain.A`.
