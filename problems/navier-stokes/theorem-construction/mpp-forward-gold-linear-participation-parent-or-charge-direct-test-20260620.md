---
theorem_id: forward-gold-linear-participation-parent-or-charge-direct-test-20260620
status: direct-linear-parent-or-charge-test-complete-not-proved
logical_landing_node: linear_participation_parent_or_charge
edge_effect: "Tests the non-source-residue linear participation branch left after the selected participation source-pulse identity test. The scalar principal-gain calculation gives an exact normalized endpoint-energy parent identity. The follow-up positive-trace direct test shows that signed endpoint-energy accounting does not by itself dominate the selected positive trace; the remaining bridge is LinearEnergyTracePolarSaturation.A plus NoFreeTerminalNormalizedEnergyTrace.A. Thus the branch is visible as inherited principal-flow gain, but it is not discharged by the existing source-drain theorem or signed energy identity alone."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-linear-source-pulse-identity-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-linear-positive-energy-trace-saturation-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-terminal-normalized-energy-trace-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md
  - problems/navier-stokes/theorem-construction/mpp-normalized-child-mass-source-drain-assembly-note-20260504.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-reserve-evolution-current-resolution-recheck-20260620.md
downstream_consequence: "The non-source-residue linear branch does not stay invisible. It becomes a normalized endpoint-energy parent/gain trace. Finite preterminal chains telescope only after same-normalization signed partners or legal exits are retained. The exact remaining linear bridge is LinearEnergyTracePolarSaturation.A plus NoFreeTerminalNormalizedEnergyTrace.A, or a stronger strict no-waste/source-square/unweighted-action theorem. The square-only branch remains a stronger same-carrier square problem."
---

# MPP Forward-Gold Linear Participation Parent-Or-Charge Direct Test

Date: 2026-06-20

## Status

Direct test complete.  The theorem is not proved from installed inputs.

The branch under test is the non-source-residue linear participation branch:

```math
\int_J a_T(s)\,ds>c_0,
\qquad
\mathcal P_T(J)\to0.
\tag{LPC.1}
```

Here \(a_T\) is the normalized selected positive participation marginal and
\(\mathcal P_T\) is the source-drain source-pulse functional.  The source-drain
route does not charge `(LPC.1)` because no source-pulse residue is present.

The natural replacement is a linear parent-or-charge theorem in participation
units:

```math
\boxed{
\int_J a_T(s)\,ds
\le
Parent_T^{lin}(J)
+Charge_T^{lin}(J)
+Legal_T(J)
+o(1).
}
\tag{LPC.2}
```

## 1. Scalar identity: linear participation is endpoint energy change

Use the scalar principal-flow normal form

```math
w'(t)-\lambda^2 w(t)=R(t),
\qquad
I_\lambda=[0,\lambda^{-2}].
\tag{LPC.3}
```

The selected principal participation current is

```math
\Pi_\lambda^{part,+}(t)=\lambda^2w(t)^2
\tag{LPC.4}
```

in the pure positive-gain model.  With normalized heat time

```math
s=\lambda^2t,
\qquad
a_\lambda(s)=\lambda^{-1/2}\Pi_\lambda^{part,+}(\lambda^{-2}s),
\tag{LPC.5}
```

one has the exact identity

```math
\int_0^1 a_\lambda(s)\,ds
=
{\lambda^{3/2}\over2}
\left[
w(\lambda^{-2})^2-w(0)^2
\right]
-
\lambda^{3/2}
\int_0^{\lambda^{-2}}w(t)R(t)\,dt .
\tag{LPC.6}
```

So pure principal gain is not residual creation.  It is normalized endpoint
energy transport.

For the model used in the previous tests,

```math
R=0,
\qquad
w(0)=\lambda^{-3/4},
\qquad
w(t)=\lambda^{-3/4}e^{\lambda^2t},
\tag{LPC.7}
```

and therefore

```math
\lambda^{3/2}w(0)^2=1,
\qquad
\lambda^{3/2}w(\lambda^{-2})^2=e^2.
\tag{LPC.8}
```

Thus

```math
\int_0^1 a_\lambda(s)\,ds
=
{e^2-1\over2}.
\tag{LPC.9}
```

This is exactly the non-source-residue linear residence seen in the previous
test.  It is paid only by a normalized endpoint-energy parent term, not by
source-pulse residual charge.

## 2. Why physical endpoint mass is the wrong parent currency

In the same scalar model the unnormalized endpoint masses vanish:

```math
w(0)^2=\lambda^{-3/2},
\qquad
w(\lambda^{-2})^2=e^2\lambda^{-3/2}.
\tag{LPC.10}
```

So a parent theorem using only physical endpoint packet mass gives \(o(1)\).
The correct parent currency for `(LPC.1)` is normalized:

```math
\mathcal E_T^{lin}(t)
:=
\lambda_T^{3/2}\|w_T(t)\|_2^2
\tag{LPC.11}
```

