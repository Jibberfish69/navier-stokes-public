---
theorem_id: forward-gold-prelimit-master-balance-construction-check-20260623
status: smooth-master-balance-core-checked-passage-gates-closed-downstream
logical_landing_node: prelimit_master_balance_construction
edge_effect: >-
  Checks the supplied prelimit master-balance construction. The contribution is
  real: the signed four-body problem should not be solved by constructing a
  post-limit symmetrizer H_sigma. On each smooth same-carrier packet, the
  transported material Navier-Stokes law can be tested with transported cutoffs
  and factorial mixed material weights to produce one smooth master balance.
  The four currents are then the split form of that master balance, not four
  separate suppliers. This neutralizes the earlier signed-net versus total
  positive variation obstruction by putting the positive material-record log
  clock on the left before the four-current cancellation and before compactness.
  The passage gates are closed by
  mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md:
  residual tightness/summability, storage/lower-bound convergence, and
  lower-semicontinuity of the visible limiting clock. The finite mixed-tower
  commutator estimate is accepted only as a finite smooth same-carrier tower
  estimate under the recorded material ellipticity/tower record; it is not a
  standalone global reserve.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-same-carrier-clock-lsc-defect-closure-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-carrying-full-tower-fourbody-balance-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-material-record-definition-for-fixed-hs-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-legal-residual-logscale-summability-correction-20260623.md
  - problems/navier-stokes/theorem-construction/lagrangian-material-derivative-recheck-note.md
---

# Prelimit Master Balance Construction Check

Date: 2026-06-23

## 0. Check result

The supplied construction is the right next repair.

The previous order tried to build a signed symmetrizer after compactness had
already separated the four readings and exposed \(d\mathcal K_{\rm iface}\) as
a post-limit residual.  The supplied construction changes the order:

1. stay at the smooth same-carrier level;
2. build one material master balance from the pulled-back Navier--Stokes law;
3. split that already-built balance into four adjacent currents;
4. pass the positive clock to the terminal limit;
5. define \(d\mathcal K_{\rm iface}\) as the lower-semicontinuity gap.

That is a real improvement.  The four currents become bookkeeping for a single
smooth identity rather than separate post-limit estimates.

## 1. Smooth same-carrier packet

For each smooth packet \(m\), use the transported material variables

```math
X_m(a,s),\qquad
v_m=V_m(X_m(a,s),s),\qquad
q_m=Q_m(X_m(a,s),s),
```

```math
F_m=D_aX_m,\qquad
A_m=F_m^{-1},\qquad
G_m=A_mA_m^\top.
```

The pulled-back equation is

```math
\partial_s v_m+A_m^\top\nabla_a q_m
=
\nu\,\operatorname{div}_a(G_m\nabla_a v_m),
\qquad
\operatorname{div}_a(A_m v_m)=0.
\tag{PMB.1}
```

Use a transported material cutoff \(\zeta(a)\).  For \(|\alpha|\le N^\sharp\),
use mixed material derivatives \(D_a^\alpha\) with weights

```math
w_\alpha(\sigma)
=
\frac{\rho(\sigma)^{2|\alpha|}}{(\alpha!)^2}.
\tag{PMB.2}
```

Use the continuation-depth material record
`MaterialRecordDefinitionForFixedHsReadout.A`.  In the present smooth-packet
calculation this means a finite same-carrier record equivalent to

```math
\mathcal P_{N,m}^{mat}
=
1+
\sum_{|\alpha|\le N^\sharp}w_\alpha
\int \zeta^2
\left(
|D^\alpha v_m|^2
+
|D^\alpha q_m|^2
+
|D^\alpha A_m|^2
+
|D^\alpha G_m|^2
\right)
+
E_m^{coll}.
\tag{PMB.3}
```

The displayed expression is an equivalent smooth-packet norm package, not a
new definition.  The pressure component is the same pressure/incompressibility
elliptic tower from `MaterialPressureTowerSamePacketEllipticReadout.A`, and the
collar/interface component is the same transported-packet record consumed by
the prelimit clock.  No finite-frequency truncation is being made.

## 2. Differentiated material tower

Applying \(D^\alpha\) to `(PMB.1)` gives

```math
\partial_sD^\alpha v_m
+
A_m^\top\nabla_aD^\alpha q_m
-
\nu\operatorname{div}_a(G_m\nabla_aD^\alpha v_m)
=
\mathcal C_{\alpha,m},
\tag{PMB.4}
```

with

