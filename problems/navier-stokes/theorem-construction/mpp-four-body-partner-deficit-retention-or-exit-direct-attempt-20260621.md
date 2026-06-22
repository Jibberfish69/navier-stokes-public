---
theorem_id: mpp-four-body-partner-deficit-retention-or-exit-direct-attempt-20260621
status: direct-partner-deficit-theorem-false-superseded-by-order-lock-overlap-formula
logical_landing_node: partner_deficit_retention_or_exit_direct_attempt
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-native-selected-activity-identification-route-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-selected-full-packet-production-step-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-selected-full-packet-identification-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-terminal-trace-atom-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-signed-saturation-residual-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Partner Deficit Retention Or Exit: Direct Attempt

Date: 2026-06-21

## 0. Target

The route note reduces the native-to-four-body comparison to the partner
deficit:

```math
n_\sigma
=
\langle N_\sigma,\varphi_\sigma\rangle,
\qquad
b_\sigma
=
\langle P_\sigma+V_\sigma+T_\sigma+I_\sigma+L_\sigma+S_\sigma,
\varphi_\sigma\rangle,
\tag{PDO.1}
```

```math
h_\sigma=n_\sigma+b_\sigma,
\qquad
A_{\rm native}=\int[n_\sigma]_+,
\qquad
A_{\rm full}=\int[h_\sigma]_+.
\tag{PDO.2}
```

The scalar inequality is exact:

```math
\boxed{
[n_\sigma]_+
\le
[h_\sigma]_+
+[-b_\sigma]_+.
}
\tag{PDO.3}
```

So the remaining theorem was proposed as:

```math
\boxed{
\Delta_{\rm partner}(\sigma)
:=
\int[-b_\sigma]_+
\le
C A_{4B}(\sigma)+R_{\rm legal}(\sigma)
}
\tag{PDO.4}
```

unless the branch exits through pressure-memory, terminal trace,
donor/saturation, selector/collar, geometry, or Field failure.

This proposal is now sharpened by
`mpp-forward-gold-full-participation-order-lock-direct-attempt-20260622.md`.
The minimal gap is not all of \([-b_\sigma]_+\).  It is the same-packet
cancellation overlap:

```math
\boxed{
\Delta_\sigma^{ol}
=
\left([n_\sigma]_+-[h_\sigma]_+\right)_+
=
\min\{[n_\sigma]_+,[-b_\sigma]_+\}.
}
\tag{PDO.4a}
```

Thus \([-b_\sigma]_+\) remains a sufficient envelope, but it is not the exact
live object.

## 1. Direct theorem is false as stated

Retention of the cancelling partner is not payment.

Take a packet core \(X\) with positive measure and set:

```math
n=1_X,
\qquad
b=-1_X.
\tag{PDO.5}
```

Then:

```math
h=n+b=0,
\tag{PDO.6}
```

so:

```math
A_{\rm full}
=
\int_X[0]_+
=0.
\tag{PDO.7}
```

But:

```math
A_{\rm native}
=
\int_X[1]_+
=|X|,
\qquad
\Delta_{\rm partner}
=
\int_X[-(-1)]_+
=|X|.
\tag{PDO.8}
```

The partner is perfectly retained.  It is not lost to pressure-memory,
terminal trace, donor/saturation, selector/collar, geometry, or Field failure.
Thus the implication

```math
\text{retained partner}
\Longrightarrow
\Delta_{\rm partner}\le C A_{4B}+R_{\rm legal}
\tag{PDO.9}
```

is false unless \(A_{4B}\) already includes the partner-deficit mass itself.

This is not only a scalar artifact.  The same sign pattern appears in the
smooth local Navier-Stokes core:

```math
u(x,y,z)=(x,-y,0),
\qquad
p(x,y,z)=-{1\over2}(x^2+y^2).
\tag{PDO.10}
```

Then:

```math
\nabla\cdot u=0,
\qquad
\Delta u=0,
\qquad
\partial_tu=0,
\tag{PDO.11}
```

and

```math
(u\cdot\nabla)u=(x,y,0),
\qquad
\nabla p=(-x,-y,0).
\tag{PDO.12}
```

On the lobe \(x^2>y^2\),

```math
((u\cdot\nabla)u)\cdot u=x^2-y^2>0,
\tag{PDO.13}
```

while

```math
(\nabla p)\cdot u=-x^2+y^2.
\tag{PDO.14}
```

The native convection channel is positive, and the pressure partner cancels it
exactly.  The full packet is balanced.  The partner is retained.  A theorem
that tries to dominate the channel-first positive native source by the
full-packet positive part alone is therefore false.

## 2. What retention actually proves

Retained partner cancellation proves:

```math
\boxed{
\text{the channel-first positive source was not a one-sided full-packet
production event.}
}
\tag{PDO.15}
```

It does not prove:

```math
\boxed{
\text{the channel-first positive source is small.}
}
\tag{PDO.16}
```

Those are different claims.

The first claim is a participation statement: the pressure-viscosity-time-
incompressibility tuple participated and cancelled the native positive channel.

The second claim is the desired unweighted reserve for \(A_{\rm native}\).
It requires a quantity that actually counts the retained cancelling partner.

## 3. Correct replacement theorem

There are exactly two noncircular ways to close the comparison.

First, use order-locking.  Define the selected native activity after full packet
scalarization:

