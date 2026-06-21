---
theorem_id: mpp-four-body-partner-polar-payment-direct-attempt-20260621
status: polar-pair-payment-reduces-to-pressure-compatible-tests-plus-terminal-trace-ac-nowaste
logical_landing_node: partner_polar_four_body_payment_direct_attempt
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-partner-deficit-retention-or-exit-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-selected-full-packet-production-step-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-component-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-minimal-producer-exhaustion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Partner Polar Four-Body Payment: Direct Attempt

Date: 2026-06-21

## 0. Target

The direct partner-deficit theorem failed because retained cancellation is not
payment.  The corrected channel-first comparison is:

```math
A_{\rm native}
\le
A_{\rm pair},
\qquad
A_{\rm pair}
:=
\int[h_\sigma]_+
+
\int[-b_\sigma]_+,
\tag{PPD.1}
```

where

```math
h_\sigma=n_\sigma+b_\sigma,
\qquad
n_\sigma=\langle N_\sigma,\varphi_\sigma\rangle,
\qquad
b_\sigma=\langle P_\sigma+V_\sigma+T_\sigma+I_\sigma+L_\sigma+S_\sigma,
\varphi_\sigma\rangle .
\tag{PPD.2}
```

The theorem tested here is:

```math
\boxed{
\texttt{PartnerPolarFourBodyPayment.A:}
\qquad
\int_{\sigma_0}^{\infty}A_{\rm pair}(\sigma)\,d\sigma<\infty
}
\tag{PPD.3}
```

or a typed Pack/Part/Field exit.

## 1. Full-packet half is already paid

The selected full-packet production step gives:

```math
[h_\sigma]_+\,dy\,ds\,d\sigma
+d\Phi_\sigma^{cap}
\le
d\mathfrak M_{vis}
+d\mathfrak M_{press}
+d\mathfrak M_{sel}
+d\mathfrak M_{sgn}
+d\mathfrak M_{term}
+d\mathfrak M_{legal}
+T_\sigma\,dy\,ds\,d\sigma,
\tag{PPD.4}
```

with \(T\in L^1_\sigma\).  Thus only the retained partner-deficit half

```math
\Delta_{\rm partner}
=
\int[-b_\sigma]_+
\tag{PPD.5}
```

is still open.

## 2. Partner split

Write:

```math
b_\sigma
=
b_\sigma^p+b_\sigma^v+b_\sigma^t+b_\sigma^i+b_\sigma^l+b_\sigma^s.
\tag{PPD.6}
```

Then:

```math
[-b_\sigma]_+
\le
[-b_\sigma^p]_+
+[-b_\sigma^v]_+
+[-b_\sigma^t]_+
+[-b_\sigma^i]_+
+[-b_\sigma^l]_+
+[-b_\sigma^s]_+.
\tag{PPD.7}
```

The task is to price each partner on the same carrier, without replacing the
full participation tuple by a scalar source-square estimate.

## 3. Pressure partner

Split pressure into local and harmonic pieces:

```math
b_\sigma^p=b_{\sigma,loc}^p+b_{\sigma,H}^p.
\tag{PPD.8}
```

For an admissible finite tower test, the pressure channel is paired with a
divergence-free rung and the cutoff carries the pressure flux:

```math
\int \chi_\sigma^2\nabla Q_{m,\alpha}\cdot W_{m,\alpha}
=
-\int Q_{m,\alpha}W_{m,\alpha}\cdot\nabla(\chi_\sigma^2).
\tag{PPD.9}
```

Therefore the local pressure partner has no interior positive deficit for
pressure-compatible tests.  It is a collar/selector term:

```math
[-b_{\sigma,loc}^p]_+
\le
R_{\rm cut/sel/legal}.
\tag{PPD.10}
```

The harmonic pressure memory is the already named pressure channel:

```math
[-b_{\sigma,H}^p]_+
\le
\mathfrak M_{press}+R_{\rm legal}.
\tag{PPD.11}
```

If the selected channel-first native test is not pressure-compatible, then
`(PPD.9)` fails.  That is not an uncharged pressure payment.  It is a selector
admissibility/collar branch:

```math
\boxed{
\neg\texttt{PressurePartnerCompatibility.A}
\Rightarrow
\Lambda_{sel}+\Lambda_{legal}
\quad\text{or Pack/Field selector failure.}
}
\tag{PPD.12}
```

This is the exact repair to the smooth affine countermodel: a lobe selector can
see positive convection before pressure cancellation, but the pressure
compatibility identity then charges the selector/collar interface that made the
lobe a one-sided readout.

## 4. Viscous partner

