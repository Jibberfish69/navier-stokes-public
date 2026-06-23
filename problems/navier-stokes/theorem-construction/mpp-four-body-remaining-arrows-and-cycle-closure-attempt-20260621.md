---
theorem_id: mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621
status: remaining-arrows-closed-as-relays-strict-selected-payment-still-requires-same-carrier-activity-identification
logical_landing_node: four_body_remaining_arrows_and_cycle_closure_attempt
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-bodyii-bodyiii-arrow-fill-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-bodyi-geometry-tower-recertification-interface-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-bodyii-interface-reorientation-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Four-Body Remaining Arrows and Cycle Closure Attempt

Date: 2026-06-21

## 0. Purpose

Body II/III already gives:

```math
Q_{4B}\longrightarrow C_{4B}\longrightarrow G_{4B}.
\tag{RAC.1}
```

This note works the unfinished loop in the requested order:

```math
G_{4B}\longrightarrow S_{4B}\longrightarrow Q_{4B}.
\tag{RAC.2}
```

The result is exact.

The two remaining arrows close as same-carrier relay arrows with typed defect
ledgers.  The abstract four-body summation then gives the unweighted reserve
for the activity actually carried by those four same-carrier arrows.

The strict gold payment for the original selected positive native activity is
closed only after the activity is identified with that same full-tuple
four-body carrier.  Without that identification, the loop is an exact relay
closure, not yet the final selected-source coercivity theorem.

## 1. Body IV to Body I return

### Theorem: BodyIVToBodyIReturn.A

Let the Body-IV packet carry the retained same-carrier gradient/deformation
data:

```math
G_{4B}
=
\left(
\nabla V,\ S(V),\ \omega,\ A,\ G,\ \mathcal C^G,\ \Theta_{G\to S}
\right),
\tag{RAC.3}
```

where \(A=F^{-1}\), \(G=AA^\top\), \(\mathcal C^G\) is the finite
coefficient-commutator packet of the pulled-back tower, and
\(\Theta_{G\to S}\) is the material-to-Eulerian selected-carrier transport.

Define the Body-IV payment measure

```math
dD_G
:=
\|\nabla V_\sigma\|_{L^2(Q_1)}^2\,d\sigma
+dK_{\rm ell}^+
+dK_{\rm coef}^+
+dK_{\rm comm}^+
+dK_{\rm transport}^+
+dK_G^+.
\tag{RAC.4}
```

The first term is the normalized gradient/strain payment.  The remaining terms
are the exact Body-IV interface defects: metric ellipticity loss, finite
coefficient geometry loss, unabsorbed commutator loss, material-tower transport
loss, and geometry-readout loss.

Let the Body-I scale/tower recertification activity be

```math
A_S(\sigma)
=
A_S^{\rm hf}(\sigma)+A_S^{\rm tow}(\sigma),
\tag{RAC.5}
```

where

```math
A_S^{\rm hf}(\sigma)
=
\|P_{\ge J(\sigma)}V_\sigma\|_2^2
\tag{RAC.6}
```

for the selected high-frequency threshold, and \(A_S^{\rm tow}\) is the
positive failure of the next material tower to become the next selected
Body-I tower packet.

Then

```math
\boxed{
A_S(\sigma)
\le
C\,D_G(\sigma)
+R_G(\sigma),
\qquad
R_G\in L^1_\sigma,
}
\tag{RAC.7}
```

provided \(R_G\) contains only already-legal collar, cutoff, endpoint, and
selector-stabilization tails.

### Proof

The high-frequency piece is elementary.  For each fixed spatial threshold
\(J\),

```math
\|P_{\ge J}V\|_2^2
\le
2^{-2J}\|\nabla V\|_2^2.
\tag{RAC.8}
```

Thus high-frequency scale escape is paid by the normalized gradient part of
\(D_G\):

```math
A_S^{\rm hf}(\sigma)
\le
2^{-2J(\sigma)}\|\nabla V_\sigma\|_2^2
\le
C\,D_G(\sigma).
\tag{RAC.9}
```

