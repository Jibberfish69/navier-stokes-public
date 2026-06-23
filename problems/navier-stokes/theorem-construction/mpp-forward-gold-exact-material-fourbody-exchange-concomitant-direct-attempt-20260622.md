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

This is the retained-branch current criterion.  In a lossless same-carrier
branch,

```math
K_{\rm sel}=0,\qquad K_C^+=0,\qquad R_{\rm legal}=0,
\tag{EMC.13}
```

so the \(Q\to C\) interface has no residual orientation defect:

```math
dK_{Q\to C}=0,
\qquad
X_{QC}=0.
\tag{EMC.14}
```

When the criterion fails, the failure is already charged to

```math
K_{\rm sel}
+K_{C,A}^+
+K_{C,N}^+
+K_{C,J}^+
+R_{\rm legal}.
\tag{EMC.15}
```

Thus \(Q\to C\) is exact-current-or-defect.  It is not an \(X\)-primitive
problem.

## 4. \(C\to G\)

The \(C_N\) coordinate has been repaired on the retained branch, and the
Body-III/IV criterion identifies the canonical Eulerian packet with the
Body-IV material packet through the volume-preserving material pullback.  On
that branch, the interface current is exact:

```math
dJ_G^{\rm in}
=
\Xi^\sharp dJ_C^{\rm out}.
\tag{EMC.16}
```

Equivalently, on the common selected four-body carrier,

```math
dK_{C\to G}=0,
\qquad
X_{CG}=0.
\tag{EMC.17}
```

When the criterion fails, the failure is already charged to

```math
K_C^+
+K_{\rm geom,map}^+
+K_{\rm geom,gauge}^+
+K_{\rm geom,coef}^+
+R_{\rm legal}.
\tag{EMC.18}
```

Thus \(C\to G\) is exact-current-or-defect.  It is not an \(X\)-primitive
problem.

## 5. \(G\to S\)

The geometry coordinate has genuine material equations:

```math
\partial_sA=-A(\nabla_av)A,
\qquad
\partial_sG=(\partial_sA)A^T+A(\partial_sA)^T.
\tag{EMC.19}
```

These produce strain/frame/coefficient service.  The missing return is sharper:
the geometry current must recertify the next tower/scale carrier:

```math
dL_G+dA_G=dJ_{CG}-dJ_{GS}.
\tag{EMC.20}
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
\tag{EMC.21}
```

Thus the retained \(G\to S\) branch has

```math
d\mu_{GS}=0,
\qquad
X_{GS}=0.
\tag{EMC.22}
```

When that criterion fails, the defect is charged to

```math
K_{\rm ell}^+
+K_{\rm coef}^+
+K_{\rm comm}^+
+K_{\rm transport}^+
+K_G^+
+R_{\rm legal}.
\tag{EMC.23}
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
\tag{EMC.24}
```

and

```math
\boxed{
Q\to C\text{ is exact current on the retained three-measure packet branch.}
}
\tag{EMC.25}
```

and

```math
\boxed{
C\to G\text{ is exact current on the retained material-pullback branch.}
}
\tag{EMC.26}
```

and

```math
\boxed{
G\to S\text{ is exact current on the retained tower-recertification branch.}
}
\tag{EMC.27}
```

The exact-concomitant correction is therefore:

```math
\boxed{
X_{QC}=X_{CG}=X_{GS}=0
\quad\text{on the retained exact-current branches.}
}
\tag{EMC.28}
```

What remains is not a cumulative primitive construction.  It is the simultaneous
packet envelope:

```math
\boxed{
\text{all named interface defects must be included in }
dD_{4B,N}+dA_{4B,N}+dR_{4B,N}
\text{ on the same material packet.}
}
\tag{EMC.29}
```

Equivalently, the still-open gold work is:

```math
\boxed{
\texttt{SimultaneousMaterialFourBodyPacketCoercivity.A}
}
\tag{EMC.30}
```

with \(Q\to C\), \(C\to G\), and \(G\to S\) treated as exact-current-or-defect
interface criteria, not as detached \(X\)-primitive problems.
