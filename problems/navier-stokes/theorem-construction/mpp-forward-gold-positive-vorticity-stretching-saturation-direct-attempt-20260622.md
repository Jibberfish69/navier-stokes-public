---
theorem_id: forward-gold-positive-vorticity-stretching-saturation-direct-attempt-20260622
status: direct-attempt-sharpened-to-total-exchange-retained-branch-solved
logical_landing_node: positive_vorticity_stretching_saturation
edge_effect: >-
  Attacks the remaining positive-part gap after the signed enstrophy ledger.
  The signed same-packet identity pays int phi omega dot S omega, but the gold
  carrier is int phi [omega dot S omega]_+. Algebraically, positive part equals
  signed value plus negative partner, so no signed ledger can pay the selected
  positive carrier unless the negative partner is retained on the same packet
  or the total strain-vorticity exchange is retained.
  Local divergence-free jets can realize positive and negative stretching in
  separated lobes while the signed integral cancels, so the saturation theorem
  is not a pointwise algebraic consequence of incompressibility. The corrected
  carrier is total same-packet strain-vorticity exchange
  int phi |omega dot S omega|. On a retained total-exchange material packet,
  the selected positive carrier is admitted into A_4B by [f]_+ <= |f|. The
  remaining boundary is loss of that total strain-vorticity exchange record,
  not a hidden signed-cancellation residue.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-vorticity-stretching-signed-enstrophy-ledger-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-carrier-curl-source-transport-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-stretching-atom-to-finite-rung-field-face-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-vorticity-stretching-total-exchange-admission-20260622.md
---

# Positive Vorticity Stretching Saturation Direct Attempt

Date: 2026-06-22

## 0. Target

Let

```math
f=\omega\cdot S\omega,
\qquad
A_+(s)=\int \phi[f]_+\,dy .
\tag{PVS.1}
```

The signed enstrophy ledger pays

```math
\int\phi f\,dy.
\tag{PVS.2}
```

The question is whether `(PVS.2)` pays `(PVS.1)` on the same retained packet.

## 1. Algebraic split

Pointwise,

```math
[f]_+
=
f+[f]_- .
\tag{PVS.3}
```

Therefore

```math
\boxed{
\int\phi[f]_+
=
\int\phi f
+
\int\phi[f]_- .
}
\tag{PVS.4}
```

The signed enstrophy ledger pays the first term.  It says nothing by itself
about the second term.

So positive stretching payment requires one of the following same-packet
statements:

```math
\boxed{
\int\phi[f]_-
\le
\text{retained negative partner/legal/collar/full-packet payment}
}
\tag{PVS.5}
```

or

```math
\boxed{
\int\phi|f|
\le
\text{full-packet reserve}.
}
\tag{PVS.6}
```

Without one of these, signed stretching can be small while positive stretching
is large.

## 2. Local algebraic countermodel

At a point, choose a trace-free strain tensor

```math
S=
\begin{pmatrix}
\lambda&0&0\\
0&-\lambda/2&0\\
0&0&-\lambda/2
\end{pmatrix},
\qquad
\lambda>0.
\tag{PVS.7}
```

If \(\omega\) is aligned with \(e_1\), then

```math
\omega\cdot S\omega
=
\lambda|\omega|^2
>0.
\tag{PVS.8}
```

If \(\omega\) is aligned with \(e_2\), then

```math
\omega\cdot S\omega
=
-{\lambda\over2}|\omega|^2
<0.
\tag{PVS.9}
```

These are divergence-free first-jet configurations: any trace-free matrix
\(A=S+\Omega\) is the gradient of the local linear divergence-free field
\(V(y)=Ay\).  Smooth cutoffs can place positive and negative stretching in
separate lobes.

Thus incompressibility alone does not force the negative lobe to stay in the
same selected positive carrier.  The positive-part bridge is not a pointwise
algebraic theorem.

## 3. Existing same-carrier readout

The installed curl-source/transport identity gives

```math
\nabla\times N
=
S\omega-(V\cdot\nabla)\omega,
\tag{PVS.10}
```

and hence

```math
[\omega\cdot S\omega]_+
\le
|\omega|\,|\nabla\times N|
+
|V|\,|\omega|\,|\nabla\omega|.
\tag{PVS.11}
```

This is an exact same-carrier readout for the positive stretching carrier.  It
does not produce the reserve from energy; it says which full-packet quantities
would pay the carrier if they had endpoint control.

The fixed-chart finite-rung consequence is also installed:

```math
A_+(s)
\le
C_\eta \|V(s)\|_{H^2(B_R)}^3.
\tag{PVS.12}
```

So a retained endpoint atom in \(A_+\) is Field-facing after same-witness
admission.  That is a consumer/readout, not a forward-gold production theorem.

## 4. Exact result

The direct positive-part saturation attempt first gives:

```math
\boxed{
\text{signed enstrophy ledger}
\not\Rightarrow
\text{selected positive stretching payment}.
}
\tag{PVS.13}
```

The corrected retained-branch clause is:

```math
\boxed{
\texttt{TotalStrainVorticityExchangeRetention.A}
}
\tag{PVS.14}
```

meaning: the total strain-vorticity exchange must remain order-locked to the
same material packet whenever the selected positive stretching carrier survives.

Equivalently, retain the total same-packet exchange:

```math
\boxed{
\int_I\int\phi|\omega\cdot S\omega|
\le
\text{full-packet four-body payment}.
}
\tag{PVS.15}
```

Current installed inputs give exact readouts and CM consumers for this carrier.
The retained-branch production is the total-exchange admission below.

The total-exchange correction supplies the retained-branch saturation.  Define

```math
X_{\omega S}^{tot}(I)
:=
\int_I\int\phi|\omega\cdot S\omega|\,dy\,ds .
\tag{PVS.16}
```

Then

```math
\boxed{
\int_I\int\phi[\omega\cdot S\omega]_+\,dy\,ds
\le
X_{\omega S}^{tot}(I).
}
\tag{PVS.17}
```

So on any retained material packet where

```math
X_{\omega S}^{tot}(I)
\le
C\int_I A_{4B}(\sigma)\,d\sigma,
\tag{PVS.18}
```

the positive stretching carrier is admitted into the four-body count.  The
remaining pure-gold no-exit clause is retention of the total
strain-vorticity exchange record itself.
