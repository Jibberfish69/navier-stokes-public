---
theorem_id: mpp-four-body-cyclic-payment-closure-direct-attempt-20260621
status: direct-attempt-complete-full-proof-not-closed
logical_landing_node: four_body_cyclic_payment_or_lossless_cycle_rigidity
edge_effect: "Pushes the resurrected four-body balance circuit as an actual payment mechanism. The abstract cyclic-payment lemma closes the unweighted reserve once each body supplies an oriented exchange inequality on the same carrier. Testing against current Navier-Stokes inputs shows the remaining issue is not a vague missing payment but the exact full-cycle theorem: either prove strict four-body cyclic payment, or show every lossless four-body cycle produces a removable/rigid profile with zero selected participation activity."
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-balance-circuit-redevelopment-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-reserve-six-supplier-exhaustion-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-to-source-square-upgrade-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-source-norm-upgrade-test-20260621.md
---

# Four-Body Cyclic Payment Closure Direct Attempt

Date: 2026-06-21

## 0. Aim

The previous redevelopment restored the original intent of the four-body
program: keep four control measures in balance.

This note pushes that idea as a proof mechanism.

The question is:

```math
\boxed{
\text{can the closed four-body balance circuit itself remove the missing
unweighted payment?}
}
\tag{FCP.1}
```

The answer is sharp.

The abstract cyclic mechanism works.  If the four body exchanges are oriented
on the same selected carrier, the unweighted reserve follows by summing the
four inequalities.

The current Navier-Stokes inputs do not yet prove those oriented same-carrier
exchange inequalities.  The remaining obstruction is no longer a loose
"missing payment."  It is the exact possibility of a lossless four-body cycle:
activity circulates through scale, participation, compactness, and geometry
without any body recording a strict drop.

So the full-loop target is:

```math
\boxed{
\text{FourBodyStrictCyclePayment.A}
\quad\text{or equivalently}\quad
\text{LosslessFourBodyCycleRigidity.A}.
}
\tag{FCP.2}
```

## 1. Use the right activity

The activity cannot be raw local velocity mass.  A constant Galilean drift can
make a cubic velocity quantity large while carrying no singular participation.

The four-body activity should be the selected, Galilean-invariant,
same-carrier participation activity.  Write it schematically as

```math
A_{4B}(\sigma)
=
A_{\mathrm{src}}(\sigma)
+
A_{\mathrm{strain}}(\sigma)
+
A_{\mathrm{tower}}(\sigma)
+
A_{\mathrm{geom}}(\sigma),
\tag{FCP.3}
```

where each term is read on the same selected normalized packet and vanishes on
a removable constant-flow profile.

Typical representatives are:

```math
A_{\mathrm{src}}(\sigma)
=
\int_{-1}^{0}a_\sigma(s)^2\,ds,
\tag{FCP.4}
```

```math
A_{\mathrm{strain}}(\sigma)
=
\int_{-1}^{0}\int_{B_1}|S(V_\sigma)|^{5/2}\,dy\,ds,
\tag{FCP.5}
```

and a finite/tower participation term built from the same mixed derivative
family

```math
V_{m,\alpha}
=
\partial_s^m\partial_y^\alpha V.
\tag{FCP.6}
```

The exact choice may vary by route, but the currency must obey two rules:

1. it sees the actual selected bad packet;
2. it does not charge removable Galilean drift as singular activity.

This avoids a false rigidity problem where a constant normalized velocity
looks like a nonzero critical element.

## 2. Abstract cyclic-payment lemma

Let the four bodies be

```math
S,\quad Q,\quad C,\quad G.
\tag{FCP.7}
```

Let \(L_S,L_Q,L_C,L_G\) be nonnegative or lower-bounded body storages. Let
`J_{SQ}`, `J_{QC}`, `J_{CG}`, and `J_{GS}` be exchange currents carried by the
same selected packet.

Assume the oriented inequalities

```math
\partial_\sigma L_S
+D_S
+J_{SQ}
\le
J_{GS}+R_S,
\tag{FCP.8}
```

```math
\partial_\sigma L_Q
+D_Q
+cA_{4B}
+J_{QC}
\le
J_{SQ}+R_Q,
\tag{FCP.9}
```

```math
\partial_\sigma L_C
+D_C
+J_{CG}
\le
J_{QC}+R_C,
\tag{FCP.10}
```

and

```math
\partial_\sigma L_G
+D_G
+J_{GS}
\le
J_{CG}+R_G.
\tag{FCP.11}
```

Here the `R_i` are legal errors with summable tail.