```math
A_{\rm native}=A_{\rm full}
=
\int[h_\sigma]_+
\tag{PDO.17}
```

up to legal error.  This is already installed by the selected full-packet
production step.

Second, keep channel-first selection but upgrade the four-body selected
activity to an order-lock-overlap activity:

```math
\boxed{
A_{\rm ol}(\sigma)
:=
\int[h_\sigma]_+
+
\int\min\{[n_\sigma]_+,[-b_\sigma]_+\}.
}
\tag{PDO.18}
```

Then the native comparison is an identity-level consequence of `(PDO.3)`:

```math
\boxed{
A_{\rm native}(\sigma)
\le
A_{\rm ol}(\sigma).
}
\tag{PDO.19}
```

The real theorem becomes:

```math
\boxed{
\texttt{OrderLockOverlapFourBodyPayment.A}
}
\tag{PDO.20}
```

with statement:

```math
\boxed{
\int_{\sigma_0}^{\infty}A_{\rm ol}(\sigma)\,d\sigma<\infty
}
\tag{PDO.21}
```

or a typed Pack/Part/Field exit.

That theorem is genuinely stronger than the already installed full-packet
production step, because it asks the four-body loop to pay not only the positive
part of the full scalar \(h_\sigma\), but also the exact overlap where native
channel-first positivity is canceled by a same-packet negative partner.

The older polar-pair activity

```math
\int[h_\sigma]_+ + \int[-b_\sigma]_+
\tag{PDO.21a}
```

is a sufficient overpayment, not the minimal theorem.

## 4. Channel split of the partner deficit

The algebraic split is:

```math
[-b_\sigma]_+
\le
[-b_\sigma^p]_+
+[-b_\sigma^v]_+
+[-b_\sigma^t]_+
+[-b_\sigma^i]_+
+[-b_\sigma^l]_+
+[-b_\sigma^s]_+.
\tag{PDO.22}
```

The non-pressure pieces have the expected routing.

The viscous partner is paid after integration by parts:

```math
[-b_\sigma^v]_+
\le
C\,\nu|\nabla V_\sigma|^2
+R_{\rm cut/legal}.
\tag{PDO.23}
```

The time partner is storage or terminal trace:

```math
[-b_\sigma^t]_+
\le
[-\partial_\sigma M_\sigma]_+
+\Lambda_{\rm term}
+R_{\rm legal}.
\tag{PDO.24}
```

The incompressibility, selector/legal, and geometry partners route through
signed-saturation, selector/collar, and geometry/Field ledgers:

```math
[-b_\sigma^i]_+
+[-b_\sigma^l]_+
+[-b_\sigma^s]_+
\le
\Lambda_{\rm sgn}
+\Lambda_{\rm sel}
+\Lambda_{\rm legal}
+K_G^+.
\tag{PDO.25}
```

The pressure partner has a real interior branch:

```math
b_\sigma^p
=
b_{\sigma,loc}^p+b_{\sigma,H}^p.
\tag{PDO.26}
```

The harmonic/nonlocal pressure memory is collar/legal:

```math
[-b_{\sigma,H}^p]_+
\le
\mathfrak M_{\rm press}
+R_{\rm legal}.
\tag{PDO.27}
```

The local pressure part is not automatically pressure-memory/collar.  It may be
the smooth interior cancelling partner in `(PDO.10)`--`(PDO.14)`.  It is paid
only if the selected test is pressure-compatible:

```math
\boxed{
[-b_{\sigma,loc}^p]_+
\le
C\,D_Q^w
+R_{\rm cut/sel/legal},
}
\tag{PDO.28}
```

or if the polar-pair activity \(A_{\rm pair}\) is itself inserted into the
four-body cycle and paid by a strict cycle theorem.

Thus the remaining analytic clause should be stated in the sharper overlap
form:

```math
\boxed{
\texttt{PressurePartnerCompatibility.A}
\quad\text{or}\quad
\texttt{OrderLockOverlapFourBodyPayment.A}.
}
\tag{PDO.29}
```

## 5. Corrected frontier

The statement

```math
\boxed{
\text{every discarded partner is retained or exits}
\Longrightarrow
A_{\rm native}\le C A_{4B}+R_{\rm legal}
}
\tag{PDO.30}
```

is false.  The retained partner can be the exact cancellation that makes
\(A_{\rm full}=0\) while \(A_{\rm native}>0\).

The correct statement is:

```math
\boxed{
\text{channel-first native activity}
\le
\text{order-locked full-packet activity}
+
\text{retained order-lock-overlap activity}.
}
\tag{PDO.31}
```

Consequently:

```math
\boxed{
\texttt{NativeSelectedActivityToFourBodyCarrier.A}
}
\tag{PDO.32}
```

is proved by either:

```math
\boxed{
\texttt{PositivePartOrderLock.A}
}
\tag{PDO.33}
```

or:

```math
\boxed{
\texttt{OrderLockOverlapFourBodyPayment.A}
}
\tag{PDO.34}
```

plus typed exit routing for lost, non-retained, or non-admissible partners.

The lost-partner exits remain exactly the listed branches:

```math
\text{terminal trace/storage},
\quad
\text{donor/saturation},
\quad
\text{selector/collar},
\quad
\text{pressure-memory},
\quad
\text{geometry/Field}.
\tag{PDO.35}
```

But those exits apply to partners that leave the retained same-carrier record.
They do not pay a retained smooth interior cancellation.
