---
theorem_id: forward-gold-exact-material-fourbody-exchange-concomitant-direct-attempt-20260622
status: direct-attempt-corrected-four-interfaces-exact-current-or-defect-xprimitives-demoted
logical_landing_node: exact_material_fourbody_exchange_concomitant
edge_effect: >-
  Tests the exact concomitant theorem exposed by the direct X-term attempt. The
  same material packet can close the four-body loop in only two lawful ways at
  each adjacent interface: either the outgoing current of one coordinate is
  literally the incoming current of the next coordinate with opposite sign, or
  the leftover mismatch is the differential of a bounded instantaneous
  same-packet cross-term. The installed Body-I/Body-II normal form closes the
  S->Q interface. Later checks against the Body-II/III, Body-III/IV, and
  Body-IV/I interface criteria show that retained Q->C, C->G, and G->S branches
  close by exact current identity, with X_QC=X_CG=X_GS=0 on those branches, and
  failures charged to their named packet defects. Thus the interface-concomitant
  problem is corrected: cumulative X-primitives are demoted, and the remaining
  work is the simultaneous packet envelope that includes all named interface
  defects inside the four-body loss/residual structure.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-simultaneous-material-fourbody-xterm-identity-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-law-bearing-full-tower-four-inequality-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-four-body-same-carrier-orientation-defect-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossscale-material-compactness-evolution-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-qc-cg-exact-current-vs-xprimitive-correction-20260622.md
---

# Exact Material Four-Body Exchange Concomitant Direct Attempt

Date: 2026-06-22

## 0. Point

The exact \(X\)-term question has a simpler interface form.

At each adjacent interface, there are only two lawful same-packet mechanisms:

```math
\boxed{
\text{the current is exactly oriented across the two coordinates,}
}
\tag{EMC.1}
```

or

```math
\boxed{
\text{the residual mismatch is }dX\text{ for a bounded instantaneous
same-packet cross-term.}
}
\tag{EMC.2}
```

Everything else is only a cumulative exchange record, and a cumulative record
does not prove lower boundedness.

## 1. Interface normal form

For an interface \(i\to j\), write the outgoing current from coordinate \(i\)
and incoming current to coordinate \(j\) as

```math
dJ_i^{out},
\qquad
dJ_j^{in}.
\tag{EMC.3}
```

The interface mismatch is

```math
d\mu_{ij}:=dJ_i^{out}-dJ_j^{in}.
\tag{EMC.4}
```

The four-body loop is closed at that interface if either

```math
d\mu_{ij}=d\mathcal D_{ij}+dR_{ij},
\qquad
d\mathcal D_{ij}\ge0,
\tag{EMC.5}
```

or

```math
d\mu_{ij}
=
-dX_{ij}+d\mathcal D_{ij}+dR_{ij},
\qquad
d\mathcal D_{ij}\ge0,
\tag{EMC.6}
```

where \(X_{ij}\) is bounded below by the diagonal same-packet storage:

```math
|X_{ij}|
\le
\varepsilon(L_i+L_j)+C_\varepsilon .
\tag{EMC.7}
```

Thus the concomitant theorem is:

```math
\boxed{
\text{all four adjacent mismatches satisfy `(EMC.5)` or `(EMC.6)` inside the
same transported material packet.}
}
\tag{EMC.8}
```

## 2. What is already closed: \(S\to Q\)

The Body-I and Body-II notes install the same-rung, same-cutoff, same-weight
identity

```math
dL_S+dD_S^{rad}+dD_Q^w=dJ_{SQ}^{flux}.
\tag{EMC.9}
```

Equivalently, the \(S\to Q\) mismatch is not hidden.  It is strict
same-packet loss:

```math
d\mu_{SQ}
=
dD_S^{rad}+dD_Q^w .
\tag{EMC.10}
```

This interface satisfies `(EMC.5)`.  No cumulative primitive is needed.

## 3. \(Q\to C\)

The \(Q\to C\) interface is the passage from the participation current to the
same-object/no-loss record.  The retained-packet criterion says that once the
three-measure packet

```math
\mathcal Q^{ret}
=
(\mu^A,\mu^N,\mu^J)
\tag{EMC.11}
```

is on the same selected carrier, the polar identity

```math
d\mu^J=d\mu^A-d\mu^N
\tag{EMC.12}
```

survives compactness.

