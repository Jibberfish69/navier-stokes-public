---
theorem_id: forward-gold-original-smooth-to-prelimit-master-balance-family-direct-attempt-20260623
status: retained-branch-closes-loss-of-terminal-material-record-remains-part-face
logical_landing_node: original_smooth_data_to_prelimit_master_balance_family
edge_effect: >-
  Tests the remaining repo-side gate after the prelimit master-balance route
  supersedes the post-limit Kawashima burden. The retained branch closes:
  original smooth data supplies smooth prelimit material packets, the prelimit
  master balance gives finite A_4B and finite positive material-record clock,
  moving-cylinder CKN gives retained gauge-fixed critical packets at a singular
  endpoint, and the retained lower-bound theorem charges those packets to A_4B,
  contradicting the finite four-body reserve. What is not proved is the pure
  forward-positive no-exit theorem that original smooth data forces the terminal
  same-material record to remain retained. Loss of that record is exactly the
  Part face, not a hidden gold residual.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-route-supersedes-postlimit-kawashima-burden-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-singularity-to-retained-material-critical-packet-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-part-noexit-direct-attempt-20260622.md
---

# Original Smooth Data To Prelimit Master Balance Family Direct Attempt

Date: 2026-06-23

## 0. Target

After the prelimit master-balance repair, the remaining proposed pure-gold gate
is:

```math
\boxed{
\texttt{OriginalSmoothDataToPrelimitMasterBalanceFamily.A}
}
\tag{OSF.1}
```

Its job is to start from original smooth data and a finite-time terminal
obstruction, then supply the selected transported terminal material family to
which the prelimit master balance applies.

That family must have:

```math
\text{smooth prelimit material packets, transported collars, bounded overlap,}
\tag{OSF.2}
```

```math
\text{residual normal form, and all critical terms in clock/loss before compactness.}
\tag{OSF.3}
```

The direct attempt separates the retained branch from the lost-record branch.

## 1. What original smooth data supplies preterminally

Let \((u,p)\) be the classical solution on \([0,T_*)\).  For every
preterminal scale \(r_m>0\) and every terminal heat-scale window staying inside
\(t<T_*\), define

```math
V_m(s,y)=r_m u(T_*+r_m^2s,x_*+r_my),
\qquad
Q_m(s,y)=r_m^2p(T_*+r_m^2s,x_*+r_my).
\tag{OSF.4}
```

On every such preterminal packet the material pullback exists:

```math
X_m(a,s),\qquad
v_m=V_m(X_m(a,s),s),\qquad
q_m=Q_m(X_m(a,s),s),
\tag{OSF.5}
```

```math
F_m=D_aX_m,\qquad
A_m=F_m^{-1},\qquad
G_m=A_mA_m^\top.
\tag{OSF.6}
```

The pulled-back law is classical:

```math
\partial_s v_m+A_m^\top\nabla_a q_m
=
\nu\,\operatorname{div}_a(G_m\nabla_a v_m),
\qquad
\operatorname{div}_a(A_mv_m)=0.
\tag{OSF.7}
```

So original smooth data supplies the smooth prelimit packet identities for each
finite \(m\).  It does not automatically supply a terminal uniform retained
material record.

## 2. Retained branch

Assume the terminal same-material record is retained on the selected tail.  In
concrete terms, this means the terminal family admits:

```math
\sup_m \mathcal P_{N,m}^{mat}<\infty
\quad\text{on the selected normalized material packets}
\tag{OSF.8}
```

after harmless gauge removal, with transported collars and bounded overlap
strong enough for the residual normal form.

Then the prelimit master-balance theorem applies:

```math
d\mathfrak L_{4B,N}
+
c_0\left(
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
+
d\mathcal L_{4B,N}
\le
dR_{4B,N},
\qquad
\int dR_{4B,N}<\infty .
\tag{OSF.9}
```

Since the relaxed storage is lower-bounded,

```math
\int_{\sigma_0}^{\infty}dA_{4B,N}<\infty
\tag{OSF.10}
```

and

```math
\int_{\sigma_0}^{\infty}
d[\log(1+\mathcal P_N^{mat})]_+
<\infty .
\tag{OSF.11}
```

Now suppose the retained branch still contains a finite-time endpoint
singularity.  The retained moving-cylinder CKN contrapositive gives infinitely
many retained gauge-fixed material packets \(P_j\) with non-removable critical
density:

```math
\mathcal C^\perp(P_j)\ge\varepsilon_0 .
\tag{OSF.12}
```

The retained lower-bound theorem gives:

```math
\int_{P_j}A_{4B}\ge c(\varepsilon_0)>0 .
\tag{OSF.13}
```

The selected log-scale intervals have bounded multiplicity \(K\).  Therefore

```math
\sum_j c(\varepsilon_0)
\le
K\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
<\infty .
\tag{OSF.14}
```

This is impossible for infinitely many \(j\).  Hence:

```math
\boxed{
\text{retained terminal same-material record}
\Longrightarrow
\text{no finite-time singular endpoint on that branch.}
}
\tag{OSF.15}
```

## 3. Lost-record branch

The direct pure-gold no-exit theorem would need to prove that the lost-record
branch cannot occur:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\text{terminal same-material record is retained.}
}
\tag{OSF.16}
```

The installed inputs still do not prove `(OSF.16)`.

The reason is not a missing endpoint atom estimate and not a missing CKN
visibility estimate.  The issue is prior to the retained-branch contradiction:
the selected terminal material packet may fail to retain the coupled
pressure-viscosity-incompressibility-velocity tower as one same-fluid object.

That failure is exactly:

```math
Pack_Q+\neg Part_{N,Q}.
\tag{OSF.17}
```

If the same-material record is retained but no positive-thickness field window
survives, the failure lands in:

```math
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q}.
\tag{OSF.18}
```

These are not extra gold residuals after `(OSF.9)`.  They are the cases where
the selected terminal family needed for `(OSF.9)` is not available as a
retained same-material packet.

## 4. Exact repo state

The repaired repo chain is now:

```math
\text{retained terminal same-material record}
\Longrightarrow
\text{prelimit master balance applies}
\Longrightarrow
\int A_{4B}<\infty
\Longrightarrow
\text{retained singular recurrence is impossible}.
\tag{OSF.19}
```

The pure forward-positive gap is:

```math
\boxed{
\texttt{TerminalSamePacketPartNoExit.A}
}
\tag{OSF.20}
```

equivalently `(OSF.16)`.

Without `(OSF.16)`, the repo-side theorem is a pass-or-exit result:

```math
\boxed{
\text{finite-time terminal obstruction}
\Longrightarrow
\text{retained-branch contradiction}
\quad\text{or}\quad
Pack_Q+\neg Part_{N,Q}
\quad\text{or}\quad
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q}.
}
\tag{OSF.21}
```

## Verdict

`OriginalSmoothDataToPrelimitMasterBalanceFamily.A` is not fully proved as a
pure-gold no-exit theorem.  Its retained branch is closed by the new prelimit
master-balance route.  Its failure branch is exactly the already-typed
same-object participation/field exit, not a hidden unresolved endpoint pulse.
