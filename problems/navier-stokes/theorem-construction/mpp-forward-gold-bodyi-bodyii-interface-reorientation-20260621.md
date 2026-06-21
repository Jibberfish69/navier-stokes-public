---
theorem_id: forward-gold-bodyi-bodyii-interface-reorientation-20260621
status: bodyi-bodyii-interface-reorientation-proved-selected-activity-payment-not-installed
logical_landing_node: bodyi_bodyii_interface_reorientation
edge_effect: "Proves the exact S-to-Q interface correction in the upgraded four-body loop. When Body I uses the same rung storage M_{m,alpha,eta} as Body II, the Body-I weighted storage derivative is not the Body-II participation flux; the difference is exactly the weighted viscous/tower loss. Therefore the interface can be oriented with the participation flux by adding that weighted loss to the left side. This removes a false carrier-mismatch at S->Q, while leaving the real selected-positive-activity payment problem open."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-four-body-same-carrier-orientation-defect-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Body-I / Body-II Interface Reorientation

Date: 2026-06-21

## 0. Aim

The \(S\to Q\) interface in the upgraded four-body loop must not identify two
different currents by name.

Body I naturally differentiates weighted tower storage.  Body II naturally
produces the signed participation flux.  These are related, but they are not
equal before the viscous/tower loss is counted.

This note proves the exact identity:

```math
\boxed{
dL_S+dD_S^{\rm rad}+dD_Q^{w}=dJ_{SQ}^{\rm flux}.
}
\tag{SQI.1}
```

So the \(S\to Q\) interface can be oriented by using the Body-II participation
flux as the exchange current and putting the weighted viscous/tower loss on the
left side as a true payment.

The result is not the selected activity payment.  It only removes a false
same-carrier mismatch at the scale/tower-to-participation interface.

## 1. Same rung storage in Body I and Body II

Fix a finite mixed tower set

```math
\mathcal I_N=\{(m,\alpha):2m+|\alpha|\le N\}.
\tag{SQI.2}
```

For each rung and selected cutoff \(\eta\), Body II gives the exact
participation identity

```math
dM_{m,\alpha,\eta}+dD_{m,\alpha,\eta}=dJ_{m,\alpha,\eta}.
\tag{SQI.3}
```

Here

```math
M_{m,\alpha,\eta}
=
\int\eta^2\,{1\over2}|W_{m,\alpha}|^2\,dy,
\tag{SQI.4}
```

```math
dD_{m,\alpha,\eta}
=
\nu\int\eta^2|\nabla W_{m,\alpha}|^2\,dy\,ds,
\tag{SQI.5}
```

and \(dJ_{m,\alpha,\eta}\) is the signed pressure-transport-viscosity tower
participation current from the same cutoff and same rung.

Body I must use this same storage:

```math
E_{m,\alpha}=M_{m,\alpha,\eta}.
\tag{SQI.6}
```

This is the same-carrier condition at the start of the interface.

## 2. Weighted product identity

Let

```math
w_{m,\alpha}(\sigma)
=
{\tau(\sigma)^m\rho(\sigma)^{|\alpha|}\over m!\,\alpha!}
\tag{SQI.7}
```

with \(\tau,\rho\) nonincreasing.  Define

```math
r_{m,\alpha}
:=
-m{\tau'\over\tau}
-|\alpha|{\rho'\over\rho}
\ge0.
\tag{SQI.8}
```

Then

```math
dw_{m,\alpha}
=
-r_{m,\alpha}w_{m,\alpha}\,d\sigma.
\tag{SQI.9}
```

Set the Body-I storage

```math
L_S
=
\sum_{(m,\alpha)\in\mathcal I_N}
w_{m,\alpha}M_{m,\alpha,\eta}.
\tag{SQI.10}
```

The product rule gives

```math
dL_S
=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dM_{m,\alpha,\eta}
-
\sum_{(m,\alpha)}
r_{m,\alpha}w_{m,\alpha}M_{m,\alpha,\eta}\,d\sigma.
\tag{SQI.11}
```

Define the Body-I radius spend

```math
dD_S^{\rm rad}
:=
\sum_{(m,\alpha)}
r_{m,\alpha}w_{m,\alpha}M_{m,\alpha,\eta}\,d\sigma
\ge0.
\tag{SQI.12}
```

Then

```math
\boxed{
dL_S+dD_S^{\rm rad}
=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dM_{m,\alpha,\eta}.
}
\tag{SQI.13}
```

