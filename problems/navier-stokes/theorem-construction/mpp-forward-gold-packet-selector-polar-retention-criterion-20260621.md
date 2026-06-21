---
theorem_id: forward-gold-packet-selector-polar-retention-criterion-20260621
status: selector-retention-criterion-proved-ns-retention-not-installed
logical_landing_node: packet_selector_polar_retention_criterion
edge_effect: "Proves the exact finite-packet algebra behind the same-carrier positive-selection step in the upgraded four-body program. If a packet selector keeps the positive local participation density before signed summation, then the selected activity equals the signed selected current plus its negative local partner. The positive carrier is paid only when that negative partner is retained on the same carrier, charged to legal residual, or consumed by true loss/storage. Otherwise the unretained negative partner is an explicit selector polar defect. This does not prove the Navier-Stokes tower supplies polar retention; it identifies the exact missing production theorem."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-positive-selection-signed-current-gap-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-current-positive-activity-domination-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-four-body-terminal-atom-accounting-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-signed-saturation-direct-attempt-20260505.md
---

# Packet-Selector Polar Retention Criterion

Date: 2026-06-21

## 0. Aim

The upgraded four-body program is meant to keep the whole Navier-Stokes
participation law in one loop:

```math
\text{tower/scale}
\to
\text{participation}
\to
\text{compactness/no-loss}
\to
\text{gradient/geometry}
\to
\text{tower/scale}.
\tag{PSR.1}
```

The exact Body-II participation identity is signed:

```math
dM+dD=dJ.
\tag{PSR.2}
```

The selected native carrier may keep a positive packet contribution before the
signed summation.  This note proves the finite-packet algebra that decides when
that operation is harmless.

The answer is:

```math
\boxed{
\text{positive packet selection is same-carrier only when the negative local
partner is also retained or legally charged.}
}
\tag{PSR.3}
```

If the negative partner is not retained or charged, its missing mass is an
explicit selector polar defect.

## 1. Finite selected packet family

Let \(K\) be a compact time or log-scale interval.  Let
\(\mathcal F\) be a finite active packet family.  For each
\(P\in\mathcal F\), let

```math
h_P\in L^1(K\times P)
\tag{PSR.4}
```

be the signed local participation density produced by the rescaled
velocity-pressure-viscosity-incompressibility tower on that packet.

Let \(\mathcal S\subset\mathcal F\) be the selected subfamily.  For every Borel
set \(E\subset K\), define

```math
A_{\mathcal S}(E)
=
\sum_{P\in\mathcal S}
\int_E\int_P [h_P(s,y)]_+\,dy\,ds,
\tag{PSR.5}
```

```math
N_{\mathcal S}(E)
=
\sum_{P\in\mathcal S}
\int_E\int_P [h_P(s,y)]_-\,dy\,ds,
\tag{PSR.6}
```

and

```math
J_{\mathcal S}(E)
=
\sum_{P\in\mathcal S}
\int_E\int_P h_P(s,y)\,dy\,ds.
\tag{PSR.7}
```

Thus \(A_{\mathcal S}\) and \(N_{\mathcal S}\) are nonnegative finite measures
on \(K\), while \(J_{\mathcal S}\) is a finite signed measure.

By definition,

```math
\boxed{
dJ_{\mathcal S}
=
dA_{\mathcal S}-dN_{\mathcal S}.
}
\tag{PSR.8}
```

Equivalently,

```math
\boxed{
dA_{\mathcal S}
=
dJ_{\mathcal S}+dN_{\mathcal S}.
}
\tag{PSR.9}
```

This identity is the packet-selector form of polar accounting.

## 2. Retained, legal, and missing negative partner

A selector-retention decomposition is a decomposition of the negative selected
partner

```math
dN_{\mathcal S}
=
dN_{\rm ret}
+
dN_{\rm legal}
+
dN_{\rm miss},
\tag{PSR.10}
```

where all three terms are nonnegative finite measures.

The terms mean:

```math
dN_{\rm ret}
\quad
\text{is kept in the usable same-carrier signed ledger,}
\tag{PSR.11}
```

```math
dN_{\rm legal}
\quad
\text{is charged to pressure/cutoff/collar/projection/off-family residual,}
\tag{PSR.12}
```

and

```math
dN_{\rm miss}
\quad
\text{is the unretained selected negative partner.}
\tag{PSR.13}
```

Assume the legal piece is dominated by a declared legal residual:

```math
dN_{\rm legal}\le dR_{\rm legal}.
\tag{PSR.14}
```

Let

```math
dJ_{\mathcal S}
=
dJ_{\mathcal S}^+
-
dJ_{\mathcal S}^-
\tag{PSR.15}
```

be the Jordan decomposition of the selected signed current.  From `(PSR.9)`,

```math
\boxed{
dA_{\mathcal S}
\le
dJ_{\mathcal S}^+
+
dN_{\rm ret}
+
dR_{\rm legal}
+
dN_{\rm miss}.
}
\tag{PSR.16}
```

Therefore the selector is polar-complete on the selected carrier exactly when

```math
\boxed{
dN_{\rm miss}=0.
}
\tag{PSR.17}
```

Under polar completeness,

```math
\boxed{
dA_{\mathcal S}
\le
dJ_{\mathcal S}^+
+
dN_{\rm ret}
+
dR_{\rm legal}.
}
\tag{PSR.18}
```

This is the finite-packet retention criterion.

## 3. Coupling to Body-II participation

If the selected signed current is the same current that appears in the Body-II
participation identity

