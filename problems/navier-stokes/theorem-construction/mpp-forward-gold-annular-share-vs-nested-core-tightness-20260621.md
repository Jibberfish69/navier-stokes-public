---
ns_viewer:
  theorem_id: forward-gold-annular-share-vs-nested-core-tightness-20260621
  status: direct-form-test-installed-annular-share-overstrong
  proof_role: forward_gold_annular_share_target_correction
  logical_landing_node: annular_share_or_nested_core_tightness
  edge_effect: "Tests the exact theorem form behind SameCarrierAnnularShare.A. A fixed per-step annular-share lower bound is a reverse-doubling/descent theorem and is stronger than the recurrence kill actually needs. Without a scale-gap and reverse-doubling mechanism it is false even for ordinary finite non-atomic measures. The exact retained-recurrence alternative is weaker: nested-core tightness of the same carrier kills positive retained recurrence; failure of nested-core tightness is exactly the terminal point/time-face atom already routed to Part/Field after same-witness admission. Therefore new forward-gold progress should prove same-carrier endpoint/tail UI, p>1/Orlicz/source-square/CKN/no-waste reserve, or profile production, not respawn bare fixed-fraction annular share as a necessary theorem."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-cross-scale-strict-descent-annular-share-equivalence-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-annular-share-nested-core-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-share-pass-or-partfield-assembly-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-tail-ui-production-normal-form-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-ui-production-clause-recheck-20260620.md
  downstream_consequence: "Treat SameCarrierAnnularShare.A as an optional strict-descent supplier requiring reverse-doubling strength. The minimal fixed-chain forward-gold target is SameCarrierNestedCoreTightness.A, equivalently no same-carrier terminal atom. Existing same-carrier endpoint UI/tail UI/source-square/Orlicz/critical-strain/CKN/no-waste producers are sufficient for this weaker target; their failure is CM-facing after same-witness admission."
---

# MPP Forward-Gold Annular Share Versus Nested-Core Tightness

Date: 2026-06-21

## Status

Direct theorem-form test installed.  Forward-gold smoothness is not proved.

The previous notes showed that a fixed same-carrier annular-share lower bound
gives strict descent, and that repeated no-share in a fixed center/gauge chain
gives a terminal point/time-face atom.  This note sharpens the theorem form.

The fixed-fraction annular-share theorem is stronger than the branch needs.
The recurrence kill only needs nested-core tightness:

```math
\boxed{
A_0(R_N)\to0
\quad\text{as}\quad R_N\downarrow0.
}
\tag{ANT.1}
```

Failure of `(ANT.1)` is exactly the atom already routed to the CM Part/Field
consumer after same-witness admission.

## 1. Two different targets

Let \(\mu_0\) be the same-carrier finite measure on

```math
Q_1=B_1\times[-1,0],
\qquad
Q_R=B_R\times[-R^2,0],
\tag{ANT.2}
```

and define

```math
A_0(R):=\mu_0(Q_R).
\tag{ANT.3}
```

For a fixed compatible scale chain

```math
R_0=1,
\qquad
R_{j+1}=\lambda_jR_j,
\qquad
0<\lambda_j<1,
\qquad
R_j\downarrow0,
\tag{ANT.4}
```

the annular share is

```math
\operatorname{Ann}_j
=
A_0(R_j)-A_0(R_{j+1}).
\tag{ANT.5}
```

The strict-descent annular-share target is a reverse-doubling estimate:

```math
\operatorname{Ann}_j
\ge
\kappa A_0(R_j)-L_j
\tag{ANT.6}
```

for some fixed \(\kappa>0\), modulo legal errors.

The weaker nested-core tightness target is:

```math
\lim_{j\to\infty}A_0(R_j)=0.
\tag{ANT.7}
```

These are not the same theorem.

## 2. Why fixed annular share is not automatic

Even Lebesgue measure rejects a scale-free fixed annular fraction if the
microscope ratio can approach one.  For spacetime Lebesgue measure on \(Q_1\),

```math
{ |Q_R|-|Q_{\lambda R}|\over |Q_R|}
=
1-\lambda^5.
\tag{ANT.8}
```

Given any proposed \(\kappa>0\), choose \(\lambda\) so close to one that

```math
1-\lambda^5<\kappa.
\tag{ANT.9}
```

Then `(ANT.6)` fails with \(L_j=0\).  Thus a fixed per-step share requires a
scale-gap or a theorem that pays thin annuli separately.

