---
ns_viewer:
  theorem_id: forward-gold-cross-scale-strict-descent-annular-share-equivalence-20260621
  status: equivalence-installed-forward-gold-not-proved
  proof_role: forward_gold_strict_descent_reduction
  logical_landing_node: cross_scale_strict_descent_annular_share
  edge_effect: "Installs the exact reduction behind the strict-descent version of the participation idea. Under the same-solution heat-scale recurrence, child unit-scale critical carrier equals parent inner-subcylinder carrier. Therefore any strict scale descent is exactly an annular-share lower bound on the parent cylinder: a fixed fraction of the same selected carrier must remain in the parent-minus-child annulus, modulo legal terms. Existing moving-cutoff, shell-density, and tower identities provide visibility/accounting, but they do not prove this same-carrier annular-share lower bound. The remaining proof must produce that annular share by source-square/no-waste/CKN/critical-strain/saturation/profile machinery, or else the recurrent branch remains a no-descent Zeno/profile/CM-consumption branch."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-solution-critical-recurrence-power-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-heat-scale-cutoff-nojump-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-shell-density-debt-curve-direct-test-20260620.md
  downstream_consequence: "Do not cite strict descent as a free consequence of participation, tower coupling, or shell accounting. In the exact same-solution scaling, strict descent requires same-carrier mass in the annular shell between consecutive microscopes. A terminal pulse supported inside the child subcylinder defeats annular-share descent unless an independent theorem identifies an interior payment or profile contradiction."
---

# MPP Forward-Gold Cross-Scale Strict Descent Annular Share Equivalence

Date: 2026-06-21

## Status

This note installs the exact form of the strict-descent question left by the
rescaled participation/tower branch.

The same-solution recurrence has already been computed:

```math
v_{j+1}(s,y)
=
\lambda_j v_j(\lambda_j^2s,\lambda_j y),
\qquad
\lambda_j={r_{j+1}\over r_j}.
\tag{ASE.1}
```

For critical quantities, it gives recurrence rather than decay:

```math
C_{j+1}(1)=C_j(\lambda_j),
\qquad
P_{j+1}(1)=P_j(\lambda_j),
\qquad
A_{j+1}(1)=A_j(\lambda_j).
\tag{ASE.2}
```

The question is therefore precise: a strict descent across scales can only
come from carrier mass that is present in the parent cylinder but absent from
the child subcylinder.

## 1. Same-carrier critical measure

Let \(\mu_j\) be any nonnegative same-carrier normalized critical measure on
the parent rescaled cylinder.  The argument below is purely measure-theoretic;
it applies to the selected source carrier, CKN carrier, critical-strain carrier,
source-square carrier, or tower-action carrier only after the appropriate
same-carrier identity has been proved.

Write the parabolic subcylinder

```math
Q_R:=B_R\times[-R^2,0],
\qquad 0<R\le1,
\tag{ASE.3}
```

and define

```math
A_j(R):=\mu_j(Q_R).
\tag{ASE.4}
```

The exact same-solution recurrence identifies the child unit cylinder with the
parent inner cylinder:

```math
A_{j+1}(1)=A_j(\lambda_j).
\tag{ASE.5}
```

This is the abstract carrier version of `(ASE.2)`.

## 2. Strict descent is annular share

A strict scale descent would have the form

```math
A_{j+1}(1)
\le
\theta A_j(1)+L_j,
\qquad 0<\theta<1,
\tag{ASE.6}
```

where \(L_j\) is a legal or already-paid error.  Using `(ASE.5)`, this is
equivalent to

```math
A_j(\lambda_j)
\le
\theta A_j(1)+L_j.
\tag{ASE.7}
```

Since

```math
A_j(1)-A_j(\lambda_j)
=
\mu_j(Q_1\setminus Q_{\lambda_j}),
\tag{ASE.8}
```

the descent inequality `(ASE.6)` is equivalent to the annular-share lower bound

```math
\boxed{
\mu_j(Q_1\setminus Q_{\lambda_j})
\ge
(1-\theta)A_j(1)-L_j.
}
\tag{ASE.9}
```

