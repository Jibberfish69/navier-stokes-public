---
theorem_id: forward-gold-selected-readout-differential-exhaustion-20260627
status: pointwise-no-fourth-branch-closed-global-variation-still-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / forward-native reserve birth
attacks_hinge:
  - NoUnpaidHighRatioUpwardBirthFromOriginalHistory.A
  - ForwardNativeReserveBirthPaysFullPLS.A
  - FreshSourceWeightedPairedCarrierBound.A
  - CriticalFreshSourceTentCarleson.A
superseded_live_hinge_by:
  - SelectedUnitBoundedOriginalPacketProjectionAdmission.A
  - SelectedUnitRieszRepresentativeSourceGraphAdmission.A
inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-birth-direct-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-full-exchange-native-reserve-pivot-20260627.md
effect: >-
  Replaces the negative fourth-branch wording with the positive mechanism:
  selected high-ratio birth must be obtained by differentiating the selected
  readout along the retained material packet before taking positive parts. This
  closes the pointwise no-unpaid-birth kernel statement. The remaining theorem
  is global Carleson/BV packing of the exact material differential. The older
  fresh weighted paired-carrier formulation is now support/pressure-test
  language; the sharper live hinge is that every retained selected unit must
  have a uniformly bounded original-packet Riesz representative before scalar
  positive readout.
---

# Selected readout differential exhaustion

The phrase

```text
unpaid high-ratio upward selected birth
```

is too easy to treat as a mysterious fourth physical branch.  It should not be
one.  A selected birth is not an independent source; it is the positive part of
the derivative of a selected readout along the same material packet.

The correction is:

```text
differentiate the selected readout first, decompose that exact differential,
and only then take positive parts.
```

## 1. Selected readout as a material functional

On a retained stopped packet \(Q\), write the selected high-ratio readout as

```math
a_Q(t)=\mathcal A_Q(\mathfrak U_Q(t),\Pi_Q(t),\chi_Q(t)),
\tag{1}
```

where \(\mathfrak U_Q\) is the same-material packet data

```math
(v,q,A,G,\mathbb P_A,\phi,\text{collar/order-lock/selector data}),
\tag{2}
```

\(\Pi_Q\) is the parent-subtracted projection/transport frame, and \(\chi_Q\)
is the stopped selector.  The selected birth is

```math
dA_{\rm sel}^{+}(Q):=[da_Q]_+.
\tag{3}
```

Therefore the first operation must be the exact material differential

```math
da_Q
=
D_{\mathfrak U}\mathcal A_Q\,d\mathfrak U_Q
+D_{\Pi}\mathcal A_Q\,d\Pi_Q
+D_{\chi}\mathcal A_Q\,d\chi_Q.
\tag{4}
```

## 2. Exact channel exhaustion

Use the material Navier-Stokes law

```math
\partial_t v+A^T\nabla_aq
=
\nu\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0,
\tag{5}
```

the moving Hodge relation

```math
\dot{\mathbb P}_A v
=
\mathcal G_A L_A^{-1}\operatorname{div}_a(ABv),
\tag{6}
```

the frame equations

```math
\dot A=-A(\nabla_av)A,
\qquad
\dot G=-2ASA^T,
\tag{7}
```

and the transported collar/annular stress identity.  Substituting these into
`(4)` gives

```math
da_Q
=
dC_Q^{carry}
dB_Q^{hodge/projector}
dB_Q^{strain/frame}
dB_Q^{schur/collar}
dB_Q^{annular}
dB_Q^{freq}
dR_Q^{entr/stop/reset/legal}
dE_Q^{spent}.
\tag{8}
```

This is not a definition by naming channels.  It is the chain rule applied to
the actual selected readout `(1)` and the actual material system `(5)`--`(7)`.

Taking positive parts after `(8)` gives

```math
[da_Q]_+
\le
[dC_Q^{carry}
dB_Q^{hodge/projector}
dB_Q^{strain/frame}
dB_Q^{schur/collar}
dB_Q^{annular}
dB_Q^{freq}
dR_Q^{entr/stop/reset/legal}
dE_Q^{spent}]_+.
\tag{9}
```

Then use subadditivity and the spent/carry orientation to obtain the local
birth bound

```math
dA_{\rm sel}^{+}(Q)
\le
dC_Q^{carry,+}
dB_Q^{hodge,+}
dB_Q^{strain/frame,+}
dB_Q^{schur/collar,+}
dB_Q^{annular,+}
dB_Q^{freq,+}
dR_Q^{entr/stop/reset/legal}
-d\mathfrak S_Q^{spent}
\tag{10}
```

up to legal synchronization errors.

## 3. Pointwise no-fourth-branch closure

Suppose a transition has positive selected birth and every listed channel in
`(8)` is zero:

```math
dC_Q^{carry}
dB_Q^{hodge/projector}
dB_Q^{strain/frame}
dB_Q^{schur/collar}
dB_Q^{annular}
dB_Q^{freq}
dR_Q^{entr/stop/reset/legal}
dE_Q^{spent}
=0.
\tag{11}
```

Then `(8)` gives

```math
da_Q=0.
\tag{12}
```

Hence

```math
dA_{\rm sel}^{+}(Q)=[da_Q]_+=0.
\tag{13}
```

So the pointwise theorem

```text
NoUnpaidHighRatioUpwardBirthFromOriginalHistory.A
```

is closed once the selected readout is differentiated before positive-part
selection.  The forbidden fourth branch is exactly the kernel of the full
material differential, and that kernel cannot produce selected birth.

## 4. What remains

The pointwise kernel statement is not the global Gold closure.  Summing `(10)`
over a stopped tree still requires a finite original-history variation bound
for the right-hand side:

```math
\sum_{Q\subset P}
\left(
dB_Q^{hodge,+}
dB_Q^{strain/frame,+}
dB_Q^{schur/collar,+}
dB_Q^{annular,+}
dB_Q^{freq,+}
\right)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{14}
```

In the fresh-source coordinates this is precisely the weighted paired-carrier
bound:

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{15}
```

Thus the real remaining theorem is not the existence of a mysterious unpaid
branch.  The older weighted paired-carrier display `(15)` is a pressure-test
coordinate for scale normalization.  The sharper live theorem is:

```text
SelectedUnitRieszRepresentativeSourceGraphAdmission.A.
```

It requires every retained selected unit to have a uniformly bounded Riesz
representative \(A_Q\in\mathfrak H_P\) in the original material stress Hilbert
space before scalar positive readout.  Once that admission is enforced, the
fresh part is ordinary Bessel packing in the same original packet, parent reuse
telescopes through the parent stress record, and unbounded scale-renormalized
readout exits as stop/legal/donor/reselection/selector drift.  The
no-fourth-branch language is now only the pointwise kernel check; it should not
remain the live Gold target.

## 5. Result

This note closes the local mechanism error:

```text
positive selected birth cannot occur outside the exact material differential.
```

Gold remains open at the global packing theorem:

```text
SelectedUnitRieszRepresentativeSourceGraphAdmission.A
```

or equivalently the uniform source-graph continuity clause saying that the
stress component of every retained selected readout is a bounded functional on
the original material stress Hilbert space before selected positive-part
amplification.