```math
\mathcal C_{\alpha,m}
=
-[D^\alpha,A_m^\top\nabla_a]q_m
+
\nu[D^\alpha,\operatorname{div}_a(G_m\nabla_a)]v_m.
\tag{PMB.5}
```

Test `(PMB.4)` against \(w_\alpha\zeta^2D^\alpha v_m\), sum over
\(|\alpha|\le N^\sharp\), and keep the same material carrier throughout.

The time derivative gives the velocity-tower storage.  The radius derivative
gives

```math
dD_{S,m}^{rad}
=
-\frac{\rho'}{\rho}
\sum_\alpha
2|\alpha|w_\alpha
\int \zeta^2|D^\alpha v_m|^2\,ds
\ge0
\quad(\rho'\le0).
\tag{PMB.6}
```

The viscosity term gives

```math
dD_{Q,m}^{w}
=
\nu
\sum_\alpha w_\alpha
\int \zeta^2
G_m\nabla_aD^\alpha v_m:\nabla_aD^\alpha v_m\,ds.
\tag{PMB.7}
```

The pressure term is handled by integration by parts:

```math
\int \zeta^2D^\alpha v_m\cdot A_m^\top\nabla_aD^\alpha q_m
=
-
\int D^\alpha q_m\,
\operatorname{div}_a(\zeta^2A_mD^\alpha v_m).
\tag{PMB.8}
```

The top pressure-divergence term is cancelled by
\(\operatorname{div}_a(A_mv_m)=0\).  The remaining terms are differentiated
incompressibility commutators and collar terms involving \(\nabla\zeta\).  At
the smooth same-carrier level they are exact current/collar pieces, not
interface defects.

## 3. Finite mixed-tower commutator estimate

The nontrivial finite-smooth estimate is a clock-identification estimate, not a
right-side residual estimate.  The positive material-record growth created by
the commutator is entered into the prelimit clock before the master balance is
closed.  After the clock component is included, the remaining legal part has
the residual normal form from `LegalResidualLogScaleSummabilityCorrection.A`:

```math
\sum_\alpha w_\alpha
\left|
\int \zeta^2D^\alpha v_m\cdot\mathcal C_{\alpha,m}
\right|
\le
\varepsilon\,dD_{Q,m}^{w}
+
C_\varepsilon\,dD_{S,m}^{rad}
+
dR_{comm,m}.
\tag{PMB.9}
```

after the positive part of the material-record growth has been included in

```math
C_{log}\,d[\log(1+\mathcal P_{N,m}^{mat})]_+
\subset d\mathfrak C_{N,m}
\tag{PMB.9a}
```

with \(C_{log}\) chosen once from the finite tower constants.  Thus the
commutator does not leave a nonsummable positive term on the right side.

This is not a new global supplier.  It is a finite same-carrier tower estimate
inside the smooth packet.  Its algebraic reason is the factorial cancellation:

```math
w_\alpha^{1/2}{\alpha\choose\beta}
=
w_\beta^{1/2}w_{\alpha-\beta}^{1/2},
\tag{PMB.10}
```

so the Leibniz splitting stays inside the same finite material record.  The
estimate is valid only under the same smooth material ellipticity/coefficient
record that defines \(\mathcal P_{N,m}^{mat}\).  Any leftover term that is
scale-neutral, critical, or top-order is not allowed in \(dR_{comm,m}\); it is
part of \(d\mathfrak C_{N,m}\) or \(d\mathcal L_{4B,N,m}\).  The residual
\(dR_{comm,m}\) contains only positive-scale-gain, telescoping, or physically
bounded-overlap lower-order terms.

## 4. Geometry record

The smooth material geometry identities are

```math
\partial_sA_m=-A_m(\nabla_a v_m)A_m,
\tag{PMB.11}
```

```math
\partial_sG_m
=
(\partial_sA_m)A_m^\top
+
A_m(\partial_sA_m)^\top,
\tag{PMB.12}
```

and

```math
\partial_s(F_m^\top F_m)
=
2F_m^\top S(V_m)F_m.
\tag{PMB.13}
```

After applying \(D^\alpha\), every term is a product of the same finite
material tower factors:

```math
D^\beta A_m,\qquad
D^\gamma G_m,\qquad
D^\delta\nabla_a v_m.
```

The positive part of the resulting coefficient/strain growth is included in

```math
d[\log(1+\mathcal P_{N,m}^{mat})]_+.
\tag{PMB.14}
```

So geometry cannot grow outside the same material clock.