```math
dM_{\mathcal S}+dD_{\mathcal S}=dJ_{\mathcal S},
\qquad
dD_{\mathcal S}\ge0,
\tag{PSR.19}
```

then

```math
dJ_{\mathcal S}^+
\le
dJ_{\mathcal S}^-
+
dD_{\mathcal S}
+
(dM_{\mathcal S})^+.
\tag{PSR.20}
```

Combining `(PSR.16)` and `(PSR.20)` gives

```math
\boxed{
dA_{\mathcal S}
\le
dJ_{\mathcal S}^-
+
dD_{\mathcal S}
+
(dM_{\mathcal S})^+
+
dN_{\rm ret}
+
dR_{\rm legal}
+
dN_{\rm miss}.
}
\tag{PSR.21}
```

Thus a selected positive packet carrier is paid by the coupled participation
tower only through:

```math
dJ_{\mathcal S}^-
\quad
\text{retained signed counter-current,}
\tag{PSR.22}
```

```math
dD_{\mathcal S}
\quad
\text{true viscous/tower loss,}
\tag{PSR.23}
```

```math
(dM_{\mathcal S})^+
\quad
\text{positive storage jump/readout failure,}
\tag{PSR.24}
```

```math
dN_{\rm ret}
\quad
\text{retained negative local partner,}
\tag{PSR.25}
```

```math
dR_{\rm legal}
\quad
\text{declared legal residual,}
\tag{PSR.26}
```

or the unpaid defect

```math
dN_{\rm miss}.
\tag{PSR.27}
```

The last term is not a payment.  It is the precise failure of polar retention.

## 4. Terminal atom form

Let \(\tau\in K\) be the terminal endpoint.  Evaluating `(PSR.21)` on
\(\{\tau\}\) gives

```math
\boxed{
A_{\mathcal S}(\{\tau\})
\le
J_{\mathcal S}^-(\{\tau\})
+
D_{\mathcal S}(\{\tau\})
+
(dM_{\mathcal S})^+(\{\tau\})
+
N_{\rm ret}(\{\tau\})
+
R_{\rm legal}(\{\tau\})
+
N_{\rm miss}(\{\tau\}).
}
\tag{PSR.28}
```

Consequently, if

```math
J_{\mathcal S}^-(\{\tau\})=
D_{\mathcal S}(\{\tau\})=
(dM_{\mathcal S})^+(\{\tau\})=
N_{\rm ret}(\{\tau\})=
R_{\rm legal}(\{\tau\})=0,
\tag{PSR.29}
```

then

```math
\boxed{
A_{\mathcal S}(\{\tau\})
\le
N_{\rm miss}(\{\tau\}).
}
\tag{PSR.30}
```

So a positive selected terminal atom with no retained current, no true loss, no
storage jump, and no legal residual is exactly a selector polar-retention
failure.

Under polar completeness, `(PSR.17)`, the same hypotheses imply

```math
\boxed{
A_{\mathcal S}(\{\tau\})=0.
}
\tag{PSR.31}
```

This is the atom-level no-free positive-selection statement.

## 5. Four-body reading

The four-body terminal atom accounting note proves that a same-carrier oriented
loop gives an unweighted reserve once its exchange currents are literally the
same measures across bodies.

This note adds the missing selector clause.  In the selected packet grammar,
"same carrier" has two independent requirements:

```math
\boxed{
\text{the signed exchange current leaving one body is the same signed measure
entering the next body;}
}
\tag{PSR.32}
```

and

```math
\boxed{
\text{the positive local piece kept by selection retains or charges its
negative local partner.}
}
\tag{PSR.33}
```

The first requirement removes the carrier-mismatch defect \(K_{4B}\).  The
second removes the selector polar defect

```math
dK_{\rm sel}
=
\sum_i c_i\,dN_{{\rm miss},i}.
\tag{PSR.34}
```

If the exchange currents match but \(dK_{\rm sel}\ne0\), the loop can still
look balanced at the signed-current level while carrying an unpaid selected
positive carrier.  The missed object is not hidden; it is exactly
`(PSR.34)`.

Therefore the exact same-carrier four-body payment statement has the form

```math
\boxed{
dL_{4B}
+
dD_{4B}
+
dA_{4B}
\le
dR_{4B}
+
dK_{4B}
+
dK_{\rm sel}.
}
\tag{PSR.35}
```

When

```math
dK_{4B}=0
\qquad\text{and}\qquad
dK_{\rm sel}=0,
\tag{PSR.36}
```

the same-carrier four-body atom accounting theorem applies without an extra
selector defect.

## 6. Navier-Stokes conclusion

This note proves a measure-theoretic criterion, not the Navier-Stokes
production theorem.

The remaining PDE statement is:

```math
\boxed{
\text{the rescaled derivative tower, localized packet selection, and
pressure-viscosity-incompressibility participation law produce }
dK_{\rm sel}=0
\text{ or charge }dK_{\rm sel}\text{ to legal loss.}
}
\tag{PSR.37}
```

This is the exact finite-packet version of

```math
\boxed{
\text{TerminalSignedSaturation.A / SourceWeightedPolarSaturation.A.}
}
\tag{PSR.38}
```

The old obstruction has therefore not been solved by notation.  It has been
reduced to one explicit same-carrier packet statement:

```math
\boxed{
\text{no selected positive terminal packet may discard its negative local
partner without producing }dK_{\rm sel}\text{ as a charged defect.}
}
\tag{PSR.39}
```