For a finite tower test,

```math
\nu\int\chi_\sigma^2(-\Delta W_{m,\alpha})\cdot W_{m,\alpha}
=
\nu\int\chi_\sigma^2|\nabla W_{m,\alpha}|^2
+R_{\rm cut}^{vis}.
\tag{PPD.13}
```

Hence:

```math
[-b_\sigma^v]_+
\le
C\,\mathfrak M_{vis}
+R_{\rm cut/legal}.
\tag{PPD.14}
```

This partner is paid by the normalized viscous/tower loss plus cutoff/legal
terms.

## 5. Time and storage partner

The time channel gives a storage derivative:

```math
b_\sigma^t=\partial_\sigma M_\sigma+R_{\rm sel/time}.
\tag{PPD.15}
```

Therefore:

```math
[-b_\sigma^t]_+
\le
[-\partial_\sigma M_\sigma]_+
+R_{\rm sel/time}.
\tag{PPD.16}
```

This is exactly the terminal trace problem.  A bounded storage can have
terminal variation concentrating at \(s=0\).  Finite mass does not give the
uniform terminal modulus needed for a Zeno family.

Thus the time partner is paid precisely by:

```math
\boxed{
\texttt{FourBodyTerminalTraceAC.A}
\quad\text{or}\quad
\texttt{StrictFourBodyNoWasteLyapunov.A},
}
\tag{PPD.17}
```

or it routes as terminal trace/storage defect.

## 6. Incompressibility, selector, legal, and geometry partners

The incompressibility channel is zero in the exact interior packet:

```math
\nabla\cdot W_{m,\alpha}=0.
\tag{PPD.18}
```

All nonzero contributions are projection, cutoff, selector, or signed-polar
defects.  Finite signed-saturation defects have already been paid by retained
partners, legal exits, local donor balance, and entrance-leaf decay.  The
remaining infinite child is the terminal Zeno donor-chain branch.

Thus:

```math
[-b_\sigma^i]_+
\le
\Lambda_{sgn}
+R_{\rm legal}
\tag{PPD.19}
```

with the infinite residual routed to no-free Zeno / terminal trace AC /
strict no-waste / profile production.

Selector and legal partners are tautologically charged:

```math
[-b_\sigma^l]_+
\le
\Lambda_{sel}+\Lambda_{legal}.
\tag{PPD.20}
```

The geometry partner is paid by the Body-IV geometry defect or exits through
Field:

```math
[-b_\sigma^s]_+
\le
K_G^+ +R_{\rm legal},
\tag{PPD.21}
```

or:

```math
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q}.
\tag{PPD.22}
```

## 7. Result of the direct attempt

Combining the channel estimates gives:

```math
\boxed{
A_{\rm pair}
\le
-\partial_\sigma\Phi_\sigma^{cap}
+\mathfrak M_{full}
+[-\partial_\sigma M_\sigma]_+
+\mathcal Z_{\rm donor}
+R_{\rm legal}
+T_\sigma,
}
\tag{PPD.23}
```

where \(\mathcal Z_{\rm donor}\) is the infinite terminal Zeno donor-chain
residual after finite signed-saturation has been paid.

Consequently:

```math
\boxed{
\texttt{PartnerPolarFourBodyPayment.A}
}
\tag{PPD.24}
```

is proved by:

```math
\boxed{
\texttt{PressurePartnerCompatibility.A}
+
\texttt{FourBodyTerminalTraceAC.A}
}
\tag{PPD.25}
```

with the already installed finite selector/collar, viscous, harmonic-pressure,
finite signed-saturation, and geometry/legal routings.

Equivalently, one may replace terminal trace AC by:

```math
\boxed{
\texttt{StrictFourBodyNoWasteLyapunov.A}
}
\tag{PPD.26}
```

or by the already isolated no-free Zeno / source-square-critical reserve /
profile-production alternatives.

## 8. Final state

The polar-pair route is useful because it fixes the algebraic mistake:
retained cancellation is no longer treated as payment unless the retained
deficit is itself part of the selected activity being paid.

It does not supply a smaller Navier-Stokes theorem from current inputs.

The exact remaining frontier is:

```math
\boxed{
\text{order-lock the native positive part}
}
\tag{PPD.27}
```

or:

```math
\boxed{
\text{pay the polar-pair activity by pressure-compatible tests plus terminal
trace AC / strict no-waste / no-free Zeno / profile production.}
}
\tag{PPD.28}
```

Lost partners still route to the typed terminal trace, donor/saturation,
selector/collar, pressure-memory, geometry, or Field branches.  Retained
partners require polar-pair payment.