## 5. Smooth master balance

Define the smooth prelimit clock by

```math
d\mathfrak C_{N,m}
=
dA_{4B,N,m}
+
C_{log}\,d[\log(1+\mathcal P_{N,m}^{mat})]_+.
\tag{PMB.15}
```

Here \(dA_{4B,N,m}\) is the selected nonnegative readout of the same smooth
pressure-viscosity-incompressibility-velocity balance, not a detached
post-limit object, and \(C_{log}\) is the same structural constant used in
`(PMB.9a)`.

The smooth master balance is:

```math
d\mathfrak L_{4B,N,m}
+
c\,d\mathfrak C_{N,m}
+
d\mathcal L_{4B,N,m}
\le
dR_{4B,N,m}.
\tag{PMB.16}
```

Splitting the exact flux/current terms by their algebraic origin gives the four
current form:

```math
dL_{S,m}+dD_{S,m}^{rad}+dJ_{SQ,m}
\le
dJ_{GS,m}+dR_{S,m},
\tag{PMB.17}
```

```math
dL_{Q,m}+dD_{Q,m}^{w}+c\,dA_{4B,N,m}+dJ_{QC,m}
\le
dJ_{SQ,m}+dR_{Q,m},
\tag{PMB.18}
```

```math
dL_{C,m}+dJ_{CG,m}
\le
dJ_{QC,m}+dR_{C,m},
\tag{PMB.19}
```

```math
dL_{G,m}
+
c\,d[\log(1+\mathcal P_{N,m}^{mat})]_+
+
dJ_{GS,m}
\le
dJ_{CG,m}+dR_{G,m}.
\tag{PMB.20}
```

At the smooth level these currents are exact pieces of the same integration by
parts.  Summing cancels

```math
dJ_{SQ,m},\quad dJ_{QC,m},\quad dJ_{CG,m},\quad dJ_{GS,m},
```

and recovers `(PMB.16)`.

## 6. Terminal limit

After subsequence extraction in the downstream relaxed passage,

```math
dA_{4B,N,m}
+
C_{log}d[\log(1+\mathcal P_{N,m}^{mat})]_+
\rightharpoonup^\ast
d\mu_{\rm clock}.
\tag{PMB.21}
```

The visible limiting clock satisfies the lower-semicontinuity inequality

```math
dA_{4B,N}
+
C_{log}d[\log(1+\mathcal P_N^{mat})]_+
\le
d\mu_{\rm clock}.
\tag{PMB.22}
```

Define

```math
d\mathcal K_{\rm iface}
=
d\mu_{\rm clock}
-
dA_{4B,N}
-
C_{log}d[\log(1+\mathcal P_N^{mat})]_+.
\tag{PMB.23}
```

Then the limit of `(PMB.16)` is:

```math
d\mathfrak L_{4B,N}
+
c\left(
dA_{4B,N}
+
C_{log}d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
+
d\mathcal L_{4B,N}
\le
dR_{4B,N}.
\tag{PMB.24}
```

Thus the interface defect is not a separate post-limit obstruction. It is the
lost part of the smooth prelimit clock.

## 7. Effect on the older signed-total obstruction

The older `FullTowerSignedTotalExchangeRetention.A` obstruction came from
trying to infer total positive record-growth control from signed current
cancellation.

This master-balance construction changes that.  The positive material-record
log clock is placed on the left side of the smooth master identity before the
current split.  The four-current cancellation is then only the split form of
that master identity.  The proof no longer asks signed net cancellation to
control total positive variation by itself.

So the older signed-total obstruction is superseded on the branch where
`(PMB.16)` is proved.

## 8. Passage gates closed downstream

This construction note leaves the compactness-passage checks to the downstream
limit-passage proof:

```math
\sup_m\int dR_{4B,N,m}<\infty
```

and residual tightness, so \(dR_{4B,N,m}\to dR_{4B,N}\) with
\(\int dR_{4B,N}<\infty\);

```math
\liminf_m \mathfrak L_{4B,N,m}(\Sigma)
\ge
\mathfrak L_{4B,N}(\Sigma),
\qquad
\mathfrak L_{4B,N}\ge -C;
```

and clock lower semicontinuity:

```math
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
\le
d\mu_{\rm clock}.
```

The downstream proof closes these checks by residual normal form, relaxed
storage, and lower semicontinuity.  The interface defect is no longer a separate
obstruction; it is missing clock mass from the prelimit smooth same-carrier
identity.