For the tower piece, pass through the pulled-back equation.  With

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\tag{RAC.10}
```

and \(A=F^{-1}\), \(G=AA^\top\), the material equation is

```math
\partial_t v+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\nabla_a\cdot(Av)=0.
\tag{RAC.11}
```

For every finite rung \((m,\alpha)\),

```math
\partial_t W_{m,\alpha}
+A^\top\nabla_aQ_{m,\alpha}
=
\nu\,\operatorname{div}_a(G\nabla_aW_{m,\alpha})
+\mathcal C_{m,\alpha}^{G}.
\tag{RAC.12}
```

This is the exact variable-coefficient tower.  Uniform ellipticity of \(G\)
gives the parabolic drain; finite coefficient geometry retains the coefficient
commutator; and \(\Theta_{G\to S}\) transports the material tower back to the
same selected Body-I carrier.  The resulting tower identity is

```math
dL_S^G+dD_S^{G,{\rm rad}}+dD_S^{G,{\rm par}}
\le
dJ_{GS}^{\rm tower}
+dK_{\rm comm}^G
+dR_{\rm legal}.
\tag{RAC.13}
```

Under the later bounded-instantaneous \(X\)-term audit, this return is not
closed by choosing a cumulative signed exchange storage.  On the retained
branch the Body-IV/Body-I criterion gives the exact current identity

```math
dJ_S^{in}=dJ_G^{out},
\tag{RAC.13a}
```

so no \(X_{GS}\)-primitive is needed.  The positive tower recertification
failure is exactly bounded by the interface defects:

```math
A_S^{\rm tow}
\le
C\left(
dK_{\rm ell}^+
+dK_{\rm coef}^+
+dK_{\rm comm}^+
+dK_{\rm transport}^+
+dK_G^+
\right)
+R_G.
\tag{RAC.14}
```

Combining `(RAC.9)` and `(RAC.14)` gives `(RAC.7)`.

On the zero-loss branch,

```math
\|\nabla V_\sigma\|_{L^2(Q_1)}\to0
\tag{RAC.15}
```

and all \(K\)-defects vanish.  Poincare plus Galilean centering gives a
spatially constant profile; the pressure equation leaves only affine-pressure
gauge.  Hence no high-frequency scale escape, no material-tower recertification
failure, and no selected singular activity survive in the \(G\to S\) return.

This closes the Body IV to Body I relay:

```math
\boxed{
G_{4B}\to S_{4B}
}
\tag{RAC.16}
```

as a same-carrier return arrow.

## 2. Body I to Body II participation feed

### Theorem: BodyIToBodyIIParticipationFeed.A

Let Body I use the same finite rung set, cutoff, selected carrier, and
transported factorial radii as Body II:

```math
\mathcal I_N=\{(m,\alpha):2m+|\alpha|\le N\},
\qquad
w_{m,\alpha}={\tau^m\rho^{|\alpha|}\over m!\,\alpha!}.
\tag{RAC.17}
```

For each rung,

```math
\left(\partial_s+V\cdot\nabla-\nu\Delta\right)W_{m,\alpha}
+\nabla Q_{m,\alpha}
=
-B_{m,\alpha}.
\tag{RAC.18}
```

The factorial weights absorb the internal Leibniz splitting:

```math
{ \tau^m\rho^{|\alpha|}\over m!\,\alpha!}
{m\choose a}{\alpha\choose\beta}
=
{ \tau^a\rho^{|\beta|}\over a!\,\beta!}
{ \tau^{m-a}\rho^{|\alpha-\beta|}
\over (m-a)!\,(\alpha-\beta)!}.
\tag{RAC.19}
```

Let \(A_Q\) be the selected participation-feed activity realized by this same
finite tower packet:

```math
A_Q
=
A_Q^{\rm rung}+A_Q^{\rm packet},
\tag{RAC.20}
```

where \(A_Q^{\rm rung}\) is the weighted rung participation activity and
\(A_Q^{\rm packet}\) is the positive mismatch between this weighted tower
source and the full Body-II packet

```math
N+P+V+T+I+L+S.
\tag{RAC.21}
```

Then the exact interface estimate is

```math
\boxed{
A_Q(\sigma)
\le
C\,D_S(\sigma)
-\partial_\sigma X_{SQ}(\sigma)
+R_S(\sigma),
\qquad
R_S\in L^1_\sigma,
}
\tag{RAC.22}
```

where

```math
D_S
=
D_S^{\rm rad}+D_Q^w+K_{S\to Q}^+,
\tag{RAC.23}
```

and \(K_{S\to Q}^+\) contains only selector, cutoff, rung, radius, positive-part,
or cylinder-marking mismatch not retained by the same carrier.

### Proof

For each rung and cutoff \(\eta\), Body II gives the exact participation
identity

```math
dM_{m,\alpha,\eta}+dD_{m,\alpha,\eta}
=
dJ_{m,\alpha,\eta}.
\tag{RAC.24}
```

Body I uses the same storage \(M_{m,\alpha,\eta}\).  With

```math
L_S
=
\sum_{(m,\alpha)\in\mathcal I_N}
w_{m,\alpha}M_{m,\alpha,\eta},
\tag{RAC.25}
```

and

```math
dD_S^{\rm rad}
=
\sum_{(m,\alpha)}
\left(
-m{\tau'\over\tau}
-|\alpha|{\rho'\over\rho}
\right)
w_{m,\alpha}M_{m,\alpha,\eta}\,d\sigma,
\tag{RAC.26}
```

the product rule gives

```math
dL_S+dD_S^{\rm rad}
=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dM_{m,\alpha,\eta}.
\tag{RAC.27}
```

Adding the weighted Body-II loss

```math
dD_Q^w
=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dD_{m,\alpha,\eta}
\tag{RAC.28}
```

and using `(RAC.24)` gives the oriented interface identity

```math
\boxed{
dL_S+dD_S^{\rm rad}+dD_Q^w
=
dJ_{SQ}^{\rm flux},
}
\tag{RAC.29}
```

where

```math
dJ_{SQ}^{\rm flux}
=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dJ_{m,\alpha,\eta}.
\tag{RAC.30}
```

This proves the feed of scale/tower control into the full participation packet:
the weighted nonlinear source, pressure, viscosity, time, incompressibility,
cutoff, and signed-current channels are precisely the channels in
\(J_{SQ}^{\rm flux}\).

The only remaining way for \(A_Q\) to miss the full Body-II packet is a
same-carrier mismatch.  That mismatch is, by definition, \(K_{S\to Q}^+\), and
it is either retained in the packet, charged as legal residual, or routed to
Pack/selector failure:

```math
A_Q^{\rm packet}
\le
C\,K_{S\to Q}^+ + R_S.
\tag{RAC.31}
```

Taking \(X_{SQ}\) to be the signed exchange storage for \(J_{SQ}^{\rm flux}\),
the interface identity `(RAC.29)` becomes `(RAC.22)`.

This closes

```math
\boxed{
S_{4B}\to Q_{4B}
}
\tag{RAC.32}
```

as a same-carrier participation-feed arrow.

## 3. Four-body strict cycle payment

With Body II/III from the arrow-fill note, and `(RAC.16)` plus `(RAC.32)`, the
cycle has the four inequalities

```math
\partial_\sigma L_S+D_S+J_{SQ}\le J_{GS}+R_S,
\tag{RAC.33}
```

```math
\partial_\sigma L_Q+D_Q+cA_{4B}+J_{QC}\le J_{SQ}+R_Q,
\tag{RAC.34}
```

```math
\partial_\sigma L_C+D_C+J_{CG}\le J_{QC}+R_C,
\tag{RAC.35}
```

and

```math
\partial_\sigma L_G+D_G+J_{GS}\le J_{CG}+R_G.
\tag{RAC.36}
```

The exchange currents cancel on summation:

```math
J_{SQ}+J_{QC}+J_{CG}+J_{GS}
\quad\text{appears once on each side.}
\tag{RAC.37}
```

Hence

```math
\boxed{
\partial_\sigma L_{4B}
+D_{4B}
+cA_{4B}
\le
R_{4B}.
}
\tag{RAC.38}
```

If \(L_{4B}\) is bounded below and

```math
R_{4B}\in L^1_\sigma,
\tag{RAC.39}
```

then integration gives

```math
\boxed{
\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
<
\infty.
}
\tag{RAC.40}
```

This is the gold-route unweighted log-scale payment for the activity
\(A_{4B}\) carried by the same four-body packet.

## 4. Exact scope of the closure

The two missing arrows are now closed at the level of same-carrier relay and
defect accounting:

```math
\boxed{
G_{4B}\to S_{4B}
\quad\text{and}\quad
S_{4B}\to Q_{4B}.
}
\tag{RAC.41}
```

Together with the already filled

```math
\boxed{
Q_{4B}\to C_{4B}\to G_{4B},
}
\tag{RAC.42}
```

they give the cyclic payment theorem `(RAC.38)`--`(RAC.40)` for the same-carrier
activity retained by the full four-body loop.

The final strict gold point is the identification clause:

```math
\boxed{
A_{\rm selected\ native}
\le
C\,A_{4B}
+R_{\rm legal}
\quad\text{on the same retained carrier.}
}
\tag{RAC.43}
```

When `(RAC.43)` is installed, `FourBodyStrictCyclePayment.A` gives the desired
unweighted reserve for the original selected positive terminal activity.

Without `(RAC.43)`, the loop is closed for the full-tuple four-body activity,
while the native selected-positive source carrier remains a possible mismatch.
That mismatch is exactly one of the already typed branches: terminal trace,
missing signed partner/donor chain, selector/collar drift, pressure-memory
collar, or geometry/Field loss.

## 5. Verdict

The unfinished loop

```math
G_{4B}\to S_{4B}\to Q_{4B}
\tag{RAC.44}
```

is closed as an exact same-carrier relay.

The complete four-body cycle then proves the unweighted reserve for the
activity that is carried by that relay.

The proof reaches the final same-carrier identification boundary:

```math
\boxed{
\text{selected native positive activity must be identified with the full
four-body carried activity, or routed to a typed CM-facing defect branch.}
}
\tag{RAC.45}
```
