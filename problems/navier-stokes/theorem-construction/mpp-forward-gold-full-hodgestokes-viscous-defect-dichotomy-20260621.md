---
theorem_id: forward-gold-full-hodgestokes-viscous-defect-dichotomy-20260621
status: viscous-defect-paid-or-strong-gradient-convergence
logical_landing_node: full_hodgestokes_viscous_defect_dichotomy
edge_effect: "Discharges the viscous-measure member of the full Hodge-Stokes compactness/no-loss defect split as a dichotomy. Weak L^2 convergence of gradients produces a nonnegative viscous defect measure. If that measure is nonzero on the retained same carrier, it is already a visible viscous payment in the full-cycle ledger. If it is zero, weak convergence plus convergence of L^2 norms gives strong L^2 gradient convergence and hence no-loss passage of the viscous channel. Thus FHC.29 is not a hidden terminal source; it is either paid loss or strong viscous no-loss."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lossless-full-hodgestokes-packet-rigidity-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Full Hodge-Stokes Viscous Defect Dichotomy

Date: 2026-06-21

## 0. Aim

The compactness/no-loss split listed the viscous defect

```math
|\nabla V_n|^2\,dy\,ds
\rightharpoonup
|\nabla V|^2\,dy\,ds+\mu^\nu,
\qquad
\mu^\nu\ne0.
\tag{VDD.1}
```

This defect is not a hidden source.  It has a direct dichotomy:

```math
\boxed{
\mu^\nu\ne0
\Rightarrow
\text{visible viscous payment;}
\qquad
\mu^\nu=0
\Rightarrow
\nabla V_n\to\nabla V\text{ strongly in }L^2.
}
\tag{VDD.2}
```

## 1. Defect measure

Assume

```math
\nabla V_n\rightharpoonup\nabla V
\quad\text{weakly in }L^2(K).
\tag{VDD.3}
```

After passing to a subsequence, the nonnegative measures

```math
\nu|\nabla V_n|^2\,dy\,ds
\tag{VDD.4}
```

converge weakly as measures to some \(\mu_n^\ast\).  Lower semicontinuity gives

```math
\mu_n^\ast
\ge
\nu|\nabla V|^2\,dy\,ds.
\tag{VDD.5}
```

Define

```math
\mu^\nu
=
\mu_n^\ast-\nu|\nabla V|^2\,dy\,ds
\ge0.
\tag{VDD.6}
```

## 2. Nonzero defect is payment

If

```math
\mu^\nu(K)>0,
\tag{VDD.7}
```

then the same-carrier packet has paid positive viscous loss on \(K\).  This is
not a missing source or an invisible compactness failure.  It is one of the
full-cycle loss channels required by the participation-preserving packet.

So the nonzero branch is:

```math
\boxed{
\mu^\nu(K)>0
\Longrightarrow
\text{charge }D^\nu_{\rm packet}\text{ on the retained carrier.}
}
\tag{VDD.8}
```

## 3. Zero defect gives strong gradient convergence

If \(\mu^\nu(K)=0\), then

```math
\lim_n
\nu\|\nabla V_n\|_{L^2(K)}^2
=
\nu\|\nabla V\|_{L^2(K)}^2.
\tag{VDD.9}
```

Together with weak convergence in the Hilbert space \(L^2(K)\), this gives

```math
\boxed{
\nabla V_n\to\nabla V
\quad\text{strongly in }L^2(K).
}
\tag{VDD.10}
```

Consequently the localized viscous channel passes:

```math
\boxed{
\nu\chi_n\Delta V_n
\to
\nu\chi\Delta V
\quad\text{in }L^2_sH^{-1}_y(K),
}
\tag{VDD.11}
```

assuming \(\chi_n\to\chi\) in \(C^1\).

## 4. Current result

The viscous member of the no-loss defect split is now discharged as:

```math
\boxed{
\text{viscous defect}
=
\text{paid loss}
\quad\text{or}\quad
\text{strong viscous no-loss.}
}
\tag{VDD.12}
```

Therefore \(FHC.29\) cannot act as a hidden terminal carrier.  It either
contributes to the full-cycle payment, or it disappears and gives the strong
gradient convergence needed by the no-loss branch.