Summing `(FCP.8)` through `(FCP.11)` cancels every exchange current:

```math
J_{SQ}+J_{QC}+J_{CG}+J_{GS}
\quad\text{appears once on each side.}
\tag{FCP.12}
```

Thus

```math
\partial_\sigma L_{4B}
+
cA_{4B}
+
D_S+D_Q+D_C+D_G
\le
R_S+R_Q+R_C+R_G,
\tag{FCP.13}
```

where

```math
L_{4B}=L_S+L_Q+L_C+L_G.
\tag{FCP.14}
```

If \(L_{4B}\) is bounded below and the legal errors are summable, integration
gives

```math
\boxed{
\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
\le
C\bigl(L_{4B}(\sigma_0)-\inf L_{4B}\bigr)
+C\int_{\sigma_0}^{\infty}R_{4B}(\sigma)\,d\sigma.
}
\tag{FCP.15}
```

This is exactly the unweighted log-scale reserve.

So the four-body program can remove the missing payment if the actual NS
arrows have the oriented exchange form `(FCP.8)`--`(FCP.11)`.

## 3. Why mere balance is not enough

The word "balance" is not by itself coercive.

There is a finite-dimensional countermodel:

```math
\partial_\sigma L_S=J_{GS}-J_{SQ},
\quad
\partial_\sigma L_Q=J_{SQ}-J_{QC},
\quad
\partial_\sigma L_C=J_{QC}-J_{CG},
\quad
\partial_\sigma L_G=J_{CG}-J_{GS},
\tag{FCP.16}
```

with

```math
J_{SQ}=J_{QC}=J_{CG}=J_{GS}=1.
\tag{FCP.17}
```

Then every \(L_i\) is constant.  The loop is perfectly balanced.  But there is
no payment and no decay:

```math
\int_{\sigma_0}^{\infty}1\,d\sigma=\infty.
\tag{FCP.18}
```

So the four-body loop must be more than circular exchange.  It must contain a
strict cyclic loss, or else the lossless cycle must be rigid and removable.

That is the key refinement.

## 4. Test Body I to Body II

Body I supplies scale/tower control.

The installed tower law is exact:

```math
\left(\partial_s+V\cdot\nabla_y-\nu\Delta_y\right)V_{m,\alpha}
+\nabla_yQ_{m,\alpha}
=B_{m,\alpha}.
\tag{FCP.19}
```

Factorial weights absorb the binomial growth in \(B_{m,\alpha}\).  This means
the tower can pass a controlled nonlinear source into Body II without losing
from combinatorics alone.

But the current tower package does not prove the oriented inequality

```math
\partial_\sigma L_S+D_S+J_{SQ}\le J_{GS}+R_S
\tag{FCP.20}
```

on the selected positive carrier.

The reason is exact: positive tower radius gives endpoint uniform
integrability, while high-rung radius failure need not dominate the finite-order
selected carrier.  The tower has the right participation language, but it does
not by itself prove same-carrier square payment.

So Body I contributes the algebraic admissibility of the loop, not the full
payment.

## 5. Test Body II to Body III

Body II is the pressure-corrected participation budget.

The local energy identity is exact:

```math
{d\over ds}\int e\phi\,dy
+
\nu\int\phi|\nabla V|^2\,dy
=
\int e(\partial_s\phi+\nu\Delta\phi)\,dy
+
\int(e+Q)V\cdot\nabla\phi\,dy.
\tag{FCP.21}
```

This gives the right scalar participation ledger.  It sees energy, viscosity,
pressure, transport, and cutoff motion in one formula.

But the right-hand flux terms are not sign-oriented same-carrier exchange
currents.  They can enter, leave, cancel, or live in a commutator after
localization and projection.

The exact nonlinear source estimate gives

```math
\|-\mathbb P\nabla\cdot(V\otimes V)\|_{L_s^{5/3}W_y^{-1,5/3}}
\le
CE_Q,
\tag{FCP.22}
```

which is real Navier-Stokes visibility.  It is not the selected positive
source-square reserve.

Thus current Body II proves visibility and physical-radius-weighted control,
but not

```math
\partial_\sigma L_Q+D_Q+cA_{4B}+J_{QC}\le J_{SQ}+R_Q.
\tag{FCP.23}
```

This is the main place the unweighted payment still has to be produced.

## 6. Test Body III to Body IV

Body III should retain the same packet through compactness.

The needed exchange inequality is

```math
\partial_\sigma L_C+D_C+J_{CG}\le J_{QC}+R_C.
\tag{FCP.24}
```

