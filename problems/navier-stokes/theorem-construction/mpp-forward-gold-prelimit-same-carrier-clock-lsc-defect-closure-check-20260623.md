---
theorem_id: forward-gold-prelimit-same-carrier-clock-lsc-defect-closure-check-20260623
status: checked-order-of-limits-repair-defines-interface-defect-as-left-clock-lsc-gap
logical_landing_node: prelimit_same_carrier_clock_lsc_defect_closure
edge_effect: >-
  Checks the supplied order-of-limits repair. The correction is mathematically
  real: do not pass to the terminal compactness limit first and then try to
  move dK_iface from the residual side to the left. Prove the smooth
  same-carrier four-current clock identity first, where the one transported
  material packet has no interface defect. Then pass to the terminal limit and
  define dK_iface as the lower-semicontinuity gap between the weak-* limit of
  the prelimit positive clock and the visible limiting clock. With that order,
  dK_iface is left-side clock mass by construction. The remaining production
  burden is the smooth same-carrier four-current identity plus the compactness
  passage hypotheses, not a post-limit estimate of dK_iface.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-fourbody-material-symmetrizer-frontier-check-20260623.md
  - problems/navier-stokes/theorem-construction/mcp-retainedbranchkifacevanishing-a-samepacketinterfacedefectsummabilityorstrictloss-a-a8878c9562.md
  - problems/navier-stokes/theorem-construction/mcp-nonretainedkifacebranchloss-a-samepacketinterfacedefectsummabilityorstrictloss-a-a8ced1e326.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-interface-defect-envelope-after-qc-cg-gs-corrections-20260622.md
---

# Prelimit Same-Carrier Clock LSC Defect Closure Check

Date: 2026-06-23

## 0. Check result

The supplied correction is the right order of operations.

At the smooth prelimit level, the four bodies are not separate limiting
objects. They are four coordinates of one transported material packet:

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

At this level there is no interface defect:

```math
d\mathcal K_{{\rm iface},m}=0.
\tag{PLS.1}
```

The named interface defect appears only when the smooth same-carrier clock is
passed through compactness and some positive clock mass fails to remain visible
as the limiting selected activity or limiting material-record clock.

So \(d\mathcal K_{\rm iface}\) should not be estimated after the terminal
limit.  It should be defined as the lost part of the prelimit positive clock.

## 1. Smooth same-carrier identity

The smooth proof target is the same-carrier current system:

```math
dL_{S,m}
+
dD_{S,m}^{rad}
+
dJ_{SQ,m}
\le
dJ_{GS,m}
+
dR_{S,m},
\tag{PLS.2}
```

```math
dL_{Q,m}
+
dD_{Q,m}^{w}
+
c\,dA_{4B,N,m}
+
dJ_{QC,m}
\le
dJ_{SQ,m}
+
dR_{Q,m},
\tag{PLS.3}
```

```math
dL_{C,m}
+
dJ_{CG,m}
\le
dJ_{QC,m}
+
dR_{C,m},
\tag{PLS.4}
```

```math
dL_{G,m}
+
c\,d[\log(1+\mathcal P_{N,m}^{mat})]_+
+
dJ_{GS,m}
\le
dJ_{CG,m}
+
dR_{G,m}.
\tag{PLS.5}
```

These are prelimit identities/inequalities on one smooth material carrier.
The adjacent currents are not post-limit corrections. They are the exact
interfaces of the same smooth packet.

Summing `(PLS.2)`--`(PLS.5)` cancels

```math
dJ_{SQ,m},\quad dJ_{QC,m},\quad dJ_{CG,m},\quad dJ_{GS,m}.
```

This gives:

```math
d\mathfrak L_{4B,N,m}
+
c\,dA_{4B,N,m}
+
c\,d[\log(1+\mathcal P_{N,m}^{mat})]_+
+
d\mathcal L_{4B,N,m}
\le
dR_{4B,N,m},
\tag{PLS.6}
```

where

```math
\mathfrak L_{4B,N,m}
=
L_{S,m}+L_{Q,m}+L_{C,m}+L_{G,m}
```

up to exact bounded same-packet cross-storages, and

```math
d\mathcal L_{4B,N,m}
=
dD_{S,m}^{rad}
+
dD_{Q,m}^{w}
+
\text{other same-packet strict losses}.
```

This is the smooth same-carrier clock identity.

## 2. Limit passage and definition of the defect

Assume the positive prelimit clock measures have a weak-* limit:

```math
dA_{4B,N,m}
+
d[\log(1+\mathcal P_{N,m}^{mat})]_+
\rightharpoonup^\ast
d\mu_{\rm clock}.
\tag{PLS.7}
```

The retained limiting packet has visible clock

```math
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+.
\tag{PLS.8}
```

The lower-semicontinuity requirement is exactly:

```math
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
\le
d\mu_{\rm clock}.
\tag{PLS.9}
```

Then define

```math
d\mathcal K_{\rm iface}
:=
d\mu_{\rm clock}
-
dA_{4B,N}
-
d[\log(1+\mathcal P_N^{mat})]_+.
\tag{PLS.10}
```

This is nonnegative by `(PLS.9)`.  It is not a right-side residual. It is the
clock mass that existed in the smooth same-carrier packets but was not visible
as ordinary selected activity or ordinary material-record growth in the
terminal retained packet.

Therefore

```math
d\mu_{\rm clock}
=
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}.
\tag{PLS.11}
```

Passing `(PLS.6)` to the limit gives:

```math
d\mathfrak L_{4B,N}
+
c\,d\mu_{\rm clock}
+
d\mathcal L_{4B,N}
\le
dR_{4B,N}.
\tag{PLS.12}
```

Substituting `(PLS.11)` yields the desired simultaneous coercive identity:

```math
d\mathfrak L_{4B,N}
+
c\left(
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
+
d\mathcal L_{4B,N}
\le
dR_{4B,N}.
\tag{PLS.13}
```

This places \(d\mathcal K_{\rm iface}\) on the left by construction from the
prelimit positive clock.

## 3. What this repairs

The previous post-limit order was:

```math
\text{pass to the terminal limit}
\quad\longrightarrow\quad
\text{see }d\mathcal K_{\rm iface}\text{ as residual}
\quad\longrightarrow\quad
\text{try to move it left}.
```

That order creates the signed commutator obstruction.

The repaired order is:

```math
\text{prove the smooth same-carrier clock identity}
\quad\longrightarrow\quad
\text{take the positive clock limit}
\quad\longrightarrow\quad
\text{define }d\mathcal K_{\rm iface}\text{ as the lsc gap}.
```

This is not relabeling.  The defect is defined as mass from a positive
left-side measure before the limit.

## 4. Remaining proof obligations

This check does not claim the full MPP proof is closed. It changes the exact
production burden.

The remaining proof obligations are:

1. Prove the smooth same-carrier current system `(PLS.2)`--`(PLS.5)` from the
   material Navier--Stokes law on each smooth packet.
2. Prove the residual measures \(dR_{4B,N,m}\) are tight and pass to a summable
   \(dR_{4B,N}\).
3. Prove the storages and exact bounded cross-storages pass to the limiting
   \(\mathfrak L_{4B,N}\) with the required lower bound.
4. Prove the lower-semicontinuity domination `(PLS.9)` for the visible limiting
   clock.

When these four gates hold, the same-packet interface defect is automatically
part of the left-side clock.  No separate after-limit estimate of
\(d\mathcal K_{\rm iface}\) is needed.