Thus strict descent is not an independent theorem shape.  Under exact
cross-scale recurrence, strict descent means that a fixed fraction of the same
selected carrier must live in the parent-minus-child annulus.

## 3. Why shell accounting alone does not prove the share

The moving-cutoff identity sees the annulus exactly, but its right-hand side is
not sign-definite.  It records the pressure-convection flux, the moving-wall
term, and the viscous cutoff exchange.  It does not force the nonnegative
selected carrier \(\mu_j\) to place mass in \(Q_1\setminus Q_{\lambda_j}\).

The shell-density readout has the same limitation.  It can detect that a fixed
outer average is eventually overpaid, but the live heat-scale profile
\(M(r)\simeq r\) still has current shell average below the current inner
average at every scale.  That radial fact does not imply `(ASE.9)`.

The mixed tower identity also does not imply `(ASE.9)` by itself.  It couples
all rungs and transports the factorial radii correctly, but a high-rung or
terminal pulse can remain concentrated inside \(Q_{\lambda_j}\) unless the
tower tail is identified with the selected carrier by a same-carrier theorem.

## 4. Exact counterconfiguration to descent from recurrence alone

Let \(\mu_j\) be supported inside the child subcylinder \(Q_{\lambda_j}\).  Then

```math
\mu_j(Q_1\setminus Q_{\lambda_j})=0,
\qquad
A_j(\lambda_j)=A_j(1).
\tag{ASE.10}
```

If \(A_j(1)>0\) and \(L_j<(1-\theta)A_j(1)\), `(ASE.6)` fails:

```math
A_{j+1}(1)=A_j(\lambda_j)=A_j(1)>
\theta A_j(1)+L_j.
\tag{ASE.11}
```

This is not asserted to be a Navier-Stokes solution.  It is the exact
measure-level obstruction to deriving strict descent from recurrence,
participation accounting, or nested-cylinder compatibility alone.

The obstruction is precisely the terminal heat-scale pulse: the carrier can
keep moving into the next child cylinder before the annular share is forced.

## 5. What the missing theorem must prove

The strict-descent route now has one non-aliased production target:

```math
\boxed{
\text{SameCarrierAnnularShare.A}
}
\tag{ASE.12}
```

For the actual selected carrier, it must prove a bound of the form `(ASE.9)`
on the retained terminal family, with \(L_j\) legal, summable, or endpoint-UI
small.

Known supplier languages can close this only if they produce the annular share
on the same carrier:

```math
\text{source-square plus selected-carrier domination,}
\tag{ASE.13}
```

```math
\text{selected critical-strain or normalized CKN Carleson reserve,}
\tag{ASE.14}
```

```math
\text{strict rescaled no-waste Lyapunov drop,}
\tag{ASE.15}
```

```math
\text{terminal signed saturation plus no-free Zeno donor chain,}
\tag{ASE.16}
```

or

```math
\text{profile production from the no-annular-share recurrent branch.}
\tag{ASE.17}
```

Without one of these, cross-scale strict descent is not proved.

## 6. Proof effect

The exact participation/tower route now has this fork:

```math
\boxed{
\text{annular share on the actual selected carrier}
\Longrightarrow
\text{strict scale descent}
\Longrightarrow
\text{no infinite terminal recurrence,}
}
\tag{ASE.18}
```

or

```math
\boxed{
\text{no annular share}
\Longrightarrow
\text{the carrier remains inside the child subcylinders}
\Longrightarrow
\text{Zeno/profile/CM-consumption branch.}
}
\tag{ASE.19}
```

This does not solve the forward-gold theorem.  It removes a hidden ambiguity:
strict descent is exactly an annular-share theorem on the same selected carrier,
not a consequence of recurrence, tower coupling, or shell bookkeeping alone.

## Verdict

The exact reduction is:

```math
\boxed{
\text{strict cross-scale descent}
\quad\Longleftrightarrow\quad
\text{same-carrier annular share between parent and child scales.}
}
\tag{ASE.20}
```

The remaining gold work is to prove that annular share by a same-carrier
source-square/no-waste/CKN/saturation theorem, or to send the no-share recurrent
branch into rigid profile production or the admitted CM Part/Field
consumer.