In practice, compactness is not a differential drain unless one already has a
no-loss theorem for the same pressure/source/flux carrier.

Soft compactness can produce an ancient or local-suitable limit plus a defect
measure.  That is not enough for the four-body payment lemma, because the
defect may be exactly the terminal carrier we are trying to pay.

So Body III can close the loop only with a no-loss compactness statement:

```math
\boxed{
\text{every exchange current entering compactness either survives on the exact
object or appears as a charged defect term }D_C.
}
\tag{FCP.25}
```

Current inputs do not supply this in the unweighted same-carrier currency.

## 7. Test Body IV to Body I

Body IV should turn gradient/deformation geometry back into a scale/tower
barrier.

The exact gradient identity contains the geometry:

```math
\left(\partial_t+u\cdot\nabla-\nu\Delta\right)\nabla u
+
(\nabla u)^2
+
\nabla^2p
=0.
\tag{FCP.26}
```

The exact vorticity/enstrophy balance is

```math
{1\over2}{d\over dt}\|\omega\|_2^2
+
\nu\|\nabla\omega\|_2^2
=
\int S\omega\cdot\omega\,dx.
\tag{FCP.27}
```

These are genuine Body-IV equations.

But `(FCP.27)` is a signed first-moment identity.  It does not give the
positive square-strength selected carrier required by the cyclic payment lemma.

The required return arrow is

```math
\partial_\sigma L_G+D_G+J_{GS}\le J_{CG}+R_G.
\tag{FCP.28}
```

Current gradient/geometry inputs do not prove this in a same-carrier
unweighted currency.  They identify the right geometric place where the return
arrow must live.

## 8. The full-loop alternative

After the four tests, the entire payment problem has one exact shape.

Either the oriented four-body inequalities `(FCP.8)`--`(FCP.11)` hold, and the
abstract lemma proves the unweighted reserve.

Or they fail because a lossless cycle survives:

```math
D_S+D_Q+D_C+D_G\to0,
\qquad
R_{4B}\to0,
\qquad
A_{4B}\ge c_0>0.
\tag{FCP.29}
```

A lossless cycle is not just another missing estimate.  It has a rigid meaning.
It says the same selected normalized packet can pass through scale,
participation, compactness, and deformation geometry without producing
viscous dissipation, strain cost, compactness defect, legal exit, or tower
tail payment.

For Navier-Stokes, the intended rigidity conclusion is:

```math
\boxed{
\text{a lossless four-body cycle is a removable Galilean/rigid profile, hence
}A_{4B}=0.
}
\tag{FCP.30}
```

This would contradict \(A_{4B}\ge c_0\).

So the holistic closure theorem is:

```math
\boxed{
\text{FourBodyStrictCyclePayment.A}
\;\vee\;
\text{LosslessFourBodyCycleRigidity.A}.
}
\tag{FCP.31}
```

These are two faces of one statement:

```math
\boxed{
\text{the four-body loop cannot carry nonzero selected participation activity
forever without strict scale-critical loss.}
}
\tag{FCP.32}
```

## 9. What this accomplishes

The redevelopment removes the vague "missing payment" language.

The payment is not somewhere outside the loop.  It must be one of:

1. the oriented exchange cancellation in the four-body cyclic-payment lemma;
2. the strict dissipative part of one full circuit;
3. the rigidity contradiction for a lossless full circuit.

Current single-body inputs do not prove item 1 or item 2.  Current compactness
and profile inputs do not prove item 3.

So the actual remaining theorem is not "find another supplier."  It is:

```math
\boxed{
\text{prove that every complete four-body cycle with }A_{4B}>0
\text{ has positive scale-critical loss.}
}
\tag{FCP.33}
```

Equivalently:

```math
\boxed{
\text{prove that the only zero-loss four-body cycle is removable and has
zero selected participation activity.}
}
\tag{FCP.34}
```

This is now a full-loop theorem, faithful to the original four-body intent.
It is not a defect-sharpening dashboard.

## 10. Verdict

The four-body program can eliminate the missing payment only after the loop is
made genuinely cyclic and strict.

The abstract payment mechanism is proved by summing oriented exchange
inequalities.

The exact Navier-Stokes work still needed is the body-specific production of
those oriented same-carrier exchange inequalities, or the rigidity theorem for
the lossless four-body cycle.

This is the cleanest full resurrection of the original idea:

```math
\boxed{
\text{not six supplier searches, not a terminal defect funnel, but one
no-free-full-cycle theorem.}
}
\tag{FCP.35}
```