Even with a fixed ratio \(0<\lambda<1\), non-atomicity does not imply a fixed
annular fraction.  Put \(R_j=\lambda^j\), and prescribe

```math
A_0(R_j)={1\over j+1}.
\tag{ANT.10}
```

Assign the ring mass

```math
\mu_0(Q_{R_j}\setminus Q_{R_{j+1}})
=
{1\over j+1}-{1\over j+2}
=
{1\over (j+1)(j+2)}.
\tag{ANT.11}
```

This defines a finite nonnegative measure supported on the nested annuli, with

```math
\mu_0(\{(0,0)\})
=
\lim_{j\to\infty}A_0(R_j)
=0.
\tag{ANT.12}
```

But

```math
{\operatorname{Ann}_j\over A_0(R_j)}
=
{1\over j+2}
\longrightarrow0.
\tag{ANT.13}
```

So fixed-fraction annular share is false even for a non-atomic finite measure.
It is a genuine reverse-doubling/descent theorem, not a consequence of
non-atomicity or finite mass.

## 3. What recurrence actually needs

The retained bad recurrence has positive normalized carrier:

```math
A_0(R_j)\ge a_0>0
\quad\text{along the retained tail.}
\tag{ANT.14}
```

Nested-core tightness `(ANT.7)` rules this out directly.  No per-step geometric
descent is needed.

Conversely, if `(ANT.7)` fails, then for some \(a_\infty>0\),

```math
\inf_jA_0(R_j)\ge a_\infty.
\tag{ANT.15}
```

Since \(Q_{R_j}\downarrow\{(0,0)\}\), continuity from above gives

```math
\mu_0(\{(0,0)\})
=
\lim_{j\to\infty}A_0(R_j)
\ge
a_\infty>0.
\tag{ANT.16}
```

Thus the exact fixed-chain alternative is:

```math
\boxed{
\text{nested-core tightness}
\quad\text{or}\quad
\text{same-carrier terminal atom.}
}
\tag{ANT.17}
```

This is weaker and more exact than demanding fixed-fraction annular share at
every step.

## 4. Standard same-carrier suppliers target tightness

Same-carrier endpoint UI, tail UI, Orlicz, \(p>1\), source-square, selected
critical-strain terminal-tail depletion, normalized CKN Carleson, and strict
no-waste all imply nested-core tightness once they are proved on the actual
selected carrier.

For example, a same-carrier \(L^p\) density bound with \(p>1\) gives

```math
\mu_0(Q_R)
\le
\|f\|_{L^p(Q_1)}\,|Q_R|^{1/p'}
=
C\|f\|_{L^p(Q_1)}R^{5/p'}
\longrightarrow0.
\tag{ANT.18}
```

The Orlicz/de la Vallee-Poussin and tail-UI criteria give the same conclusion
by uniform integrability of the selected marginal.  Source-square and CKN/strain
Carleson routes are useful only after they provide this same-carrier
nonconcentration or an unweighted reserve that dominates it.

## 5. Corrected proof target

The fixed-chain strict-descent route can still use a true annular-share theorem:

```math
\boxed{
\text{reverse-doubling annular share}
\Longrightarrow
\text{geometric descent.}
}
\tag{ANT.19}
```

But this is optional strength.  The minimal forward-gold target for retained
recurrence is:

```math
\boxed{
\text{SameCarrierNestedCoreTightness.A}
}
\tag{ANT.20}
```

meaning `(ANT.7)` for the actual selected carrier after legal terms are
removed.

Failure of `(ANT.20)` is not another forward-gold supplier.  It is the terminal
same-carrier atom:

```math
\boxed{
\neg\text{SameCarrierNestedCoreTightness.A}
\Longrightarrow
\mu_0(\{(0,0)\})>0.
}
\tag{ANT.21}
```

After same-witness admission, that atom is exactly the Part/Field consumer from
the annular-share assembly.

## Verdict

The exact correction is:

```math
\boxed{
\text{fixed-fraction annular share is stronger than necessary;}
}
\tag{ANT.22}
```

the necessary fixed-chain theorem is:

```math
\boxed{
\text{same-carrier nested-core tightness, or terminal atom consumption.}
}
\tag{ANT.23}
```

So `SameCarrierAnnularShare.A` should not be treated as the unique next gold
supplier unless a scale-gap/reverse-doubling mechanism is being proved.  The
non-aliased target is same-carrier endpoint/tail UI or any genuine unweighted
reserve that implies nested-core tightness on the actual selected carrier.
