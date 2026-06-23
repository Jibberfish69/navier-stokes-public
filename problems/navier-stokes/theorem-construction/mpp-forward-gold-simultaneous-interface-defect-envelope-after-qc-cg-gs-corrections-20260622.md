---
theorem_id: forward-gold-simultaneous-interface-defect-envelope-after-qc-cg-gs-corrections-20260622
status: algebraic-interface-defect-envelope-installed-production-summability-open
logical_landing_node: simultaneous_interface_defect_envelope_after_qc_cg_gs_corrections
edge_effect: >-
  Uses the corrected Q->C, C->G, and G->S exact-current-or-defect interface
  criteria to update the simultaneous four-body packet frontier. The retained
  branches have zero orientation mismatch. The non-retained branches contribute
  only named packet defects: S->Q strict tower/viscous loss or same-carrier
  mismatch, Q->C selector/compactness/legal defects, C->G compactness/geometry/legal
  defects, and G->S ellipticity/coefficient/commutator/transport/geometry/legal
  defects. Therefore the global orientation defect is algebraically enveloped
  by the same four-body loss/residual package. This does not prove smoothness:
  it leaves open the production theorem that these defect measures are summable,
  vanish on the retained branch, or are themselves strict same-packet loss under
  original smooth data.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-four-body-same-carrier-orientation-defect-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-qc-cg-exact-current-vs-xprimitive-correction-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gs-return-exact-current-vs-xprimitive-correction-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-material-fourbody-exchange-concomitant-direct-attempt-20260622.md
---

# Simultaneous Interface Defect Envelope After Q->C / C->G / G->S Corrections

Date: 2026-06-22

## 0. Point

The retained interface branches are now exact-current branches.  The remaining
interface obstruction is not an unconstructed \(X\)-primitive.  It is the
positive part of the named interface defects.

The four-body orientation decomposition gives

```math
dK_{\rm orient}^+
\le
dK_{S\to Q}^+
+dK_{Q\to C}^+
+dK_{C\to G}^+
+dK_{G\to S}^+.
\tag{IDE.1}
```

The corrected interface notes identify each term on the right.

## 1. Interface bounds

For \(S\to Q\), the retained same-rung identity gives strict same-packet loss:

```math
dK_{S\to Q}^+
\le
dD_S^{rad}
+dD_Q^w
+dK_{S\to Q,{\rm carrier}}^+
+dR_{\rm legal}.
\tag{IDE.2}
```

Here \(dK_{S\to Q,{\rm carrier}}^+\) denotes the already named same-rung,
same-weight, same-cutoff, same-cylinder, or same-transport failure.  On the
retained branch it is zero.

For \(Q\to C\), the retained three-measure participation packet gives exact
polar current.  Failure is charged by the Body-II/III criterion:

```math
dK_{Q\to C}^+
\le
dK_{\rm sel}
+dK_{C,A}^+
+dK_{C,N}^+
+dK_{C,J}^+
+dR_{\rm legal}.
\tag{IDE.3}
```

For \(C\to G\), the retained material pullback gives exact current.  Failure is
charged by the Body-III/IV criterion:

```math
dK_{C\to G}^+
\le
dK_C^+
+dK_{\rm geom,map}^+
+dK_{\rm geom,gauge}^+
+dK_{\rm geom,coef}^+
+dR_{\rm legal}.
\tag{IDE.4}
```

For \(G\to S\), the retained tower-recertification criterion gives exact return
current.  Failure is charged by the Body-IV/I criterion:

```math
dK_{G\to S}^+
\le
dK_{\rm ell}^+
+dK_{\rm coef}^+
+dK_{\rm comm}^+
+dK_{\rm transport}^+
+dK_G^+
+dR_{\rm legal}.
\tag{IDE.5}
```

## 2. Global envelope

Substituting `(IDE.2)`--`(IDE.5)` into `(IDE.1)` gives

```math
\boxed{
dK_{\rm orient}^+
\le
d\mathcal K_{\rm iface}
+dD_S^{rad}
+dD_Q^w
+dR_{\rm legal},
}
\tag{IDE.6}
```

where

```math
\begin{aligned}
d\mathcal K_{\rm iface}
:={}&
dK_{S\to Q,{\rm carrier}}^+
+dK_{\rm sel}
+dK_{C,A}^+
+dK_{C,N}^+
+dK_{C,J}^+ \\
&+dK_C^+
+dK_{\rm geom,map}^+
+dK_{\rm geom,gauge}^+
+dK_{\rm geom,coef}^+ \\
&+dK_{\rm ell}^+
+dK_{\rm coef}^+
+dK_{\rm comm}^+
+dK_{\rm transport}^+
+dK_G^+ .
\end{aligned}
\tag{IDE.7}
```

Thus the simultaneous four-body inequality may be written as

```math
dL_{4B,N}
+dD_{4B,N}
+dA_{4B,N}
\le
dR_{4B,N}^{env},
\tag{IDE.8}
```

with

```math
dR_{4B,N}^{env}
:=
dR_{4B,N}
+d\mathcal K_{\rm iface}.
\tag{IDE.9}
```

This is a same-packet statement: every term in \(d\mathcal K_{\rm iface}\)
comes from one of the four adjacent interface criteria on the same selected
material carrier.

## 3. Lossless branch

On the retained lossless branch,

```math
d\mathcal K_{\rm iface}=0,
\qquad
dR_{4B,N}^{env}=dR_{4B,N}.
\tag{IDE.10}
```

Then the adjacent currents cancel exactly in the summed four-body identity.
No cumulative exchange primitive is used.

The zero-loss kernel theorem applies to this branch: zero full loss forces the
packet into the harmless Galilean/affine-pressure gauge, and selected singular
participation vanishes on that gauge.

## 4. Remaining production theorem

This note installs only the algebraic envelope of interface defects.  It does
not prove that \(dR_{4B,N}^{env}\) is summable from original smooth data.

The remaining gold theorem is:

```math
\boxed{
\texttt{SamePacketInterfaceDefectSummabilityOrStrictLoss.A}
}
\tag{IDE.11}
```

with content:

```math
\boxed{
d\mathcal K_{\rm iface}
\text{ is either strict same-material packet loss, summable residual, or zero
on the retained branch.}
}
\tag{IDE.12}
```

Equivalently, the simultaneous coercivity theorem must prove

```math
\boxed{
d\mathfrak L_{4B,N}
+c\,dA_{4B,N}
+c\,d[\log(1+\mathcal P_N^{mat})]_+
+d\mathcal L_{4B,N}
\le
dR_{4B,N}^{env},
\qquad
\int dR_{4B,N}^{env}<\infty,
}
\tag{IDE.13}
```

with all terms carried by the same transported material packet.