This is the Body-I storage-derivative current.

## 3. Reorientation to the participation flux

Use the Body-II rung identity `(SQI.3)`:

```math
w_{m,\alpha}\,dM_{m,\alpha,\eta}
+
w_{m,\alpha}\,dD_{m,\alpha,\eta}
=
w_{m,\alpha}\,dJ_{m,\alpha,\eta}.
\tag{SQI.14}
```

Define the weighted Body-II loss

```math
dD_Q^w
:=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dD_{m,\alpha,\eta}
\ge0,
\tag{SQI.15}
```

and define the \(S\to Q\) exchange flux

```math
dJ_{SQ}^{\rm flux}
:=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dJ_{m,\alpha,\eta}.
\tag{SQI.16}
```

Combining `(SQI.13)` and `(SQI.14)` gives:

```math
\boxed{
dL_S+dD_S^{\rm rad}+dD_Q^w
=
dJ_{SQ}^{\rm flux}.
}
\tag{SQI.17}
```

This is the exact oriented \(S\to Q\) interface identity.

## 4. What the old mismatch was

If one instead calls

```math
dJ_{SQ}^{\rm stor}
:=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dM_{m,\alpha,\eta}
\tag{SQI.18}
```

the outgoing Body-I current, then

```math
dJ_{SQ}^{\rm flux}-dJ_{SQ}^{\rm stor}
=
dD_Q^w.
\tag{SQI.19}
```

Thus the apparent \(S\to Q\) orientation mismatch is exactly the nonnegative
weighted viscous/tower loss:

```math
\boxed{
dK_{S\to Q}
=
dJ_{SQ}^{\rm flux}-dJ_{SQ}^{\rm stor}
=
dD_Q^w.
}
\tag{SQI.20}
```

It is not a hidden carrier defect.  It is a true four-body payment.

Equivalently, the interface can be made mismatch-free by using
`(SQI.17)` as the oriented body identity and counting \(D_Q^w\) once on the
loss side.

## 5. Cross-cylinder compatibility

Under exact parabolic tower transport between nested cylinders,

```math
W_{j+1,m,\alpha}(s,y)
=
\lambda_j^{2m+|\alpha|+1}
W_{j,m,\alpha}(\lambda_j^2s,\lambda_j y),
\tag{SQI.21}
```

with transported cutoff

```math
\eta_{j+1}(y)=\eta_j(\lambda_j y),
\tag{SQI.22}
```

the Body-II note proves that \(M\), \(D\), and \(J\) all transform with the
same measure factor:

```math
M_{j+1}(s)
=
\lambda_j^{2h_{m,\alpha}-3}M_j(\lambda_j^2s),
\tag{SQI.23}
```

```math
D_{j+1}(I)
=
\lambda_j^{2h_{m,\alpha}-3}D_j(\lambda_j^2I),
\qquad
J_{j+1}(I)
=
\lambda_j^{2h_{m,\alpha}-3}J_j(\lambda_j^2I).
\tag{SQI.24}
```

With the transported factorial radii from Body I, the weighted identity
`(SQI.17)` is preserved across nested heat-scale cylinders.  Thus \(S\to Q\)
is a genuine same-carrier tower interface when the rung, cutoff, radius, and
cylinder transport are the same.

If the selector changes any of those data, the resulting difference is not the
interface identity.  It is a selector/carrier defect already named in
\(K_{\rm sel}\) or \(K_{4B}\).

## 6. Four-body consequence

The corrected \(S\to Q\) interface is:

```math
\boxed{
dL_S+dD_S^{\rm rad}+dD_Q^w=dJ_{SQ}^{\rm flux}.
}
\tag{SQI.25}
```

So the first adjacent four-body interface is paid at the level of signed
exchange orientation.  The interface does not supply a positive selected
activity term by itself:

```math
\boxed{
c_S=0
\quad\text{and}\quad
c_Q=0
\text{ at this interface unless a separate same-carrier domination theorem
is proved.}
}
\tag{SQI.26}
```

The remaining gold work after this correction is still the strict selected
activity payment:

```math
\boxed{
dA_{\rm sel}
\text{ must be dominated by tower radius spend, weighted viscous/tower loss,
retained signed partner, compactness loss, geometry loss, or legal residual
on the same carrier.}
}
\tag{SQI.27}
```

This note only proves that the \(S\to Q\) current itself no longer creates an
unpaid orientation mismatch once \(dD_Q^w\) is counted as true loss.