or the equivalent normalized packet coefficient in the selected packet frame.

This explains why finite physical energy does not pay a fixed normalized
linear participation residence at Zeno scale.  The physical bill carries the
extra shrinking-scale factor; the normalized branch does not.

## 3. Full Navier-Stokes obstruction: positive part before signed energy

The scalar identity proves the correct parent currency, not the full theorem.
In the packet equation

```math
L_{j,k}w_j=R_{j,k},
\qquad
L_{j,k}=\partial_t+b_k\cdot\nabla-\nu\Delta-A_k,
\tag{LPC.12}
```

the local energy identity controls the signed strain work

```math
\int_{I_T}\langle A_kw_j,w_j\rangle\,dt
\tag{LPC.13}
```

after adding transport, viscosity, boundary, cutoff, pressure, projection, and
residual terms.

The selected carrier uses the positive part:

```math
\int_{I_T}
\left[
\langle A_kw_j,w_j\rangle
\right]_+dt .
\tag{LPC.14}
```

The passage from `(LPC.13)` to `(LPC.14)` is not formal.  It is the same
positive-selection problem seen in the source-pulse and square tests: the
signed partner may cancel in the energy identity while the selected positive
packet survives.

A full linear parent-or-charge theorem therefore needs:

```math
\boxed{
\text{LinearPositiveEnergyTraceSaturation.A}
}
\tag{LPC.15}
```

meaning the positive selected strain work is either represented by the signed
energy trace, retains its signed partner, or pays legal/cutoff/projection/source
cost.

The follow-up direct test
`mpp-forward-gold-linear-positive-energy-trace-saturation-direct-test-20260620.md`
shows that `(LPC.15)` is not a formal consequence of the signed local energy
identity.  A trace-free two-channel model has zero signed strain trace while a
selector keeps the expanding channel's positive trace.  Therefore the exact
remaining positive-trace bridge is

```math
\boxed{
\text{LinearEnergyTracePolarSaturation.A}
+
\text{NoFreeTerminalNormalizedEnergyTrace.A}.
}
\tag{LPC.15a}
```

## 4. The terminal Zeno parent trace

Assume `(LPC.15)` is supplied.  A finite parent chain then telescopes:

```math
\sum_{m=0}^{M}
\int_{J_m}a_{T_m}(s)\,ds
\le
\mathcal E_{T_M}^{lin}
-\mathcal E_{T_0}^{lin}
+Charge^{lin}
+Legal
+o(1).
\tag{LPC.16}
```

The remaining case is an infinite terminal chain

```math
T_0\leftarrow T_1\leftarrow T_2\leftarrow\cdots,
\qquad
\lambda_m\to\infty,
\qquad
t_m\uparrow T^*,
\tag{LPC.17}
```

carrying normalized endpoint energy but vanishing physical endpoint energy.
This is not removed by finite physical energy.  It needs a no-free terminal
trace theorem:

```math
\boxed{
NoFreeTerminalNormalizedEnergyTrace.A
}
\tag{LPC.18}
```

or one of the already named stronger suppliers:

```math
\boxed{
StrictRescaledNoWasteLyapunov.A
\quad/\quad
ActiveWindowHeight.A
\quad/\quad
SelectedParticipationSquareBudget.A
\quad/\quad
\text{CM Pack/Part/Field admission}.
}
\tag{LPC.19}
```

## 5. Relation to square reserve

The linear theorem would remove the branch with nonzero normalized linear
participation residence.  It would not remove the square-only branch

```math
\int_J a_m(s)\,ds\to0,
\qquad
\int_J a_m(s)^2\,ds\ge\eta.
\tag{LPC.20}
```

That branch has vanishing linear parent trace but nonzero square reserve.  It
still needs a square-strength theorem: product throttle, source-square,
active-height control, square reserve evolution, or strict no-waste.

## Verdict

`LinearParticipationParentOrCharge.A` is not installed as a forward-gold
supplier.

The scalar calculation proves the right normalization:

```math
\boxed{
\text{non-source-residue linear participation}
=
\text{normalized endpoint-energy transport}
\quad
\text{in the pure principal-gain normal form}.
}
\tag{LPC.21}
```

The missing full Navier-Stokes bridge is:

```math
\boxed{
LinearEnergyTracePolarSaturation.A
+
NoFreeTerminalNormalizedEnergyTrace.A.
}
\tag{LPC.22}
```

The second direct test
`mpp-forward-gold-no-free-terminal-normalized-energy-trace-direct-test-20260620.md`
shows that the terminal normalized-energy trace clause is not paid by finite
physical energy.  A Zeno chain can carry order-one normalized endpoint-energy
trace on each heat packet while the physical contributions remain summable
because of the shrinking scale factor.

After `(LPC.22)` is supplied, the non-source-residue linear branch is paid.
Without it, the branch remains a terminal normalized-energy parent/gain branch,
not a source-drain discharge.