That is a retention theorem after the three-measure packet exists.  It is not
yet an oriented current identity of the form

```math
dL_Q+dA_Q=dJ_{SQ}-dJ_{QC}
\tag{EMC.13}
```

generated directly by the material participation law.

Nor has a bounded instantaneous \(X_{QC}\) been constructed with

```math
d\mu_{QC}=-dX_{QC}+d\mathcal D_{QC}+dR_{QC}.
\tag{EMC.14}
```

So \(Q\to C\) remains open at the exact concomitant level.

## 4. \(C\to G\)

The \(C_N\) coordinate has been repaired on the retained branch: it is a mixed
material compactness/no-loss record, and its fixed-atlas log-scale derivative
is generated by the same material tower.

That gives a valid \(dL_C\).  It does not yet identify the outgoing current
from \(C_N\) with the incoming geometry current to \(G_N\):

```math
dL_C+dA_C=dJ_{QC}-dJ_{CG}.
\tag{EMC.15}
```

The current installed criterion says that if the compact Eulerian packet is
canonically pulled back by the Body-IV material map, then the interface is
exact.  The exact concomitant theorem still needs this as a differential
same-packet current identity or a bounded \(X_{CG}\)-primitive for the residual
mismatch:

```math
d\mu_{CG}=-dX_{CG}+d\mathcal D_{CG}+dR_{CG}.
\tag{EMC.16}
```

So \(C\to G\) is repaired as a retained-packet compatibility condition, but not
yet proved as a bounded instantaneous concomitant.

## 5. \(G\to S\)

The geometry coordinate has genuine material equations:

```math
\partial_sA=-A(\nabla_av)A,
\qquad
\partial_sG=(\partial_sA)A^T+A(\partial_sA)^T.
\tag{EMC.17}
```

These produce strain/frame/coefficient service.  The missing return is sharper:
the geometry current must recertify the next tower/scale carrier:

```math
dL_G+dA_G=dJ_{CG}-dJ_{GS}.
\tag{EMC.18}
```

The installed \(G\to S\) criterion is conditional on ellipticity, coefficient
control, commutator absorption, and same-carrier tower transport.  Under those
retained hypotheses it already gives the exact oriented return current:

```math
\Theta_{G\to S}\mathcal T_N[v,G]
=
\mathcal T_N^{next}[u,p]
\quad\Longrightarrow\quad
dJ_S^{in}=dJ_G^{out}.
\tag{EMC.19}
```

Thus the retained \(G\to S\) branch has

```math
d\mu_{GS}=0,
\qquad
X_{GS}=0.
\tag{EMC.20}
```

When that criterion fails, the defect is charged to

```math
K_{\rm ell}^+
+K_{\rm coef}^+
+K_{\rm comm}^+
+K_{\rm transport}^+
+K_G^+
+R_{\rm legal}.
\tag{EMC.21}
```

So \(G\to S\) is exact-current-or-defect.  It is not an \(X\)-primitive
problem.

## 6. Result

The exact concomitant theorem is not installed by the current inputs.

What is installed:

```math
\boxed{
S\to Q\text{ is exact as strict same-packet radius/viscous loss.}
}
\tag{EMC.22}
```

and

```math
\boxed{
G\to S\text{ is exact current on the retained criterion branch, with failures
charged to }K_{G\to S}^+.
}
\tag{EMC.23}
```

What remains:

```math
\boxed{
Q\to C,\quad C\to G
\text{ must be made into exact oriented current identities}
}
\tag{EMC.24}
```

or their residual mismatches must be represented by bounded instantaneous
cross-terms:

```math
\boxed{
d\mu_{ij}
=
-dX_{ij}+d\mathcal D_{ij}+dR_{ij},
\qquad
ij\in\{QC,CG\}.
}
\tag{EMC.25}
```

Therefore

```math
\boxed{
\texttt{ExactMaterialFourBodyExchangeConcomitant.A}
}
\tag{EMC.26}
```

reduces to the two concrete construction clauses:

```math
\boxed{
\texttt{LawBearingExchangeOrientation.A}
}
\tag{EMC.27}
```

and, for whatever mismatch remains after the best orientation,

```math
\boxed{
\texttt{BoundedMaterialMismatchPrimitive.A}.
}
\tag{EMC.28}
```

This is still one-fluid work.  Both clauses live inside the same transported
material participation law.  Neither clause may be replaced by a cumulative
exchange primitive.
